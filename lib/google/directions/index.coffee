request = require 'request'

class DirectionsAPI
  fetch: (userOptions, callback) ->
    {from, to, mode} = userOptions
    options =
      url: 'https://maps.googleapis.com/maps/api/directions/json'
      qs:
        origin: from
        destination: to
        mode: mode
      json: true

    request options, (err, res, body) ->
      callback err, body

module.exports = DirectionsAPI
