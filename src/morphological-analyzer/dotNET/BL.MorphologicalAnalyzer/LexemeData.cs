using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.MorphologicalAnalyzer
{
    public class LexemeData
    {
        public string NomenalSingular { get; set; }
        public string GenetiveSingular { get; set; }
        public string PartitiveSingular { get; set; }
        public string IllativeSingular { get; set; }
        public string InessiveSingular { get; set; }
        public string ElativeSingular { get; set; }
        public string AdessiveAllativeSingular { get; set; }
        public string AblativeSingular { get; set; }
        public string TranslativeSingular { get; set; }
        public string ComitativeSingular { get; set; }


        //TODO: Add cases for plural

        public LexemeData() { }
    }
}
