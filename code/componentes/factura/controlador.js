const datos = require('./almacenamiento')

function obtenerFacturas( filtroFactura ) {
    return new Promise((resolve, reject) => {
        resolve( datos.obtener( filtroFactura ) )
    })
}

function agregarFactura( factura ) {
    return new Promise((resolve, reject) => {
        datos.agregar( factura )
        resolve( factura )
    })
}

function actualizarFactura( factura ) {
    return new Promise((resolve, reject) => {
        datos.actualizar( factura )
        resolve( factura )
    })
}

function eliminarFactura( factura ) {
    return new Promise((resolve, reject) => {
        datos.eliminar( factura )
        resolve( factura )
    })
}

module.exports = {
    obtenerFacturas,
    agregarFactura,
    actualizarFactura,
    eliminarFactura,
}