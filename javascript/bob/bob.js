//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (input.length === 0 || input[0] === " ") {
    return 'Fine. Be that way!'
  } else if (input === input.toUpperCase() && input == input.toLowerCase() && input[0] !== '4') {
    return 'Whatever.'
  } else if (input === input.toUpperCase() && input[0] !== '4') {
    return 'Whoa, chill out!';
  } else if (input.slice(-1) === '?') {
    return 'Sure.'
  }
  return 'Whatever.'
};

module.exports = Bob;
