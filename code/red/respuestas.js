exports.exito = function(req, res, dato, estado) {
    res.status( estado || 200 ).send({
        error: '',
        body: dato
    })
}

exports.error = function(req, res, dato, estado) {
    console.error('[error] - ' + dato)
    res.status( estado || 500 ).send({
        error: dato,
        body: ''
    })
}