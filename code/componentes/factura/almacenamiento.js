const pool = require('../../bd')

async function obtenerFacturas( filtroFacturas ) {
    let resultado = null

    if (filtroCiudad) {
        resultado = await pool.query('SELECT * FROM ciudad WHERE nombre LIKE $1;', ['%' + filtroCiudad + '%'])
    } else {
        resultado = await pool.query('SELECT * FROM ciudad')
    }
    return resultado.rows
}

async function agregarFactura( factura ) {
    const cliente = await pool.connect() 

    try {
        await cliente.query('BEGIN')
        const factura_registrar = 'INSERT INTO factura(fecha_emision, valor_total, ref_empleado, ref_cliente) VALUES($1, $2, $3, $4)'
        const fecha_emision = new Date()
        const res1 = await cliente.query(factura_registrar, [fecha_emision, factura.valor_total, factura.empleado, factura.cliente])

        const factura_buscar = 'SELECT id_factura FROM factura WHERE fecha_emision = $1'
        const res0 = await cliente.query(factura_buscar, [fecha_emision])
        
        for (let detalle of factura.detalles) {
            const detalle_insertar = 'INSERT INTO factura_detalle VALUES()'
            const res2 = await cliente.query(detalle_insertar, [factura.codigo])                
        }

        await cliente.query('COMMIT')
    } catch(error) {
        await cliente.query('ROLLBACK')
        throw error
    } finally {
        cliente.release()
    }
}

async function actualizarCiudad( factura ) {
    return await pool.query('UPDATE ciudad SET nombre = $1, ref_pais = $2 WHERE id_ciudad = $3', [ciudad.nombre, ciudad.pais, ciudad.id_ciudad])
}

async function eliminarFactura( factura ) {
    const cliente = await pool.connect() 

    try {
        await cliente.query('BEGIN')

        const factura_detalle_eliminar = 'DELETE FROM factura_detalle WHERE ref_factura = $1'
        const res1 = await cliente.query(factura_detalle_eliminar, [factura.codigo])
        
        const factura_eliminar = 'DELETE FROM factura WHERE codigo = $1'
        const res2 = await cliente.query(factura_eliminar, [factura.codigo])

        await cliente.query('COMMIT')
    } catch(error) {
        await cliente.query('ROLLBACK')
        throw error
    } finally {
        cliente.release()
    }
}

module.exports = {
    obtener: obtenerCiudades,
    agregar: agregarCiudad,
    actualizar: actualizarCiudad,
    eliminar: eliminarCiudad,
}