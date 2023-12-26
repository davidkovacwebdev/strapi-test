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
  // upload: {
  //   enabled: true,
  //   config: {
  //     provider: "cloudinary",
  //     providerOptions: {
  //       cloud_name: env("CLOUDINARY_NAME"),
  //       api_key: env("CLOUDINARY_KEY"),
  //       api_secret: env("CLOUDINARY_SECRET"),
  //     },
  //     actionOptions: {
  //       upload: {},
  //       uploadStream: {},
  //       delete: {},
  //     },
  //   },
  // },
});
