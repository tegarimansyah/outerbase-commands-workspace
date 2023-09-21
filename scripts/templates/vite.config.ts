// vite.config.js
import { resolve } from 'path'
import { defineConfig } from 'vite'

export default defineConfig({
  build: {
    lib: {
      // Could also be a dictionary or array of multiple entry points
      entry: resolve(__dirname, 'src/index.js'),
      name: 'command_name',
      // the proper extensions will be added
      fileName: 'full_name',
      formats: ['es',]
    },
    outDir: "../../dist",
    minify: "terser",
    // Currently, this terserOptions will not take effect
    // But we can use this as reference if we want to use terser cli to minify the command
    terserOptions: {
      mangle: {
        toplevel: true,
        reserved: ['userCode'],
        module: true,
      },
      compress: {
        drop_console: true
      }
    }
  },
})