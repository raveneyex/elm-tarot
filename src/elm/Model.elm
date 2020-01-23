module Model exposing (Model, Msg(..), model, update)

-- MODEL
type alias Model = 
    {
        title : String,
        started : Bool,
        deck : List Card,
        drawnCards : List Card
    }

type alias Card =
    {
        number : Int,
        name : String,
        arcana : String,
        suit : String,
        reversed : Bool,
        keywords : List String
    }

type Msg =
    New |
    Draw |
    End

model : Model
model = 
    {
        title = "Reading",
        started = False,
        deck = [],
        drawnCards = []
    }

update : Msg -> Model -> (Model, Cmd Msg)
update msg m =
    case msg of
        New ->
            -- Start a new reading
            ({ m |
                started = True,
                deck = []
            }, Cmd.none)

        Draw ->
            -- Draw a new card
            ({ m |
                deck = [],
                drawnCards = []
            }, Cmd.none)

        End ->
            -- End reading
            ({ m |
                started = False,
                deck = [],
                drawnCards = []
            }, Cmd.none)

