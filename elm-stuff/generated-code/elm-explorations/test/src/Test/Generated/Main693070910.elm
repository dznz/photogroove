module Test.Generated.Main693070910 exposing (main)

import PhotoGrooveTests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "PhotoGrooveTests" [PhotoGrooveTests.decoderTest,
    PhotoGrooveTests.thumbnailsWork,
    PhotoGrooveTests.noPhotosNoThumbnails] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 382128681466294, processes = 3, paths = ["/app/tests/PhotoGrooveTests.elm"]}