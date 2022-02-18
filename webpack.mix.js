const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

// mix.js('resources/js/app.js', 'public/js')
//     .postCss('resources/css/app.css', 'public/css', [
//         require('postcss-import'),
//         require('tailwindcss'),
//     ]);

mix.css('resources/css/faq.css', 'public/css')
    .css('resources/css/policy.css', 'public/css')
    .css('resources/css/terms.css', 'public/css');

mix.css('resources/css/register.css', 'public/css')
    .css('resources/css/login.css', 'public/css');

mix.css('resources/css/admin.css', 'public/css')
    .css('resources/css/user.css', 'public/css');

mix.css('resources/css/product.css', 'public/css');

mix.css('resources/css/index.css', 'public/css')
    .css('resources/css/products_show.css', 'public/css')
    .css('resources/css/products_index.css', 'public/css');


if (mix.inProduction()) {
    mix.version();
}
