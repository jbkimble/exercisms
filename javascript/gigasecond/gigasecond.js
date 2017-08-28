var Gigasecond = function(birthday) {
  this.birthday = birthday
  this.date = function() {
    var t = this.birthday;
    return (t.getTime() + 1000000000);
    // return t;
  }
};

module.exports = Gigasecond;
