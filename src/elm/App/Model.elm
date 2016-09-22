module App.Model exposing (Page(..), Model, emptyModel)


type Page
    = Welcome


type alias Model =
    { activePage : Page
    }


emptyModel : Model
emptyModel =
    { activePage = Welcome
    }
