## Parte 2: Pruebas
Editamos el Gemfile para incluir las siguientes gemas:
```ruby
gem 'faraday'  
group :test do
  gem 'rails-controller-testing'
  gem 'guard-rspec'                 
end
```
Y ejecutamos bundle install:

![Alt text](image.png)

Luego ejecutamos ``Rails generate rspec:install`` para asegurarnos de los archivos RSpec.

![Alt text](image-1.png)

Añadimos require '``byebug'``  en ``spec/rails_helper.rb``

![Alt text](image-2.png)

Ejecutamos el paquete ``exec guard init rspec`` rspec para configurar los archivos necesarios para Guard.

Y podemos ver nuetro ``Guardfile``:

![Alt text](image-3.png)

Ahora configuramos nuestra base de datos con los comandos ``rake db: migrate/ rake db:seed``:

![Alt text](image-4.png)

### Paso 1: Escribiendo una nueva vista  