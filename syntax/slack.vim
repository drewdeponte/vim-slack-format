" Vim syntax file
" Language: Slack Format
" Maintainer: Andrew De Ponte
" Latest Revision: 22 June 2017

if exists("b:current_syntax")
	finish
endif

" https://get.slack.help/hc/en-us/articles/202288908-Format-your-messages

" bold - *word anotherword*
syn region slackFormatBold start="\%(^\|\s\)\@<=\*\S\@=" end="\S\@<=\*\%($\|\s\|[[:punct:]]\)\@<=" keepend

" italic - _word anotherword_
syn region slackFormatItalic start="\%(^\|\s\)\@<=_\S\@=" end="\S\@<=_\%($\|\s\|[[:punct:]]\)\@<=" keepend

" strike through - ~word anotherword~
syn region slackFormatStrike start="\%(^\|\s\)\@<=\~\S\@=" end="\S\@<=\~\%($\|\s\|[[:punct:]]\)\@<=" keepend

"   inline code block `inline code`
syn region slackFormatInlineCode start="\%(^\|\s\)\`\S\@=" end="\S\@<=\`\%($\|\s\|[[:punct:]]\)\@<=" keepend

"   block of preformated fixed with code ```code and stuff``` 
syn region slackFormatCodeBlock start="^\s*```" end="\s*```$" keepend

"   > to block quote one paragraph
"   >>> to block quote multiple paragraphs

" Highlight

hi def Italic term=italic cterm=italic gui=italic
hi def Bold term=bold cterm=bold gui=bold
hi def Strike term=reverse cterm=reverse gui=reverse

hi def link slackFormatBold Bold
hi def link slackFormatItalic Italic
hi def link slackFormatStrike Strike
hi def link slackFormatInlineCode Type
hi def link slackFormatCodeBlock String

let b:current_syntax="slack"
