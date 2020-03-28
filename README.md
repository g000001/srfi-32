# SRFI 32 for CL: Sort Libraries

- copyright (C) Olin Shivers (1998, 1999). 
All Rights Reserved. 

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

** Reference implementation

===========================

Short summary: no restrictions.

While I wrote all of this code myself, I read a lot of code before I began
writing. However, all such code is, itself, either open source or public
domain, rendering irrelevant any issue of "copyright taint."

The natural merge sorts (pure list, destructive list, and vector) are not only
my own code, but are implementations of an algorithm of my own devising. They
run in O(n lg n) worst case, O(n) best case, and require only a logarithmic
number of stack frames. And they are stable. And the destructive-list variant
allocates zero cons cells; it simply rearranges the cells of the input list.

Hence the reference implementation is
    Copyright (c) 1998 by Olin Shivers.
and made available under the same copyright as the SRFI text (see above).
