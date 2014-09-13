## Usage

```coffee
DirectionsAPI = require './index'

client = new DirectionsAPI

options =
  from: '1154 S Clark St, Chicago, IL 60605'
  to: 'LaSalle/Van Buren'
  mode: 'walking'

client.fetch options, (err, results) ->
  console.log 'err', err
  console.log 'results', results
```

### Modes

| Value     | Description                                       |
| --------- | ------------------------------------------------- |
| driving   | Driving directions via the road network (default) |
| walking   | Walking directions via paths & sidewalks          |
| bicycling | Bicycling directions via paths & prefered streets |
| transit   | Public transit Directions                         |
