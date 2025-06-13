using System;
using System.Linq;
using System.Text.RegularExpressions;

namespace Exercism.bob
{
    class Bob
    {
        public static string Hey(string request)
        {
            if (IsQuestion(request))
            {
                return "Sure.";
            }
            else if (IsLoud(request))
            {
                return "Whoa, chill out!";
            }
            else if (IsEmpty(request))
            {
                return "Fine. Be that way!";
            }
            else
            {
                return "Whatever.";
            }
        }

        public static bool IsQuestion(string request)
        {
            if (IsEmpty(request) || IsLoud(request))
                return false;

            char[] charArray = StringToArray(request);
            return '?'.Equals(charArray.Last());
        }

        public static bool IsLoud(string request)
        {
            if (IsEmpty(request) || IsAllNumeric(request))
                return false;


            char[] charArray = StringToArray(request);

            if ('!'.Equals(charArray.Last()) && Char.IsUpper(charArray[charArray.Length - 2]))
                return true;

            foreach (char c in charArray)
            {
                if (!Char.IsPunctuation(c))
                {
                    if (Char.IsLower(c))
                        return false;
                }

            }
            return true;
        }

        public static bool IsAllNumeric(string request)
        {
            if (IsEmpty(request))
                return false;

            char[] charArray = StringToArray(request);

            foreach (char c in charArray)
            {
                if (!Char.IsPunctuation(c))
                {
                    int i = 0;
                    bool result = Int32.TryParse(c.ToString(), out i);

                    if (!result)
                        return false;
                }
            }

            return true;
        }

        public static bool IsEmpty(string request)
        {
            return StringToArray(request).Length == 0;
        }

        public static char[] StringToArray(string request)
        {
            string parsedRequest = Regex.Replace(request, @"\s+", "");
            return parsedRequest.ToCharArray();
        }


    }
}