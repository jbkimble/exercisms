var DnaTranscriber = function(){
  this.toRna = function(nucleotides) {
    var rna = '';
    for (i = 0; i < nucleotides.length; i++)
      if (nucleotides[i] === 'C') {
        rna += 'G';
      } else if (nucleotides[i] === 'G') {
        rna += 'C';
      } else if (nucleotides[i] === 'T') {
        rna += 'A';
      } else {
        rna += 'U';
      }
      return rna
  }
};

module.exports = DnaTranscriber;
