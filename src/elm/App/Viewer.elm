module App.Viewer exposing (..)

import Html exposing (Html, div)


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
            { model | activePage = page } ! []



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div [] []



-- ROUTING
