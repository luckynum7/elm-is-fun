module App.View exposing (view)

import Html exposing (Html, div)
import App.Model exposing (Page(..), Model)
import App.Update exposing (Msg(..))
import Pages.Welcome.View
import Pages.PageNotFound.View


view : Model -> Html Msg
view model =
    div [] [ viewMainContent model ]


viewMainContent : Model -> Html Msg
viewMainContent model =
    case model.activePage of
        Welcome ->
            Pages.Welcome.View.view

        PageNotFound ->
            Pages.PageNotFound.View.view
