const axios = require("axios");
const cloudinary = require("cloudinary").v2;

// Set up Cloudinary credentials
cloudinary.config({
  cloud_name: "ditrrh0sj",
  api_key: "265986928774657",
  api_secret: "PkNSWcfE7a_3f_fe13iIPc51l1k",
});

// Set up Strapi API endpoint and authentication
const strapiApiUrl = "http://127.0.0.1:1337"; // Update with your Strapi API URL
const strapiApiKey =
  "e374fa2b2ef69f87232070612798da0ec562c2575cc380b8bc0dc586d2dd8d1ccc21a9d7afd7949958a5a1de6c3e88ec75a7c86eb9b841f27fb41ff3469068a3512c66496d2876bf2e0e378e03395c189f6ef93f5e07cf6065f986b2c59429db6f354bf99060b2a6712e53773e679cd490d6c003da61ff9a99f66c8cde2ab9a1"; // Update with your Strapi API key

// Function to fetch all media files from Strapi
async function fetchMediaFiles() {
  try {
    const response = await axios.get(`${strapiApiUrl}/api/upload/files`, {
      headers: {
        identifier: `denisk@thinkseb.com`,
        password: `Fantomadjar1493*`,
      },
    });

    return response.data;
  } catch (error) {
    console.error("Error fetching media files from Strapi:", error.message);
    throw error;
  }
}

// Function to upload each media file to Cloudinary
async function uploadToCloudinary(mediaFile) {
  if (mediaFile.ext === ".mp4") return;

  try {
    const cloudinaryUploadResponse = await cloudinary.uploader.upload(
      `../public${mediaFile.url}`,
      {
        public_id: `strapi-migration/${mediaFile.hash}`, // Update with desired Cloudinary folder structure
      }
    );

    console.log(
      `Uploaded ${mediaFile.hash} to Cloudinary:`,
      cloudinaryUploadResponse
    );
  } catch (error) {
    console.error(
      `Error uploading ${mediaFile.hash} to Cloudinary:`,
      error.message
    );
    throw error;
  }
}

// Function to migrate all media files (both images and videos)
async function migrateMediaFiles() {
  try {
    const mediaFiles = await fetchMediaFiles();

    for (const mediaFile of mediaFiles) {
      await uploadToCloudinary(mediaFile);
    }

    console.log("Migration completed successfully.");
  } catch (error) {
    console.error("Error migrating media files:", error.message);
  }
}

// Run the migration
migrateMediaFiles();
