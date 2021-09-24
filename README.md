# generic-web-app-microfrontend-angular

buildare app1 come singolo file

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
https://dev.entando.org/v6.3.2/tutorials/micro-frontends/angular.html#create-angular-app