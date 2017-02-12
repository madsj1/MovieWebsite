using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace day1_excercise4
{
    class Program
    {
        static int GetGCD(int num1, int num2)
        {
            while (num1 != num2)
            {
                if (num1 > num2)
                    num1 = num1 - num2;

                if (num2 > num1)
                    num2 = num2 - num1;
            }
            return num1;
        }

        static void Main(string[] args)
        {
            Console.WriteLine("C# Program for GCD");

            Console.Write("Enter First Number: ");
            int a = Convert.ToInt32(Console.ReadLine());

            Console.Write("Enter Second Number: ");
            int b = Convert.ToInt32(Console.ReadLine());

            int gcd = GetGCD(a, b);
            
            Console.WriteLine("\nGCD({0,4},{1,4}) = {2,6}", a, b, gcd);
            Console.ReadLine();

        }
    }
}
