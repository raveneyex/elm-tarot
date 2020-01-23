require('./styles/main.scss');
// require('@fortawesome/fontawesome-free/js/all');

var Elm = require('../elm/Main');
Elm.Elm.Main.init({ 
    node: document.getElementById('main') 
});
