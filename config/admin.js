module.exports = ({ env }) => ({
  auth: {
    secret: env("ADMIN_JWT_SECRET"),
  },
  apiToken: {
    salt: env("API_TOKEN_SALT"),
  },
  transfer: {
    token: {
      salt: env("TRANSFER_TOKEN_SALT"),
    },
  },
  rateLimit: {
    enabled: true,
    interval: { min: 5 },
    max: 10,
    delayAfter: 5,
    timeWait: 3 * 1000,
  },
});
