(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[      3019,         82]
NotebookOptionsPosition[      3448,         74]
NotebookOutlinePosition[      4024,         97]
CellTagsIndexPosition[      3981,         94]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`mean$$ = 
    0.9100000000000001, $CellContext`std$$ = 1.1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`mean$$], 0.9100000000000001}, -4, 4}, {{
       Hold[$CellContext`std$$], 1.1}, 0.5, 10}}, Typeset`size$$ = {
    360., {116., 120.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`mean$149941$$ = 
    0, $CellContext`std$149942$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`mean$$ = 
        0.9100000000000001, $CellContext`std$$ = 1.1}, "ControllerVariables" :> {
        Hold[$CellContext`mean$$, $CellContext`mean$149941$$, 0], 
        Hold[$CellContext`std$$, $CellContext`std$149942$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        PDF[
         NormalDistribution[$CellContext`mean$$, $CellContext`std$$], \
$CellContext`x], {$CellContext`x, -10, 10}, PlotRange -> {{-10, 10}, {0, 1}}],
       "Specifications" :> {{{$CellContext`mean$$, 0.9100000000000001}, -4, 
         4}, {{$CellContext`std$$, 1.1}, 0.5, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{411., {176., 181.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
},
WindowSize->{439, 369},
WindowMargins->{{732, Automatic}, {Automatic, 287}},
Visible->True,
AuthoredSize->{439.90000000000003`, 369.77},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Microsoft Windows (64-bit) (January 25, 2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1463, 33, 1981, 39, 359, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 2w0Y#YpSBTEZJBwaDMZoja#1 *)
