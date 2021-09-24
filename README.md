# generic-web-app-microfrontend-angular

## Creare app root
```
mkdir code 
cd code
ng new generic-web-app-microfrontend-angular-root --directory ./
    ? Would you like to add Angular routing? No
    ? Which stylesheet format would you like to use? CSS
```
## Creare app1
```
mkdir app1
cd app1
ng new generic-web-app-microfrontend-angular-app1 --directory ./
    ? Would you like to add Angular routing? No
    ? Which stylesheet format would you like to use? CSS
ng build --single-bundle --output-hashing none
```

## Trasformare app1 come element
```
cd app1
ng add @angular/elements
```
modificare src/app/app.module.ts e src/index.html

## Buildare app1 come singolo file
```
npm install ngx-build-plus --save
modificare il file angular.json
    "architect": {
        "build": {"builder": "ngx-build-plus:build",
        "serve": {"builder": "ngx-build-plus:dev-server",
        "test": {"builder": "ngx-build-plus:karma",
ng build --output-hashing none --single-bundle true
```
https://dev.entando.org/v6.3.2/tutorials/micro-frontends/angular.html#create-angular-app