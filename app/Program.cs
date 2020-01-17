using System;
using System.Threading.Tasks;

namespace randomfacts
{
    class Program
    {
        static void Main(string[] args)
        {
        	while (true) {
        		Task.Delay(2000).Wait(); 
            	Console.WriteLine("Hello World!");
            }
            //https://uselessfacts.jsph.pl/random.json?language=en
        }
    }
}
