module Main exposing (main)

import Browser exposing (element)
import Html exposing (Html, div)
import Html.Attributes exposing (class)

-- Import Model
import Model exposing (Model, Msg, model, update)
-- Import Components
import Components exposing (appHeader, appFooter, readingSpace)

-- MAIN
main : Program () Model Msg
main =
    element
    {
        init = init,
        update = update,
        view =  view,
        subscriptions = \_ -> Sub.none
    }

init: () -> (Model, Cmd Msg)
init _ = (model, Cmd.none)

-- VIEW
-- Html is defined as: elem [ attribs ][ children ]
-- CSS can be applied via class names or inline style attrib
view : Model -> Html Msg
view m =
    div [class "app-container container"][
        appHeader,
        div [ class "container" ][
            readingSpace m
        ],
        appFooter
    ]
