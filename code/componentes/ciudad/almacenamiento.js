const pool = require('../../bd')

async function obtenerCiudades( filtroCiudad ) {
    let resultado = null

    if (filtroCiudad) {
        resultado = await pool.query('SELECT * FROM ciudad WHERE nombre LIKE $1;', ['%' + filtroCiudad + '%'])
    } else {
        resultado = await pool.query('SELECT * FROM ciudad')
    }
    return resultado.rows
}

async function agregarCiudad( ciudad ) {
    return await pool.query('INSERT INTO ciudad(nombre, ref_pais) VALUES ($1, $2)', [ciudad.nombre, ciudad.pais])
}

async function actualizarCiudad( ciudad ) {
    return await pool.query('UPDATE ciudad SET nombre = $1, ref_pais = $2 WHERE id_ciudad = $3', [ciudad.nombre, ciudad.pais, ciudad.id_ciudad])
}

async function eliminarCiudad( ciudad ) {
    return await pool.query('DELETE FROM ciudad WHERE id_ciudad = $1', [ciudad.id_ciudad])
}

module.exports = {
    obtener: obtenerCiudades,
    agregar: agregarCiudad,
    actualizar: actualizarCiudad,
    eliminar: eliminarCiudad,
}