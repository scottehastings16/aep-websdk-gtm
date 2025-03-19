___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "AEP Web SDK",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKMAAACmCAMAAACBf88BAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAPUExURQAAAAAAAAAAAAAAAAAAAE8O540AAAAEdFJOUwBAgL+jVN0MAAAACXBIWXMAADLAAAAywAEoZFrbAAADZElEQVR4XtXd207rMBBA0Zbm/7/5tGAOaeOx57LHk8wLqYCtFSUgxTXippnHvR3Qc3+0g/A8ti0Hed82CPkkJiFfYQT5Tdy29oqcnzKAbETqouwGK/+GeCRW/gvRSKy8D7FIrPweIpFY+TPEIbHyV/v2/TDII9FZ7hEZZI/oKveJBLJP3Lav9nn1SMQ4UiKakTIxipSJRuSIGEOOiCbkmBhBzspq5CzkR87LSuQ8ZL6922BlTciHxMq6kAeJlbUhOxIr60NWJFa2hGxIrGwLWZBY2RrSI7GyPaRFYmVPSIfEyr6QBomVvaE5Eiv7QzMkVo6ExkisHAuNkFg5GpKRWDkekpBYmQj1kViZCfWQXJkqHZBkePw0aZh3JHvuKUiM2B5BE5A0MQHJE3FkBhFG5hBR5L0dheeDSCLbx/AciCASmg7xbMgu8VxIgXgmpEg8D3JAPAtySOR+t4WmYaQ5A3K6L6Ieqdi6UY1U7S6pRSo3wFQi1Xt06pBqYh3SQKxCmog1SCOxAmkmrkc6iKuRLuJapJMIPoROZ78MY5xVyABxFTJEXIMMElcgw8R8JEDMRiLEXCREzERixDwkSMxCosQcJEzMQOJEHplApJEpRBaZRCSRacQrGC9wrS/wM8MSU5A0MQHJE3FkBhFG5hBRZBYRROYRMWQmEULmEhFkNhFA5hPDyBXEIHINMYRct5DrXsa9wFrzBdbs1xJdyNVEB3I90YysIBqRNUQTsopoQNYR1chKohJZS1Qhq4kKZD1xjmxfVjrjbXtX2Ft4gT2aF9jreh6iiDwTUUCei9hFYkQu1GT/Byvn/U0FSASfyt+QKDEHCRMzkDiRRyYQaSRW2xNZZBIRDVOpTyKHfJaZ1JGIlolUj4iW46k+ES1HUxIRLcdSMhEtR1IjIlr2p8ZEtOxNzYho2ZeaE9GyJ6UhomV7SkdEy9aUloiWbSk9ES1bUhYiWtanbES0rE1ZiWhZl7IT0bIm5SGi5XnKR0TLs9Ru+cA4s+dkw8mPkX7iDGm6PiNkhDhGGm8hGRkjjpDmu1xCRoky0kyUkHGihHQQ+ymCiJaPKYaIlj9TFBEtv6c4Ilrep0giWv5LsUS0/JuiiWi5pdorcn7KyMl/p5R7WmzzKkPX55lKIb7etcNuodL/2XS7/QPye/ubjVcjVQAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "The tag installs the Adobe Experience Platform Web SDK by referencing a JavaScript library hosted on a CDN and collects the events that you want to track by making calls to the library.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "event",
    "displayName": "Event",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "eventObj",
        "displayName": "Event object",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "help": "Select a GTM variable that returns an object containing the data payload for the event sent to Adobe Experience Plartform. See the available properties (schema field groups) \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/overview\"\u003ehere\u003c/a\u003e.",
        "notSetText": "Not set"
      },
      {
        "type": "RADIO",
        "name": "eventType",
        "displayName": "Event type",
        "radioItems": [
          {
            "value": "notSet",
            "displayValue": "Not set",
            "help": "Choose this option to use the tag for configuration only or to populate event \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/type\"\u003etype\u003c/a\u003e or \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/xdm/classes/experienceevent#eventType\"\u003exdm.eventType\u003c/a\u003e via the above event object."
          },
          {
            "value": "pageView",
            "displayValue": "Page view (web.webpagedetails.pageViews)",
            "subParams": [
              {
                "type": "CHECKBOX",
                "name": "autoMarketing",
                "checkboxText": "Auto-populate marketing schema (xdm.marketing)",
                "simpleValueType": true,
                "help": "Populates xdm.marketing.campaignName with utm_campaign and \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/analytics/components/dimensions/tracking-code\"\u003exdm.marketing.trackingCode\u003c/a\u003e with utm_source, utm_medium, utm_campaign and utm_content delimited by pipe (\"|\").",
                "enablingConditions": [
                  {
                    "paramName": "eventType",
                    "paramValue": "pageView",
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "CHECKBOX",
                "name": "autoWebPageDetails",
                "checkboxText": "Auto-populate web page details schema (xdm.web.webPageDetails)",
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "eventType",
                    "paramValue": "pageView",
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "SIMPLE_TABLE",
                "name": "webPageDetails",
                "displayName": "Web page details schema  (xdm.web.webPageDetails)",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Property",
                    "name": "prop",
                    "type": "SELECT",
                    "selectItems": [
                      {
                        "value": "URL",
                        "displayValue": "URL"
                      },
                      {
                        "value": "isErrorPage",
                        "displayValue": "isErrorPage"
                      },
                      {
                        "value": "isHomePage",
                        "displayValue": "isHomePage"
                      },
                      {
                        "value": "name",
                        "displayValue": "name"
                      },
                      {
                        "value": "server",
                        "displayValue": "server"
                      },
                      {
                        "value": "siteSection",
                        "displayValue": "siteSection"
                      },
                      {
                        "value": "pageViews",
                        "displayValue": "pageViews"
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Value",
                    "name": "value",
                    "type": "TEXT"
                  }
                ],
                "help": "Manually populate or overwrite a property of the web page details schema. Each property is documented \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/xdm/data-types/webpage-details\"\u003ehere\u003c/a\u003e.",
                "enablingConditions": [
                  {
                    "paramName": "eventType",
                    "paramValue": "pageView",
                    "type": "EQUALS"
                  }
                ],
                "newRowButtonText": "Add Property"
              }
            ]
          },
          {
            "value": "linkClick",
            "displayValue": "Link click (web.webinteraction.linkClicks)",
            "subParams": [
              {
                "type": "CHECKBOX",
                "name": "autoWebInteraction",
                "checkboxText": "Auto-populate web interaction schema properties (xdm.web.webInteraction)",
                "simpleValueType": true,
                "enablingConditions": [
                  {
                    "paramName": "eventType",
                    "paramValue": "linkClick",
                    "type": "EQUALS"
                  }
                ]
              },
              {
                "type": "SIMPLE_TABLE",
                "name": "webInteraction",
                "displayName": "Web interaction schema (xdm.web.webInteraction)",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Property",
                    "name": "prop",
                    "type": "SELECT",
                    "selectItems": [
                      {
                        "value": "URL",
                        "displayValue": "URL"
                      },
                      {
                        "value": "name",
                        "displayValue": "name"
                      },
                      {
                        "value": "type",
                        "displayValue": "type"
                      },
                      {
                        "value": "region",
                        "displayValue": "region"
                      },
                      {
                        "value": "linkClicks",
                        "displayValue": "linkClicks"
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Value",
                    "name": "value",
                    "type": "TEXT"
                  }
                ],
                "help": "Manually populate or overwrite a property of the web interaction schema. Each property is documented \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/xdm/data-types/web-interaction\"\u003ehere\u003c/a\u003e.",
                "enablingConditions": [
                  {
                    "paramName": "eventType",
                    "paramValue": "linkClick",
                    "type": "EQUALS"
                  }
                ],
                "newRowButtonText": "Add Property"
              }
            ],
            "help": ""
          },
          {
            "value": "otherEvent",
            "displayValue": "Other:",
            "subParams": [
              {
                "type": "TEXT",
                "name": "otherEventType",
                "displayName": "",
                "simpleValueType": true,
                "valueValidators": [
                  {
                    "type": "NON_EMPTY"
                  }
                ]
              }
            ],
            "help": "See the available values for \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/xdm/classes/experienceevent#eventType\"\u003eeventType\u003c/a\u003e in the XDM user guide for a full list of predefined values. You can also use your own value."
          }
        ],
        "simpleValueType": true,
        "defaultValue": "notSet"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "customXdm",
        "displayName": "Custom XDM properties",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Name (path)",
            "name": "path",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "Populate the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/xdm\"\u003eXDM object\u003c/a\u003e with any key-value pair. A dot (\".\") in the key name represents a nested key, i.e., the \"path\" to the key holding the final value. Values are recursively merged with existing objects. However, already set key values are not overwritten."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "identityMap",
        "displayName": "XDM identityMap",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Namespace (array)",
            "name": "namespace",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "ID",
            "name": "id",
            "type": "SELECT",
            "macrosInSelect": true
          },
          {
            "defaultValue": false,
            "displayName": "Primary",
            "name": "primary",
            "type": "SELECT",
            "selectItems": [
              {
                "value": false,
                "displayValue": "false"
              },
              {
                "value": true,
                "displayValue": "true"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Authenticated state",
            "name": "authState",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "ambiguous",
                "displayValue": "ambiguous"
              },
              {
                "value": "authenticated",
                "displayValue": "authenticated"
              },
              {
                "value": "loggedOut",
                "displayValue": "loggedOut"
              }
            ],
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "macrosInSelect": true
          }
        ],
        "help": "Populate the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/identity/overview\"\u003eXDM identityMap\u003c/a\u003e field by adding one or more IDs to an \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/identity/features/namespaces\"\u003eidentity namespace\u003c/a\u003e array. Each ID is pushed to the namespace array and will not overwrite existing IDs of the same namespace."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "adobeTarget",
        "displayName": "Adobe Target profile update",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "",
            "isUnique": false
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "Allows you to pass custom profile attributes to Adobe Target by populating keys of the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/personalization/adobe-target/target-overview#single-profile-update\"\u003e__adobe.target\u003c/a\u003e object nested within the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/data\"\u003edata\u003c/a\u003e object. Note, a key named \"profile.someAttribute\" with a value of \"someValue\" results in: { data: __adobe: { target: { \"profile.someAttribute\": \"someValue\" } } }"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "adobeAnalytics",
        "displayName": "Custom Adobe Analytics data",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "key",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "valueHint": "",
            "isUnique": false
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "By populating keys of the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/analytics/implementation/aep-edge/data-var-mapping\"\u003e__adobe.analytics\u003c/a\u003e object nested within the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/data\"\u003edata\u003c/a\u003e object, you can pass data to Adobe Analytics without strictly conforming to the XDM schema. See the available field mapping \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/analytics/implementation/aep-edge/data-var-mapping#data-object-field-mapping\"\u003ehere\u003c/a\u003e."
      },
      {
        "type": "CHECKBOX",
        "name": "documentUnloading",
        "checkboxText": "Use the JavaScript sendBeacon method to send the event data to AEP",
        "simpleValueType": true,
        "help": "Enable this feature to help prevent data requests from getting canceled by the browser when unloading the document. If enabled, the Web SDK will use the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/documentunloading\"\u003esendBeacon\u003c/a\u003e method so that the request can run in the background after the user navigates away from the page, namely when clicking a link."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "content",
    "displayName": "Content",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "renderDecisions",
        "displayName": "Render personalized content that is eligible for automatic rendering when the event is sent",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": true,
            "displayValue": "true"
          },
          {
            "value": false,
            "displayValue": "false"
          }
        ],
        "simpleValueType": true,
        "help": "Sets the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/renderdecisions\"\u003erenderDecisions\u003c/a\u003e property (boolean). Note, before enabling this feature, a \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/personalization/manage-flicker#manage-flicker-for-asynchronous-deployments\"\u003eprehiding snippet\u003c/a\u003e should be in place in the source code of the page to manage flicker for asynchronous deployments.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "subParams": [],
        "alwaysInSummary": false,
        "defaultValue": false
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "decisionScopes",
        "displayName": "Decision Scopes",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Scope",
            "name": "scope",
            "type": "TEXT",
            "isUnique": true
          }
        ],
        "enablingConditions": [],
        "newRowButtonText": "Add Scope",
        "help": "Example value: \"__view__\". \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/personalization/rendering-personalization-content\"\u003eLearn more\u003c/a\u003e"
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "personalization",
        "displayName": "Personalization properties",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Name (path)",
            "name": "path",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "help": "Populate the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/sendevent/personalization\"\u003epersonalization\u003c/a\u003e object with any key-value pair. A dot (\".\") in the key name represents a nested key, i.e., the \"path\" to the key holding the final value. Values are recursively merged with existing objects. However, already set key values are not overwritten."
      },
      {
        "type": "CHECKBOX",
        "name": "initializeComponents",
        "checkboxText": "Create a callback to initialize rendered personalized content",
        "simpleValueType": true,
        "defaultValue": true,
        "enablingConditions": [
          {
            "paramName": "renderDecisions",
            "paramValue": true,
            "type": "EQUALS"
          },
          {
            "paramName": "renderDecisions",
            "paramValue": "",
            "type": "IS_MACRO_REFERENCE"
          }
        ],
        "help": "Recommended to make sure that any JavaScript-based functionality of the rendered content still applies. Note, the initialization runs only if cep.initializeComponents() is defined globally.",
        "alwaysInSummary": true
      },
      {
        "type": "SELECT",
        "name": "customCallback",
        "displayName": "Custom callback",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "notSetText": "Not set"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "configuration",
    "displayName": "Configuration",
    "subParams": [
      {
        "type": "LABEL",
        "name": "configDesc",
        "displayName": "The Web SDK is configured once per page the first time the tag is triggered. Consequently, the configuration settings of the first triggered tag applies globally meaning only one organization ID, one edge domain etc. is supported on the same page. However, you may provide different datastream IDs for different instances of the tag to sent events to different AEP datastreams."
      },
      {
        "type": "LABEL",
        "name": "configPlaceholder",
        "displayName": "\u0026nbsp;"
      },
      {
        "type": "SELECT",
        "name": "config",
        "displayName": "Settings object",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "notSetText": "Not set",
        "help": "Select a GTM variable that returns an object. See the available configuration settings \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/overview\"\u003ehere\u003c/a\u003e."
      },
      {
        "type": "TEXT",
        "name": "orgId",
        "displayName": "Organization ID",
        "simpleValueType": true,
        "help": "This will overwrite the \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/orgid\"\u003eorgId\u003c/a\u003e property of the selected settings object. \u003ci\u003eRequired\u003c/i\u003e if the settings object is not set or does not have the property.",
        "valueHint": "123ABC@AdobeOrg"
      },
      {
        "type": "TEXT",
        "name": "datastreamId",
        "displayName": "Datastream ID",
        "simpleValueType": true,
        "help": "This will overwrite the datastreamId (former \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/edgeconfigid\"\u003eedgeConfigId\u003c/a\u003e) property of the selected settings object. \u003ci\u003eRequired\u003c/i\u003e if the settings object is not set or does not have the property."
      },
      {
        "type": "TEXT",
        "name": "edgeDomain",
        "displayName": "Edge domain",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "clickCollectionEnabled",
        "checkboxText": "Enable automated link click tracking",
        "simpleValueType": true,
        "help": "If enabled, the Web SDK will automatically collect link click events (i.e., clicks on DOM a elements) while populating the following XDM \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/configure/clickcollectionenabled\"\u003ewebInteraction\u003c/a\u003e properties: URL, name, type and region. The latter collects the AEM component ID of the link when available. \u003ci\u003eNote\u003c/i\u003e, if you enable this setting, then be cautious about creating GTM link click triggers for the tag since that may result in duplicated events."
      },
      {
        "type": "CHECKBOX",
        "name": "debugEnabled",
        "checkboxText": "Log Web SDK (alloy) debug info to the browser console",
        "simpleValueType": true,
        "help": "You should \u003ci\u003enot\u003c/i\u003e enable this in a production environment because it will slow down the site and become visible to all (tech-savvy) visitors."
      }
    ],
    "groupStyle": "ZIPPY_OPEN"
  },
  {
    "type": "GROUP",
    "name": "library",
    "displayName": "Library",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "version",
        "displayName": "Version",
        "simpleValueType": true,
        "help": "\u003ci\u003eOptional\u003c/i\u003e. See the release notes \u003ca href\u003d\"https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/release-notes\"\u003ehere\u003c/a\u003e. Note, the web SDK library is loaded once per page the first time this tag is triggered meaning that the library version of the first triggered tag is the only version used.",
        "valueHint": "2.25.0"
      },
      {
        "type": "CHECKBOX",
        "name": "minified",
        "checkboxText": "Use the minified library (alloy.min.js)",
        "simpleValueType": true,
        "defaultValue": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Define the name of the global Alloy instance read/written by the tag.
// The name must align with the global variable permissions of the tag.
const globalName = 'alloy';
const globalQueue = globalName + '.q';
const globalCallback = globalName + 'Callback';
const globalConfig = globalName + 'Config';

// Set the default version of the Alloy library.
// You may want to update this to the latest version.
// https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/install/library
// https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/release-notes
const defaultVersion = '2.25.0';

// Template APIs
const log = require('logToConsole');
const getQueryParameters = require('getQueryParameters');
const getType = require('getType');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const callInWindow = require('callInWindow');
const createQueue = require('createQueue');
const copyFromDataLayer = require('copyFromDataLayer');
const getUrl = require('getUrl');
const readTitle = require('readTitle');
const parseUrl = require('parseUrl');
const makeNumber = require('makeNumber');
const injectScript = require('injectScript');

// Function for logging tag debug info.
const debugMode = getQueryParameters('gtm_debug', false) || getQueryParameters('at_preview_token', false) ? true : false;
const event = copyFromDataLayer('event');
function debug (message, data) {
  if (!debugMode) return;
  const text = 'GTM (' + event + ') [AEP Web SDK] ' + message;
  if (data) log(text, data);
  else log(text);
}
debug('Tag fired.');

// Check if we already have a valid Alloy instance of the same name.
const __alloyNS = copyFromWindow('__alloyNS');
const isLoaded = getType(__alloyNS) === 'array' && __alloyNS.indexOf(globalName) >= 0 ? true : false;

// If not, push the instance to the Alloy namespace array
if (!isLoaded) createQueue('__alloyNS')(globalName);

// Set a (dummy) Alloy instance without overwriting existing.
const alloy = function () {
  let success = false;
  const result = {
    info: 'Propositions returned by the Edge Network is not supported by this instance of ' + globalName + '()'
  };
  if (arguments) {
    if (arguments[0] === 'getLibraryInfo') {
      result.libraryInfo = {
        version: copyFromWindow(globalConfig + '.version'),
        commands: ['getLibraryInfo', 'sendEvent'],
        config: copyFromWindow(globalConfig)
      };
      success = true;
    } else if (arguments[0] === 'sendEvent') {
      result.destinations = [];
      result.propositions = [];
      success = true;
    } else if (arguments[0] === 'configure') success = true;
    else result.error = arguments[0] + ' is not supported by this instance of ' + globalName + '()';
    createQueue(globalQueue)([function(){}, function(){}, arguments]);
  }
  function fail(callback) {
    if (!success && getType(callback) === 'function') callback(result);
  }
  return {
    then: function(callback) {
      if (success && getType(callback) === 'function') callback(result);
      return { catch: fail };
    },
    catch: fail
  };
};

setInWindow(globalName, alloy, false);
setInWindow(globalQueue, [], false);

setInWindow(globalCallback, (command, properties, callback) => {
  alloy(command, properties).then(callback);
}, false);

// Set the configuration settings object.
const config = data.config && getType(data.config) === 'object' ? data.config : {};

// Get the datastream ID.
if (data.datastreamId && getType(data.datastreamId) === 'string') config.datastreamId = data.datastreamId;

// Set the event object.
const eventObj = data.eventObj && getType(data.eventObj) === 'object' ? data.eventObj : {};
if (getType(eventObj.xdm) !== 'object') eventObj.xdm = {};
if (data.documentUnloading) eventObj.documentUnloading = true;

// Function for getting the xdm.web.webInteraction.type from a URL.
function getXdmUrlType (url) {
  let type = 'other';
  const download = {
    exe: 1, zip: 1, wav: 1, mp3: 1, mov: 1, mpg: 1, avi: 1, wmv: 1,
    pdf: 1, doc: 1, docx: 1, xls: 1, xlsx: 1, ppt: 1, pptx: 1
  };
  const urlObj = parseUrl(url);
  if (urlObj) {
    const path = urlObj.pathname.split('.');
    if (path.length && download[path[path.length - 1]]) type = 'download';
    else if (urlObj.hostname !== getUrl('host')) type = 'exit';
  }
  return type;
}

// Function for populating xdm.web schema.
function xdmWebSchema(eventType) {
  
  let schema = null;
  
  if (eventType === 'web.webpagedetails.pageViews') schema = 'webPageDetails';
  else if (eventType === 'web.webinteraction.linkClicks') schema = 'webInteraction';
  
  if (schema) {
    if (getType(eventObj.xdm.web) !== 'object') eventObj.xdm.web = {};
    if (getType(eventObj.xdm.web[schema]) !== 'object') eventObj.xdm.web[schema] = {};
    if (data[schema]) data[schema].forEach((e) => {
      eventObj.xdm.web[schema][e.prop] = e.value;
    });
  }
  
  // Get required web schema data.
  if (schema === 'webPageDetails' || schema === 'webInteraction') {
    
    const schemaMap = [];
    
    if (schema === 'webPageDetails') {
      // Marketing schema.
      if (data.autoMarketing) {
        const utmSource = getQueryParameters('utm_source');
        const utmMedium = getQueryParameters('utm_medium');
        const utmCampaign = getQueryParameters('utm_campaign') || '';
        const utmContent = getQueryParameters('utm_content') || '';
        if (utmSource && utmMedium) {
          if (getType(eventObj.xdm.marketing) !== 'object') eventObj.xdm.marketing = {};
          eventObj.xdm.marketing.trackingCode = utmSource + '|' + utmMedium + '|' + utmCampaign + '|' + utmContent;
          if (utmCampaign) eventObj.xdm.marketing.campaignName = utmCampaign;
        }
      }
      // Get web page details.
      if (data.autoWebPageDetails) {
        schemaMap.push(
          {key: 'name', value: readTitle()},
          {key: 'server', value: getUrl('host')}
        );
      }
    } else if (data.autoWebInteraction && schema === 'webInteraction' && copyFromDataLayer('event') === 'gtm.linkClick') {
      // Get web interaction data.
      let componentId = null;
      const clickUrl = copyFromDataLayer('gtm.elementUrl');
      const clickId = copyFromDataLayer('gtm.elementId');
      const clickClass = copyFromDataLayer('gtm.elementClasses');
      const isCmp = clickClass && clickClass.indexOf('cmp-') >= 0 ? true : false;
      if (isCmp || (clickId && clickId.indexOf('teaser-') === 0)) componentId = copyFromDataLayer('gtm.elementId');
      if (!componentId && isCmp) {
        const adobeDataLayer = copyFromWindow('adobeDataLayer');
        if (adobeDataLayer && getType(adobeDataLayer) === 'array') {
          const adobeElm = adobeDataLayer[adobeDataLayer.length - 1];
          if (getType(adobeElm) === 'object' && adobeElm.event === 'cmp:click' && getType(adobeElm.eventInfo) === 'object') {
            const adobeCmp = adobeElm.eventInfo.path;
            if (getType(adobeCmp) === 'string' && adobeCmp.indexOf('component.') === 0) componentId = adobeCmp.split('.')[1];
          }
        }
      }
      schemaMap.push(
        {key: 'URL', value: clickUrl},
        {key: 'name', value: copyFromDataLayer('gtm.elementText')},
        {key: 'type', value: getXdmUrlType(clickUrl)},
        {key: 'region', value: componentId}
      );
    }
    
    // Populate the schema.
    schemaMap.forEach((e) => {
      if (getType(eventObj.xdm.web[schema][e.key]) !== 'string') {
        if (e.value && getType(e.value) === 'string') eventObj.xdm.web[schema][e.key] = e.value.trim();
      }
    });
    
    // Set pageViews or linkClicks metric object.
    const metric = schema === 'webPageDetails' ? 'pageViews' : 'linkClicks';
    if (getType(eventObj.xdm.web[schema][metric]) !== 'object') eventObj.xdm.web[schema][metric] = {value: 1};
    else if (getType(eventObj.xdm.web[schema][metric].value) !== 'number') eventObj.xdm.web[schema][metric].value = 1;
  }
}

// Function for sending an event with the XDM payload.
function sendEvent() {
  
  // Get the event type.
  const eventTypeMap = {
    pageView: 'web.webpagedetails.pageViews',
    linkClick: 'web.webinteraction.linkClicks',
    otherEvent: data.otherEventType
  };
  if (eventTypeMap[data.eventType]) eventObj.type = eventTypeMap[data.eventType];
  const eventType = eventObj.type || eventObj.xdm.eventType;
  
  if (!eventType || getType(eventType) !== 'string') {
    if (data.eventType === 'notSet') {
      debug('No event type provided. No event sent.');
      data.gtmOnSuccess();
      return;
    } else {
      debug('Invalid event type provided. No event sent.');
      data.gtmOnFailure();
      return;
    }
  }
  
  debug('Sending event...');
  
  // Get xdm.web data.
  xdmWebSchema(eventType);
  
  const populateKeyValue = (obj, path, value) => {
    const props = path.split('.');
    const last = props.pop();
    
    const createPath = () => {
      return props.reduce((o, k) => {
        o[k] = getType(o[k]) === 'object' ? o[k] : {};
        return o[k];
      }, obj);
    };
    
    if (value === 'undefined' || value === '') value = undefined;
    else if (value === 'true') value = true;
    else if (value === 'false') value = false;
    
    if (createPath()[last] === undefined) createPath()[last] = value;
  };
  
  // Get Custom xdm data.
  if (data.customXdm) for (let i = 0; i < data.customXdm.length; i++) {
    const row = data.customXdm[i];
    if (getType(row.path) !== 'string') continue;
    populateKeyValue(eventObj.xdm, row.path, row.value);
  }
  
  // Get the identityMap.
  if (data.identityMap) data.identityMap.forEach((ns) => {
    if (ns.namespace && getType(ns.namespace) === 'string' &&
        ns.id && getType(ns.id) === 'string' &&
        ns.id !== 'undefined' && ns.id !== 'null') {
      if (getType(eventObj.xdm.identityMap) !== 'object') eventObj.xdm.identityMap = {};
      if (getType(eventObj.xdm.identityMap[ns.namespace]) !== 'array') eventObj.xdm.identityMap[ns.namespace] = [];
      eventObj.xdm.identityMap[ns.namespace].push({
        id: ns.id,
        authenticatedState: ns.authState && getType(ns.authState) === 'string' ? ns.authState : 'ambiguous',
        primary: ns.primary == 'true' || ns.primary === true ? true : false
      });
    } else if (ns.id) debug('Invalid XDM identityMap namespace and/or ID provided.');
  });
  
  // Override the datastream ID if it is different from the default ID
  // to support multiple datastreams on the same page.
  // https://experienceleague.adobe.com/en/docs/experience-platform/web-sdk/commands/datastream-overrides
  if (config.datastreamId !== copyFromWindow(globalConfig + '.datastreamId')) {
    if (getType(eventObj.edgeConfigOverrides) !== 'object') eventObj.edgeConfigOverrides = {};
    if (getType(eventObj.edgeConfigOverrides.datastreamId) !== 'string')
      eventObj.edgeConfigOverrides.datastreamId = config.datastreamId;
  }
  
  // Render personalized content?
  if (data.renderDecisions === 'true' || data.renderDecisions === true) eventObj.renderDecisions = true;
  else if (data.renderDecisions === 'false' || data.renderDecisions === false) eventObj.renderDecisions = false;
  
  eventObj.decisionScopes = getType(eventObj.decisionScopes) === 'array' ? eventObj.decisionScopes : [];
  if (data.decisionScopes) data.decisionScopes.forEach((row) => {
    if (row.scope && getType(row.scope) === 'string') eventObj.decisionScopes.push(row.scope);
  });
  
  if (data.personalization) {
    eventObj.personalization = eventObj.personalization || {};
    for (let i = 0; i < data.personalization.length; i++) {
      const row = data.personalization[i];
      if (getType(row.path) !== 'string') continue;
      populateKeyValue(eventObj.personalization, row.path, row.value);
    }
  }
  
  // Populate data.__adobe.
  const updateAdobeService = (name) => {
    const table = data['adobe' + name];
    if (!table) return;
    name = name.toLowerCase();
    eventObj.data = eventObj.data || {};
    eventObj.data.__adobe = eventObj.data.__adobe || {};
    eventObj.data.__adobe[name] = eventObj.data.__adobe[name] || {};
    for (let i = 0; i < table.length; i++) {
      const row = table[i];
      if (getType(row.key) !== 'string') continue;
      if (eventObj.data.__adobe[name][row.key] !== undefined) continue;
      if (['string', 'number', 'boolean'].indexOf(getType(row.value)) === -1) continue;
      eventObj.data.__adobe[name][row.key] = row.value;
    }
  };
  
  updateAdobeService('Target');
  updateAdobeService('Analytics');
  
  
  // Send the event.
  callInWindow(globalCallback, 'sendEvent', eventObj, function(r) {
    debug(eventType + ' event sent. Properties:', eventObj);
    // Callback to initialize personalized AEM components.
    if (r && getType(r) === 'object' && getType(r.propositions) === 'array' && r.propositions.length) {
      debug('Propositions returned. Result:', r);
      if (eventObj.renderDecisions) {
        if (data.initializeComponents) {
          // Get the CSS selectors of rendered components.
          const components = [];
          r.propositions.forEach((prop) => {
            if (prop.renderAttempted === true && prop.items && getType(prop.items) === 'array') prop.items.forEach((item) => {
              if (getType(item.data) === 'object' && item.data.type !== 'customCode' && item.data.type !== 'click' && getType(item.data.selector) === 'string') {
                const selector = item.data.selector.toLowerCase();
                // Don't want anything in the <head> but <header> is okay.
                if (selector.indexOf('head') !== 0 || selector.indexOf('header') === 0) {
                  // Don't want the entire body but elements of the body is okay.
                  if (selector !== 'body') components.push(item.data.selector);
                }
              }
            });
          });
          if (components.length) {
            debug('Initializing rendered AEM components with a valid CSS selector...', components);
            const cepInit = copyFromWindow('cep.initializeComponents');
            if (getType(cepInit) === 'function') {
              cepInit(components);
              debug('Components initialized.');
            } else debug('Initialization aborted. window.cep.initializeComponents is not a function.');
          } else debug('Initialization of rendered AEM components skipped. No valid CSS selectors returned.');
        } else debug('Initialization of rendered AEM components was not enabled for the event.');
      }
    } else debug('No propositions returned. Result:', r);
    if (data.customCallback && getType(data.customCallback) === 'function') {
      debug('Custom callback.');
      data.customCallback(r);
    }
  });
  data.gtmOnSuccess();
}

// Alloy configure function.
function configure() {
  if (copyFromWindow(globalConfig)) {
    debug('Instance already configured.');
    return true;
  }
  debug('Configuring instance...');
  
  let bail = false;
  
  // Get the Organization ID.
  if (data.orgId && getType(data.orgId) === 'string') config.orgId = data.orgId;
  
  // Validate the required settings. 
  if (!config.orgId || getType(config.orgId) !== 'string') {
    debug('Missing or invalid Organization ID provided.');
    bail = true;
  }
  if (!config.datastreamId || getType(config.datastreamId) !== 'string') {
    debug('Missing or invalid Datastream ID provided.');
    bail = true;
  }
  
  // Bail?
  if (bail) { debug('Abort. Instance not congifured.'); return; }
  
  // Get the Edge tracking endpoint.
  if (data.edgeDomain && getType(data.edgeDomain) === 'string') config.edgeDomain = data.edgeDomain;
  
  // (De)activate link click tracking and debugging.
  if (data.clickCollectionEnabled) config.clickCollectionEnabled = true;
  else if (config.clickCollectionEnabled !== true) config.clickCollectionEnabled = false;
  if (data.debugEnabled) config.debugEnabled = true;
  if (config.debugEnabled !== true) config.debugEnabled = false;
  
  // Remember the settings.
  setInWindow(globalConfig, config);
  
  // Run the configure command.
  callInWindow(globalCallback, 'configure', config, () => {
    debug('Instance configured. Tag settings:', config);
    setInWindow(globalConfig + '.ready', true, true);
    const dlPush = { event: globalName + '_ready' };
    dlPush[globalName] = config;
    createQueue('dataLayer')(dlPush);
  });

  return true;
}

// Configure (if not configured).
const configured = configure();

function endTag() {
  if (configured) {
    if (copyFromWindow(globalConfig + '.ready')) {
      debug('Instance is ready.');
      sendEvent();
    } else {
      debug('Instance is not ready. Deferring...');
      require('callLater')(() => {
        if (copyFromWindow(globalConfig + '.ready')) {
          debug('Instance is ready.');
          sendEvent();
        } else {
          debug('Abort. Instance is still not ready.');
          data.gtmOnFailure();
        }
      });
    }
  } else data.gtmOnFailure();
}

// Load the Alloy library if not alreadey loaded.
if (!isLoaded) {
  debug('Loading library...');
  
  // Set Alloy library version and remember it.
  let version = defaultVersion;
  if (data.version) {
    let validVersion = false;
    if (getType(data.version) === 'string') {
      const versioning = data.version.split('.');
      if (versioning.length === 3) versioning.forEach((part) => {
        if (!makeNumber(part) && part != '0') {
          validVersion = false;
          return;
        }
        validVersion = true;
      });
    }
    if (validVersion) version = data.version;
    else debug('Invalid library version provided. Using ' + version + ' as default.');
  }
  setInWindow(globalConfig + '.version', version);
  debug('Version set to ' +  version);
  
  const file = 'alloy' + (data.minified ? '.min' : '') + '.js';
  
  injectScript(
    'https://cdn1.adoberesources.net/alloy/' + version + '/' + file,
    () => {
      debug(file + ' injected.');
      endTag();
    },
    () => {
      debug('Abort. Failed to inject ' + file);
      data.gtmOnFailure();
    }
  );
  
} else {
  debug('Library already loaded.');
  endTag();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__alloyNS"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloy"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloy.q"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "adobeDataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cep"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cep.initializeComponents"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloyCallback"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloyConfig"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloyConfig.version"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloyConfig.datastreamId"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "alloyConfig.ready"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://cdn1.adoberesources.net/alloy/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_title",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/10/2024, 3:20:52 PM


