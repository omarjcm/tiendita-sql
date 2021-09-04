const datos = require('./almacenamiento')

function obtenerCiudades( filtroCiudad ) {
    return new Promise((resolve, reject) => {
        resolve( datos.obtener( filtroCiudad ) )
    })
}

function agregarCiudad( ciudad ) {
    return new Promise((resolve, reject) => {
        datos.agregar( ciudad )
        resolve( ciudad )
    })
}

function actualizarCiudad( ciudad ) {
    return new Promise((resolve, reject) => {
        datos.actualizar( ciudad )
        resolve( ciudad )
    })
}

function eliminarCiudad( ciudad ) {
    return new Promise((resolve, reject) => {
        datos.eliminar( ciudad )
        resolve( ciudad )
    })
}

module.exports = {
    obtenerCiudades,
    agregarCiudad,
    actualizarCiudad,
    eliminarCiudad,
}