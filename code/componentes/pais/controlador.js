const datos = require('./almacenamiento')

function obtenerPaises( filtroPais ) {
    return new Promise((resolve, reject) => {
        resolve( datos.obtener( filtroPais ) )
    })
}

module.exports = {
    obtenerPaises,
}