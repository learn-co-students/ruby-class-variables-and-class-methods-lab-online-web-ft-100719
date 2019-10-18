

```ruby
Song.genre_count
  # => {"rap" => 5, "rock" => 1, "country" => 3}
```

This manner of displaying numerical data is called a [histogram](https://en.wikipedia.org/wiki/Histogram). How will you create your histogram? You will need to iterate over the `@@genres` array and populate a hash with the key/value pairs. You will need to check to see if the hash already contains a key of a particular genre. If so, increment the value of that key by one, otherwise, create a new key/value pair.

* Write a class method, `.artist_count`, that returns a histogram similar to the one above, but for artists rather than genres. 

<p class='util--hide'>View <a href='https://learn.co/lessons/ruby-class-variables-and-class-methods-lab'>Class Variables and Methods Lab</a> on Learn.co and start learning to code for free.</p>
