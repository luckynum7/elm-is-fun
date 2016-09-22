module Main exposing (..)

import RouteUrl
import App.Update exposing (init, update, subscriptions)
import App.View exposing (view)
import App.Router exposing (delta2url, hash2messages)


main : Program Never
main =
    RouteUrl.program
        { delta2url = delta2url
        , location2messages = hash2messages
        , init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
