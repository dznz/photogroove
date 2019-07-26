module Test.Generated.Main639987968 exposing (main)

import PhotoGrooveTests

import Test.Reporter.Reporter exposing (Report(..))
import Console.Text exposing (UseColor(..))
import Test.Runner.Node
import Test

main : Test.Runner.Node.TestProgram
main =
    [     Test.describe "PhotoGrooveTests" [PhotoGrooveTests.dumbTest,
    PhotoGrooveTests.decoderTest,
    PhotoGrooveTests.thumbnailsWork,
    PhotoGrooveTests.noPhotosNoThumbnails] ]
        |> Test.concat
        |> Test.Runner.Node.run { runs = Nothing, report = (ConsoleReport UseColor), seed = 46718827333376, processes = 3, paths = ["/app/tests/PhotoGrooveTests.elm"]}