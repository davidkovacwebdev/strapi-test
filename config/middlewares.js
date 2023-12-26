module.exports = [
  "strapi::errors",
  {
    name: "strapi::security",
    config: {
      contentSecurityPolicy: {
        useDefaults: true,
        directives: {
          "script-src": process.env.STRAPI_SECURITY_SCRIPT_SRC.split(", "),
          "img-src": process.env.STRAPI_SECURITY_IMG_SRC.split(", "),
          "media-src": process.env.STRAPI_SECURITY_MEDIA_SRC.split(", "),
          "connect-src": process.env.STRAPI_SECURITY_CONNECT_SRC.split(", "),
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
