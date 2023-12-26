module.exports = [
  "strapi::errors",
  {
    name: "strapi::security",
    config: {
      contentSecurityPolicy: {
        useDefaults: true,
        directives: {
          "script-src": ["self", "unsafe-inline", "cdn.jsdelivr.net", "blob:"],
          "img-src": [
            "self",
            "data:",
            "strapi.io",
            "cdn.jsdelivr.net",
            "res.cloudinary.com",
            "market-assets.strapi.io",
          ],
          "media-src": ["self", "data", "blob:", "res.cloudinary.com"],
          "connect-src": ["self", "http:", "https:"],
        },
        upgradeInsecureRequests: null,
      },
    },
  },
  "strapi::cors",
  "strapi::poweredBy",
  "strapi::logger",
  "strapi::query",
  "strapi::body",
  "strapi::session",
  "strapi::favicon",
  "strapi::public",
];
