using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.MorphologicalAnalyzer
{
    public interface ILexeme
    {
        LexemeData LexemeGeneration(List<string> startForms);
    }
}
