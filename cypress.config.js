const { defineConfig } = require('cypress')

module.exports = defineConfig({
  e2e: {
    defaultCommandTimeout: 500,
    retries: { runMode: 1, openMode: 1 },

    setupNodeEvents(on, config) {},
  },
});
