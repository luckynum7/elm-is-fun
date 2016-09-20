module App.Viewer exposing (..)

import Html exposing (Html, div)
import Navigation exposing (Location)
import RouteUrl exposing (HistoryEntry(..), UrlChange)
import RouteUrl.Builder as Builder exposing (Builder)


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
