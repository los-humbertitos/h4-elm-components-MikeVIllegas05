module Helper exposing (..)

import Char
import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, text)
import Html.Attributes exposing (href)



--Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"


main : Html.Html msg
main =
    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]


type GradeStatus
    = Approved
    | Failed
    | Pending


categorize : Float -> GradeStatus
categorize grade =
    if grade < 0 then
        Pending

    else if grade > 7 then
        Approved

    else
        Failed


categoriGrades : List Float -> List GradeStatus
categoriGrades list =
    List.map categorize list


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir Reembolso"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html msg
headers param =
    div []
        [ h1 [] [ text param ]
        , h2 [] [ text param ]
        , h3 [] [ text param ]
        , h4 [] [ text param ]
        , h5 [] [ text param ]
        , h6 [] [ text param ]
        ]


hyperlink : String -> String -> Html msg
hyperlink url linkText =
    a [ href url ] [ text linkText ]
