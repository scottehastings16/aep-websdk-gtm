# Adobe Web SDK GTM Template

This repository contains a custom Google Tag Manager (GTM) template for implementing the Adobe Experience Platform (AEP) Web SDK, also known as Alloy. The template provides a robust interface to configure the SDK, send events with XDM payloads, and manage personalization within a GTM environment.

## Features
- **Dynamic SDK Loading:** Loads the Adobe Web SDK (Alloy) from Adobe’s CDN with version control (default: `2.25.0`).
- **Event Tracking:** Supports predefined events (`pageView`, `linkClick`) and custom event types with automated XDM schema population.
- **Personalization:** Handles rendering of personalized content with decision scopes and component initialization for Adobe Experience Manager (AEM).
- **Identity Management:** Configures the `identityMap` for user identification across namespaces.
- **Adobe Integrations:** Supports profile updates for Adobe Target and custom data for Adobe Analytics via the `__adobe` object.
- **Debugging:** Logs detailed information to the console when GTM debug mode (`gtm_debug=1`) or Adobe preview tokens (`at_preview_token`) are active.
- **Configuration:** Allows global configuration of the SDK with support for multiple datastreams on the same page.

## Installation

1. **Download the Template:**
   - Clone this repository or download the `template.tpl` file.

2. **Import into GTM:**
   - In Google Tag Manager, go to **Templates** > **Tag Templates** > **New**.
   - Click the three-dot menu in the top-right corner and select **Import**.
   - Upload the `template.tpl` file and save the template.

3. **Set Up a Tag:**
   - Create a new tag in GTM using the "AEP Web SDK" template.
   - Configure required fields (e.g., `Organization ID`, `Datastream ID`) and optional settings (e.g., event type, personalization).
   - Assign a trigger (e.g., "All Pages" for page views or "Link Click" for clicks).

4. **Deploy:**
   - Test the tag in GTM’s preview mode, then publish your container.

## Usage

### Configuration
The template configures the Web SDK once per page on the first tag execution. Key settings include:
- **Organization ID:** Your Adobe Experience Cloud organization ID (e.g., `123ABC@AdobeOrg`).
- **Datastream ID:** The Adobe datastream ID for event collection (required).
- **Edge Domain:** Optional custom domain for Adobe Edge Network (e.g., `data.example.com`).
- **Click Collection:** Enable automated link click tracking (optional).
- **Debugging:** Log SDK activity to the console (not recommended for production).

### Event Types
- **Not Set:** Use for configuration-only tags or to define `type`/`xdm.eventType` via an event object.
- **Page View (`web.webpagedetails.pageViews`):**
  - Auto-populates `xdm.web.webPageDetails` (e.g., page name, server).
  - Supports `xdm.marketing` for UTM parameters.
- **Link Click (`web.webinteraction.linkClicks`):**
  - Auto-populates `xdm.web.webInteraction` (e.g., URL, type) using GTM’s `gtm.linkClick` event.
- **Other:** Specify a custom `eventType` (e.g., `decisioning.propositionDisplay`).

### Template Parameters
The template provides a user-friendly interface in GTM:
- **Event Group:**
  - Event object, type selection, custom XDM, identity mapping, Adobe Target/Analytics data, and `sendBeacon` option.
- **Content Group:**
  - Render decisions, decision scopes, personalization properties, and component initialization.
- **Configuration Group:**
  - Settings object, override fields (e.g., `orgId`), and link tracking/debug options.
- **Library Group:**
  - Specify SDK version and toggle minified library usage.

### Example GTM Setup
1. Create a tag with the "AEP Web SDK" template.
2. Set `Event Type` to "Page View".
3. Enter your `Organization ID` and `Datastream ID`.
4. Enable `Auto-populate web page details schema`.
5. Trigger on "All Pages".
6. Preview and verify the XDM payload in the console.

## Debugging
- Enable GTM preview mode or append `?gtm_debug=1` to the URL.
- Look for logs prefixed with `[AEP Web SDK]` in the browser console.
- Use Adobe’s `at_preview_token` for additional debugging.

## Permissions
The template requires the following GTM sandbox permissions:
- Logging to the console.
- Global variable access (e.g., `alloy`, `adobeDataLayer`, `cep.initializeComponents`).
- Script injection from `https://cdn1.adoberesources.net/alloy/*`.
- Data layer reading and URL/title access.

## Dependencies
- Adobe Web SDK (Alloy) library, loaded from `https://cdn1.adoberesources.net/alloy/`.
- GTM environment with data layer support.

## Notes
- The default Alloy version is `2.25.0`. Update via the `Library > Version` field (see [release Notes](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/release-notes)).
- Ensure global variable permissions align with the template’s requirements (`alloy`, `alloy.q`, etc.).
- Multiple datastreams are supported via overrides, but only one `orgId` and `edgeDomain` apply per page.

## Resources
- [Adobe Web SDK Documentation](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/home)
- [GTM Custom Templates](https://developers.google.com/tag-platform/tag-manager/templates)
- [XDM Schema Reference](https://experienceleague.adobe.com/en/docs/experience-platform/xdm/home)
