#!/bin/bash

# Verifica si Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "Node.js no está instalado. Por favor, instálalo antes de continuar."
    exit 1
fi

# Verifica si npm está instalado
if ! command -v npm &> /dev/null; then
    echo "npm no está instalado. Por favor, instálalo antes de continuar."
    exit 1
fi

# Crea un nuevo directorio para el proyecto
echo "Creando nuevo proyecto..."
mkdir my-vite-react-app
cd my-vite-react-app

# Inicializa un nuevo proyecto Vite con React
echo "Inicializando proyecto Vite con React..."
npm init vite@latest my-vite-react-app -- --template react

# Entra en el directorio del nuevo proyecto
cd my-vite-react-app

# Instala las dependencias
echo "Instalando dependencias..."
npm install

# Elimina archivos innecesarios
rm src/App.css
rm src/index.css
rm public/vite.svg
rm src/assets/react.svg

# Crea los archivos App.scss e Index.scss si no existen
touch src/App.scss
touch src/index.scss
mkdir src/pages
touch src/pages/home.jsx
touch src/pages/home.scss
touch src/pages/login.jsx
touch src/pages/login.scss
touch src/pages/signup.jsx
touch src/pages/signup.scss
mkdir src/services
touch src/services/auth.js
touch src/services/index.js
touch src/services/user.js
mkdir src/context
mkdir src/layout
mkdir src/router
touch src/router/index.jsx
mkdir src/services
mkdir src/components


# Modifica el contenido de App.jsx
echo "import './App.scss';

function App() {
  return (
    <>
      <div>App</div>
    </>
  )
}

export default App;
" > src/App.jsx

# Modifica el contenido de main.jsx
echo "import './index.scss';
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App.jsx';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);
" >src/main.jsx 

# Actualiza el archivo styles/index.scss

echo "@import './App.scss';
" > src/styles/index.scss

#Aplicar RFCE a Home

echo "import './home.scss'

function home() {
  return (
    <div>home</div>
  )
}

export default home;
" > src/pages/home.jsx

#Aplicar RFCE a Login

echo "import './login.scss'

function login() {
  return (
    <div>login</div>
  )
}

export default login;
" > src/pages/login.jsx

#Aplicar RFCE a Sigunp


echo "import './signup.scss'

function signup() {
  return (
    <div>signup</div>
  )
}

export default signup;
" > src/pages/signup.jsx

#Instalar librerías


# Pregunta si se desea instalar axios
read -p "¿Deseas instalar axios? (y/n): " install_axios

if [ "$install_axios" == "y" ]; then
    npm install axios
    echo "axios ha sido instalado."
fi

# Pregunta si se desea instalar react_router_dom
read -p "¿Deseas instalar react_router_dom? (y/n): " install_react_router_dom

if [ "$install_react_router_dom" == "y" ]; then
    npm install react-router-dom@6
    echo "react_router_dom ha sido instalado."
fi

# Pregunta si se desea instalar Morgan
read -p "¿Deseas instalar morgan? (y/n): " install_morgan

if [ "$install_morgan" == "y" ]; then
    npm install morgan
    echo "morgan ha sido instalado."
fi

# Pregunta si se desea instalar json_server
read -p "¿Deseas instalar json_server? (y/n): " install_json_server

if [ "$install_json_server" == "y" ]; then
    npm install json-server
    echo "json_server ha sido instalado."
fi

# Pregunta si se desea instalar express --save
read -p "¿Deseas instalar express? (y/n): " install_express

if [ "$install_express" == "y" ]; then
    npm install express
    echo "express ha sido instalado."
fi

# Pregunta si se desea instalar mysql2
read -p "¿Deseas instalar mysql2? (y/n): " install_mysql2

if [ "$install_mysql2" == "y" ]; then
    npm install mysql2
    echo "mysql ha sido instalado."
fi

# Pregunta si se desea instalar jsonwebtoken
read -p "¿Deseas instalar jsonwebtoken? (y/n): " install_jsonwebtoken

if [ "$install_jsonwebtoken" == "y" ]; then
    npm install jsonwebtoken
    echo "jsonwebtoken ha sido instalado."
fi

# Pregunta si se desea instalar sequelize
read -p "¿Deseas instalar sequelize? (y/n): " install_sequelize

if [ "$install_sequelize" == "y" ]; then
    npm install sequelize
    echo "sequelize ha sido instalado."
fi

# Pregunta si se desea instalar cors
read -p "¿Deseas instalar cors? (y/n): " install_cors

if [ "$install_cors" == "y" ]; then
    npm install cors
    echo "cors ha sido instalado."
fi

# Pregunta si se desea instalar prettier
read -p "¿Deseas instalar prettier? (y/n): " install_prettier

if [ "$install_prettier" == "y" ]; then
    npm i prettier
    echo "prettier ha sido instalado."
fi

# Pregunta si se desea instalar react_navigation_native
read -p "¿Deseas instalar react_navigation_native? (y/n): " install_react_navigation_native

if [ "$install_react_navigation_native" == "y" ]; then
    npm install @react-navigation/native
    echo "react_navigation_native ha sido instalado."
fi

# Pregunta si se desea instalar Prop_types
read -p "¿Deseas instalar Prop_types? (y/n): " install_Prop_types

if [ "$install_Prop_types" == "y" ]; then
    npm install prop-types
    echo "Prop_types ha sido instalado."
fi

read -p "¿Deseas instalar sass? (y/n): " install_sass

if [ "$install_sass" == "y" ]; then
    npm i sass
    echo "SaSS ha sido instalado."
fi

read -p "¿Desea instalar mui_material emotion_react emotion_style? (y/n): " install_mui_material_emotion_react_emotion_style
if [ "$install_mui_material_emotion_react_emotion_style" == "y" ]; then
    npm install @mui/material @emotion/react @emotion/styled
    echo "mui_material emotion_react emotion_style ha sido instalado"
fi

read -p "¿Desea instalar fontsource_roboto? (y/n): " install_fontsource_roboto
if [ "$install_fontsource_roboto" == "y" ]; then
    npm install @fontsource/roboto
    echo "fontsource_roboto ha sido instalado"
fi

# Información adicional
echo "El proyecto se ha creado exitosamente."
echo "Puedes entrar al directorio 'my-vite-react-app' con 'cd my-vite-react-app'."
echo "Para iniciar el servidor de desarrollo, ejecuta 'npm run dev'."
