```

[root@ip-172-31-12-16 ~]# terraform console
>

>

> 2 + 4
6
> 10 - 1
9
> 5 * 3
15
> 30 / 5
6
> contains(tolist(["orange","mango","apple"]), "kiwi")
false
> contains(tolist(["orange","mango","apple"]), "apple")
true
> contains(tolist(["orange","mango","apple"]), "mango")
true
>

>

>

> length("a,b,c")
5
> length(split(",", "a,b,c"))
3
>

>

> merge(tomap({"key"="val"}), tomap({"test"="abc"}))
tomap({
  "key" = "val"
  "test" = "abc"
})
>

>

>

> element(["a","b","c"], 1)
"b"
> element(["a","b","c"], 2)
"c"
> element(["a","b","c"], 0)
"a"
>

>

>

> lookup({a="ay", b="bee"}, "a", "what do you want ?")
"ay"
> lookup({a="ay", b="bee"}, "b", "what do you want ?")
"bee"
> lookup({a="ay", b="bee"}, "c", "what do you want ?")
"what do you want ?"
>

```
