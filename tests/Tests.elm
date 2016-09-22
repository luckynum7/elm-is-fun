module Tests exposing (..)

import Expect
import Fuzz exposing (..)
import Test exposing (..)
import String


all : Test
all =
    describe "elm-is-fun"
        [ example1
        , example2
        ]


example1 : Test
example1 =
    describe "A Test Suite"
        [ test "Addition" <|
            \() ->
                Expect.equal (3 + 7) 10
        , test "String.left" <|
            \() ->
                Expect.equal "a" (String.left 1 "abcdefg")
        , test "This test should fail" <|
            \() ->
                Expect.fail "failed as expected!"
        ]


example2 : Test
example2 =
    describe "The String module"
        [ describe "String.reverse"
            -- Nest as many descriptions as you like.
            [ test "has no effect on a palindrome" <|
                \() ->
                    let
                        palindrome =
                            "hannah"
                    in
                        Expect.equal palindrome (String.reverse palindrome)
              -- Expect.equal is designed to be used in pipeline style, like this.
            , test "reverses a known string" <|
                \() ->
                    "ABCDEFG"
                        |> String.reverse
                        |> Expect.equal "GFEDCBA"
              -- fuzz runs the test 100 times with randomly-generated inputs!
            , fuzz string "restores the original string if you run it again" <|
                \randomlyGeneratedString ->
                    randomlyGeneratedString
                        |> String.reverse
                        |> String.reverse
                        |> Expect.equal randomlyGeneratedString
            ]
        ]
