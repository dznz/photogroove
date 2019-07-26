module Test.Generated.Main2663040442 exposing (main)

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
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 369578533536804, processes = 3, paths = ["/app/tests/PhotoGrooveTests.elm"]}