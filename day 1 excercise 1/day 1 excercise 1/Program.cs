﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace day_1_excercise_1
{
    class Program
    {
            public static void Main()
        {
            Console.WriteLine("enter the number");
            int i = int.Parse(Console.ReadLine());

            for (int j = 2; j <= i; j++)
            {
                for (int k = 2; k <= i; k++)
                {
                    if (j == k)
                    {
                        Console.WriteLine("{0}is prime", j);

                        break;
                    }
                    else if (j % k == 0)
                    {
                        break;
                    }
                }
            }
            Console.ReadLine();
        }
    }
}

