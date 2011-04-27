================
Count me Ishmael
================

(http://www.renesys.com/challenge_site/challenge/count_me_ishmael)

One of our employees is obsessed with Moby-Dick (or, The Whale). One day
she noticed that the names of the novel's two heroes (such as they are)
share an orthographic peculiarity. Both Ishmael and Queequeg have
substrings that fit this pattern: CVVC -- Consonant, Vowel, Vowel,
Consonant. MAEL in Ishmael, and QUEG in Queequeg.

The Task
========

Given the full text of Moby-Dick, find all the words with a CVVC substring.
Find the sum of the RANKS (see below) of 'Ishmael' and 'Queequeg' among
those words.

Example
=======

Suppose there are 9 unique CVVC words in Moby-Dick, listed below. Each is
preceded by its rank and count, and all are ranked by count (descending)
word (ascending):

   rank  count word
   1     81    boats
   2     50    could
   3     50    ishmael
   4     31    masthead
   5     31    queequeg
   6     8     without
   7     7     should
   8     6     look
   9     3     seen

The RANK is defined as the position of the word within that sorted list.
Thus, rank(ishmael) + rank(queequeg) = 3 + 5 = 8.

Challenge-Specific Notes
========================

* words should be case insensitive. 'The' and 'the' are the same word.
* a,e,i,o,u are vowels. y is a consonant.
* punctuation is neither a consonant or a vowel, and should be eliminated
  from all words, before evaluating for CVVC-ness.
* rank is descending and the most common word has rank = 1.
* in the case of ties, sort by alphabetical (ascii). (31,'masthead') ranks
  before (31,'queequeg').
* any whitespace delimits words.
* words must have at least one consonant or vowel character. A CVVC word
  must have at least 4, for obvious reasons.
* words like 'H.M.S', if they exist, should be rendered 'hms'.
* zipped file of the the full text is at moby-dick.zip (md5sum:
  44fb4ceb2b94421cdaca4dc496a48712). Project Gutenberg has added headers
  and footers. The proper text starts on Line 30 and goes to Line 21746
  (inclusive).
* Be wary! The input file might have soft returns ('\r' or '^M') or other
  nasty characters.
* Runtime should be nearly instant on a modern machine (one example, using
  cPython: 1 sec.).

General Notes
=============

* This should be simple. Coding it should take about 30 minutes! If you're
  two hours in, reconsider your choice of language, and check your
  assumptions.
* Use whatever langauge you like! To impress us, show more than one
  approach, or use your favorite novelty/Next Big Thing™ language (Haskell,
  Go, Clojure, Javascript, Scala, Scheme, Algol-68, etc!). (We're not going
  to run the code, but we want to see your work.)
* Readability, comments, and code organization matter.

