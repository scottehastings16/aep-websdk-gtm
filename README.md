# Google Tag Manager Template: AEP Web SDK

This document provides instructions on how to use the custom Google Tag Manager (GTM) template for deploying the Adobe Experience Platform (AEP) Web SDK (`alloy.js`).

## Overview

This GTM template simplifies the installation and configuration of the AEP Web SDK. It allows you to configure the SDK and send tracking events to the Adobe Edge Network from within the GTM interface. The template is designed to be a comprehensive solution for leveraging AEP Web SDK's capabilities, including event tracking, identity management, and personalization.

## Features

-   **AEP Web SDK Loading**: Automatically loads the `alloy.js` library from Adobe's CDN.
-   **Global Configuration**: Configure the SDK globally once per page load with your AEP settings.
-   **Event Tracking**: Send data to AEP using the `sendEvent` command.
    -   Pre-defined event types for **Page Views** and **Link Clicks**.
    -   Support for any other custom event type.
-   **Automatic Schema Population**: Automatically populate XDM fields for standard events from GTM variables and browser properties.
-   **Flexible Data Mapping**:
    -   Map data to any XDM path.
    -   Configure `identityMap` for user identification.
    -   Pass data specifically for Adobe Target and Adobe Analytics.
-   **Personalization Support**:
    -   Fetch and render personalized content from Adobe Target.
    -   Specify decision scopes.
-   **Debug Mode**: Enable console logging for the Web SDK to aid in debugging.
-   **Data Layer Integration**: Pushes a confirmation event to the `dataLayer` when the SDK is ready.

## Setup and Configuration

Import the `template.tpl` file into your GTM workspace. Then, create a new tag and select the "AEP Web SDK" template. The configuration is divided into several sections:

### Event

This section controls the event being sent to AEP.

| Field              | Description                                                                                                                                                                                             |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Event object**   | A GTM variable that returns an object containing the data payload for the event. This object will be merged with the data configured in the tag UI.                                                      |
| **Event type**     | The type of event to send.                                                                                                                                                                              |
| _Not set_          | Use the tag for configuration only. No event will be sent unless the `type` or `xdm.eventType` is specified in the **Event object**.                                                                     |
| _Page view_        | Sends a `web.webpagedetails.pageViews` event. Enables options for auto-populating marketing and web page details schemas.                                                                                 |
| _Link click_       | Sends a `web.webinteraction.linkClicks` event. Enables options for auto-populating the web interaction schema. Should be used with a GTM Link Click trigger.                                             |
| _Other_            | Specify a custom event type string (e.g., `commerce.purchases`).                                                                                                                                          |
| **Custom XDM...**  | A table to map GTM variables or static values to specific XDM paths (e.g., `_myorg.customField`).                                                                                                         |
| **XDM identityMap**| A table to configure user identities. Specify the namespace, ID, primary status, and authenticated state for each identity.                                                                             |
| **Adobe Target...**| A table for sending profile attributes directly to Adobe Target.                                                                                                                                          |
| **Custom Adobe...**| A table for sending data to Adobe Analytics that doesn't conform to the XDM schema, using the `__adobe.analytics` object.                                                                                 |
| **Use sendBeacon** | If checked, uses the `sendBeacon` API for the event. This is useful for capturing events during page unload, like exit link clicks.                                                                       |

### Content

This section is for configuring personalization features, primarily for Adobe Target.

| Field                                                  | Description                                                                                                                                                        |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Render personalized content...**                     | Set to `true` to allow the SDK to automatically render personalized content returned from the Edge Network. Requires a prehiding snippet on your page.                |
| **Decision Scopes**                                    | A table to specify the decision scopes (e.g., `__view__`) to retrieve personalized content for.                                                                      |
| **Personalization properties**                         | A table to populate the `personalization` object, passing key-value pairs that can influence which personalized content is selected.                                   |
| **Create a callback to initialize rendered content**   | If checked, the template will attempt to call a global `cep.initializeComponents()` function after content is rendered, useful for re-initializing AEM components. |
| **Custom callback**                                    | A GTM variable returning a JavaScript function to be executed as a callback after the `sendEvent` command completes. The result from the SDK is passed as an argument. |

### Configuration

These settings configure the `alloy.js` instance itself. **They are applied only once per page**, using the values from the first AEP Web SDK tag that fires.

| Field                                  | Description                                                                                                                                                                  |
| -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Settings object**                    | A GTM variable returning a configuration object. This is a convenient way to manage settings across multiple tags. Settings here can be overwritten by the fields below.      |
| **Organization ID**                    | **Required.** Your Adobe Experience Cloud Organization ID.                                                                                                                   |
| **Datastream ID**                      | **Required.** The ID of the AEP Datastream to send data to. You can use different IDs on different tags to send events to different datastreams from the same page.            |
| **Edge domain**                        | The domain for the Edge Network (e.g., `edge.my-company.com`). Defaults to `edge.adobedc.net`.                                                                                |
| **Enable automated link click tracking** | If checked, the SDK will automatically track all clicks on `<a>` tags. Be cautious using this with GTM's own link click triggers to avoid duplicate events.                 |
| **Log Web SDK debug info...**          | If checked, enables verbose logging from `alloy.js` in the browser console. Do not enable in production.                                                                       |

### Library

This section controls which version of the `alloy.js` library is loaded.

| Field                                | Description                                                                                                          |
| ------------------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| **Version**                          | The specific version of `alloy.js` to load (e.g., `2.25.0`). Defaults to the version specified in the template code. |
| **Use the minified library**         | If checked (default), loads `alloy.min.js`. Uncheck for the non-minified version for easier debugging of the library itself. |

## How It Works

The template's sandboxed JavaScript performs the following actions:

1.  **Initializes a global `alloy` function**: It sets up a global `alloy` function and a queue (`alloy.q`) on the `window` object. This ensures that any calls to the SDK can be queued before the library is fully loaded and configured.
2.  **Loads `alloy.js`**: It checks if the `alloy.js` library has already been loaded on the page. If not, it injects the script from Adobe's CDN using the version and minification settings provided.
3.  **Configures the SDK**: On the first tag execution on a page, it calls the `alloy('configure', ...)` command using the settings from the **Configuration** section. These settings are stored on a global `alloyConfig` object to prevent reconfiguration.
4.  **Sends the Event**: After configuration, it calls the `alloy('sendEvent', ...)` command. It builds the event payload by:
    -   Starting with the **Event object** variable, if provided.
    -   Setting the `type` or `xdm.eventType` based on the **Event type** setting.
    -   Automatically populating XDM schemas for page views and link clicks if enabled.
    -   Merging data from the **Custom XDM**, **identityMap**, **Adobe Target**, and **Adobe Analytics** tables.
    -   Applying personalization settings.

## Data Layer Pushes

After the AEP Web SDK has been successfully configured on a page, the template pushes an event to the `dataLayer`. This can be used to trigger subsequent tags that depend on the SDK being ready.

-   **Event Name**: `alloy_ready`
-   **Payload**: An object containing the configuration that was used.

**Example `dataLayer` push:**

```javascript
{
  event: 'alloy_ready',
  alloy: {
    orgId: '123ABC@AdobeOrg',
    datastreamId: 'a1b2c3d4-e5f6-a7b8-c9d0-e1f2a3b4c5d6',
    clickCollectionEnabled: false,
    debugEnabled: true,
    // ... other config properties
  }
}
```

You can create a "Custom Event" trigger in GTM for the event name `alloy_ready` to sequence your tags. 
