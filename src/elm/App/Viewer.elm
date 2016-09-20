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
