using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.MorphologicalAnalyzer
{
    public class LexemeNoun : Lexeme
    {
        public LexemeNoun() : base() 
        {
            
        }

        public override LexemeData LexemeGeneration(List<string> startForms)
        {
            return base.LexemeGeneration(startForms);
        }
    }
}
