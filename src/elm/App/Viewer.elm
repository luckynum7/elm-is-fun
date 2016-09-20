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
    emptyModel ! []



-- UPDATE


type Msg
    = SetActivePage Page


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetActivePage page ->
            { model | activePage = setActivePageAccess page } ! []



-- SUBSCRIPTIONS
-- VIEW
