sneaker_collection = {
  nikes:{
    collection_info:{
      total_pairs:17,
      high_tops:3,
      low_tops:14
    },
    colors:{
      black:2,
      blue:2,
      green:6,
      grey:6,
      white:0,
      other:1
    },
    sneaker_names: [
    "dunk",
    "lunar force",
    "huarache",
    "air max"]
  },

  adidas:{
    collection_info:{
      total_pairs:5,
      high_tops:2,
      low_tops:3,
    },
    colors:{
      black:0,
      blue:2,
      green:1,
      grey:1,
      white:1,
      other:0
    },
    sneaker_names: [
    "d rose 3.5",
    "forum",
    "crazylight boost",
    "superstar"]
  },

  vans:{
    collection_info:{
      total_pairs:7,
      high_tops:5,
      low_tops:2,
    },
    colors:{
      black:1,
      blue:2,
      green:1,
      grey:1,
      white:0,
      other:2,
    },
    sneaker_names: [
      "sk8-hi",
      "106",
      "half cab",
      "old skool"]
  }
}

#returns the last item in the vans, name collection
sneaker_collection[:vans][:sneaker_names][3]

#returns the nike names collection in reverse
sneaker_collection[:nikes][:sneaker_names].reverse

#returns the adidas name collection with another shoe name added, 'jabbar'
sneaker_collection[:adidas][:sneaker_names].push("jabbar")