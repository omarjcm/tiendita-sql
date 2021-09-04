const pool = require('../../bd')

async function obtenerPaises( filtroPais ) {
    let resultado = null

    if (filtroPais) {
        resultado = await pool.query('SELECT * FROM pais WHERE nombre LIKE $1;', ['%' + filtroPais + '%'])
    } else {
        resultado = await pool.query('SELECT * FROM pais')
    }
    return resultado.rows
}

module.exports = {
    obtener: obtenerPaises,
}