## Usage

```coffee
DirectionsAPI = require './index'

client = new DirectionsAPI

options =
  from: '1154 S Clark St, Chicago, IL 60605'
  to: 'LaSalle/Van Buren'

client.fetch options, (err, results) ->
  console.log 'err', err
  console.log 'results', results
```
