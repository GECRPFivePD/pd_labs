const mode = process.env.NODE_ENV === "production" ? "production" : "development";
const base = mode === "production" ? "./" : "/";

module.exports = {
  root: "src",
  base,
  mode,
  publicDir: "../public",
  build: {
    outDir: "../dist",
    assetsDir: "./"
  }
};
