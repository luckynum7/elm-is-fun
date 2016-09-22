module App.Router exposing (delta2url, hash2messages)

import Navigation exposing (Location)
import RouteUrl exposing (HistoryEntry(..), UrlChange)
import RouteUrl.Builder as Builder exposing (Builder)
import App.Model exposing (Page(..), Model)
import App.Update exposing (Msg(..))


delta2url : Model -> Model -> Maybe UrlChange
delta2url previous current =
    case current.activePage of
        Welcome ->
            Just <| UrlChange NewEntry "/#welcome"


hash2messages : Location -> List Msg
hash2messages location =
    case location.hash of
        "/#welcome" ->
            [ SetActivePage Welcome ]

        _ ->
            [ SetActivePage Welcome ]