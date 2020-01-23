module Components exposing (appHeader, appFooter, readingSpace)

import Html exposing (Html, header, h1, h2, footer, div, p, a, text, button)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onClick)

import Model exposing (Model, Msg(..))

appHeader : Html msg
appHeader =
    header [ class "row justify-content-md-center app-header"] [
        div [ class "col-md-12" ] [
            h1 [ class "app-header--symbol" ] [ text "☿" ],
            h2 [ class "app-header--text"] [ text "CyberTarot - ELM Version" ]
        ]
    ]

appFooter : Html msg
appFooter =
    footer [ class "row app-footer justify-content-md-center" ] [
        div [ class "col-md-8" ] [ 
            p [ class "app-footer--info" ] [
                text "Crafted by ",
                a [ href "https://github.com/raveneyex" ] [ text "raveneyex" ]
            ]
        ]
    ]

newReadingButton : Html Msg
newReadingButton =
    div [class "row justify-content-md-center"][
        div [class "col"][
            button [
                class "btn btn-primary",
                onClick New
            ][ text "New Reading"]
        ]
    ]

actionButtons : Html Msg
actionButtons =
    div [class "row justify-content-md-center"][
        div [class "col"][
            button [
                class "btn btn-primary",
                onClick Draw
            ][ text "Draw Card"]
        ],
        div [class "col"][
            button [
                class "btn btn-primary",
                onClick End
            ][ text "End Reading"]   
        ]
    ]

actionBar : Model -> Html Msg
actionBar m =
    if m.started == True then
        actionButtons
    else
        newReadingButton

spread : Model -> Html msg
spread m =
    div [][ text m.title]

readingSpace : Model -> Html Msg
readingSpace m =
    div [ class "container"][
        spread m,
        actionBar m
    ]



    

