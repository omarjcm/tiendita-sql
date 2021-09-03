const ciudad = require('../componentes/ciudad/interfaz')

const rutas = function(servidor) {
    servidor.use('/ciudad', ciudad)
}

module.exports = rutas