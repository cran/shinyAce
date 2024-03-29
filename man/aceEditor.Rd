% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ace-editor.R
\name{aceEditor}
\alias{aceEditor}
\title{Render Ace}
\usage{
aceEditor(
  outputId,
  value,
  mode,
  theme,
  vimKeyBinding = FALSE,
  readOnly = FALSE,
  height = "400px",
  fontSize = 12,
  debounce = 1000,
  wordWrap = FALSE,
  showLineNumbers = TRUE,
  highlightActiveLine = TRUE,
  selectionId = NULL,
  cursorId = NULL,
  hotkeys = NULL,
  code_hotkeys = NULL,
  autoComplete = c("disabled", "enabled", "live"),
  autoCompleters = c("snippet", "text", "keyword"),
  autoCompleteList = NULL,
  tabSize = 4,
  useSoftTabs = TRUE,
  showInvisibles = FALSE,
  setBehavioursEnabled = TRUE,
  showPrintMargin = TRUE,
  autoScrollEditorIntoView = FALSE,
  maxLines = NULL,
  minLines = NULL,
  placeholder = NULL
)
}
\arguments{
\item{outputId}{The ID associated with this element}

\item{value}{The initial text to be contained in the editor.}

\item{mode}{The Ace \code{mode} to be used by the editor. The \code{mode}
in Ace is often the programming or markup language that you're using and
determines things like syntax highlighting and code folding. Use the
\code{\link{getAceModes}} function to enumerate all the modes available.}

\item{theme}{The Ace \code{theme} to be used by the editor. The \code{theme}
in Ace determines the styling and coloring of the editor. Use
\code{\link{getAceThemes}} to enumerate all the themes available.}

\item{vimKeyBinding}{If set to \code{TRUE}, Ace will enable vim-keybindings.
Default value is \code{FALSE}.}

\item{readOnly}{If set to \code{TRUE}, Ace will disable client-side editing.
If \code{FALSE} (the default), it will enable editing.}

\item{height}{A number (which will be interpreted as a number of pixels) or
any valid CSS dimension (such as "\code{50\%}", "\code{200px}", or
"\code{auto}").}

\item{fontSize}{Defines the font size (in px) used in the editor and should
be an integer. The default is 12.}

\item{debounce}{The number of milliseconds to debounce the input. This will
cause the client to withhold update notifications until the user has
stopped typing for this amount of time. If 0, the server will be notified
of every keystroke as it happens.}

\item{wordWrap}{If set to \code{TRUE}, Ace will enable word wrapping.
Default value is \code{FALSE}.}

\item{showLineNumbers}{If set to \code{TRUE}, Ace will show line numbers.}

\item{highlightActiveLine}{If set to \code{TRUE}, Ace will highlight the active
line.}

\item{selectionId}{The ID associated with a change of selected text}

\item{cursorId}{The ID associated with a cursor change.}

\item{hotkeys}{A list whose names are ID names and whose elements are the
shortcuts of keys. Shortcuts can either be a simple string or a list with
elements 'win' and 'mac' that that specifies different shortcuts for win and
mac (see example 05).}

\item{code_hotkeys}{A nested list. The first element indicates the code type (e.g., "r")
The second element is a list whose names are ID names and whose elements are the
shortcuts of keys (see \code{hotkeys})}

\item{autoComplete}{Enable/Disable auto code completion. Must be one of the following:
\describe{
  \item{\code{"disabled"}}{Disable Code Autocomplete}
  \item{\code{"enabled"}}{Enable Basic Code Autocomplete. Autocomplete can be
    triggered using Ctrl-Space, Ctrl-Shift-Space, or Alt-Space.}
  \item{\code{"live"}}{Enable Live Code Autocomplete. In addition to Basic
    Autocomplete, it will automatically trigger at each key stroke.}
}
By default, only local completer is used where all aforementioned code pieces
  will be considered as candidates. Use \code{autoCompleteList} for static
  completions and \code{\link{aceAutocomplete}} for dynamic R code completions.}

\item{autoCompleters}{Character vector of completers to enable. If set to \code{NULL},
all completers will be disabled. Select one or more of "snippet", "text", "static",
"keyword", and "rlang" to control which completers to use. Default option is to
 use the "snippet", "text", and "keyword" autocompleters}

\item{autoCompleteList}{A named list that contains static code completions
candidates. This can be especially useful for Non-Standard Evaluation (NSE)
functions such as those in \code{dplyr} and \code{ggvis}. Each element in list
should be a character array whose words will be listed under the element key.
For example, to suggests column names from \code{mtcars} and \code{airquality},
you can use \code{list(mtcars = colnames(mtcars), airquality = colnames(airquality))}.}

\item{tabSize}{Set tab size. Default value is 4}

\item{useSoftTabs}{Replace tabs by spaces. Default value is TRUE}

\item{showInvisibles}{Show invisible characters (e.g., spaces, tabs, newline characters).
Default value is FALSE}

\item{setBehavioursEnabled}{Determines if the auto-pairing of special characters, like
quotation marks, parenthesis, or brackets should be enabled. Default value is TRUE.}

\item{showPrintMargin}{Show print margin. Default value is True}

\item{autoScrollEditorIntoView}{If TRUE, expands the size of the editor window as new lines are added}

\item{maxLines}{Maximum number of lines the editor window will expand to when autoScrollEditorIntoView is TRUE}

\item{minLines}{Minimum number of lines in the editor window when autoScrollEditorIntoView is TRUE}

\item{placeholder}{A string to use a placeholder when the editor has no content}
}
\description{
Render an Ace editor on an application page.
}
\examples{
\dontrun{
aceEditor(
  outputId = "myEditor",
  value = "Initial text for editor here",
  mode = "r",
  theme = "ambiance"
)

aceEditor(
  outputId = "myCodeEditor",
  value = "# Enter code",
  mode = "r",
  hotkeys = list(
    helpKey = "F1",
    runKey = list(
      win = "Ctrl-R|Ctrl-Shift-Enter",
      mac = "CMD-ENTER|CMD-SHIFT-ENTER"
    )
  ),
  wordWrap = TRUE, debounce = 10
)

aceEditor(
  outputId = "mySmartEditor",
  value = "plot(wt ~ mpg, data = mtcars)",
  mode = "r",
  autoComplete = "live",
  autoCompleteList = list(mtcars = colnames(mtcars))
)
}

}
\author{
Jeff Allen \email{jeff@trestletech.com}
}
