The solution involves using the `take` function before evaluating the infinite list. This forces the evaluation to stop after taking the desired number of elements.  This prevents the stack overflow that occurs with premature evaluation of the infinite list.

```haskell
main :: IO ()
main = do
  let finiteList = take 10 [1..]
  print finiteList
```