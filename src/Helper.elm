module Helper exposing (..)

import Html
import Html.Attributes



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
-- main : Html.Html msg
-- main =
--     Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
-- headers : String -> Html msg
-- headers titulo =
--     Html.h1 [] [ text titulo ]
-- hyperlink : String -> String -> Html msg
-- hyperlink url etiqueta =
--     Html.a [ href url ] [ text etiqueta ]


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
