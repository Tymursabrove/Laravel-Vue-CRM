### Brief instructions for installing and configuring the educational project
* composer create-project laravel/laravel:^8.0 example-app
* In file .env input value and setting database
* php artisan migrate
* composer require laravel/ui
* php artisan ui:auth
* php artisan ui bootstrap
* php artisan ui vue
* npm update vue-loader
* npm run dev
* php artisan serve
* npm run watch (each change starts the build automatically)


### Additional actions in case of errors...
* php artisan route:cache
* php artisan route:clear
* php artisan config:clear
* php artisan cache:clear
* php artisan optimize
### For Unit tests:
* cp .env .env.testing
* php artisan make:test TicketTest --unit 
* php artisan migrate --seed --env=testing
* php artisan migrate:refresh --seed --env=testing
* composer dump-autoload
* php artisan test 
### Package.json for install mix & start project:
* "devDependencies": {
* "@popperjs/core": "^2.10.2",
* "axios": "^0.19",
* "bootstrap": "^5.1.3",
* "cross-env": "^7.0",
* "laravel-mix": "^6.0.10",
* "lodash": "^4.17.19",
* "resolve-url-loader": "^3.1.2",
* "sass": "^1.32.11",
* "sass-loader": "^10.4.1",
* "vue": "^2.6.12",
* "vue-loader": "^15.2.2",
* "vue-router": "^3.5.3",
* "vue-template-compiler": "^2.6.12"
