request = require 'request'

class DirectionsAPI
  fetch: (userOptions, callback) ->
    {from, to} = userOptions
    options =
      url: 'https://maps.googleapis.com/maps/api/directions/json'
      qs:
        origin: from
        destination: to
        mode: 'walking'
      json: true

    request options, (err, res, body) ->
      return callback err, null if err?

      overview = body.routes[0].legs[0]
      distance = overview.distance.text
      duration = overview.duration.text

      callback null, {distance, duration}

module.exports = DirectionsAPI
