import { createRequire } from 'node:module';
const require = createRequire( import.meta.url );

import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import vueJsx from '@vitejs/plugin-vue-jsx'
import VueDevTools from 'vite-plugin-vue-devtools'
import inject from '@rollup/plugin-inject'
import ckeditor5 from '@ckeditor/vite-plugin-ckeditor5';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueJsx(),
    VueDevTools(),
    ckeditor5( { theme: require.resolve( '@ckeditor/ckeditor5-theme-lark' ) } )
    // inject({
    //   //Remember to add `"jquery": "^3.6.1"` in `dependencies` for `package.json`
    //   jQuery: "jquery",
    //   "window.jQuery": "jquery",
    //   $: "jquery"
    // })
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  }
})
