module Test.Generated.Main3377104069 exposing (main)

import PhotoGrooveTests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "PhotoGrooveTests" [PhotoGrooveTests.decoderTest,
    PhotoGrooveTests.suite] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 126146640833519, processes = 3, paths = ["/app/tests/PhotoGrooveTests.elm"]}