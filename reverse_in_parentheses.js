// Javascript implementation of the approach
function reverse(A,l,h)
{
    if (l < h)
    {
      let ch = A[l];
      A[l] = A[h];
      A[h] = ch;
      reverse(A, l + 1, h - 1);
    }
}

 // Function to return the modified string
function reverseParentheses(str,len)
{
    let st = [];
    for (let i = 0; i < len; i++)
    {

      // Push the index of the current
      // opening bracket
      if (str[i] == '(')
      {
        st.push(i);
      }

      // Reverse the substring starting
      // after the last encountered opening
      // bracket till the current character
      else if (str[i] == ')')
      {

        let A = [...str]
        reverse(A, st[st.length-1] + 1, i);
        str = [...A];
        st.pop();
      }
    }

    // To store the modified string
    let res = "";
    for (let i = 0; i < len; i++)
    {
      if (str[i] != ')' && str[i] != '(')
      {
        res += (str[i]);
      }
    }
    return res;
}

 // Driver code
let str = "(skeeg(for)skeeg)";
let len = str.length;
// document.write(reverseParentheses(str, len));
console.log(reverseParentheses(str, len))

// This code is contributed by patel2127
