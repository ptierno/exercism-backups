namespace Exercism.leap
{
    /// <summary>
    /// Class containing a single static method to determine if a year is a leap year.
    /// </summary>
    class Year
    {
        /// <summary>
        /// Method to determine if a year is a leap year.
        /// </summary>
        /// <param name="year">The year to check</param>
        /// <returns>true if it is a leap year, false otherwise</returns>
        public static bool IsLeap(int year)
        {
            bool conditionOne = year % 4 == 0;
            bool conditionTwo = year % 400 == 0 || !(year % 100 == 0);

            return conditionOne && conditionTwo;
        }
    }
}