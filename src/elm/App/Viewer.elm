module App.Viewer exposing (..)

import RouteUrl exposing (UrlChange)


-- MODEL


type Page
    = Welcome


type alias Model =
    { activePage : Page
    }


emptyModel : Model
emptyModel =
    { activePage = Welcome
    }


init : ( Model, Cmd Msg )
init =
    ( emptyModel, Cmd.none )



-- UPDATE


type Msg
    = SetActivePage Page



-- SUBSCRIPTIONS
-- VIEW
