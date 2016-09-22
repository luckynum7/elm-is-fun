module App.Test exposing (all)

import Expect
import Test exposing (..)
import App.Model exposing (Page(..), emptyModel)
import App.Update exposing (Msg(..), update)


all : Test
all =
    describe "App tests"
        [ setActivePage
        ]


setActivePage : Test
setActivePage =
    describe "SetActivePage msg"
        [ test "set Welcome active page" <|
            \() ->
                Expect.equal Welcome (getPageAsAnonymous Welcome)
        ]


getPageAsAnonymous : Page -> Page
getPageAsAnonymous page =
    update (SetActivePage page) emptyModel
        |> fst
        |> .activePage
