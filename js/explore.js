// Create a function with one parameter
// The one parameter will be a string
// reverse the string parameter by splitting string in single letters (.split)
// Then reverse the order of the strings letters (.reverse)
// Next join the letters back together using (.join)
// Text the function

var num = 1

function Tune(song){
  var reveresedSong = song.split('').reverse().join('');
  if (num == 1){
  console.log(reveresedSong)
  } else {
    console.log("Nope!")
  }
}
Tune("Babe I got you babe...")
