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
NotebookDataLength[      3757,        101]
NotebookOptionsPosition[      4199,         93]
NotebookOutlinePosition[      4762,        116]
CellTagsIndexPosition[      4719,        113]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 10, $CellContext`\[Sigma]$$ = 0.1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 10, 300, 1}, {
      Hold[$CellContext`\[Sigma]$$], 0.1, 10}}, Typeset`size$$ = {
    513., {121., 126.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$180866$$ = 
    0, $CellContext`\[Sigma]$180867$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`n$$ = 10, $CellContext`\[Sigma]$$ = 0.1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$180866$$, 0], 
        Hold[$CellContext`\[Sigma]$$, $CellContext`\[Sigma]$180867$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> ($CellContext`list = RandomVariate[
          NormalDistribution[0, $CellContext`\[Sigma]$$], $CellContext`n$$]; 
       Legended[
         Show[
          
          Histogram[$CellContext`list, Automatic, "PDF", ChartStyle -> 
           RGBColor[0.41, 0.65, 1]], 
          
          SmoothHistogram[$CellContext`list, Automatic, PlotStyle -> 
           Directive[Thick, Green]], 
          Plot[
           PDF[
            NormalDistribution[
            0, $CellContext`\[Sigma]$$], $CellContext`x], {$CellContext`x, \
(-5) $CellContext`\[Sigma]$$, 5 $CellContext`\[Sigma]$$}, PlotStyle -> 
           Directive[Thick, Red]], PlotLabel -> 
          "Sampled Normal Distribution shown from -5\[Sigma] to 5\[Sigma]"], 
         Column[{
           SwatchLegend[{
             RGBColor[0.41, 0.65, 1]}, {"Data"}], 
           LineLegend[{
             Directive[Thick, Green]}, {"Smoothed Data"}], 
           LineLegend[{
             Directive[Thick, Red]}, {"Normal Distribution"}]}]]), 
      "Specifications" :> {{$CellContext`n$$, 10, 300, 
         1}, {$CellContext`\[Sigma]$$, 0.1, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{564., {182., 187.}},
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
WindowSize->{602, 382},
WindowMargins->{{650, Automatic}, {Automatic, 281}},
Visible->True,
AuthoredSize->{602.08, 382.13},
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
Cell[1463, 33, 2732, 58, 371, "Output"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 7vTmXxJ#NNj2lC1QlZwrSZXc *)
