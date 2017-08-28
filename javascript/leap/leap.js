var Year = function(date) {
    this.date = date
    this.isLeap = function() {
      if (this.date % 400 === 0) {
         return true
       } else if (this.date % 100 === 0) {
         return false
       } else if (this.date % 4 === 0) {
         return true
       } else {
         return false
       }
    }
};

module.exports = Year;
