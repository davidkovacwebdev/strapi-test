module.exports = ({ env }) => ({
  "users-permissions": {
    enabled: true,
    config: {
      ratelimit: {
        interval: 60000,
        max: 100000,
      },
    },
  },
});
