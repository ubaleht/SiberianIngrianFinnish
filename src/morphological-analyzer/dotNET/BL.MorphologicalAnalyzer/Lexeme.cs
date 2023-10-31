using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.MorphologicalAnalyzer
{
    public class Lexeme : ILexeme
    {
        char[] volwels = { 'a', 'o', 'u', 'í', 'õ', 'é', 'è', 'i', 'ü', 'y', 'e', 'ä', 'ö' };
        String[] longVolwels = { "aa", "uu", "üü", "ee", "ää", "ii" };

        char[] consonants = { 'p', 'b', };

        String[] additionalConsonants = { "'", "ò", "à" };

        public Lexeme() { }

        public virtual LexemeData LexemeGeneration(List<string> startForms) 
        {
            return new LexemeData();
        }
    }
}
