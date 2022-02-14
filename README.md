# ZipZip

Documentation available on [HexDocs](https://hexdocs.pm/zip_zip).

Packaged on [Hex.pm](https://hex.pm/packages/zip_zip/0.1.0).

A small Elixir functional library for zippers. For now, zippers in `ZipZip` zip
lists and are in two dimensions only.

Note: The internal structure of a zipper should be considered opaque and subject
to breaking change. To get or update the current item, traverse the zipper, or
perform any other operation on the zipper, use the library's public functions.

References:
  * [Wikipedia](https://en.wikipedia.org/wiki/Zipper_(data_structure))
  * [Gerard Huet's original paper](https://www.st.cs.uni-saarland.de/edu/seminare/2005/advanced-fp/docs/huet-zipper.pdf)
  * [Clojure stdlib](https://clojuredocs.org/clojure.zip/zipper)
  * [ElixirForum post](https://elixirforum.com/t/elixir-needs-a-fifo-type/5701/24)
