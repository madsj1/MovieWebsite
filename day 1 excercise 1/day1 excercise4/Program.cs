using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace day1_excercise4
{
    class Program
    {
            public static int GCD(int x, int y)
        {
            int r;
            while (y != 0)
            {
                r = x % y;
                x = y;
                y = r;
            }
            return x;
        }
    }
}

