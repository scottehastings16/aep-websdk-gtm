# aep-websdk-gtm
A Google Tag Manager (GTM) custom template for implementing the Adobe Experience Platform (AEP) Web SDK (Alloy) to send events and manage configurations efficiently.
# Adobe Web SDK GTM Template

This repository contains a custom Google Tag Manager (GTM) template for implementing the Adobe Experience Platform (AEP) Web SDK, also known as Alloy. The template simplifies the process of configuring the Adobe Web SDK, sending events, and managing personalization within a GTM environment.

## Features
- Configures and loads the Adobe Web SDK (Alloy) dynamically.
- Supports event tracking (e.g., page views, link clicks) with XDM schema generation.
- Handles personalization and decision scopes for Adobe Experience Manager (AEM) components.
- Includes debug mode for troubleshooting via GTM debug or Adobe preview tokens.
- Supports custom XDM data, identity mapping, and datastream overrides.
- Compatible with multiple datastreams on the same page.

## Installation

1. **Download the Template:**
   - Clone this repository or download the `adobe-web-sdk-template.js` file.

2. **Import into GTM:**
   - In Google Tag Manager, navigate to **Templates** > **Tag Templates** > **New**.
   - Click the three-dot menu in the top-right corner and select **Import**.
   - Upload the `adobe-web-sdk-template.js` file and save the template.

3. **Set Up a Tag:**
   - Create a new tag in GTM using the imported "Adobe Web SDK" template.
   - Configure the required fields (e.g., Datastream ID, Organization ID) and optional settings (e.g., event type, custom XDM data).

4. **Deploy:**
   - Test the tag in GTM's preview mode, then publish your container.

## Usage

### Configuration
- **Organization ID:** Your Adobe Experience Cloud organization ID.
- **Datastream ID:** The Adobe datastream (formerly edge config) ID.
- **Edge Domain:** Optional custom domain for Adobe Edge Network (e.g., `data.example.com`).
- **Alloy Version:** Defaults to `2.25.0`. Override with a specific version if needed.
- **Debug Mode:** Automatically enabled with `gtm_debug` or `at_preview_token` query parameters.

### Event Types
- **Page View:** Tracks page views with `web.webpagedetails.pageViews`.
- **Link Click:** Tracks link clicks with `web.webinteraction.linkClicks`.
- **Custom Event:** Specify a custom event type via `otherEventType`.

### Data Layer Integration
The template integrates with GTM's data layer for events like `gtm.linkClick` and can pull data from Adobe's `adobeDataLayer` for component interactions.

### Personalization
- Enable `renderDecisions` to fetch personalized content.
- Use `decisionScopes` to specify personalization scopes.
- Optionally initialize AEM components with rendered propositions.

### Example GTM Setup
1. Create a tag with the "Adobe Web SDK" template.
2. Set the event type to "Page View".
3. Add your Organization ID and Datastream ID.
4. Trigger the tag on "All Pages".
5. Preview and debug to verify XDM payloads.

## Debugging
- Enable GTM preview mode or append `?gtm_debug=1` to the URL.
- Check the browser console for logs prefixed with `[AEP Web SDK]`.

## Dependencies
- Adobe Web SDK (Alloy) library, loaded from `https://cdn1.adoberesources.net/alloy/`.
- GTM environment with data layer support.

## Notes
- The default Alloy version is `2.25.0`. Check [Adobe's release notes](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/release-notes) for the latest version.

## Resources
- [Adobe Web SDK Documentation](https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/home)
- [Google Tag Manager Custom Templates](https://developers.google.com/tag-platform/tag-manager/templates)
