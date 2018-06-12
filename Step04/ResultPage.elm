module Step04.ResultPage exposing (..)

import Html exposing (Html, a, beginnerProgram, div, h1, iframe, p, text)
import Html.Attributes exposing (class, href, id, src, style)

resultMsg : Int -> String
resultMsg score = 
    if score <= 3
    then "Keep going, I'm sure you can do better!"
    else "Congrats, this is really good!"


resultPage : Int -> Html msg
resultPage score =
    div [ class "score" ]
        [ h1 [] [ text ("Your score: " ++ (toString score) ++ " / 5") ]
        , a [ class "btn btn-primary", href "#" ] [ text "Replay" ]
        , p [] [ text (resultMsg score) ]
        ]



------------------------------------------------------------------------------------------------------------------------
-- You don't need to worry about the code below, it only displays the result of your code and the result of the tests --
------------------------------------------------------------------------------------------------------------------------


main =
    div []
        [ div [ class "jumbotron" ] [ resultPage 3 ]
        , iframe [ src "./Tests/index.html", class "mt-5 w-75 mx-auto d-block", style [ ( "height", "500px" ) ] ] []
        ]
