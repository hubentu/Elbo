test_that("is_scalar_character() works", {
    expect_true(is_scalar_character("foo")) 
    expect_false(is_scalar_character(c("foo", "bar")))
    expect_false(is_scalar_character(123))
    expect_false(is_scalar_character(character()))
    expect_false(is_scalar_character(NA_character_))
    expect_false(is_scalar_character(""))
    })

test_that("hi() starts a conversation", {
    expect_identical(
      hi("world"),
      "hello WORLD you have 5 letters in your name!"
    )
    expect_identical(
      hi("world", "whisper"),
      "hello world you have 5 letters in your name!"
    )
    expect_error(
      hi("world", how="murmur"),
      "'arg' should be one of \"shout\", \"whisper\"" #options(useFancyQuotes = FALSE)
      )
})