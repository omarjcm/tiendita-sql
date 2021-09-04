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
    let resultado = await pool.query('INSERT INTO ciudad(nombre, ref_pais) VALUES ($1, $2)', [ciudad.nombre, ciudad.pais])
    return resultado
}

async function actualizarCiudad( ciudad ) {
    let resultado = await pool.query('UPDATE ciudad SET nombre = $1, ref_pais = $2 WHERE id_ciudad = $3', [ciudad.nombre, ciudad.pais, ciudad.id_ciudad])
    return resultado
}

async function eliminarCiudad( ciudad ) {
    let resultado = await pool.query('DELETE FROM ciudad WHERE id_ciudad = $1', [ciudad.id_ciudad])
    return resultado
}

module.exports = {
    obtener: obtenerCiudades,
    agregar: agregarCiudad,
    actualizar: actualizarCiudad,
    eliminar: eliminarCiudad,
}