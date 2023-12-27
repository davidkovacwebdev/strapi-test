const parse = require("pg-connection-string").parse;

module.exports = ({ env }) => ({
  connection: {
    client: "postgres",
    connection: {
      host: env("DATABASE_HOST", "127.0.0.1"),
      port: env.int("DATABASE_PORT", 5432),
      database: env("DATABASE_NAME", "postgres"),
      user: env("DATABASE_USERNAME", "strapi_worker"),
      password: env("DATABASE_PASSWORD", "supersecretpass"),
      ssl: env.bool("DATABASE_SSL_SELF", false),
    },
    debug: false,
  },
});
