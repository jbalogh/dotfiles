;;; icicles-chg.el --- Change logs for Icicles libraries.
;; 
;; Filename: icicles-chg.el
;; Description: Change logs for Icicles libraries.
;; Author: Drew Adams
;; Maintainer: Drew Adams
;; Copyright (C) 2007, Drew Adams, all rights reserved.
;; Created: Tue Nov 27 07:47:53 2007
;; Version: 22.0
;; Last-Updated: Mon Dec 03 23:23:51 2007 (-28800 Pacific Standard Time)
;;           By: dradams
;;     Update #: 256
;; URL: http://www.emacswiki.org/cgi-bin/wiki/icicles-cmd.el
;; Keywords: extensions, help, abbrev, local, minibuffer,
;;           keys, apropos, completion, matching, regexp, command
;; Compatibility: GNU Emacs 20.x, GNU Emacs 21.x, GNU Emacs 22.x
;; 
;; Features that might be required by this library:
;;
;;   None
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;;; Commentary: 
;; 
;;  Change logs for Icicles libraries.
;;
;;  This file consolidates the change logs for all Icicles libraries.
;;  It contains no code.
;;
;;  Libraries `icicles-doc1.el' and `icicles-doc2.el' contain only
;;  documentation, and they do not have change logs.  Initially,
;;  everything was in one library, `icicles.el', so its change log is
;;  the oldest.
;;
;;  Note that `icicles-menu.el' is not really part of Icicles.  It has
;;  its own change log.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;; 
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;; 
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;(@> "Index")
;;
;;  If you have library `linkd.el' and Emacs 22 or later, load
;;  `linkd.el' and turn on `linkd-mode' now.  It lets you easily
;;  navigate around the sections of this doc.  Linkd mode will
;;  highlight this Index, as well as the cross-references and section
;;  headings throughout this file.  You can get `linkd.el' here:
;;  http://dto.freeshell.org/notebook/Linkd.html.
;;
;;  (@> "CHANGE LOG FOR `icicles-cmd.el'")
;;  (@> "CHANGE LOG FOR `icicles-face.el'")
;;  (@> "CHANGE LOG FOR `icicles-fn.el'")
;;  (@> "CHANGE LOG FOR `icicles-mac.el'")
;;  (@> "CHANGE LOG FOR `icicles-mcmd.el'")
;;  (@> "CHANGE LOG FOR `icicles-mode.el'")
;;  (@> "CHANGE LOG FOR `icicles-opt.el'")
;;  (@> "CHANGE LOG FOR `icicles-var.el'")
;;  (@> "CHANGE LOG FOR `icicles.el'")
 
;;;(@* "CHANGE LOG FOR `icicles-cmd.el'")
;;
;; 2007/12/03 dadams
;;     Renamed icicle-longest-common-match to icicle-expanded-common-match.
;; 2007/12/02 dadams
;;     icicle-read-color: Include color-valued variables as proxy candidates.
;; 2007/11/30 dadams
;;     icicle-command-abbrev:
;;       Use only membership in icicle-proxy-candidates, not icicle-proxy-candidate property.
;;       So predicate is just commandp, since proxies are not part of regular candidates.
;;     icicle-command-abbrev-action:
;;       Bind to save/restore: icicle-add-proxy-candidates-flag, icicle-proxy-candidates.
;;     icicle-command-abbrev-command: Bind icicle-add-proxy-candidates-flag to nil, to reset.
;; 2007/11/29 dadams
;;     icicle-command-abbrev: Treat icicle-add-proxy-candidates-flag, icicle-proxy-candidates.
;;     icicle-read-color: Don't test icicle-add-proxy-candidates-flag.
;; 2007/11/27 dadams
;;     icicle-command-abbrev: Remove icicle-proxy-candidate property in unwind-protect.
;; 2007/11/26 dadams
;;     icicle-get-anything-candidates: Fixed for try-completion and test-completion cases.
;;     icicle-choose-anything-candidate: Bind icicle-candidates-alist to actions (two places).
;; 2007/11/25 dadams
;;     Added: icicle-command-abbrev(-action|-command|-matching-commands|-record|regexp). 
;; 2007/11/24 dadams
;;     icicle-execute-extended-command: Bind use-file-dialog to nil.
;; 2007/11/17 dadams
;;     icicle-read-color:
;;       Respect icicle-add-proxy-candidates-flag.  Convert proxy multi-completions to strings.
;; 2007/11/03 dadams
;;     icicle-generic-S-tab: Doc string - mention icicle-generic-S-tab-keys.
;; 2007/10/28 dadams
;;     icicle-search: Don't bind icicle-expand-input-to-common-match-flag.  Updated doc string.
;;     icicle-search-highlight-all-input-matches:
;;       Don't set icicle-search-lcm unless icicle-expand-input-to-common-match-flag.
;;     icicle-search-highlight-and-maybe-replace:
;;       Match the lcm if icicle-search-replace-common-match-flag is non-nil.
;;       Save icicle-candidate-nb around icicle-update-completions.
;;       Set icicle-candidate-nb to 0 if nil.
;;     icicle-search-highlight-input-matches-here:
;;       Don't delete icicle-search-refined-overlays if icicle-*-all-current-flag.
;; 2007/10/26 dadams
;;     icicle-search-highlight-all-input-matches: Loop through overlays twice, to get the lcm.
;;     icicle-search-highlight-input-matches-here: Highlight the lcm, if available.
;;     icicle-search: Bind icicle-search-lcm.
;; 2007/10/22 dadams
;;    icicle-read-color: Use special-candidate face for pseudo color candidates.
;;    icicle-add-key+cmd: Don't include keys bound to undefined.
;; 2007/10/20 dadams
;;    icicle-read-color, icicle-remove-color-duplicates:
;;      Treat pseudo colors too (e.g. *point foreground*).
;;    icicle-make-color-candidate: Added optional HEX-RGB arg.
;; 2007/10/16 dadams
;;     icicle-vardoc: Prefix arg means use only user options.
;; 2007/10/14 dadams
;;     Updated doc strings to reflect new icicle-act-before-cycle-flag change.
;; 2007/10/13 dadams
;;     icicle-get-anything-candidates:
;;       If candidates is a fn, return fn that's useful for all-completions.  Filter by input.
;;     icicle-choose-anything-candidate:
;;       Don't sort or transform cands.  Respect Anything's require-pattern and delayed
;;       settings.  Bind icicle-candidates-alist to candidates, if that's a function.
;;     icicle-get-anything-candidates-of-type: Don't use mapcar if candidates is a function.
;;     Added: icicle-get-anything-req-pat-chars, icicle-get-anything-input-delay.
;; 2007/10/06 dadams
;;     icicle-choose-candidate-of-type: Added entry for file type.
;; 2007/09/25 dadams
;;     icicle-doc: Bind icicle-whole-candidate-as-text-prop-p to treat full candidates.
;; 2007/09/04 dadams
;;     icicle-read-color: Added optional PROMPT arg.
;; 2007/08/31 dadams
;;     icicle-buffer-list: Prefix arg means only buffers visiting files are candidates.
;;     icicle-search-where-arg, icicle-occur:
;;       Prefix arg 99 means only buffers visiting files are candidates.
;;     Added: icicle-search-choose-buffers.
;; 2007/08/27 dadams
;;     icicle-search-action: Fixed for return value.  Display the error message.
;; 2007/08/25 dadams
;;     icicle-choose-candidate-of-type: Removed (> emacs-major-version 21) restriction.
;; 2007/08/25 dadams
;;     Added: a, any, buffer, file, icicle-get-anything-(types|(default-)actions-for-type|
;;            candidates-of-type|(cached-)candidates), icicle-anything(-candidate-value),
;;            what-which-how, icicle-choose-anything-candidate.
;;     Renamed icicle-clear-option to clear-option.
;;     icicle-object-action: Treat Anything stuff.
;;       Added optional type arg.  Use vars icicle-object-(named|predicate)-types.
;;       Move icicle-read-var-value-satisfying call here from icicle-choose-candidate-of-type.
;;     icicle-choose-candidate-of-type: Create buffer if needed.
;;     Protected alias definitions with icicle-define-alias-commands-flag. 
;;     icicle-map(-action):
;;       Use icicle-whole-candidate-as-text-prop-p and new icicle-get-alist-candidate.
;;     icicle-(select|remove|search)-region, icicle-search:
;;       Bind/use icicle-whole-candidate-as-text-prop-p.
;;     icicle-occur: Require buffer names to match existing buffers.  Thx to Hadron Quark.
;; 2007/08/15 dadams
;;     Added command toggle as alias for icicle-toggle-option.
;; 2007/08/09 dadams
;;     Soft require kmacro.  Define icicle-kmacro* if kmacro gets loaded.
;; 2007/07/27 dadams
;;     icicle-search: Renamed icicle-act-first-then-navigate-p to icicle-act-before-cycle-flag.
;; 2007/07/22 dadams
;;     icicle-customize-face: Added prefix arg to give vanilla completion.
;;     Added: icicle-customize-face-other-window.
;;     Replace standard customize-face(-other-window) by icicle-customize-face(-other-window).
;;     No longer require icicles-mode.el.
;;     Require cus-edit.el (not just at compile time).
;; 2007/07/08 dadams
;;     Added: icicle-customize-faces.
;;     icicle-customize-face: Bind icicle-all-candidates-action-fn to icicle-customize-faces.
;; 2007/06/23 dadams
;;     icicle-search-read-context-regexp, icicle-search-read-word, icicle-search-property-args,
;;      icicle-add-region, icicle-save-string-to-variable:
;;        Use icicle-completing-read-history, not read-from-minibuffer or read-string.
;;     icicle-face-list: Bound icicle-list-nth-parts-join-string etc.
;;     Moved to icicles-fn.el: icicle-read-from-minibuf-nil-default.
;; 2007/06/22 dadams
;;     Added: icicle-group-regexp, icicle-keyword-list, icicle-search-keywords.
;; 2007/06/21 dadams
;;     icicle-plist, icicle-(var|fun)doc, icicle-region-add-buffers, icicle-search-regexp-scan,
;;      icicle-search-char-property-scan:
;;        Use face icicle-candidate-part, not icicle-special-candidate.
;;     icicle-add-key+cmd: Highlight key side of the pair (key  =  binding).
;; 2007/06/18 dadams
;;     Added: icicle-customize-face.
;; 2007/06/17 dadams
;;     icicle-make-color-candidate: Respect icicle-WYSIWYG-Completions-flag.
;;     icicle-search-action: Added priority in call to icicle-place-overlay.
;; 2007/06/12 dadams
;;     icicle-execute-extended-command(-1): 
;;       i-e-e-c-1 prepares the new last command, but i-e-e-c sets it, at end, to this-command.
;; 2007/06/10 dadams
;;     Added: icicle-comint-hook-fn, icicle-compilation-hook-fn.
;;     Removed unconditional add-hooks for comint-mode-hook and compilation(minor)-mode-hook.
;; 2007/06/09 dadams
;;     icicle-set-option-to-t, icicle-reset-option-to-nil, icicle-delete-windows,
;;      icicle-add-buffer-candidate, icicle-remove-buffer-candidate, icicle-buffer-list,
;;      icicle-remove-buffer-config, icicle-face-list, icicle-file-list,
;;      icicle-remove-all-regions-in-buffer, icicle-delete-file:
;;        Bind icicle-use-candidates-only-once-flag to t.
;;     icicle-set-option-to-t, icicle-clear-option: Candidate vars must have value nil/non-nil.
;;     icicle-search-regexp-scan: Added eobp test and empty hit-string test.
;;     icicle-select-(frame|window), icicle-delete-windows:
;;       Removed extra t arg to icicle-define-command.
;; 2007/06/08 dadams
;;     Added icicle-find-tag(-other-window).
;; 2007/06/07 dadams
;;     Renamed: icicle-font-history to icicle-font-name-history,
;;              icicle-function-history to icicle-function-name-history,
;;              icicle-variable-history to  icicle-variable-name-history.
;;     Use standard history variable if bound, else use Icicles history variable:
;;       bookmark-history, color-history, color-theme-history, face-name-history,
;;       font-name-history, frame-name-history, function-name-history, variable-name-history
;; 2007/06/05 dadams
;;     Don't require hexrgb.el if no window system.
;;     icicle-read-color: Use featurep, not require, for hexrgb.
;;     icicle-make-color-candidate: Error if hexrgb is not loaded.
;; 2007/05/31 dadams
;;     icicle-execute-extended-command-1: Set, don't bind this-command.
;;     icicle-execute-extended-command, icicle-execute-named-keyboard-macro:
;;       Simpler save and restore of last-command.
;; 2007/05/28 dadams
;;     icicle-imenu: Use same prefix-arg behavior as icicle-search (search multiple...).
;;     Added: icicle-imenu-(command|non-interactive-function(-p)).
;;     icicle-search-highlight-context-levels:
;;       Wrapped loop in condition-case.  Took max-levels determination out of loop.
;; 2007/05/25 dadams
;;     Added: icicle-face-list, icicle-next-single-char-property-change,
;;            icicle-search-(where-arg|property-args|char-property(-scan)|overlay-property),
;;            icicle-char-properties-in-buffer(s).
;;     Removed: icicle-text-properties-in-buffer(s), icicle-search-text-property-scan.
;;     icicle-search(-word): Use icicle-search-where-arg.
;; 2007/05/21 dadams
;;     Added: icicle-search-(buffer|file|all-regions).
;;     icicle-imenu: Fixed treatment of prefix arg.
;;     icicle-imenu-command-p: Fix to work also with Emacs 22 and  21.
;; 2007/05/14 dadams
;;     icicle-execute-extended-command-1: Error if empty command name.
;; 2007/05/12 dadams
;;     icicle-imenu: Added prefix arg for search for commands and non-cmds in Emacs-Lisp mode.
;;     Added: icicle-imenu-command-p.
;; 2007/05/11 dadams
;;     icicle-search-define-candidates:
;;       Move scan-fn-or-regexp to 4th arg from 2nd.  Removed &optional.
;;       Apply icicle-search-regexp-scan to args also.
;;     icicle-search-regexp-scan: Treat predicate.
;;       Move regexp to 3rd arg from 2nd, and add predicate arg.  Removed &optional.
;;     icicle-search-regexp-scan, icicle-search-text-property-scan:
;;       Add lengths of temp-list and icicle-candidates-alist.
;;     icicle-search-text-property(-scan): Added predicate argument.
;;     icicle-search-region-action: Bind icicle-candidate-action-fn to icicle-search-action.
;;     icicle-(select|search|remove)-region: Removed temp var bound to (icicle-region-sorted).
;;     icicle-search: Mention predicate in no-match message.
;; 2007/05/07 dadams
;;     icicle-add-buffer-config: Added history args for icicle-read-from-minibuf-nil-default.
;; 2007/05/06 dadams
;;     icicle-search: Bind icicle-must-pass-predicate to icicle-search-context-match-predicate.
;;     icicle-search-read-context-regexp: Don't accept an empty regexp.
;;     Changed S-C- to C-S- and M-C- to C-M- in doc.
;; 2007/05/04 dadams
;;     icicle-(re)set-option-to-(nil|t), icicle-toggle-option: Enable recursive minibuffers.
;; 2007/05/02 dadams
;;     icicle-search-read-word: Updated doc string.
;;     icicle-search: Respect icicle-search-whole-word-flag and icicle-regexp-quote-flag.
;;                    Single message for non-existent buffers.
;;     icicle-select-region-action: Message for non-existent file.
;;     Added empty defvars for Emacs 22 standard vars, to quiet byte compiler.
;; 2007/05/01 dadams
;;     icicle-execute-extended-command-1:
;;       Don't bind icicle-candidate-action-fn if we have already read command name.
;;     icicle-search-*-scan: Fill, reverse temp list, then append to icicle-candidates-alist.
;;     Added: icicle-search-word, icicle-search-read-word.
;; 2007/04/29 dadams
;;     icicle-search, icicle-search-text-property, icicle-text-properties-in-buffers:
;;       Allow search of multiple files.  Change prefix arg accordingly.
;; 2007/04/28 dadams
;;     Added: icicle-compilation-search-in-context-fn, icicle-search-in-context-default-fn,
;;            icicle-search-highlight-and-maybe-replace.
;;     icicle-search-action: Move code to the new functions.  Use icicle-search-in-context-fn.
;;     icicle-compilation-search: Rewrote.
;;       No longer use compile-goto-error as icicle-search-hook.
;;       Use icicle-compilation-search-in-context-fn.
;;       Cannot-replace error msg if not Emacs 22, since no compilation-highlight-overlay.
;;       Provide .* regexp and do not highlight - as in icicle-occur.
;; 2007/04/22 dadams
;;     icicle-search: Allow for pre-bound icicle-candidate(-alternative)-action-fn.
;;     icicle-search-replace-search-hit:
;;       Call icicle-candidate-action-fn, not necessarily icicle-search-action.
;; 2007/04/20 dadams
;;     Added: icicle-search-highlight-context-levels.  Use in icicle-search-action.
;;     icicle-search-highlight-cleanup: Delete icicle-search-level-overlays.
;;     icicle-search: Set icicle-search-context-regexp nil if scan-fn-or-regexp is not string.
;;     icicle-search-replace-fixed-case-p: Return nil if arg is nil.
;;     icicle-search-read-context-regexp: Use default with read-number; protect with fboundp.
;;     Added soft require of strings.el.
;; 2007/04/18 dadams
;;     Added: icicle-search-replace-fixed-case-p.  Use in icicle-search-action.
;;     icicle-search-action:
;;       Set match data to region when icicle-search-replace-whole-candidate-flag is t.
;;       Don't search for icicle-search-context-regexp.
;;     icicle-search-replace-match: Added fixedcase arg.
;;                                  Use icicle-search-replace-literally-flag.
;;     Use replace-match-maybe-edit (Emacs 22), not replace-match, and save and restore stuff.
;;     icicle-search-replace-search-hit:
;;       Use regexp-history in read-string.  Use icicle-search-define-replacement.
;; 2007/04/17 dadams
;;     Added: icicle-search-replace-match.  Treat Emacs<22 also.  Use in icicle-search-action.
;;     icicle-search-replace-search-hit: Use regexp-history in read-string.
;; 2007/04/16 dadams
;;     icicle-search-action: Use replace-count.
;;     icicle-search: Initialize replace-count to 0.
;; 2007/04/15 dadams
;;     icicle-search-action: Allow \,... etc. replacement.
;;       Use query-replace-compile-replacement and replace-match, with error treatment.
;;       Removed unwind-protect.  Removed %s from error-msg return.
;;     icicle-search: Save search string as icicle-search-context-regexp.
;;                    Use "%s" for error message in failure error call.
;;                    Updated doc string for lisp-eval replacement etc.
;;     *(-all)-input-matches(-here): save-match-data around input matching.
;;     icicle-search-highlight-input-matches-here: Added not eobp to loop test.
;; 2007/04/13 dadams
;;     icicle-search-highlight-input-matches-here: Bound free var ov.
;; 2007/04/10 dadams
;;     icicle-search-regexp-scan:
;;       Use match indicated by icicle-search-context-level as context.
;;     Added: icicle-search-read-context-regexp.
;;     icicle-search(-region|-regexp-scan): Use icicle-search-read-context-regexp.
;; 2007/04/08 dadams
;;     icicle-map-action, icicle-search-action:
;;       Return nil for success, error msg for failure (it was reversed).
;;       Use icicle-highlight-candidate-in-Completions.
;;     icicle-map-action: Moved minibuffer frame selection to unwind-protect final clause.
;;     icicle-search: Give focus to original frame, in unwinding clause (C-g).
;;     Added: icicle-search-highlight-input-matches-here.
;;     icicle-search-highlight-all-input-matches: Highlight all input matches in candidate.
;;     icicle-search-replace-search-hit:
;;       Use 0 if icicle-candidate-nb is nil.  Display completions.
;;       Save and restore: icicle-last-completion-command, icicle-last-input.
;;       Prevent using same string as candidate for replacement.
;;     icicle-search-action: Rewrote.  Enable repeated replacment of input matches.
;;       Save and restore icicle-candidate-nb.  Wrap it around if at end.
;;       Warn about empty input for whole-candidate replacement.
;;       Update icicle-last-completion-candidate.  Display completions.
;; 2007/04/07 dadams
;;     icicle-search: Added query-replace functionality.
;;       Navigate first, then act (C-next).
;;       Give focus to last frame searched.
;;       Bind: icicle-candidate-alternative-action-fn, icicle-inhibit-sort-p,
;;             icicle-searching-p, icicle-expand-input-to-common-match-flag.
;;       Bind icicle-buffer-require-match-flag to partial-match-ok in interactive spec.
;;     icicle-search-action:
;;       Added optional replace arg: if non-nil, then fn becomes a replace action.
;;     Added: icicle-search-replace-search-hit, icicle-search-replace-candidate, 
;;     icicle-buffer-list: Bind all the stuff that is bound in icicle-buffer.
;; 2007/04/06 dadams
;;     icicle-execute-extended-command-1:
;;       Bind this-command, but only around call to cmd - don't set it.
;; 2007/04/02 dadams
;;     Added: icicle-search-text-property, icicle-search-text-property-scan,
;;            icicle-text-properties-in-buffer(s).
;;     icicle-search:
;;       Added &rest args.  Updated doc string.  Don't read regexp or reverse alist here.
;;       Use icicle-search-define-candidates, not icicle-search-regexp-scan.  
;;     icicle-search-regexp-scan: Read regexp here.  Reverse alist here.
;;     Moved to icicles-fn.el: icicle-filter-alist, icicle-first-matching-candidate.
;;     Renamed: icicle-search-region-beg-end to icicle-region-or-buffer-limits.
;; 2007/04/01 dadams
;;     icicle-repeat-complex-command:
;;       Remove duplicates and sort entries, but only for reading command to eval.
;; 2007/03/31 dadams
;;     icicle-lisp-complete-symbol: Bind icicle-top-level-when-sole-completion-flag to t.
;; 2007/03/27 dadams
;;     icicle-search: Hard-code C-next key in message.
;;     icicle-search-regexp-scan: Initialize last-beg for first time.
;; 2007/03/23 dadams
;;     icicle-execute-extended-command-1:
;;       Don't restore last-command.  Run (pre|post)-command-hook.  Set, don't bind,
;;       this-command.  enable-recursive-minibuffers for interactive call of cmd.
;;     icicle-execute-extended-command, icicle-execute-named-keyboard-macro:
;;       Restore last-command at end.
;; 2007/03/20 dadams
;;     icicle-execute-extended-command-1: When wrong-number-of-args, icicle-help-on-candidate.
;; 2007/03/14 dadams
;;     icicle-dired-saved-file-candidates, icicle-buffer, icicle-(find|locate|recent)-file:
;;       Put 200 as value of property icicle-Completions-window-max-height.
;;     Added ;;;###autoload for icicle-define*.
;; 2007/03/09 dadams
;;     icicle-search, icicle-map, icicle-(remove|search|select)-region, icicle-imenu,
;;     icicle-occur, icicle-compilation-search:
;;       Bound icicle-transform-function to nil if interactive-p.
;;     icicle-comint-search: Updated doc string to mention false positives in command matching.
;;     Removed eval-when-compile from requires of Icicles libraries (except icicle-mac.el).
;; 2007/03/08 dadams
;;     icicle-insert-kill: Bound icicle-delete-candidate-object.
;; 2007/03/07 dadams
;;     icicle-delete-windows, icicle-map-action, icicle-search-action,
;;     icicle-choose-candidate-of-type, icicle-complete-keys-help:
;;       Use 0, not t, as frame arg to get-buffer-window.
;; 2007/03/06 dadams
;;     icicle-search, icicle-map, icicle-(remove|search|select)-region:
;;       Bind icicle-inhibit-sort-p to non-nil to prevent user sorting.
;;       Update doc string to mention that you cannot sort candidates.
;;     icicle-(remove|search|select)-region: Sort candidates by buffer and then by tag.
;;     icicle-search-region: Bound icicle-delete-candidate-object.
;;     icicle-search, icicle-map: Don't add or subtract one from candidate # if use action fn.
;;     icicle-search:
;;       If require-match, set icicle-completion-candidates and marker to reflect final choice.
;;     Renamed: icicle-get-current-candidate to icicle-get-alist-candidate.
;;     Added: icicle-region-sorted, icicle-region-add-buffers.
;; 2007/03/04 dadams
;;     icicle-get-current-candidate: Return nil if icicle-candidates-alist is nil.
;; 2007/03/02 dadams
;;     icicle-remove-buffer-config, icicle-remove-buffer-candidate: Removed extraneous quote.
;;     icicle-(find|recent)-file(-other-window): Bound icicle-delete-candidate-object.
;; 2007/02/28 dadams
;;     icicle-buffer-list, icicle-color-theme: Bound icicle-delete-candidate-object.
;; 2007/02/27 dadams
;;     icicle-recent-file(-other-window): Changed INITIAL-INPUT completing-read arg to nil.
;; 2007/02/25 dadams
;;     Added: icicle-remove-buffer-candidate-action, icicle-remove-buffer-config-action.
;;     icicle-add-buffer-candidate, icicle-bookmark, icicle-buffer-config:
;;       Bound icicle-delete-candidate-object.
;; 2007/02/24 dadams
;;     Added: icicle-kill-a-buffer-and-update-completions (was kill-a-buffer), 
;;            icicle-delete-region-from-alist.
;;     icicle-delete-window: Use icicle-kill-a-buffer...-completions, not icicle-kill-a-buffer.
;;     icicle-buffer(-other-window), icicle-choose-candidate-of-type:
;;       Bind icicle-delete-candidate-object to icicle-kill-a-buffer.
;;       Bind icicle-sort-function to self if icicle-buffer-sort-function is nil.
;;     icicle-select-region:
;;       Bind icicle-delete-candidate-object to icicle-delete-region-from-alist.
;;     icicle-remove-region: Rewrote.
;;       Use icicle-delete-region-from-alist.
;;       Use icicle-remove-candidate-display-others, but don't redisplay unless completing.
;;       Respect icicle-add-buffer-name-flag (append buffer names).
;; 2007/02/20 dadams
;;     Added: icicle-search-region-action.  Open file associated with candidate.
;;     icicle-search-region:
;;       Use icicle-search-region-action.  Updated doc string.  Bind icicle-list-*.
;;       Fix default completing-read value.  Respect icicle-add-buffer-name-flag.
;;     icicle-select-region-action: Open file associated with candidate.
;;     icicle-region-open-all-files: Ignore files that are not readable.
;;     icicle-regions: Remove only non-existent buffers that are not associated with files.
;; 2007/02/19 dadams
;;     Added: icicle-region-open-all-files.
;;     icicle-(search|select)-region, icicle-search: Use icicle-region-open-all-files.
;;     icicle-add-region: Add file name to region entry in alist.
;;     icicle-select-region-action, icicle-region-help, icicle-search:
;;       Updated selectors for point and mark, because of addition of file name.
;;     icicle-region-help: Add file name to help message.
;; 2007/02/18 dadams
;;     Added: icicle-first-matching-candidate.
;;     icicle-get-current-candidate: Use icicle-first-matching-candidate, not assoc.
;; 2007/02/07 dadams
;;     icicle-search-action: Make *Completions* window dedicated.  Thx to Peter Povinec.
;; 2007/02/07 dadams
;;     icicle-search: pop-to-buffer and raise frame. Don't select orig-window.
;; 2007/02/06 dadams
;;     icicle-search, icicle-select-region, icicle-search-regexp-scan:
;;       Respect icicle-add-buffer-name-flag.
;;     icicle-search: Bound icicle-show-Completions-initially-flag to t.
;;                    Bound icicle-candidate-help-fn to icicle-search-help.
;;     icicle-search-regexp-scan: nil BUFFER arg means current buffer now.
;;     icicle-search-action, icicle-filter-alist: Treat multi-completion case also.
;;     Added: icicle-search-help.
;;     icicle-map-action, icicle-search-action: Removed unused local var, curr-cand-string.
;;     icicle-select-region, icicle-remove-region, icicle-search-region:
;;       Use icicle-candidates-alist, not regions-w-buffers (but bind it locally too).
;;     Renamed: icicle-get-current-region-candidate to icicle-get-current-candidate.
;;     icicle-region-help: Provide region limits also.
;;     Added note to some doc strings that the command is for Icicle mode only.
;; 2007/02/02 dadams
;;     icicle-search: Test for buffers, not buffer names, in WHERE.  Thx to Peter Povinec.
;;     icicle-buffer-list: Return the list of buffers.
;; 2007/01/28 dadams
;;     icicle-complete-keys:
;;       Bind icicle-sort-functions-alist, using icicle-command-names-alphabetic-p.
;; 2007/01/22 dadams
;;     icicle-read-color:
;;       Removed free var NTH-PARTS.
;;       Bound icicle-list-nth-parts-join-string the same as icicle-list-join-string.
;;       Remove duplicates: AliceBlue and alice blue etc.: downcase and remove whitespace.
;;     Added: icicle-remove-color-duplicates.
;;     Added soft require of hexrgb.el.
;;     icicle-*doc, icicle-plist: Bound icicle-candidate-properties-alist.
;; 2007/01/21 dadams
;;     Added: icicle-read-color, icicle-make-color-candidate.
;; 2007/01/18 dadams
;;     Added: icicle-get-current-region-candidate.
;;       Use current cand if cycled or `mouse-2'.  Else if single match, use that.  Else error.
;;     icicle-remove-region, icicle-search-region, icicle-region-help:
;;       Use icicle-get-current-region-candidate.
;;     icicle-add-region: Added optional TAG arg and prefix arg treatment.
;;     icicle-remove-region: Update completions list.  Bind regions-w-buffers.
;;     icicle-remove-all-regions-in-buffer: Use current buffer name as default.
;;     Added: icicle-select-region-action.
;;     icicle-select-region: Use icicle-select-region-action.
;;     Renamed: option icicle-regions to icicle-region-alist.
;;     icicle-regions: Sort entries.
;; 2007/01/17 dadams
;;    icicle-filter-alist: Reversed arg order.  Return alist arg if filter-keys arg is empty.
;; 2007/01/12 dadams
;;    icicle-delete-window: Do icicle-remove-Completions-window if in minibuffer.
;;    icicle-yank-insert: Do icicle-yank if in minibuffer.
;;    icicle-(fundoc|vardoc|doc|plist): Added condition-case: protect symbols that error.
;; 2007/01/01 dadams
;;    Added: icicle-(add|remove)-candidate-(to|from)-saved-completion-set.
;;    icicle-add-buffer-config: Use nil, not "nil" as default, if icicle-buffer-sort is nil.
;;                              Use icicle-define-add-to-alist-command to define it.
;;    icicle-remove-buffer-config, icicle-remove-saved-completion-set:
;;      Use icicle-assoc-delete-all, not delete of assoc.
;;    icicle-remove-saved-completion-set: Update display after removal.
;;    Reformatted icicle-define(-file)-command, based on setup.el's lisp-indentation-hack.
;; 2006/12/25 dadams
;;    Bug fix: icicle-search-action: Use icicle-filter-alist on icicle-candidates-alist.
;;    icicle-(select|search)-region: Use pop-to-buffer and raise-frame, not set-buffer.
;;    icicle-select-region: Activate the region.
;; 2006/12/23 dadams
;;    Added: icicle-region-help.  Use in icicle-*-region.
;;    Added: icicle-remove-all-regions-in-buffer, icicle-remove-all-regions-action.
;;    icicle-(select|search)-region: Ignore regions in non-existent buffers.
;;    icicle-remove-region: Update the persistent value of icicle-regions.
;; 2006/12/22 dadams
;;    Added: icicle-exchange-point-and-mark.
;;    icicle-customize-icicles-group: icicles -> Icicles (group name).
;; 2006/12/18 dadams
;;    icicle-object-action: Remove print arg.  icicle-apply-to-* uses current-prefix-arg now.
;; 2006/12/17 dadams
;;    Added: icicle-object-action, icicle-choose-candidate-of-type,
;;           icicle-read-var-value-satisfying.
;; 2006/12/16 dadams
;;    icicle-map-action: Bug fix: Use icicle-candidate-nb, not assoc.
;;    Added: icicle-goto(-global)-marker, icicle-marker+text, icicle-markers.
;; 2006/12/10 dadams
;;    Moved minibuffer and *Completions* commands to new file, icicles-mcmd.el.
;;    Require icicles-opt.el.
;;    icicle-buffer-list: Added final message.
;; 2006/11/26 dadams
;;    icicle-search-action: Bug fix: Use icicle-candidate-nb, not assoc, to get cand+mrker.
;;    icicle-*-complete-1: Bug fix: Don't set icicle-current-input to icicle-last-input if nil.
;;    Renamed: icicle-search-region to icicle-search-region-beg-end.
;;    Added: icicle-(add|remove|select|search)-region.
;;    icicle-search: Use icicle-regions for numeric prefix arg.  Updated doc string.
;;    Added: icicle-Info-index-20 - thx to Tamas Patrovics.  Use it in icicle-Info-index.
;; 2006/11/25 dadams
;;    icicle-search: After final selection, select orig-window and give its frame input focus.
;; 2006/11/24 dadams
;;    Added: icicle-ensure-overriding-map-is-bound, icicle-universal-argument,
;;           icicle-universal-argument-more, icicle-negative-argument, icicle-digit-argument,
;;           icicle-universal-argument-other-key, icicle-universal-argument-minus,
;;           icicle-kmacro(-action).
;;    icicle-dabbrev-completion: Don't stop at common root, and use lax completion.
;;    Replaced icicle-select-window-or-frame by icicle-other-window-or-frame (respects C-u 0).
;; 2006/11/23 dadams
;;    icicle-prefix-complete-1: Respect icicle-TAB-shows-candidates-flag.
;;    icicle-execute-extended-command-1: Treat named keyboard macros too.
;;    Added: icicle-execute-named-keyboard-macro.
;; 2006/11/18 dadams icicle-add/update-saved-completion-set, icicle-apropos*, icicle-bookmark,
;;    icicle-buffer-config, icicle-candidate-set-retrieve, icicle-candidate-set-save,
;;    icicle-color-theme, icicle-comint-command, icicle-complete-thesaurus-entry,
;;    icicle-customize-apropos*, icicle-delete-windows, icicle-font, icicle-frame-bg,
;;    icicle-frame-fg, icicle-insert-kill, icicle-insert-string-from-variable,
;;    icicle-insert-thesaurus-entry, icicle-locate-file*, icicle-map, icicle-narrow-candidates,
;;    icicle-remove-buffer-config, icicle-remove-saved-completion-set,
;;    icicle-reset-option-to-nil, icicle-save-string-to-variable, icicle-search,
;;    icicle-select-window, icicle-set-option-to-t, icicle-toggle-option:
;;      Use a specific history variable.
;; 2006/11/17 dadams
;;    Added: icicle-select-(frame|window), icicle-select-window-or-frame.
;; 2006/11/10 dadams
;;    icicle-mouse-candidate-action: read-event to swallow mouse up event.
;;    icicle-map-action:
;;      Don't use icicle-filter-alist - find string in icicle-candidates-alist.
;;      Unwind-protect to reselect minibuffer frame.  Don't bind case-fold-search.
;;    icicle-map: enable-recursive-minibuffers.
;; 2006/11/09 dadams
;;    icicle-nb-of-candidate-in-Completions: Redefined using binary search, for performance.
;;    icicle-toggle-ignored-space-prefix: Update doc string to use icicle-dispatch-C-^.
;;    icicle-search:
;;      Bind icicle-update-input-hook unconditionally, after icicle-search-regexp-scan.
;;    icicle-search-regexp-scan: Highlight up to icicle-search-highlight-threshold.
;;    icicle-search-highlight-all-input-matches:
;;      Only update input and highlight if icicle-search-highlight-all-current-flag.
;;    icicle-search-action:
;;      Don't use icicle-filter-alist - find string in icicle-candidates-alist.
;;    icicle-search-highlight-cleanup: Bind inhibit-quit to t.
;; 2006/11/07 dadams
;;    Added: icicle-toggle-highlight-all-current.
;; 2006/11/06 dadams
;;    icicle-search-action:
;;      Highlight icicle-current-input, not icicle-current-raw-input (not updated).
;;    Renamed icicle-search-highlight-all-flag to icicle-search-highlight-threshold.
;; 2006/11/05 dadams
;;    Added: icicle-search-regexp-scan.
;;    icicle-search:
;;      Added buffers arg.  Updated doc string.
;;      Use icicle-search-regexp-scan:  Scan each buffer in buffers.
;;                                      Add marker, not position, to icicle-candidates-alist.
;;      Go to candidate in its buffer.
;;      Added progress message.
;;    icicle-search-action: Pop to buffer of candidate (marker) and raise frame.
;;    icicle-occur:
;;      Added buffers arg.  Updated doc string.  Call icicle-search-highlight-cleanup.
;;    icicle-search-highlight-all-input-matches: set-buffer for each ov in dolist (minor opt.).
;;    icicle-search-highlight-cleanup: Added progress messages.  Minor optimization.
;; 2006/10/22 dadams
;;    icicle-complete-keys-action:
;;      Set last-nonmenu-event to non-mouse info, to ignore *Completions* click.
;;    icicle-complete-keys-1: Don't use a default value for completing-read.
;; 2006/10/21 dadams
;;    Added: icicle-insert-char.
;;    icicle-add-key+cmd: Respect icicle-complete-keys-self-insert-flag.
;; 2006/10/20 dadams
;;    icicle-map, icicle-delete-window: Corrected doc string.
;; 2006/10/16 dadams
;;    icicle-add-key+cmd: Protect :enable's eval with condition-case.
;;    icicle-complete-keys-1:
;;      No longer use icicle-extra-candidates.
;;      Use default value of .. for completing-read (except at top level).
;;    icicle-complete-keys-action: Correct no-match case: must match whole and part.
;;    icicle-keys+cmds-w-prefix: Add .. to icicle-complete-keys-alist unless at top level.
;; 2006/10/15 dadams
;;    icicle-complete-keys:
;;      Bind icicle-complete-keys-action, not icicle-complete-keys-help, to icicle-*-action-fn.
;;      Bind orig-buff, orig-window, and icicle-completing-keys-p, for use elsewhere.
;;    Added: icicle-complete-keys-action using code from icicle-complete-keys.
;;    icicle-complete-keys-action:
;;      Use orig-buff and orig-window; restore to originally selected window.
;;      Error if candidate doesn't match template xxx  =  yyy.
;;    icicle-complete-keys-1:
;;      Call icicle-complete-keys-action on chosen candidate.
;;    icicle-help-on-candidate: Treat key completion also.
;;    Added from cus-edit+.el: custom-variable-p.
;;    Moved to icicles-mode.el: icicle-select-minibuffer-contents, next-history-element.
;;    Moved here from icicles-mode.el: icicle-generic-S-tab.
;;    icicle-generic-S-tab (bug fix): Do not set last-command to icicle-apropos-complete.
;;    Added: eval-when-compile's.
;; 2006/10/13 dadams
;;    icicle-add-key+cmd:
;;      Add actual key to icicle-complete-keys-alist.  Thx to Stefan Monnier.
;;      Don't filter out index (Imenu) keymap.
;;      Treat :enable condition.
;;    icicle-complete-keys-1:
;;      Use actual key recorded in icicle-*-keys-alist. Don't convert to key description.
;;      Treat digit-argument and negative-argument.
;;    icicle-complete-keys-alist: Updated doc string for new structure.
;; 2006/10/08 dadams
;;    Added: icicle-add-key+cmd, icicle-read-single-key-description.
;;    Added: icicle-complete-keys-alist.
;;           Use in icicle-complete-keys-1, icicle-keys+cmds-w-prefix, icicle-add-key+cmd.
;;    icicle-add-key+cmd: Update binding, depending on its type (menu item etc.).
;;      Push (cons candidate binding), not just candidate, onto icicle-complete-keys-alist.
;;    icicle-complete-keys-1:
;;      Use binding, not just command name.  Call it and put it in (this|last)-command.
;;      Flipped (corrected) use of icicle-key-descriptions-use-<>-flag.
;;      Use icicle-read-single-key-description.
;;    icicle-prefix-keys-first-p, icicle-complete-keys-1, icicle-complete-keys-help,
;;      icicle-keys+cmds-w-prefix: Don't use icicle-list-*-string.
;; 2006/10/05 dadams
;;    icicle-complete-keys-1: Remove icicle-special-candidate property from all candidates.
;;    icicle-keys+cmds-w-prefix:
;;      Intern candidate and, if local binding, put icicle-special-candidate property on it.
;;      Use single string for candidate (don't use multi-completion).
;; 2006/10/03 dadams
;;     icicle-complete-keys-1: Treat "..".
;;     icicle-complete-keys: Updated doc string accordingly.
;;     icicle-prefix-keys-first-p: ".." is less than all other strings.  Don't hard-code "= ".
;;     icicle-keys+cmds-w-prefix:
;;       Filtered out shadowed bindings, icicle-generic-S-tab, and icicle-complete-keys.
;;       Use only map-keymap & lookup-key, not accessible-keymaps, current-active-maps,
;;         map-keymap.
;; 2006/10/01 dadams
;;     icicle-complete-keys: Bind sort functions, to put prefix keys first, by default.
;;                           Set last-command, before recursing.
;;     Replaced icicle-alternative-sort with icicle-toggle-alternative-sorting (new).
;;     icicle-(apropos|prefix)-complete-1:
;;       Ensure icicle-(current|last)-input are strings, before compare.
;;     icicle-keys+cmds-w-prefix: Tolerate empty local and global maps.
;; 2006/09/30 dadams
;;     Added: icicle-read-kbd-macro, icicle-edmacro-parse-keys, icicle-toggle-angle-brackets.
;;     icicle-complete-keys-1, icicle-dabbrev-completion:
;;       key-description -> icicle-key-description, with icicle-key-descriptions-use-<>-flag.
;;     icicle-complete-keys-1:
;;       read-kbd-macro -> icicle-read-kbd-macro, with icicle-key-descriptions-use-<>-flag.
;;       Got rid of extra space in prompt before colon, when no prefix.
;;     icicle-keys+cmds-w-prefix: Use single-key-description with icicle-*-use-<>-flag.
;;     icicle-insert-key-description:
;;       Change arg to a toggle, and use icicle-key-descriptions-use-<>-flag.
;;     Bind icicle-candidate-set-(retrieve|save) to C-M-<, C-M->, not C-<, C->.
;;     icicle-dired-saved-file-candidates*:
;;       Changed doc strings and messages to use dynamic binding of icicle-candidate-set-save.
;; 2006/09/24 dadams
;;     Added: icicle-complete-keys-help.
;;     icicle-complete-keys:
;;       Bind icicle-*-action-fn to icicle-complete-keys-help.  Mention help keys in docstring.
;;     icicle-complete-keys-1:
;;       Set last-command to command, so completion doesn't think candidate was last-command.
;;     icicle-keys+cmds-w-prefix: Provide placeholder for future use of generic characters.
;; 2006/09/23 dadams
;;     icicle-complete-keys-1:
;;       Error if there are no keys for the prefix.
;;       Error, not self-insert-command, for key read-kbd-macro can't convert. condition-case.
;;       Report error if calling cmd fails.
;;       Use vconcat for recursive call.
;;       Read cmd, don't intern it - it might be a lambda or byte-compiled function.
;;       Remove duplicates.
;;       Provide KEYS arg to call-interactively, for error reporting. 
;;       Don't bind icicle-must-not-match-regexp to "^Character set .*=  self-insert-command".
;;     icicle-keys+cmds-w-prefix:
;;       Treat also local keymap and current minor maps.
;;       Do nothing if keys+maps is nil.
;;       Only map-keymap if the target is a keymap.
;;       Use keymapp, not functionp, as the binding test.
;;       Only add binding if it is a command or keymap.
;;       Only add self-insert-command binding if the key is char-valid-p.
;;       Use format %S, not %s for a command binding.
;;     icicle-insert-key-description: Added no-angle-brackets-p arg.
;; 2006/09/22 dadams
;;     icicle-complete-keys-1:
;;       Filter out keys described "Character set ...= self-insert-command".
;; 2006/09/20 dadams
;;     icicle-complete-keys-1: Treat self-insert-command specially.
;; 2006/09/17 dadams
;;     Added: icicle-complete-keys(-1), icicle-*-keys-prefix, icicle-keys+cmds-w-prefix, 
;;     icicle-doc: Removed one \n from each candidate.
;; 2006/09/12 dadams
;;     Renamed icicle-switch-to-minibuffer to icicle-insert-completion.
;;     Added: icicle-switch-to/from-minibuffer.
;;     icicle-completion-help: Keep focus in the minibuffer after displaying help.
;; 2006/09/02 dadams
;;     icicle-help-on-(next|previous)-(apropos|prefix)-candidate,
;;       icicle-(next|previous)-(apropos|prefix)-candidate-action:
;;       Use save-selected-window, not save-window-excursion.
;;     icicle-find-file*: In Dired, ignore errors picking up current-line's file name.
;;     icicle-mouse-choose-completion: Error if minibuffer is not active.
;; 2006/08/27 dadams
;;     icicle-abort-minibuffer-input: If minibuffer not active, just kill buffer *Completions*.
;;     icicle-execute-extended-command-1, icicle-insert-thesaurus-entry, icicle-search-action:
;;       Ensure orig-window is live before using it.
;; 2006/08/23 dadams
;;     Added: icicle-delete-window(s).
;;     Added soft require of frame-cmds.el.
;; 2006/08/22 dadams
;;     icicle-execute-extended-command-1: Bind this-command, don't set it (fixes C-next).
;;     icicle-help-on-candidate: If no last candidate, then reset to first matching candidate.
;;     icicle-*-candidate-action, icicle-help-on-*-candidate: save-window-excursion.
;; 2006/08/20 dadams
;;     icicle-find-file*: Use diredp-find-a-file* in Dired mode (Emacs 22 or later).
;;     Bug fix: icicle-candidate-action: Use icicle-*-candidates, not icicle-next-*-candidate.
;;              icicle-next-*-candidate(-action): Set icicle-current-completion-mode.
;; 2006/08/18 dadams
;;     Added: icicle-Info-goto-node(-(action|cmd)).
;;     icicle-candidate-action: If no icicle-last-completion-candidate, use first candidate.
;; 2006/08/15 dadams
;;     Added: icicle-help-on-*-*-candidate,icicle-mouse-help-on-candidate.
;;     No longer put icicle-candidate-action-command property on symbols (not used).
;;     Added: icicle-raise-Completions-frame.
;;     icicle*-candidate-action, icicle-help-on-candidate: Use icicle-raise-Completions-frame.
;;     icicle-help-on-candidate: Can use it from *Completions* too now.
;;                               Use icicle-barf-if-outside-Completions-and-minibuffer.
;; 2006/08/13 dadams
;;     Added: icicle-Info-index(-(action|cmd)).
;; 2006/08/04 dadams
;;     icicle-*-complete-1, icicle-prefix-word-complete, icicle-keep-only-past-inputs:
;;       Set icicle-last-completion-command to the explicit command, not this-command.
;;     icicle-history: Call icicle-last-completion-command, not icicle-apropos-complete.
;;     icicle-apropos-complete-1, icicle-narrow-candidates:
;;       Removed binding of icicle-apropos-completing-p (not used).
;;     Added: icicle-plist, icicle-remove-Completions-window, icicle-pp-eval-expression.
;;     Added soft require of pp+.el.
;;     icicle-exit-minibuffer, icicle-minibuffer-complete-and-exit,
;;       icicle-mouse-choose-completion, icicle-abort-minibuffer-input,
;;       icicle-(apropos|prefix)-complete-1, icicle-keep-only-past-inputs,
;;       icicle-insert-thesaurus-entry-cand-fn: Use icicle-remove-Completions-window.
;;     icicle-doc: Treat doc of faces also.
;;     icicle-non-whitespace-string-p: Added doc string.
;; 2006/08/03 dadams
;;     Added:
;;       icicle-comint-command, icicle-insert-kill, icicle-insert-for-yank,icicle-yank-insert.
;;     Bound icicle-comint-command to C-c TAB in comint-mode.
;;     icicle-search, icicle-comint-search: Cleaned up doc string.
;; 2006/08/02 dadams
;;     icicle-comint-search: Mention *-prompt-pattern.  Thx to Kevin Rodgers.
;;     icicle-insert-string-from-variable: Added more variables to the completing-read alist.
;; 2006/07/29 dadams
;;     Added: icicle-dispatch-C-., toggle-icicle-search-cleanup, icicle-toggle-search-cleanup.
;; 2006/07/23 dadams
;;     Added: icicle-toggle-transforming.
;;     icicle-comint-search: Bind icicle-transform-function to icicle-remove-duplicates.
;; 2006/07/22 dadams
;;     Added: icicle-comint-search, icicle-comint-send-input, icicle-comint-get-*-input,
;;            icicle-comint-get-final-choice, icicle-search-generic.
;;     icicle-search: Added require-match arg for non-interactive calls.
;;                    Run the hooks if no match and no match required, and if we didn't cycle.
;;                    Return final choice as value (not used yet).
;;     icicle-insert-string-from-variable: Use buffer-local value of variable, if there is one.
;;     icicle-insert-string-from-variable:
;;       Make sure we use the buffer-local value of the variable, if there is one
;;       Added comint-prompt-regexp to regexp list.
;;     Added mode hooks for icicle-compilation-search and icicle-comint-send-input.
;; 2006/07/20 dadams
;;     Renamed icicle-arrows-respect-* to icicle-cycling-respects-completion-mode-flag.
;; 2006/07/19 dadams
;;     Applied patch from Damien Elmes <emacs@repose.cx>:
;;       Added: icicle-(next|previous)-context-candidate, icicle-scroll-completions.
;;       icicle-switch-to-completions, icicle-switch-to-Completions-buf,
;;         icicle-move-to-next-completion, icicle-map-action, icicle-search-action:
;;           Use icicle-start-of-completions.
;;       icicle-(apropos|prefix)-complete-1:
;;         Set icicle-current-completion-type vs use icicle-arrows-respect-*-flag.
;;         Use icicle-scroll-completions.
;;       icicle-current-completion-in-Completions: Use point-min if no previous prop change.
;;       icicle-keep-only-past-inputs: Use icicle-scroll-completions.
;;     Renamed icicle-start-of-completions to icicle-start-of-candidates-in-Completions,
;;             icicle-current-completion-type to icicle-current-completion-mode,
;;             icicle-*-context-candidate to icicle-(next|previous)-candidate-per-mode,
;;             icicle-scroll-completions to icicle-scroll-Completions.
;;     icicle-(next|previous)-context-candidate: Use icicle-barf-if-outside-minibuffer.
;;     icicle-scroll-Completions: Changed with-selected-window to Emacs 20 equivalent.
;; 2006/07/18 dadams
;;     icicle-search: Bind completion-ignore-case to case-fold-search.
;;     icicle-search-highlight-all-input-matches, icicle-search-action:
;;       Put search inside condition-case, for bad regexp.
;;     Added: icicle-toggle-case-sensitivity, toggle-icicle-case-sensitivity.
;; 2006/07/10 dadams
;;     Added: icicle-search-region.  Use in search functions.  Thx to Le Wang.
;; 2006/07/08 dadams
;;     icicle-search-highlight-all-input-matches: Use *-current-*, not *-current-raw-*.
;;     icicle-execute-extended-command-1:
;;       First try a string candidate as arg, then read it to convert it to symbol or number.
;;       Reset focus back to the minibuffer, in action function.
;; 2006/07/07 dadams
;;     Added: icicle-alternative-sort.
;;     icicle-imenu: Show *Completions* initially for submenu choice (only).
;;     icicle-execute-extended-command:
;;       Echo prefix arg in prompt.  Thx: *.dhcp.mdsn.wi.charter.com
;; 2006/07/06 dadams
;;     Added (eval-when-compile (require 'icicles-mac)).
;; 2006/07/05 dadams
;;     Renamed: icicle-current-regexp-input to icicle-current-raw-input.
;;     icicle-prefix-complete-1: Don't set icicle-current-raw-input.
;; 2006/07/04 dadams
;;     icicle-prefix-complete-1: No longer calculate common prefix and set current input to it.
;;     Added plist entries to categorize commands:
;;       icicle-(cycling|completing|candidate-action)-command.
;;     icicle-(apropos|prefix)-complete-1, icicle-prefix-word-complete,
;;     icicle-switch-to-Completions-buf, icicle-keep-only-past-inputs, icicle-history:
;;       Use icicle-cycling-command property.
;;     icicle-apropos-complete-1: Removed regexp-p arg in call to icicle-save-or-restore-input.
;; 2006/07/03 dadams
;;     icicle-(apropos|prefix)-complete-1: deactivate mark after inserting current input.
;; 2006/06/18 dadams
;;     icicle-apropos-complete-1, icicle-narrow-candidates: Bind icicle-apropos-completing-p.
;; 2006/06/09 dadams
;;     Bug fixes: Picked up matching subdir as default dir, even if there other files match. 
;;                  Thx to Andrey Zhdanov.
;;                Empty directory not treated as a match.
;;     icicle-(apropos|prefix)-complete-1:
;;       If input matches an empty directory, then use that directory as the sole completion.
;;       Do not expand file-name input before call icicle-file-name-*-candidates.
;;     icicle-retrieve-last-input: Use insert, not icicle-insert-input (no longer used).
;;                                 (Input backslashes reverted to slashes.)
;; 2006/06/08 dadams
;;     Bug fix: Could not complete after cycling file names.  Thx to Andrey Zhdanov.
;;     icicle-insert-input: Use icicle-expand-file-name.
;;     icicle-prefix-complete-1:
;;       Expand file-name input before call icicle-file-name-prefix-candidates.
;;       Expand icicle-last-completion-candidate if it is a directory name.
;; 2006/05/30 dadams
;;     icicle-erase-minibuffer-or-history-element: Fix for consecutive deletions.
;; 2006/05/26 dadams
;;     Added: icicle-erase-minibuffer-or-history-element.
;; 2006/05/19 dadams
;;     Renamed icicle-inhibit-reminder* to icicle-reminder*.
;;     icicle-narrow-candidates: Bind icicle-reminder-prompt-flag to nil, not t.
;; 2006/05/16 dadams
;;     Added: icicle-kill(-a)-buffer.
;; 2006/05/15 dadams
;;     Renamed: icicle-completion-nospace-flag to icicle-ignore-space-prefix-flag.
;;     icicle-candidate-set-complement: Put back icicle-ignore-space-prefix-flag.
;;     icicle-buffer(-other-window): Bind icicle-buffer-ignore-space-prefix-flag.
;;     Added: icicle-toggle-ignored-space-prefix, toggle-icicle-ignored-space-prefix.
;; 2006/05/13 dadams
;;     icicle-occur: Make icicle-search-main-regexp-others unnoticeable instead of
;;                   setting icicle-search-highlight-all-flag to nil.
;;     icicle-candidate-set-complement: Use nil, not icicle-completion-nospace-flag.
;;     Renamed: icicle-search-imenu to icicle-imenu,
;;              icicle-search-imenu-in-buffer-p to icicle-imenu-in-buffer-p.
;; 2006/05/12 dadams
;;     icicle-search-imenu: Remove unmatched submenus.  Error if no imenu for the buffer.
;;     Added: icicle-search-imenu-in-buffer-p.
;;     icicle-insert-string-at-point: Use icicle-barf-if-outside-minibuffer.
;;     Moved to icicles-fn.el: icicle-barf-if-outside-*.
;;     Moved some commands to minibuffer-cmds section from top-level cmds section.
;; 2006/05/09 dadams
;;     Added: icicle-customize-icicles-group, icicle-send-bug-report, icicle-customize-button.
;; 2006/04/30 dadams
;;     Added: icicle-map, icicle-map-action.
;;     icicle-filter-alist: Corrected and simplified.
;;     icicle-search: Corrected cand-nb adjustment when cycle with action fns.
;;     Renamed: icicle-search-action-fn to icicle-search-action,
;;              icicle-search-candidates to icicle-candidates-alist.
;; 2006/04/28 dadams
;;     icicle-retrieve-last-input, icicle-(apropos|prefix)-complete-1:
;;       Use icicle-highlight-initial-whitespace.
;; 2006/04/25 dadams
;;     icicle-completion-help: Emacs 21.3's help-insert-xref-button signature is different.
;; 2006/04/16 dadams
;;     Added: icicle-search-imenu.
;;     icicle-search: Bug fixes:
;;       Treat completion without cycling: error or singleton go-to.
;;       Only subtract one from candidate number for C- cycling, not regular cycling.
;; 2006/04/14 dadams
;;     icicle-search:
;;       Bug fix: Position was off by one.
;;       Highlight input match inside each main regexp match (or not).
;;         Bind icicle-update-input-hook and icicle-incremental-completion-flag.
;;       Extract code to define icicle-search-action-fn.
;;       Use icicle-search-candidates instead of local variable search-candidates.
;;       Respect icicle-search-cleanup-flag.
;;     Added: icicle-search-highlight-*, icicle-search-action-fn,
;;            icicle-(insert|save)-text-(from|to)-variable.
;;     Renamed icicle-search-refined-regexp to icicle-search-current-input.
;; 2006/04/09 dadams
;;     icicle-(apropos|prefix)-complete-1: Deal with icicle-arrows-respect-*-flag.
;;     Moved here from icicles-fn.el: icicle-customize-apropos*, icicle-repeat-complex-command.
;; 2006/04/07 dadams
;;     icicle-search: Highlight all occurrences at once (like isearch highlight, but not lazy).
;;                    Error if no match for initial regexp.
;;     icicle-occur: Bind icicle-search-highlight-all-flag to nil: don't highlight each line.
;; 2006/04/02 dadms
;;     Added: icicle-toggle-regexp-quote, icicle-find-file*-w-wildcards.
;;     icicle-find-file*: Use icicle-find-file*-w-wildcards.
;; 2006/03/31 dadams
;;     icicle-search: Wrap action function with unwind-protect to select minibuffer frame.
;;                    Use completion-ignore-case when highlighting search hits.
;;                    Protect delete-overlay with overlayp.
;;                    Turn off region highlighting (so can see highlighting done here).
;;                    Removed sit-for-period argument.
;;     icicle-candidate-set-save: Use prin1 instead of pp.
;; 2006/03/27 dadams
;;     Added: icicle-occur.
;;     icicle-search: Highlight also match of current regexp, inside that of regexp arg.
;;                    Use new faces icicle-search-*-regexp.
;;     icicle-search, icicle-switch-to-Completions-buf, icicle-move-to-next-completion:
;;       Use new, generic icicle-place-overlay.
;;     Removed icicle-place-search-overlay.
;; 2006/03/26 dadams
;;     icicle-search: Use icicle-search-overlay.  Ensure don't match twice at same position.
;;                    Added regexp arg.  Use 0 as sit-for default.
;;     Added: icicle-place-search-overlay.
;; 2006/03/25 dadams
;;     icicle-prefix-complete: Minor bug fix: Don't save try-completion if not a string.
;;     icicle-candidate-set-(save|retrieve): Allow use of a variable to save/retrieve.
;;     Added: icicle-candidate-set-(retrieve-from|save-to)-variable, icicle-*-no-display,
;;            icicle-prefix-complete-1.
;;     icicle-apropos-complete-1: Added no-display-p optional arg.
;;     Use no-display-p arg in calls to icicle-display-candidates-in-Completions.
;;     icicle-candidate-set-(retrieve-from|save-to)-cache-file: Pass a consp, not t.
;;     icicle-candidate-set-retrieve: Don't display *Completions*.
;; 2006/03/24 dadams
;;     Added icicle-delete-char.
;; 2006/03/23 dadams
;;     icicle-candidate-set-define: Rewrote.  Can also use at top level.
;;       Error if wrong result type.  Sort result.  Use display-completion-list and
;;       icicle-narrow-candidates (unless at top level).
;;     icicle-narrow-candidates: Can call from top-level (but not interactively).
;;     icicle-candidate-set-complement: Use icicle-maybe-sort-and-strip-candidates.
;;     Mention in doc strings of minibuffer and *Completions* functions: where, key.
;; 2006/03/22 dadams
;;     icicle-find-file*: Use default-directory as default, so opens directory on empty input.
;;     icicle-prefix-complete:
;;       Save icicle-current-regexp-input.
;;       Set icicle-current-input to common prefix.  Use it everywhere here.
;;     Calls to icicle-display-candidates-in-Completions: no root arg now.
;; 2006/03/21 dadams
;;     icicle-insert-input: Bug fix: Use directory of input, not default-directory.
;;                                   Append a slash if input itself is a directory.
;; 2006/03/20 dadams
;;     icicle-retrieve-last-input: Insert icicle-current-regexp-input if repeat C-l.
;;     Added: icicle-insert-input.
;; 2006/03/19 dadams
;;     icicle-apropos-complete-1: Call icicle-save-or-restore-input with non-nil regexp-p arg.
;; 2006/03/17 dadams
;;     Added: icicle-add/update-saved-completion-set, icicle-remove-saved-completion-set,
;;            icicle-retrieve-candidates-from-set.
;;     Removed: icicle-cache-file.
;;     icicle-candidate-set-retrieve: Read candidates set and use its cache file.
;;                                    Enable recursive minibuffers.
;;     icicle-candidate-set-save: Read candidates set and cache-file names.
;;                                Use icicle-add/update-saved-completion-set.
;;     icicle-barf-if-outside-minibuffer: Move interactive test to calling functions.
;;     icicle-files-within: Moved to icicle-fn.el.
;; 2006/03/16 dadams
;;     Added: icicle*-saved-completion-set.
;; 2006/03/14 dadams
;;     icicle-narrow-candidates: Handle no-catch error.  Don't use icicle-completing-p.
;;     icicle-candidate-set-complement:
;;       Do what we do in icicle-candidate-set-retrieve: call icicle-narrow-candidates.
;;     icicle-candidate-set-(retrieve|complement): Msg when display.
;;     icicle-(apropos|prefix)-complete-1:
;;       Removed test for last-command = icicle-candidate-set-complement.
;; 2006/03/13 dadams
;;     Added: icicle-candidate-set-(retrieve-from|save-to)-cache-file.
;;     icicle-candidate-set-(retrieve|save): C-u uses cache file.
;; 2006/03/12 dadams
;;     Added: icicle-dired-saved-file-candidates(-other-window), icicle-locate-file*,
;;            icicle-files-within.
;; 2006/03/11 dadams
;;     icicle-find-file*, icicle-delete-file*:
;;       Reverted to simple form (moved directory control to icicles-mac.el).
;;     icicle-keep-only-past-inputs: Expand file name relative to directory of last input.
;; 2006/03/10 dadams
;;     icicle-find-file*, icicle-delete-file*: Expand file name relative to dir of last input.
;;     Renamed icicle-minibuffer-contents to icicle-minibuffer-contents-from-minibuffer.
;; 2006/03/09 dadams
;;     icicle-barf-if-outside-*: Removed argument - use this-command instead.
;; 2006/03/08 dadams
;;     icicle-bookmark: Use default value, not init value, for completing-read.
;; 2006/03/07 dadams
;;     icicle-doc: Save table in minibuffer-completion-table, so can access via C-RET too.
;;     icicle-insert-thesaurus-entry, icicle-*doc:
;;       Removed binding of icicle-incremental-completion-flag to nil.
;;     Added: icicle-barf-if-outside-(minibuffer|Completions).  Use in appropriate commands.
;;     Added: icicle-non-whitespace-string-p.  Use in icicle-*doc.
;; 2006/03/06 dadams
;;     Update doc strings of *-thesaurus*.
;; 2006/03/05 dadams
;;     Added: icicle-toggle-incremental-completion, toggle-icicle-incremental-completion.
;; 2006/03/03 dadams
;;     icicle-*doc: Clarified doc strings.  Updated prompts.
;;     Added: icicle-help-button.  Use in icicle-completion-help.
;; 2006/03/02 dadams
;;     icicle-insert-thesaurus-entry, icicle-complete-thesaurus-entry:
;;       Use synonyms-ensure-synonyms-read-from-cache.  Clarified doc strings.
;;     icicle-complete-thesaurus-entry: Error if no word at point.  Correct looking-at regexp.
;; 2006/03/01 dadams
;;     Added: icicle-insert-thesaurus-entry, icicle-insert-thesaurus-entry-cand-fn,
;;            icicle-complete-thesaurus-entry.
;;     icicle-(previous|next)-(apropos|prefix)-candidate-action: Wrap in save-excursion.
;;     Use icicle-clear-minibuffer instead of icicle-erase-minibuffer non-interactively.
;;     icicle-erase-minibuffer: Use icicle-call-then-update-Completions.
 
;;;(@* "CHANGE LOG FOR `icicles-face.el'")
;;
;; 2007/11/18 dadams
;;     Added: icicle-proxy-candidate.
;;     icicle-special-candidate: No longer use a raised box.
;; 2007/10/22 dadams
;;     icicle-special-candidate: Raised box.
;; 2007/08/19 dadams
;;     Added: icicle-input-completion-fail.
;; 2007/06/21 dadams
;;     Added: icicle-candidate-part.  Changed definition of icicle-special-candidate.
;; 2007/06/17 dadams
;;     Added: icicle-saved-candidate.
;; 2007/06/12 dadams
;;     icicle-prompt-suffix: No box for dark background.
;; 2007/06/11 dadams
;;     Better defaults for dark background frames.
;; 2007/06/07 dadams
;;     Changed emacs-commentary-link to point to icicles-doc1.el and icicles-doc2.el.
;; 2007/05/22 dadams
;;     Protected icicle-search-context-level-1 to *-8, in case hexrgb is not loaded.
;; 2007/04/20 dadams
;;     Added: icicle-search-context-level-1 through *-8.
;;     Require icicles-opt.el.
;; 2006/12/22 dadams
;;     Renamed group icicles to Icicles.
;;     Added Icicles subgroups, and assigned them instead of group Icicles:
;;      -Buffers, -Completions-Display, -Key-Bindings, -Key-Completion, -Matching,
;;      -Minibuffer-Display, -Miscellaneous, -Searching.
;; 2006/11/06 dadams
;;     icicle-search-highlight-all-flag -> icicle-search-highlight-threshold (integer)
;; 2006/10/16 dadams
;;     icicle-special-candidate: changed background from Pink to #DB17FFF4E581.
;; 2006/10/04 dadams
;;     Added: icicle-special-candidate.
;; 2006/08/13 dadams
;;     Added: icicle-completing-prompt-prefix.
;; 2006/07/16 dadams
;;     Added dark-background face suggestions from Le Wang - thx.
;; 2006/06/30 dadams
;;     Added: minibuffer-prompt for Emacs < 22 (e.g. Emacs 21.4 has propertize).
;; 2006/04/28 dadams
;;     Added: icicle-whitespace-highlight.
;; 2006/04/14 dadams
;;     Renamed icicle-search-refined-regexp to icicle-search-current-input.
;; 2006/04/07 dadams
;;     Added: icicle-search-main-regexp-others.
;;     Renamed: icicle-search-main-regexp to icicle-search-main-regexp-current.
;; 2006/03/27 dadams
;;     Added: icicle-search-*-regexp.
;; 2006/03/22 dadams
;;     Renamed: icicle-root-highlight-* to icicle-match-highlight-*.
;; 2006/03/21 dadams
;;     Added: icicle-common-match-highlight-Completions.
;;     icicle-root-highlight-Completions: Changed default face.
;; 2006/03/08 dadams
;;     Added: icicle-current-candidate-highlight.
 
;;;(@* "CHANGE LOG FOR `icicles-fn.el'")
;;
;; 2007/12/03 dadams
;;     Renamed icicle-longest-common-match to icicle-expanded-common-match.
;; 2007/12/02 dadams
;;     Added: icicle-var-is-of-type-p.
;;     icicle-read-(number|string-completing):
;;       Use icicle-var-is-of-type-p, to handle compatible types.
;; 2007/11/30 dadams
;;     icicle-read-file-name, icicle-read-(number|string-completing),
;;       icicle-display-candidates-in-Completions, icicle-proxy-candidate-first-p: 
;;         Use only membership in icicle-proxy-candidates, not icicle-proxy-candidate property.
;;     icicle-choose-completion-string:
;;       Condition for exit: could be no minibuffer-completion-table if extra or proxy cands.
;; 2007/11/29 dadams
;;     icicle-read-(number|string-completing):
;;       Treat icicle-add-proxy-candidates-flag and icicle-proxy-candidates.
;;     icicle-display-candidates-in-Completions: Treat empty icicle-completion-candidates.
;; 2007/11/27 dadams
;;     Added: icicle-read-number, icicle-read-string-completing.
;;     icicle-read-file-name: Remove icicle-proxy-candidate property in unwind-protect.
;; 2007/11/25 dadams
;;     Added: icicle-command-abbrev(save|-used-more-p).
;; 2007/11/24 dadams
;;     icicle-longest-common-match,  first loop: string-match -> not string-match.
;;                                               len-first -> length of lcm.
;;     Added: icicle-proxy-candidate-first-p.
;; 2007/11/18 dadams
;;     icicle(-unsorted)(-file-name)-(apropos|prefix)-candidates:
;;       Include also icicle-proxy-candidates.
;;       Move special and proxy candidates inside match filtering.
;;     icicle-display-candidates-in-Completions:
;;       Don't expand directory when highlighting special candidate.
;; 2007/11/02 dadams
;;     icicle-longest-common-match:
;;       First loop: (1) match against at most len-first, (2) put the match into the and test.
;; 2007/10/28 dadams
;;     icicle-display-candidates-in-Completions:
;;       Always highlight longest common match for prefix completion.
;;     icicle-unsorted(-file-name)-prefix-candidates, icicle-fuzzy-candidates:
;;       Set icicle-common-match-string, regardless of icicle-expand-input-*-flag.
;;     icicle-save-or-restore-input:
;;       Update to lcm even if no input change, if completion mode changed.
;;       Update to lcm if prefix completing, even if icicle-expand-input-*-flag is nil.
;;       Save input for C-l even if this command is an icicle-completing-command (?).
;;       Don't reset raw input to "" if cycling, so keep highlight in *Completions*.
;;     icicle-longest-common-match: Test prefix through embedded input each time.
;; 2007/10/26 dadams
;;     icicle-read-face-name (Emacs 22): Fix the treatment of default value.
;; 2007/10/22 dadams
;;     icicle-display-candidates-in-Completions:
;;       Highlight only regexp matching part of special candidates.
;;       Highlight special cands regardless of icicle-highlight-historical-candidates-flag.
;; 2007/10/02 dadams
;;     icicle-next-candidate:
;;       Apply abbreviate-file-name to file-name input.  Thx to Joonhwan Lee.
;; 2007/09/29 dadams
;;     Added: icicle-fuzzy-candidates.
;;     icicle-prefix-candidates: Treat fuzzy completion.
;;     icicle-display-candidates-in-Completions:
;;       For prefix completion, highlight literal input match in Completions.
;; 2007/09/26 dadams
;;     icicle-read-from-minibuffer: Removed keep-all arg - see also 2006/06/01.
;; 2007/09/22 dadamms
;;     icicle-completing-read, icicle-read-from-minibuffer:
;;       Ensure that init arg is string when get it from default arg via icicle-init-*-flag.
;; 2007/09/18 dadams
;;     icicle-call-then-update-Completions:
;;       Test icicle-current-completion-mode, not icicle-last-completion-command.
;; 2007/09/16 dadams
;;     icicle-call-then-update-Completions:
;;       Don't complete if file-remote-p.
;;       Highlight completion failure only if input > icicle-*-display-min-input-chars.
;;     icicle-highlight-input-noncompletion:
;;       Don't highlight unless also icicle-incremental-completion-flag.
;;       Call icicle-file-name-*-candidates for file-name input.
;;       Don't highlight if file-remote-p and reading file name.  Instead, remove highlighting.
;; 2007/09/14 dadams
;;     icicle-highlight-input-noncompletion, icicle-update-completions,
;;       icicle-recompute-candidates:
;;         Wrapped condition-case around candidates computation.
;; 2007/09/02 dadams
;;     icicle-display-candidates-in-Completions:
;;       Restore point and window point to start of candidates in *Completions*.
;; 2007/08/21 dadams
;;     icicle-highlight-input-noncompletion: Remove any vestigial highlighting on matched part.
;; 2007/08/19 dadams
;;     Added: icicle-lisp-vanilla-completing-read, icicle-highlight-input-noncompletion.
;;     icicle-completing-read:
;;       Allow reading and returning string candidates with properties:
;;         bind minibuffer-allow-text-properties.
;;       Put whole candidate on string as text property.
;;       Use icicle-lisp-vanilla-completing-read, not old-completing-read.
;;     icicle-call-then-update-Completions: Call icicle-highlight-input-noncompletion.
;;     icicle-get-alist-candidate:
;;       If icicle-whole-candidate-as-text-prop-p, try to get full candidate from text prop.
;; 2007/08/16 dadams
;;     icicle-insert-candidates: Don't reset text props if endpos > point.  Thx Chris Hecker.
;; 2007/08/14 dadams
;;     icicle-increment-cand-nb+signal-end: Removed audible bell - use visible bell only.
;; 2007/07/22 dadams
;;     icicle-read-face-name (Emacs 22 version):
;;       Revert multiple branch to not use icicle-make-face-candidate.
;;     Moved here from icicles-mode.el: icicle-completing-p.
;; 2007/07/06 dadams
;;     icicle-display-candidates-in-Completions: Leave cursor at start of candidates.
;; 2007/07/03 dadams
;;     icicle-save-or-restore-input:
;;       Add current-raw-input to icicle-previous(-non)-file-*-raw-inputs, respecting max len.
;;       Don't save input if current command is C-l or C-L.
;;       If don't save raw input, set it to empty string.
;;     Added: icicle-put-at-head.
;;     icicle-highlight-complete-input: Ensure no error treatment in call to search-forward.
;;     icicle-display-candidates-in-Completions:
;;       Ensure non-nil current(-raw)-input, for highlight.
;; 2007/06/23 dadams
;;     Added: icicle-completing-read-history.
;;     Moved here from icicles-cmd.el: icicle-read-from-minibuf-nil-default.
;; 2007/06/20 dadams
;;     icicle-make-face-candidate, icicle-read-face-name:
;;       Use new string value of icicle-WYSIWYG-Completions-flag.
;; 2007/06/19 dadams
;;     icicle-read-face-name:
;;       Use a multi-completion, depending on icicle-WYSIWYG-Completions-flag.
;;       For Emacs 22, isolate the multiple case and do nothing for it.
;;     icicle-make-face-candidate: Treat also whole-number value for icicle-WYSIWYG-*-flag.
;; 2007/06/17 dadams
;;     icicle-make-face-candidate: Respect icicle-WYSIWYG-Completions-flag.
;;     icicle-display-candidates-in-Completions: highlight saved candidates.
;;     icicle-place-overlay: Added priority arg.
;; 2007/06/13 dadams
;;     icicle-display-candidates-in-Completions:
;;       Upgrade icicle-incremental-completion-p only if redisplaying.  Thx Mark Elston.
;; 2007/06/10 dadams
;;     Removed unconditional add-hook for icicle-fit-Completions-window.
;; 2007/06/09 dadams
;;     icicle-insert-candidates: Don't mouse-face last char of candidate if it is a newline.
;;     icicle-display-candidates-in-Completions: Treat icicle-candidate-properties-alist last.
;; 2007/06/07 dadams
;;     icicle-read-face-name: Use (icicle-)face-name-history.
;; 2007/06/05 dadams
;;     Added soft require of hexrgb.el, but only if window-system.
;;     icicle-color*: Protected with featurep hexrgb and error message.
;; 2007/06/01 dadams
;;     icicle-completing-read, icicle-read-from-minibuffer, icicle-read-string:
;;       Use M@R%M=X!L$S+P&L^T*Z to avoid name capture by minibuffer-history-variable's value.
;;     icicle-display-candidates-in-Completions, icicle-historical-alphabetic-p,
;;       icicle-most-recent-first-p:
;;         Ensure value of minibuffer-history-variable is bound.
;; 2007/05/29 dadams
;;     icicle-call-then-update-Completions: Don't recomplete if only one candidate.
;; 2007/05/24 dadams
;;     icicle-completing-read, icicle-read-file-name:
;;       Fix length test for consp initial-input.  Thx to Anupam Sengupta.
;; 2007/05/04 dadams
;;     icicle-unsorted-*: C-g quits to top-level.
;;     icicle-candidate-set-1, icicle-scroll-or-update-*, icicle-msg-maybe-in-minibuffer:
;;       Move to minibuffer window for minibuffer-message.
;;     icicle-display-candidates-in-Completions, icicle-highlight-initial-whitespace,
;;     icicle-unsorted-file-name-*-candidates, icicle-longest-common-match,
;;     icicle-next-candidate, icicle-place-cursor, icicle-highlight-complete-input,
;;     icicle-special-candidates-first-p, icicle-case-string-less-p:
;;       Use read-file-name-completion-ignore-case, if completing file name.
;;     Moved mention of read-file-name-completion-ignore-case and
;;       icicle-cycle-into-subdirs-flag from icicle-completing-read to icicle-read-file-name.
;;     Added empty defvars for Emacs 22 standard vars, to quiet byte compiler.
;; 2007/04/29 dadams
;;     Added: icicle-last-modified-first-p.
;;     icicle-call-then-update-Completions: Delete icicle-complete-input-overlay.
;; 2007/04/08 dadams
;;     Added: icicle-highlight-candidate-in-Completions, from code in icicle-next-candidate.
;;            But changed to: 1) make Completions dedicated and 2) not bind case-fold-search.
;;     icicle-next-candidate: Use icicle-highlight-candidate-in-Completions.
;; 2007/04/02 dadams
;;     Moved here from icicles-cmd.el: icicle-filter-alist, icicle-first-matching-candidate.
;; 2007/04/01 dadams
;;     icicle-insert-candidates: Don't fixup-whitespace if bolp.
;; 2007/03/30 dadams
;;     icicle-fit-Completions-window: Don't resize *Completions* window if split horizontally.
;;     icicle-insert-candidates:
;;       Calculate nb of columns using max-candidate-len, not number of candidates.
;;       Indent at least one colwidth, and leave less space between candidates.
;; 2007/03/26 dadams
;;     icicle-completion-setup-function:
;;       Protected minibuffer-completing-symbol with boundp (not define in Emacs 23).
;; 2007/03/23 dadams
;;     icicle-completing-read, icicle-read-file-name:
;;       Record require-match in icicle-require-match-p.
;; 2007/03/17 dadams
;;     icicle-read-face-name: Undo Emacs 21+ brain-dead treatment of PROMPT arg.
;; 2007/03/14 dadams
;;     icicle-fit-Completions-window:
;;       Don't let *Completions* take over the frame, so don't lose other window.
;;       Respect icicle-Completions-window-max-height property of top-level command.
;; 2007/03/12 dadams
;;     Added: icicle-fit-Completions-window.  Use in temp-buffer-show-hook.
;;     icicle-display-completion-list:
;;       Print help lines here, not in icicle-completion-setup-*, so window fit includes them.
;;       Put face on string candidates intro string, Possible completions are:.
;;     icicle-completion-setup-function:
;;       Don't print the help lines here.
;;       Updated wrt latest Emacs 22 CVS version.
;;     icicle-insert-Completions-help-string: Remove second newline at end.
;;     icicle-start-of-candidates-in-Completions: Advance 1 or 2 lines, not 0 or 3.
;; 2007/03/10 dadams
;;     icicle-display-completion-list: Rewrote to adjust columns to window width.
;;     Added: icicle-insert-candidates.
;; 2007/03/09 dadams
;;     Moved icicle-get-alist-candidate here from icicles-cmd.el.
;; 2007/03/07 dadams
;;     icicle-choose-completion-string, icicle-next-candidate:
;;       Use 0, not t, as frame arg to get-buffer-window.
;; 2007/03/04 dadams
;;     icicle-highlight-initial-whitespace: Removed unused local var input-start-position.
;;     icicle-completing-read: Do not initialize icicle-candidates-alist.
;; 2007/03/03 dadams
;;     icicle-reversible-sort: Don't display Sorting candidates message - too annoying.
;; 2007/03/02 dadams
;;     icicle-completion-setup-function for Emacs 22: Don't use file-name-directory if nil.
;; 2007/03/01 dadams
;;     icicle-completing-read: Initialize icicle-candidates-alist.
;; 2007/02/24 dadams
;;     icicle-next-candidate:
;;       Transform multi-completion icicle-last-completion-candidate.
;;       If last-command is icicle(mouse)-remove-candidate don't reset common match string or
;;         redisplay *Completions*.
;;     icicle-recompute-candidates:
;;       Don't recompute if icicle-last-completion-command is icicle-mouse-remove-candidate.
;; 2007/02/18 dadams
;;     icicle-save-or-restore-input: Use "" if file-name-directory is nil.  Thx Shreevatsa R.
;; 2007/02/17 dadams
;;     icicle-reversible-sort: No Sorting... message if icicle-edit-update-p.  Thx Shreevatsa.
;; 2007/02/05 dadams
;;     icicle-completing-read: Added info about multi-completions to doc string.
;; 2007/02/04 dadams
;;     icicle-display-candidates-in-Completions: Fixed composition of multiple faces.
;; 2007/02/03 dadams
;;     Renamed icicle-icompleting-p to icicle-edit-update-p.
;;     Require icicles-var.el.  Removed eval-when-compile for require of icicles-opt.
;; 2007/02/02 dadams
;;     icicle-case-string-less-p: Use var, not function, icicle-completing-p (else too slow).
;;     icicle-reversible-sort: Added sorting progress message.
;; 2007/01/29 dadams
;;     icicle-display-candidates-in-Completions:
;;       Allow for consp proplist value of icicle-special-candidate.
;;     icicle-special-candidates-first-p: Added neither-special case.  Treat letter case.
;;     Renamed: icicle-case-insensitive-string-lessp to icicle-case-insensitive-string-less-p.
;;     Added: icicle-case-string-less-p.
;;     icicle-historical-alphabetic-p, icicle-most-recent-first-p, icicle-dirs-last-p,
;;       icicle-part-N-lessp, icicle-prefix-keys-first-p:
;;         Use icicle-case-string-less-p, not string-lessp.
;;     icicle-prefix-keys-first-p: Ignore case.
;; 2007/01/28 dadams
;;     Added: icicle-command-names-alphabetic-p.
;;     Moved here from icicles-cmd.el:
;;       icicle-prefix-keys-first-p, icicle-special-candidates-first-p.
;; 2007/01/23 dadams
;;     Added: icicle-read-face-name, icicle-make-face-candidate,
;;            icicle-face-valid-attribute-values, icicle-color-name-w-bg.
;;     icicle-choose-completion-string: Added Emacs 21 version.
;;     icicle-display-candidates-in-Completions:
;;       Only highlight past inputs if icicle-highlight-historical-candidates-flag.
;; 2007/01/22 dadams
;;     icicle-part-N-lessp, icicle-color-*-lessp: Do nothing if strings are not multipart.
;;     icicle-display-candidates-in-Completions:
;;       Highlight past inputs after treat *-prop*-alist.
;;     icicle-delete-whitespace-from-string: Added optional args.
;; 2007/01/21 dadams
;;     Added: icicle-part-*-lessp, icicle-color-*-lessp.
;; 2007/01/20 dadams
;;     Added: icicle-display-completion-list.
;; 2007/01/19 dadams
;;     icicle-display-candidates-in-Completions: Treat icicle-candidate-properties-alist.
;; 2007/01/15 dadams
;;     Added: icicle-reversible-sort.  Use it where standard sort function was used.
;;     Renamed: icicle-sort-and-strip-ignored to icicle-strip-ignored-files-and-sort,
;;              icicle-sort-dirs-last to icicle-dirs-last-p,
;;              icicle-sort-case-insensitively to icicle-case-insensitive-string-lessp.
;;     Grouped sort functions together.
;; 2007/01/14 dadams
;;     icicle-next-candidate: Use icicle-transform-multi-completion.  Thx to Rubikitch.
;;     icicle-transform-candidates: Updated doc string.
;; 2007/01/12 dadams
;;     icicle-next-candidate: Use icicle-list-use-nth-parts.  Thx to Rubikitch.
;;     icicle-display-candidates-in-Completions: Added message when no-display-p.
;; 2007/01/07 dadams
;;     icicle-completing-read: Updated doc string for Emacs 22.
;; 2007/01/06 dadams
;;     Added: icicle-abbreviate-or-expand-file-name.
;;     icicle-fix-default-directory: Use icicle-abbreviate-or-expand-file-name.
;;     icicle-save-or-restore-input: expand-file-name -> icicle-abbreviate-or-expand-file-name.
;;     icicle-completion-setup-function: Don't set default-directory to nil if minibuf empty.
;;     icicle-read-file-name: Bug fix: Don't set initial-input to icicle-initial-value if "".
;; 2007/01/05 dadams
;;     icicle-completing-read, icicle-read-file-name:
;;       Use existing string value of icicle-initial-value.  Thx to rubikitch for suggestion.
;; 2007/01/01 dadams
;;     Added assq-delete-all for Emacs 20 (moved here from icicles-mode.el).
;;     Added: icicle-assoc-delete-all.
;; 2006/12/25 dadams
;;     Added: icicle-most-recent-first-p.
;;     icicle-update-completions: Added optional no-display arg.
;;     Moved here from icicles-opt.el: icicle-historical-alphabetic-p.
;; 2006/11/10 dadams
;;     icicle-completing-read, icicle-read-file-name: Prefix prompt by + if a multi-command.
;; 2006/10/15 dadams
;;     icicle-save-or-restore-input:
;;       Change test from cmd is same as last to input is same as last.
;;     icicle-rebind-completion-maps:
;;       When turn off, bind C-M-mouse-2 and C-down-mouse-2 to nil.
;;     icicle-display-candidates-in-Completions: Accumulate (merge) highlight faces.
;;     Moved to icicles-mode.el:
;;       icicle-bind-isearch-keys, icicle-rebind-completion-maps,
;;       icicle-(redefine|restore)-standard-(commands|options),
;;       icicle-(redefine|restore)-std-completion-fns), icicle-(re|un)map,
;;       icicle-(bind|restore)-completion-keys, icicle-minibuffer-setup,
;;       icicle-cancel-*Help*-redirection, icicle-activate-mark,
;;       icicle-run-icicle-(pre|post)-command-hook, icicle-set-calling-cmd,
;;       icicle-undo-std-completion-faces, icicle-update-ignored-extensions-regexp,
;;       icicle-completing-p, icicle-restore-region-face.
;;     Removed eval-when-compile of *-face, *-var, *-mac, *-cmd.
;;     Removed some defvars for quieting byte compiler.
;; 2006/10/05 dadams
;;     icicle-display-candidates-in-Completions: Highlight candidates that are special.
;; 2006/10/03 dadams
;;     icicle-display-candidates-in-Completions:
;;       Removed predicate filtering, as the pred doesn't necessarily apply to the candidate.
;;       This has been in the code forever, so commented it out, in case it is needed ;-).
;; 2006/10/01 dadams
;;     icicle-alternative-sort -> icicle-toggle-alternative-sorting.
;;     icicle-update-completions: Treat icicle-prefix-word-complete case too.
;; 2006/09/30 dadams
;;     Added: icicle-key-description.
;;     icicle-(bind|restore)-completion-keys:
;;       Bind icicle-candidate-set-(save|retrieve) to C-M-(<|>), not C-(<|>).
;;       Bind icicle-toggle-angle-brackets to C-<.
;;       No longer remap help-command to icicle-completion-help.
;;       Bind icicle-completion-help to C-?.
;;       Rename [menu-bar minibuf C-h] to [menu-bar minibuf completion-help].
;;     icicle-completing-p: Bug fix: Use where-is-internal, not minibuffer-completion-table.
;; 2006/09/22 dadams
;;     icicle-minibuffer-setup:
;;       Apropos-complete, don't prefix-complete, when icicle-show-Completions-initially-flag.
;; 2006/09/17 dadams
;;     icicle-completing-p: Ensure minibuffer is active too.
;; 2006/09/16 dadams
;;     Bound icicle-insert-key-description to M-q.
;;     icicle-completing-read:
;;       Use icicle-list-join-string only to join parts of candidate (alist key).
;;       Append icicle-list-end-string instead.
;;     icicle-msg-maybe-in-minibuffer: Fixed doc string (active -> inactive).
;; 2006/09/12 dadams
;;     icicle-minibuffer-setup: Set icicle-pre-minibuffer-buffer.
;;     Renamed icicle-switch-to-minibuffer to icicle-insert-completion.
;; 2006/09/03 dadams
;;     Renamed icicle-show-Completions-help to icicle-show-Completions-help-flag.
;; 2006/08/27 dadams
;;     Bind Quit in Minibuf menu to icicle-abort-minibuffer-input.
;; 2006/08/22 dadams
;;     icicle-save-or-restore-input:
;;       If icicle-last-completion-candidate is nil, don't try to restore.
;; 2006/08/18 dadams
;;     icicle-minibuffer-setup: Reset icicle-last-completion-candidate to nil.
;;     icicle-rebind-completion-maps:
;;       Added icicle-Info-goto-node to icicle-completion-help-string.
;; 2006/08/15 dadams
;;     icicle-(bind|restore)-completion-keys:
;;       Bind icicle-help-on-(previous|next)-(apropos|prefix)-candidate.
;;       Reorder bindings.  Bind C-mouse-2 to 'ignore, not nil.
;;     icicle-rebind-completion-maps: Bind icicle-help-on-* in completion-list-mode-map.
;;     Added: icicle-barf-if-outside-Completions-and-minibuffer.
;; 2006/08/13 dadams
;;     icicle-completing-read, icicle-read-file-name: Use icicle-completing*-prompt-prefix.
;; 2006/08/04 dadams
;;     icicle-call-then-update-Completions:
;;       Call icicle-last-completion-command, not just prefix or apropos (so prefix-word too).
;;     icicle-completing-read, icicle-read-file-name, icicle-next-candidate,
;;     icicle-recompute-candidates, icicle-call-then-update-Completions:
;;       Use icicle-remove-Completions-window.
;;     icicle-(bind|restore)-completion-keys: Bound icicle-pp-eval-expression to M-:.
;; 2006/08/03 dadams
;;     icicle-completion-setup-function: Removed useless highlighting code at end (Emacs 20).
;;     icicle-rebind-completion-maps: Updated icicle-completion-help-string.
;; 2006/07/30 dadams
;;     icicle-call-then-update-Completions: save match-data.
;; 2006/07/29 dadams
;;     icicle-activate-mark: Do it only if icicle-completing-p.  Thx to Le Wang.
;;     icicle-rebind-completion-maps:
;;       Updated to use icicle-dispatch-C-..
;;       Added icicle-toggle-search-cleanup to icicle-completion-help-string.
;;     icicle-bind-completion-keys:
;;       Use icicle-dispatch-C-. instead of icicle-toggle-ignored-extensions.
;; 2006/07/28 dadams
;;     icicle-longest-common-match: Treat special case of input such as "$" or "\\>$".
;; 2006/07/24 dadams
;;     icicle-call-then-update-Completions: Deactivate mark at the end.  Thx to Le Wang.
;; 2006/07/23 dadams
;;     Added: icicle-transform-candidates.
;;     icicle-rebind-completion-maps, icicle-(bind|restore)-completion-keys:
;;       Added icicle-toggle-transforming.
;;     icicle-unsorted(-file-name)-*-candidates: Use icicle-transform-candidates.
;; 2006/07/20 dadams
;;     Renamed icicle-arrows-respect-* to icicle-cycling-respects-completion-mode-flag.
;; 2006/07/19 dadams
;;     Applied patch from Damien Elmes <emacs@repose.cx>:
;;       Added icicle-insert-help-string, icicle-start-of-completions (factored from existing).
;;       icicle-completion-setup-function: Use icicle-insert-help-string.
;;       icicle-display-candidates-in-Completions:
;;         Use icicle-start-of-completions, and adjust loop accordingly.
;;       icicle-minibuffer-setup:
;;         Reset icicle-current-completion-type.
;;         Bind (up|down) to icicle-*-context-candidate, not (previous|next)-history-element.
;;       icicle-next-candidate: Use icicle-start-of-completions.
;;       icicle-scroll-or-update-Completions: Use icicle-scroll-completions.
;;     Renamed: icicle-start-of-completions to icicle-start-of-candidates-in-Completions,
;;              icicle-insert-help-string to icicle-insert-Completions-help-string,
;;              icicle-current-completion-type to icicle-current-completion-mode,
;;              icicle-*-context-candidate to icicle-(next|previous)-candidate-per-mode,
;;              icicle-scroll-completions to icicle-scroll-Completions.
;;     icicle-minibuffer-setup:
;;       Replaced icicle-display-Completions with icicle-prefix-complete, to get initial
;;         highlight.
;; 2006/07/18 dadams
;;     icicle-call-then-update-Completions:
;;       Delete *Completions* window, depending on icicle-Completions-display-min-input-chars.
;;         Thx to Damien Elmes.
;;     icicle-rebind-completion-maps: Add icicle-toggle-case-sensitivity to help list.
;;     icicle-bind-completion-keys: Bind icicle-toggle-case-sensitivity to S-C-a (i.e. C-A).
;; 2006/07/17 dadams
;;     icicle-call-then-update-Completions: sit-for delay if no candidates.  Thx Damien Elmes.
;; 2006/07/09 dadams
;;     icicle-save-or-restore-input:
;;       Put back test: current input differs from last cycling candidate (user has edited it).
;;     icicle-next-candidate: Removed filtering with predicate (vestigial cruft).
;; 2006/07/08 dadams
;;     icicle-save-or-restore-input: Restore if currently cycling, not if not completing.
;; 2006/07/07 dadams
;;     icicle-display-candidates-in-Completions: Fixed test for historical candidate.
;;     Bound icicle-alternative-sort to M-,.  Updated icicle-completion-help-string.
;; 2006/07/05 dadams
;;     icicle-save-or-restore-input:
;;       For restoring: 1) No longer test if current input = *-last-completion-candidate.
;;                      2) No longer test if current input = icicle-initial-value.
;;       No longer save icicle-current-input as icicle-last-completion-candidate.
;;       Simplified the code.
;;     icicle-call-then-update-Completions: Do not set this-command or last-command.
;;     Renamed: icicle-current-regexp-input to icicle-current-raw-input.
;; 2006/07/04 dadams
;;     icicle-unsorted(-file-name)-prefix-candidates: Update icicle-common-match-string.
;;     icicle-unsorted-file-name-prefix-candidates:
;;       If prefix matches an empty directory, then use that directory as the sole completion.
;;     icicle-next-candidate: Use icicle-*-cycling-command properties.
;;                            Removed regexp-p arg in calls to icicle-save-or-restore-input.
;;     icicle-save-or-restore-input:
;;       Update icicle-common-*-string and icicle-current-regexp-input even if not regexp-p.
;;       Removed optional regexp-p argument.
;;       Do not update icicle-last-completion-candidate.
;;       Use icicle-*-*ing-command properties.
;;     icicle-recompute-candidates: Use icicle-*-cycling-command properties.
;; 2006/07/03 dadams
;;     Bug fixes -
;;       icicle-next-candidate:
;;         Don't reset icicle-common-match-string if this is an apropos cycling command
;;           and last command was an apropos command (cycling or completing).
;;         Do icicle-save-or-restore-input a second time, after recompute candidates,
;;           to pick up the common match.
;;         Always pass icicle-current-input to icicle-place-cursor.
;;       icicle-save-or-restore-input:
;;         Don't do anything if last command was a cycling command.
;;         Don't save input as regexp for C-l if this command is a cycling command,
;;           unless it is the first or it follows a completion command.
;; 2006/07/02 dadams
;;     icicle-place-cursor: position point & mark at least past prompt.  Thx to Peter Povinec.
;; 2006/06/09 dadams
;;     icicle(-file-name)-(apropos|prefix)-candidates: Reset icicle-candidate-nb to nil.
;;     icicle-recompute-candidates: Don't reset icicle-candidate-nb to nil.
;;     icicle-place-cursor: Prevent error on search-forward.
;; 2006/06/08 dadams
;;     icicle-save-or-restore-input: Do not restore if current command is completion.
;;     Added: icicle-expand-file-name.
;;     icicle-next-candidate: Don't pass NTH arg to icicle-display-candidates-in-Completions.
;; 2006/06/06 dadams
;;     icicle-control-reminder-prompt: condition-case, since it's on kill-emacs-hook.
;; 2006/06/01 dadams
;;     icicle-read-from-minibuffer: Emacs 22 removed the keep-all arg it had added.
;; 2006/05/31 dadams
;;     icicle-barf-if-outside*: Simplified.
;; 2006/05/30 dadams
;;     Bind icicle-erase-minibuffer-or-history to M-k also in non-completion minibuffer maps.
;; 2006/05/26 dadams
;;     Bind icicle-erase-minibuffer-or-history to M-k.
;;     Do not remap (or unmap) kill-sentence (it is on M-k in global map).
;; 2006/05/19 dadams
;;     Added: icicle-control-reminder-prompt.
;;     icicle-reminder-*-flag, icicle-read-file-name: Treat new values of icicle-reminder*.
;;     Renamed icicle-inhibit-reminder* to icicle-reminder*.
;; 2006/05/16 dadams
;;     icicle-recompute-candidates: Add new saved-last-input arg (replaces icicle-last-input).
;;     icicle-next-candidate: Pass saved old last input to icicle-recompute-candidates.
;; 2006/05/15 dadams
;;     Reverted change to icicle-unsorted(-file-name)-apropos-candidates,
;;       icicle-display-Completions: Use icicle-completion-nospace-flag, not nil.
;;     Renamed: icicle-completion-nospace-flag to icicle-ignore-space-prefix-flag.
;;     icicle-toggle-incremental-completion: C-#, icicle-toggle-ignored-space-prefix: C-^.
;; 2006/05/13 dadams
;;     icicle-unsorted(-file-name)-apropos-candidates, icicle-display-Completions:
;;       Use nil, not icicle-completion-nospace-flag.
;; 2006/05/12 dadams
;;     icicle-completion-help-string: Added faces and commands. Cleanup.
;;     Moved from icicles-cmd.el: icicle-barf-if-outside-*.
;; 2006/05/09 dadams
;;     icicle-display-*: Only issue Displaying... message when more candidates than threshold.
;; 2006/05/01 dadams
;;     icicle-save-or-restore-input: No-restore test is non-nil, not non-"", icicle-last-input.
;;     icicle-minibuffer-setup: Reset icicle-last-input to nil, not "".
;;     icicle-next-candidate: Highlight initial whitespace before underline root.
;; 2006/04/28 dadams
;;     icicle-save-or-restore-input:
;;       Restore empty input if it is not a file name.
;;       Don't expand empty common-match-string file-name input (it would lose trailing /).
;;     Added: icicle-highlight-initial-whitespace.
;;     icicle-next-candidate, icicle-call-then-update-Completions:
;;       Use icicle-highlight-initial-whitespace.
;; 2006/04/14 dadams
;;     icicle-call-then-update-Completions: Call icicle-update-input-hook.
;;     Bound icicle-insert-string-from-variable to C-=.  Update icicle-completion-help-string.
;; 2006/04/09 dadams
;;     icicle-bind-completion-keys, icicle-minibuffer-setup:
;;       Deal with icicle-arrows-respect-completion-type-flag.
;;     icicle-display-candidates-in-Completions:
;;       Bug fix: regexp-quote common match when highlighting it.
;;     icicle-clear-minibuffer: Remove interactive spec.
;;     Moved to icicles-cmd.el: icicle-customize-apropos*, icicle-repeat-complex-command.
;; 2006/04/02 dadams
;;     Bound icicle-toggle-regexp-quote.
;; 2006/03/31 dadams
;;     icicle-next-candidate:
;;       Apply icicle-place-cursor to icicle-current-regexp-input if regexp-p.
;;     icicle-save-or-restore-input:
;;       Don't set icicle-current-regexp-input if this is a next-candidate action.
;; 2006/03/27 dadams
;;     icicle-place-overlay: Made generic: added args overlay, face, buffer, properties.
;; 2006/03/25 dadams
;;     icicle-call-then-update-Completions: Corrected use of icicle-incremental-completion*.
;; 2006/03/24 dadams
;;     Renamed icicle-expand-input-to-common-match to icicle-longest-common-match.  Rewrote it.
;;     icicle-call-then-update-Completions:
;;       Use icicle-incremental-completion-delay and -threshold.
;;     Mapped icicle-delete-char.
;; 2006/03/23 dadams
;;     icicle-expand-input-to-common-match:
;;       Return the longest common match.  Don't set icicle-common-match-string here.
;;     icicle-unsorted-*apropos-candidates: Set icicle-common-match-string here explicitly.
;;     Added: icicle-maybe-sort-and-strip-candidates.  Use in icicle-candidate-set-1.
;; 2006/03/22 dadams
;;     icicle-display-candidates-in-Completions:
;;       Removed root arg (always use icicle-current-input).
;;       Always highlight normal match part.
;;       Highlight common-match part if icicle-expand-input-to-common-match-flag.
;;     icicle-save-or-restore-input:
;;       Update regexp even if not icicle-expand-input-to-common-match-flag.
;;     icicle-recompute-candidates: If no candidates, then delete *Completions* window.
;;     icicle-next-candidate: Set default-directory only if icicle-file-name-input-p.
;;     Applied renamings of icicle-match-* faces.
;; 2006/03/21 dadams
;;     icicle-expand-input-to-common-match:
;;       Bug fixes:
;;         If no overlap between first and second candidates, then no common match.
;;         If no match with another candidate, then no common match.
;;         Input must match computed common match.
;;         When checking others, check only the added (pre|suf)fix, and reduce those as needed.
;;     icicle-save-or-restore-input:
;;       Bug fixes:
;;         When icicle-expand-input-to-common-match-flag, expand using directory from the
;;           input, not the default-directory.  Thx to cacher3.ericsson.net for report.
;;         Do test for case-only difference only when case-fold-search.
;;         If input is a directory (with slash), then use it as is.
;;         Save icicle-current-regexp-input if no icicle-common-match-string too.
;;     icicle-display-candidates-in-Completions: Use icicle-common-match-highlight-Completions.
;; 2006/03/20 dadams
;;     icicle-save-or-restore-input: Set icicle-current-regexp-input too.
;;                                   Corrected letter-case test.
;; 2006/03/19 dadams
;;     Added: icicle-expand-input-to-common-match.
;;     icicle-unsorted*-apropos-candidates:
;;       Set icicle-common-match-string if icicle-expand-input-to-common-match-flag.
;;     icicle-save-or-restore-input:
;;       Added regexp-p arg.  Update input to icicle-common-match-string if appropriate.
;;     icicle-next-candidate: Reset icicle-common-match-string.
;; 2006/03/17 dadams
;;     icicle-file-(read|writ)able-p: Put non-empty string condition first.
;;     Added: icicle-delete-whitespace-from-string.
;;     icicle-files-within: Moved here from icicle-cmd.el.
;; 2006/03/14 dadams
;;     Removed: icicle-reset-icicle-completing-p.
;;     icicle-completing-read, icicle-read-file-name: Removed icicle-icicle-completing-p.
;;     icicle-display-*: Added Displaying... message.
;; 2006/03/13 dadams
;;     Added: icicle-file-(read|writ)able-p.  Bound them to C-{ and C-} in minibuffer.
;;     icicle-rebind-completion-maps, icicle-bind-completion-keys: Added the new commands.
;;     icicle-recompute-candidates: Forgot icicle-keep-only-past-inputs in other branch.
;; 2006/03/10 dadams
;;     icicle-save-or-restore-input: Bug fix (thx Toby Cubitt) - Not relative to default dir.
;;       Use directory-file-name, so don't include /.
;;       Use file-name-nondirectory, not file-relative-name if not cycling into subdirs.
;;     Renamed icicle-minibuffer-contents to icicle-minibuffer-contents-from-minibuffer.
;;     Added new icicle-minibuffer-contents, which can be called outside minibuffer.
;; 2006/03/08 dadams
;;     icicle-place-overlay: Use new face, icicle-current-candidate-highlight.
;; 2006/03/05 dadams
;;     Bound icicle-toggle-incremental-completion to C-^ in minibuffer.
;;     Updated icicle-completion-help-string with C-^ binding.
;;     icicle-display-candidates-in-Completions:
;;       Allow for on-the-fly changes to icicle-incremental-completion-flag.
;; 2006/03/01 dadams
;;     Added: icicle-clear-minibuffer.  Use in icicle-next-candidate.
;; 2006/02/27 dadams
;;     icicle-call-then-update-Completions: Set last-command to fn arg.
 
;;;(@* "CHANGE LOG FOR `icicles-mac.el'")
;;
;; 2007/11/25 dadams
;;     icicle-define(-file)-command:
;;       Bound minibuffer variables, so they are restored after action function
;;         (in case it uses minibuffer for completion).
;;       Return nil after, not before select-frame-set-input-focus.
;;       Added optional arg not-interactive-p.
;;     Quiet the byte compiler for Emacs versions before 22.
;; 2007/10/14 dadams
;;     icicle-define(-file)-command:
;;       Updated generated doc to reflect icicle-act-before-cycle-flag.
;; 2007/05/01 dadams
;;     icicle-define(-file)-command: Reset icicle-candidate-action-fn after reading input.
;; 2007/04/15 dadams
;;     icicle-define(-file)-command:
;;       Simplified action fn: Removed unwind-protect and outer condition-case,
;;       so don't return error msg now, and only set minibuf focus if succeed.
;;     icicle-define(-file)-command, icicle-try-switch-buffer: Removed "%s" from handlers.
;; 2007/02/06 dadams
;;     icicle-define(-file)-command: Mention mouse bindings in command doc strings.
;; 2007/01/15 dadams
;;     Added: icicle-define-sort-command.
;;     Updated font-lock-add-keywords.  Added lisp-indentation-hack (commented out).
;; 2007/01/06 dadams
;;     font-lock-add-keywords: 2 or 3, not 1 or 2, is index after add icicle-define-add-to-*.
;;                             Use lax matching, so no error if no match.
;; 2007/01/01 dadams
;;     Added: icicle-define-add-to-alist-command.
;;     Removed compile-time require of icicles-var.el.
;;     font-lock-add-keywords:
;;       "\\>[ \t'\(]*\\(\\sw+\\)?", not "\\s-+\\(\\sw\\(\\sw\\|\\s_\\)+\\)".
;;       Added icicle-define-add-to-alist-command.
;; 2006/10/14 dadams
;;     Require icicles-var.el.
;;     Moved conditional eval-when-compile to top level.
;; 2006/09/24 dadams
;;     icicle-define(-file)-command: Corrected bindings mentioned in doc strings.
;; 2006/08/27 dadams
;;     icicle-define(-file)-command: Ensure orig-window is live before using it.
;; 2006/08/23 dadams
;;     Added: icicle-try-switch-buffer.  Use it in icicle-define(-file)-command.
;; 2006/08/03 dadams
;;     icicle-define(-file)-command:
;;       (error (error-message-string...)) -> (error "%s" (error-message-string...)).
;; 2006/05/16 dadams
;;     icicle-define(-file)-command: Treat cases where user wiped out orig-buff or orig-window.
;; 2006/03/31 dadams
;;     icicle-define(-file)-command: Wrap action fn in unwind-protect to select minibuf frame.
;; 2006/03/11 dadams
;;     icicle-define-file-command: Expand file in directory of icicle-last-input.
;; 2006/03/08 dadams
;;     icicle-define(-file)-command: Bug fix (thx to TobyCubitt):
;;       Make sure icicle-candidate-action-fn runs FUNCTION in original buffer and window.
;; 2006/03/07 dadams
;;     icicle-define(-file)-command: Mention in doc string that BINDINGS are not in effect
;;       within icicle-candidate-action-fn.
 
;;;(@* "CHANGE LOG FOR `icicles-mcmd.el'")
;;
;; 2007/12/03 dadams
;;     Renamed longest common match (lcm) to expanded common match (ecm).
;; 2007/11/30 dadams
;;     icicle-help-on-candidate-symbol:
;;       Use fboundp, not functionp, to get describe-function for macros too.
;; 2007/11/28 dadams
;;     Renamed describe-bindings-in-map to describe-keymap.
;;     icicle-toggle-proxy-candidates: Swap values for saved and unsaved.
;; 2007/11/25 dadams
;;     Added: icicle-sort-by-abbrev-frequency.
;;     icicle-help-on-candidate-symbol: Treat command abbrevs via apropos for their commands.
;; 2007/11/24 dadams
;;     Added: icicle-sort-proxy-candidates-first.
;; 2007/11/22 dadams
;;     icicle-help-on-candidate-symbol: Use describe-bindings-in-map for a keymap.
;; 2007/11/17 dadams
;;     Added: icicle-toggle-proxy-candidates.  Added to icicle-Completions-mouse-3-menu also.
;; 2007/11/04 dadams
;;     Require subr-21 if replace-regexp-in-string is not defined.
;;     Require icicles-mac (don't wrap in eval-when-compile).
;;     icicle-Completions-mouse-3-menu: Added the latest toggle commands.
;; 2007/10/28 dadams
;;     Added: icicle-toggle-expand-to-common-match, icicle-toggle-search-replace-common-match.
;;     icicle-retrieve-last-input:
;;       Treat prefix completion like non-nil expand-input-to-common-match-flag.
;;     icicle-search-define-replacement: Bind icicle-update-input-hook to nil.
;;     icicle-toggle-highlight-all-current:
;;       Save icicle-candidate-nb around rehighlighting.
;;       Call icicle-search-action to get back to current candidate and highlight it.
;; 2007/10/27 dadams
;;     icicle-search-define-replacement:
;;       Bind candidates, input, and cand #, to restore after read replacement string.
;; 2007/10/26 dadams
;;     icicle-toggle-highlight-all-current: select-frame-set-input-focus to minibuffer.
;; 2007/10/22 dadams
;;     icicle-doremi-*: Use 4 arrows - one command hands off to the other.
;; 2007/10/21 dadams
;;     Added: icicle-doremi-inter-candidates-min-spaces, icicle-doremi-candidate-width-factor.
;; 2007/10/14 dadams
;;     Updated doc strings to reflect icicle-act-before-cycle-flag.
;; 2007/10/13 dadams
;;     icicle-candidate-action-1:
;;       Don't set icicle-last-completion-candidate if string.  Used for repeated C-next.
;;     icicle-remove-candidate-display-others, icicle-history:
;;       Treat also the case where cand is a string, not a consp.
;; 2007/10/07 dadams
;;     icicle-delete-candidate-object: Respect icicle-deletion-action-flag.
;; 2007/10/02 dadams
;;     icicle-(apropos|prefix)-complete-1:
;;       Apply abbreviate-file-name to file-name input.  Thx to Joonhwan Lee.
;;     icicle-toggle-fuzzy-completion: Removed soft require of fuzzy-match+.el.
;; 2007/09/29 dadams
;;     Added: icicle-toggle-fuzzy-completion.
;;     icicle-Completions-mouse-3-menu: Added icicle-toggle-fuzzy-completion.
;;     icicle-prefix-complete-1: Adjust feedback messages for fuzzy completion.
;;     icicle-(apropos|prefix)-complete-1:
;;       Only set icicle-default-directory if (icicle-file-name-input-p).
;; 2007/09/25 dadams
;;     icicle-narrow-candidates: Treat icicle-whole-candidate-as-text-prop-p case.
;;     icicle-kill-failed-input: Rewrote.
;; 2007/09/21 dadams
;;     icicle-narrow-candidates:
;;       Emacs<22, file-name completion: Append directory to each candidate.  Thx Ian Perryman.
;; 2007/09/14 dadams
;;     icicle-(apropos|prefix)-complete-1, icicle-prefix-word-complete:
;;       Wrapped condition-case around candidates computation.
;; 2007/08/25 dadams
;;     icicle-mouse-candidate-action-1: Use buffer-substring, not buffer-*-no-properties.
;; 2007/08/21 dadams
;;     icicle-(apropos|prefix)-complete-1:
;;       Reset icicle-input-fail-pos.  Call icicle-highlight-input-noncompletion when no match.
;; 2007/08/19 dadams
;;     Added: icicle-kill-failed-input.
;; 2007/08/18 dadams
;;     icicle-previous-apropos-candidate-alt-action: Fixed typo.  Thx to Hadron Quark.
;; 2007/07/29 dadams
;;     icicle-apply-to-saved-candidate:
;;       Added use-icicle-candidates-alist-p arg.  Use icicle-get-alist-candidate.
;;       Report original error message also.
;;     icicle-candidate-action-1: Do nothing if icicle-last-completion-candidate not a string.
;; 2007/07/27 dadams
;;     icicle-successive-action:
;;       icicle-act-first-then-navigate-p -> icicle-act-before-cycle-flag.
;; 2007/07/08 dadams
;;     icicle-all-candidates(-alt)-action:
;;       Use icicle-all-candidates(-alternative)-action-fn if defined.
;;     icicle-all-candidates-action-1: Added listp arg.
;;     icicle-mouse-save-candidate:
;;       Deactivate mark and redisplay completions, to show save highlight.
;; 2007/07/07 dadams
;;     Added: icicle-candidate-set-save(-more)-selected(-1),
;;            icicle-mouse-candidate-set-save(-more), icicle-mouse-save-then-kill.
;;     icicle-insert-completion: If no current completion, return to minibuffer anyway.
;;                               Update icicle-current-input with inserted candidate.
;;     icicle-Completions-mouse-3-menu:
;;       Added icicle-candidate-set-save-(more(-selected)|-selected).
;;     icicle-save-candidate: If no defined icicle-candidate-nb, then just display message.
;;     icicle-candidate-set-save(-more):
;;       Use icicle-candidate-set-save-1: Intern variable in standard obarray also.  Redisplay
;;       candidates and reselect minibuffer after reading file/var name.  Put eof error in
;;       minibuf.  Deactivate mark and redisplay completions.  Separate msg if reset.
;;     icicle-candidate-set-retrieve: If nothing to restore, don't restore nothing.
;;                                    If single candidate to restore, no *Completions* display.
;;                                    Else, update candidate display.
;; 2007/07/04 dadams
;;     icicle-Completions-mouse-3-menu: Added icicle-retrieve-(next|\previous)-input.
;; 2007/07/03 dadams
;;     Added: icicle-insert-history-element, icicle-retrieve-(next|previous)-input.
;;     icicle-history, icicle-keep-only-past-inputs:
;;       Don't retrieve last input unless following a cycling command.
;;     icicle-history: 
;;       Do an initial icicle-apropos-complete unless icicle-last-completion-command.
;;       If not following a cycling command, call icicle-last-completion-command (don't set it
;;         to empty string) and reset icicle-last-input to nil.
;;     icicle-Completions-mouse-3-menu:
;;       icicle-retrieve-(next|previous)-input, not icicle-retrieve-last-input.
;;     Redefined next-history-element, instead of using defadvice.
;; 2007/06/23 dadams
;;     icicle-search-define-replacement: Use icicle-completing-read-history, not read-string.
;;                                       Use icicle-search-replacement-history.
;; 2007/06/17 dadams
;;     Added: icicle-toggle-WYSIWYG-Completions.
;;     icicle-switch-to-Completions-buf, icicle-move-to-next-completion:
;;       Added priority in call to icicle-place-overlay.
;; 2007/06/13 dadams
;;     Added: icicle-candidate-set-save-more.
;;     icicle-candidate-set-save: Unify messages.
;; 2007/06/12 dadams
;;     Added: icicle(-mouse)-save-candidate.
;;     icicle-candidate-set-retrieve: Insert candidate if there is only one retrieved.
;;     icicle-insert-completion: Added optional completion arg for non-interactive insertion.
;; 2007/06/10 dadams
;;     icicle-candidate-action-1: Treat icicle-require-match-p.
;; 2007/06/09 dadams
;;     icicle-candidate-action-1, icicle-mouse-candidate-action-1:
;;       Remove candidate if icicle-use-candidates-only-once-flag.
;;     icicle-candidate-action-1:
;;       Let users act on non-candidate too (arbitrary input).
;; 2007/06/07 dadams
;;     Renamed: icicle-function-history to icicle-function-name-history,
;;              icicle-variable-history to  icicle-variable-name-history.
;;     Use standard history variable if bound, else use Icicles history variable:
;;       function-name-history, variable-name-history
;; 2007/06/01 dadams
;;     icicle-erase-minibuffer-or-history-element, icicle-history:
;;       Ensure value of minibuffer-history-variable is bound.
;;     icicle-keep-only-past-inputs: If value of minibuffer-history-variable unbound, set nil.
;;     icicle-keep-only-past-inputs, icicle-history:
;;       Assume value of minibuffer-history-variable is a symbol - don't test that.
;; 2007/05/29 dadams
;;     icicle-insert-thing: Added optional arg no-replace-p.  Make sure end points are defined.
;;     icicle-insert-string-from-variable: Call icicle-insert-thing with no-replace-p arg.
;;     icicle-minibuffer-complete-and-exit: Set window-point to end of minibuffer.
;; 2007/05/15 dadams
;;     icicle-completion-help and top level:
;;       Soft require help-mode, not (featurep 'help-mode) and (fboundp 'define-button-type).
;; 2007/05/08 dadams
;;     Added: icicle-save-predicate-to-variable.
;;     icicle-Completions-mouse-3-menu: Added icicle-save-predicate-to-variable to menu.
;;     icicle-narrow-candidates-with-predicate: Quoted the predicate that is read.
;; 2007/05/07 dadams
;;     Added: icicle-narrow-candidates-with-predicate.
;;     icicle-Completions-mouse-3-menu: Added icicle-narrow-candidates-with-predicate (M-&).
;; 2007/05/06 dadams
;;     icicle-completion-help: Updated text at top of help buffer.
;;     icicle-customize-button: Capitalized group Icicles.
;;     Changed S-C- to C-S- and M-C- to C-M- in doc.
;; 2007/05/04 dadams
;;     icicle-candidate-read-fn-invoke, icicle-keep-only-*-inputs, icicle-retrieve-last-input,
;;     icicle-candidate-set-(retrieve|save|swap|difference|union|intersection|complement),
;;     icicle-all-candidates(-alt)-action, icicle-pp-eval-expression,
;;     icicle-insert-string-from-variable:
;;       Can call from *Completions* too, so can choose from mouse-3 menu during multi-command.
;;     icicle-candidate-set-save, icicle-retrieve-last-input, icicle-insert-*-from-variable:
;;       Select minibuffer window.
;;     icicle-toggle-case-sensitivity: Use setq-default for case-fold-search.
;;     icicle-switch-to-Completions-buf:
;;       Use read-file-name-completion-ignore-case, if completing file name.
;;     Added empty defvars for Emacs 22 standard vars, to quiet byte compiler.
;; 2007/05/02 dadams
;;     Added: icicle-dispatch-M-q, icicle-toggle-search-whole-word.
;;     Removed: icicle-dispatch-C-backquote.
;; 2007/04/29 dadams
;;     Added: icicle-sort-by-last-file-modification-time (sort order).
;; 2007/04/19 dadams
;;     icicle-successive-action: No longer interactive.  Moved barfing to calling commands.
;; 2007/04/17 dadams
;;     Added: icicle-dispatch-M-comma, icicle-search-define-replacement,
;;            icicle-dispatch-C-backquote, icicle-toggle-literal-replacement.
;; 2007/04/08 dadams
;;     Added: icicle-all-candidates-alt-action, icicle-all-candidates-action-1.
;;     icicle-candidate-action-1, icicle-delete-candidate-object, icicle-help-on-candidate,
;;     icicle-candidate-read-fn-invoke:
;;       Use negative test for prefix mode, not positive test for apropos.
;; 2007/04/07 dadams
;;     Added: icicle-successive-action, icicle-toggle-search-replace-whole,
;;            icicle-dispatch-C-comma.
;;     Defined navigating action and help functions using icicle-successive-action.
;; 2007/03/31 dadams
;;     icicle-(apropos|prefix)-complete-1:
;;       Accept sole completion if icicle-top-level-when-sole-completion-flag.
;;     icicle-narrow-candidates:
;;       Only use read-file-name for Emacs 22 or later.
;;       Accept sole completion only if icicle-top-level-when-sole-completion-flag.
;;     icicle-apropos-complete-and-narrow: Bind icicle-top-level-when-*-flag to t.
;; 2007/03/30 dadams
;;     icicle-narrow-candidates: Suppress sole-completion minibuffer-message.
;; 2007/03/23 dadams
;;     Added: icicle-apropos-complete-and-narrow.  Thx to Marian Schubert for the suggestion.
;;     icicle-narrow-candidates: Use icicle-require-match-p as REQUIRE-MATCH arg.
;; 2007/03/09 dadams
;;     Changed require to eval-when-compile require for icicles-mac.el.
;; 2007/03/08 dadams
;;     icicle-delete-current-candidate-object: Rewrote.
;;       Value of var can be an arbitrary alist, a list of strings, or a list of symbols.
;;     icicle-remove-candidate-display-others: Rewrote.
;;       Set icicle-last-completion-candidate based on icicle-candidate-nb or 0.
;;       Delete icicle-last-completion-candidate completely from icicle-completion-candidates.
;;       Update minibuffer-completion-predicate or read-file-name-predicate to remove for
;;         completion.
;;       Use with-current-buffer, not save-window-excursion, to visit *Completions*.
;;     icicle-remove-candidate:
;;       Updated doc string to mention Emacs < 22 limitation for file-name candidates.
;;     icicle-retrieve-last-input: Don't reset icicle-last-completion-command if interactive.
;; 2007/03/07 dadams
;;     icicle-switch-to-Completions-buf, icicle-remove-candidate-display-others,
;;     icicle-help-on-candidate, icicle-delete-windows-on:
;;       Use 0, not t, as frame arg to get-buffer-window.
;; 2007/03/06 dadams
;;     icicle-remove-candidate: Don't reset to first cand matching input if no last cand.
;;     icicle-change(alternative)-sort-order, icicle-reverse-sort-order,
;;       icicle-keep-only-past-inputs, icicle-toggle-sorting:
;;         Respect icicle-inhibit-sort-p.
;;     Renamed icicle-get-current-candidate to icicle-get-alist-candidate.
;; 2007/03/04 dadams
;;     icicle-remove-candidate-display-others:
;;       Use local var for cand-nb, because icicle-candidate-nb can change.
;;       If no last candidate, reset to first candidate matching input.
;;       Allow for icicle-candidate-nb not being defined here:
;;         Use icicle-get-current-candidate.  Move to next completion only if cand-nb defined.
;;       Use mapconcat only when delete multi-completion.
;;       Move to next completion in *Completions* only if icicle-candidate-nb was defined.
;;       Insert default-directory too, if icicle-file-name-input-p.
;;     icicle-insert-completion: Insert default-directory too, if icicle-file-name-input-p.
;;     icicle-(apropos|prefix)-complete-1, icicle-keep-only-past-inputs:
;;       Don't include directory when set icicle-last-completion-candidate.
;;     icicle-(apropos|prefix)-complete-1:
;;       Don't include directory when testing input membership in icicle-completion-candidates.
;; 2007/03/02 dadams
;;     icicle-delete-candidate-object:
;;       Corrected message target (object).  Added sit-for.
;;       Use local var for cand-nb, because icicle-candidate-nb can change.
;; 2007/02/27 dadams
;;     icicle-delete-candidate-object: Added message.
;;     icicle-delete-current-candidate-object: Don't erase minibuffer or update completions.
;; 2007/02/24 dadams
;;     Added: icicle(-mouse)-candidate-alt-action, icicle(-mouse)-candidate-action-1,
;;            icicle-(previous|next)-(apropos|prefix)-candidate-alt-action,
;;            icicle(-mouse)-remove-candidate, icicle-remove-candidate-display-others,
;;            icicle-delete-candidate-object, icicle-delete-current-candidate-object.
;;     icicle-insert-completion:
;;       Invoke icicle-transform-multi-completion.  Use with-current-buffer (window-buffer).
;;     icicle(-mouse)-candidate-action: Use icicle(-mouse)-candidate-action-1.
;; 2007/02/06 dadams
;;     icicle-completion-help: Added extra help if completing and if multi-command.
;; 2007/02/03 dadams
;;     Renamed icicle-icompleting-p to icicle-edit-update-p.
;; 2007/02/02 dadams
;;     Updated doc strings of toggle commands to mention the minibuffer bindings.
;; 2007/01/29 dadams
;;     icicle-change-sort-order: Don't sort icicle-sort-functions-alist entries for use.
;;     Define alphabetical sort order using icicle-case-string-less-p, not string-lessp.
;; 2007/01/23 dadams
;;     Added: icicle-toggle-highlight-historical-candidates.
;;     icicle-Completions-mouse-3-menu: Updated wrt toggles.
;; 2007/01/21 dadams
;;     icicle-narrow-candidates:
;;       Use minibuffer-history-variable, not regexp-history.  Thx to Jost for bug report.
;; 2007/01/20 dadams
;;     icicle-mouse-(choose-completion|candidate-action):
;;       Use icicle-transform-multi-completion.
;; 2007/01/15 dadams
;;     Added: icicle-change(-alternative)-sort-order, icicle-reverse-sort-order, 
;;            icicle-current-sort-order, icicle-sort-*.
;;     icicle-transform-sole-candidate: Set icicle-last-*-candidate to transformed cand.
;;     icicle-help-on-candidate: Use icicle-transform-multi-completion.
;;     icicle-Completions-mouse-3-menu: Updated with new sort-order bindings.
;;     icicle-toggle-alternative-sorting: Better message.
;;     Require icicles-mac.el.
;; 2007/01/14 dadams
;;     Added: icicle-transform-multi-completion, icicle-transform-sole-candidate.
;;     icicle-(apropos|prefix)-complete-1: Use icicle-transform-sole-candidate.  Thx Rubikitch.
;;     icicle-help-on-candidate(-symbol):
;;       Use with-current-buffer to describe mode in Emacs 20 also.
;; 2007/01/13 dadams
;;     Added: icicle-describe-file, icicle-help-on-candidate-symbol.
;;     icicle-help-on-candidate:
;;       If existing symbol, describe it.  Else if buffer or file, describe it.  Else, convert
;;         string to symbol and describe it.  Use icicle-help-on-candidate-symbol.
;; 2007/01/10 dadams
;;     icicle-switch-to/from-minibuffer: Error message if minibuffer is not active.
;; 2007/01/06 dadams
;;     icicle-(apropos|prefix)-complete-1:
;;       expand-file-name -> icicle-abbreviate-or-expand-file-name.
;;     Added: icicle-toggle-~-for-home-dir.
;;     icicle-prefix-complete-1:
;;       Set icicle-default-directory only if also icicle-file-name-input-p.
;; 2007/01/01 dadams
;;     icicle-add/update-saved-completion-set: Use icicle-assoc-delete-all, not delete of assoc.
;;     Runtime, not compile-time, require of icicles-var.el, icicles-opt.el.
;; 2006/12/29 dadams
;;     icicle-insert-string-at-point:
;;       Treat nil return of alternative text-grabbing function.
;;       Echo the text-grabbing function when icicle-default-thing-insertion = alternatives.
;;     icicle-ensure-overriding-map-is-bound: Separate treatment for diff Emacs versions.
;; 2006/12/25 dadams
;;     icicle-keep-only-past-inputs:
;;       Added optional recent-first arg: Use icicle-most-recent-first-p as sort function.
;;       Update cands list if repeat.  Do not scroll Completions; update it unconditionally.
;;     Added: icicle-candidate-set-truncate.
;;     Uncommented describe-mode code, since RMS fixed Emacs bug that caused infinite recursion.
;; 2006/12/24 dadams
;;     Added: icicle-Completions-mouse-3-menu.
;; 2006/12/23 dadams
;;     icicle-narrow-candidates: Bug fix: Treat file-name completion with read-file-name.
;;     icicle-help-on-candidate: Call non-nil icicle-candidate-help-fn on candidate.
;; 2006/12/18 dadams
;;     icicle-apply-to-saved-candidate: Remove print arg and use current-prefix-arg instead.
;;     icicle-ensure-overriding-map-is-bound: Protect overriding-map-is-bound with boundp.
;;     Bug fix for Emacs 21: protect help-xref with get type button-category-symbol.
;; 2006/12/17 dadams
;;     Added: icicle(-mouse)-candidate-read-fn-invoke, icicle-apply-to-saved-candidate.
;; 2006/12/10 dadams
;;     Created from minibuffer and *Completions* commands in icicles-cmd.el.
 
;;;(@* "CHANGE LOG FOR `icicles-mode.el'")
;;
;; 2007/12/03 dadams
;;     Renamed longest common match (lcm) to expanded common match (ecm).
;; 2007/11/29 dadams
;;     icicle-minibuffer-setup: If icicle-add-proxy-candidates-flag is nil, swap candidate sets.
;;                              Reset icicle-saved-proxy-candidates to nil.
;; 2007/11/27 dadams
;;     icicle-(redefine|restore)-std-completion-fns: Added read-number.
;; 2007/11/25 dadams
;;     icicle-define-icicle-maps: Bound icicle-command-abbrev to C-x SPC.
;;     icicle-mode: Use icicle-command-abbrev-save on kill-emacs-hook.
;;     Changed binding of icicle-doremi-inter-candidates-min-spaces from C-x SPC to C-x |.
;; 2007/11/23 dadams
;;     icicle-rebind-completion-maps:
;;       Use icicle-prefix-cycle-(next|previous)-keys, instead of hardcoding.
;;     icicle-(bind|restore)-completion-keys:
;;       Use icicle-(apropos|prefix)-cycle-(next|previous)-keys, instead of hardcoding.
;;       Restore explicit vanilla bindings last.
;; 2007/11/22 dadams
;;     icicle-(bind|restore)-completion-keys:
;;       Explicitly bind/restore (C-)up, (C-)down, (C-)next, (C-)(C-)prior, instead of
;;         remapping next-line etc.
;; 2007/11/21 dadams
;;     icicle-rebind-completion-maps: Explicitly bind C-j to icicle-self-insert.
;;     icicle-(bind|restore)-completion-keys, icicle-update-help-string:
;;       Removed C-o binding for icicle-candidate-action.
;; 2007/11/17 dadams
;;     Added doc, menus, bindings (C-M-_): icicle-toggle--proxy-candidates.
;; 2007/11/05 dadams
;;     icicle-define-icicle-maps: Moved [Icy] items to Icicles submenus.
;;     Added: icicle-(bookmark|custom|describe|edit|file|frames|info|search(-tags))-menu-map.
;; 2007/11/03 dadams
;;     icicle-define-icicle-maps, icicle-bind-S-TAB-in-keymaps-from,
;;       icicle-unbind-S-TAB-in-keymaps-from, icicle-rebind-completion-maps,
;;       icicle-bind-completion-keys:
;;         Bind icicle-generic-S-tab-keys instead of hard-coded S-(iso-left)tab.
;;     icicle-(bind|restore)-completion-keys:
;;       Bind/restore icicle-prefix-complete-keys,
;;         icicle-(apropos|prefix)-complete-keys-no-display, not hard-coded keys.
;;     icicle-bind-isearch-keys: Bind icicle-isearch-complete-keys, not hard-coded.
;;     Renamed icicle-modal-cycle-(up|down)-key to icicle-modal-cycle-(up|down)-keys,
;;             icicle-word-completion-key to icicle-word-completion-keys.
;; 2007/10/31 dadams
;;     icicle-define-icicle-maps:
;;       Moved options to new Icicles submenu of Options menu, and removed [Icy].  Added :keys.
;;     Added: icicle-options-menu-map.
;; 2007/10/28 dadams
;;     Added doc, menus, bindings (C-|, C-M-|):
;;       icicle-toggle-(expand-to-common-match|search-replace-common-match).
;; 2007/10/21 dadams
;;     icicle-(bind|restore)-completion-keys: Bind C-x w and C-x SPC.
;;     icicle-define-icicle-maps: Add Do Re Mi items.
;;     icicle-mode, icicle-update-help-string: Mention C-x w and C-x SPC.
;; 2007/09/29 dadams
;;     icicle-mode, icicle-define-icicle-maps, icicle-update-help-string:
;;       Added icicle-toggle-fuzzy-completion (and icicle-fuzzy-completion-flag to help string).
;;     icicle-(bind|restore)-completion-keys: Bind/unbind icicle-toggle-fuzzy-completion to C-(.
;; 2007/09/20 dadams
;;     icicle-(bind|restore)-completion-keys: Bind C-j to icicle-self-insert / exit-minibuffer.
;; 2007/09/18 dadams
;;     Added: icicle-update-help-string.  Use in icy-mode, not in icicle-rebind-completion-maps.
;;            Removed icicle-toggle-WYSIWYG-Completions (it has no minibuffer binding).
;; 2007/08/25 dadams
;;     icy-mode, icicle-completion-help-string:
;;       icicle-clear-option -> clear-option.  Added toggle alias.
;; 2007/08/21 dadams
;;     icicle-completion-help-string: Mention C-M-l.
;; 2007/08/19 dadams
;;     icicle-minibuffer-setup: Reset icicle-input-fail-pos.
;;     icicle-(bind|restore)-completion-keys:
;;       (Re|un)map reposition-window to icicle-kill-failed-input.
;; 2007/08/03 dadams
;;     icicle-mode: Remove icicle* hooks from local, not global, hooks.
;; 2007/07/22 dadams
;;     icicle-(redefine|restore)-standard-commands: Added customize-face(-other-window).
;;     Moved icicle-completing-p to icicles-fn.el.
;;     Require icicles-cmd.el.
;; 2007/07/06 dadams
;;     icicle-rebind-completion-maps:
;;       Moved icicle-Completions-mouse-3-menu to C-mouse-3.
;;       Added icicle(-mouse)-candidate-set-save(-more)-selected, icicle-candidate-set-retrieve,
;;             icicle-retrieve-previous-input.
;;     icicle-completion-help-string: Added icicle-candidate-set-save(-more)-selected.
;;     icicle-bind-completion-maps:
;;       Removed icicle-insert-history-element (inherited).
;;       Added: icicle-candidate-set-save-more(-selected), icicle-mouse-save-then-kill.
;; 2007/07/04 dadams
;;     icicle-rebind-completion-maps, icicle-(bind|restore)-completion-keys:
;;       Added icicle-insert-history-element to Minibuf menu.
;;     icicle-(bind|restore)-completion-keys:
;;       Added icicle-retrieve-(next|previous)-input to Minibuf menu.
;; 2007/07/03 dadams
;;     icicle-rebind-completion-maps, icicle-bind-completion-keys:
;;       Bind icicle-insert-history-element to M-o in all minibuffer maps.
;;     icicle-bind-completion-keys, icicle-completion-help-string:
;;       icicle-retrieve-(next|previous)-input, not icicle-retrieve-last-input.
;;     icicle-(redefine|restore)-std-completion-fns:
;;       defalias next-history-element to icicle-next-history-element.
;;     Removed defadvice for next-history-element.  Redefine in icicles-mcmd.el instead.
;; 2007/06/22 dadams
;;     Bound icicle-search-keywords and added to menus and help strings.
;; 2007/06/20 dadams
;;     Removed M-o binding for icicle-toggle-WYSIWYG-Completions.
;; 2007/06/19 dadams
;;     icicle-bind-completion-keys: Add icicle-save-predicate-to-variable to menus.
;;     icicle-completion-help-string:
;;       Mention icicle-save-predicate-to-variable and icicle-insert-string-from-variable.
;; 2007/06/18 dadams
;;     icy-mode doc string, icicle-completion-help-string: Added icicle-customize-face.
;;     icicle-define-icicle-maps: Added icicle-customize-face to menus.
;; 2007/06/17 dadams
;;     Bound icicle-toggle-WYSIWYG-Completions to M-o.
;;     icicle-minibuffer-setup: Reinitialize icicle-saved-candidate-overlays.
;; 2007/06/16 dadams
;;     icicle-(bind|restore)-completion-keys: Bound C-M-(help|f1).
;; 2007/06/15 dadams
;;     icicle-completion-help-string: Added and cleaned up set stuff.
;;     icicle-(bind|restore)-completion-keys: Cleanup.  Added menu items.
;; 2007/06/14 dadams
;;     Swap bindings for C-insert and insert.
;; 2007/06/13 dadams
;;     Bound C-insert and C-> to icicle-save-candidate and icicle-candidate-set-save-more.
;; 2007/06/12 dadams
;;     icicle-rebind-completion-maps: Bound icicle-mouse-save-candidate to M-S-mouse-2.
;; 2007/06/10 dadams
;;     icicle-mode: comint-mode-hook, compilation(-minor)-mode-hook, temp-buffer-show-hook.
;; 2007/06/08 dadams
;;     icy-mode: Added icicle-find-tag* to doc string.
;;     icicle-define-icicle-maps:
;;       Added icicle-find-tag*.  Remap find-tag* to icicle-find-tag*.
;;       Corrected Info menu.
;;     icicle-completion-help-string: Added icicle-find-tag*.
;; 2007/05/28 dadams
;;     icicle-restore-non-completion-keys: Unbind S-tab.
;;     Added: icicle-unbind-S-TAB-for-map-variable, icicle-unbind-S-TAB-in-keymaps-from.
;;     icicle-bind-S-TAB-in-keymaps-from: Treat S-tab and S-iso-lefftab separately.
;;     icicle-define-icicle-maps: Added icicle-imenu-* to Icicles/Search menus.
;; 2007/05/22 dadams
;;     Make [Icy] menu items invisible when not in Icicle mode.  Add :keys where appropriate.
;;     icicle-define-icicle-maps, icicle-rebind-completion-maps,
;;     icicle-(bind|restore)-completion-keys:
;;       icicle-menu-item-any-version -> menu-item.  Explicit put of enable property -> :enable.
;;     Don't require icicles-mac.el.
;;     icicle-bind-completion-keys: Added icicle-narrow-candidates, and corrected :enable forms.
;; 2007/05/21 dadams
;;     icicle-define-icicle-maps:
;;       Remap minibuffer-keyboard-quit to icicle-abort-minibuffer-input.  Needed, even though
;;         local-must-match inherits from local-completion in Emacs 22, because delsel.el binds
;;         C-g to minibuffer-keyboard-quit in minibuffer maps.
;;     menu-item-any-version -> icicle-menu-item-any-version.
;;     Added Icicles/Search menu items:
;;       Search (Buffer|File|Saved Region|All Saved Regions|Definition|Text Property).
;;     Renamed: Search a Region -> Search Saved Region, Choose a Region -> Choose Saved Region,
;;              Add Current Region to List -> Save Current Region.
;; 2007/05/20 dadams
;;     Enable menu-bar Minibuf: 
;;       icicle-rebind-completion-maps:
;;         Use menu-item-any-version.
;;         Don't define menu for maps if it is defined by parent map.
;;         Add Enter and Help items for *-local-map.
;;         Add Enter, Help and Quit items for *-local-(ns|isearch)-map.
;;       icicle-bind-completion-keys:
;;         Use menu-item-any-version.
;;         Add Enter item for *-local-completion-map, unless defined by parent map.
;;       icicle-restore-completion-keys:
;;         Use menu-item-any-version.
;;         Add Enter and Quit items for *-local-completion-map, unless defined by parent map.
;;         Do not unmap kill-region(-wimpy).
;;         Bind [(control pause)] to nil.
;; 2007/05/13 dadams
;;     icicle-restore-completion-keys: Restore some forgotten minibuf menu items.
;; 2007/05/08 dadams
;;     Bound icicle-save-predicate-to-variable to C-M-&.
;; 2007/05/06 dadams
;;     icicle-rebind-completion-maps: Updated icicle-completion-help-string.
;;     Added defvars to quiet byte compiler.
;;     Changed S-C- to C-S- and M-C- to C-M- in doc.
;; 2007/05/03 dadams
;;     Remap icicle-yank-function, not yank.
;;     icicle-define-icicle-maps: Bind icicle-search-word.
;;     icicle-mode, icicle-completion-help-string: Add icicle-search-word to doc.
;; 2007/05/02 dadams
;;     Bound M-q to icicle-dispatch-M-q, not to icicle-insert-key-description.
;;     Bound C-` to icicle-toggle-regexp-quote, not to icicle-dispatch-C-backquote.
;;     Bound C-M-` to icicle-toggle-literal-replacement.
;;     Update icicle-completion-help-string.
;; 2007/04/20 dadams
;;     icicle-minibuffer-setup: Don't reset icicle-search-context-level here.
;; 2007/04/17 dadams
;;     Bound M-, to icicle-dispatch-M-comma, not to icicle-change-alternative-sort-order.
;;     Bound C-` to icicle-dispatch-C-backquote, not to icicle-toggle-regexp-quote.
;; 2007/04/10 dadams
;;     icicle-minibuffer-setup: Initialize icicle-search-context-level.
;; 2007/04/09 dadams
;;     Bound icicle-imenu to C-c =.
;; 2007/04/08 dadams
;;     Bound icicle-all-candidates-alt-action to C-S-insert.
;; 2007/04/07 dadams
;;     icicle-completion-help-string: Updated.
;;     Bound icicle-dispatch-C-comma to C-,.
;;     Bound in menu: icicle-toggle-search-replace-whole.
;;     Bound icicle-(next|previous)-(apropos|prefix)-candidate-alt-action (forgot).
;; 2007/04/02 dadams
;;     Bound icicle-search-text-property to C-c ".  Added it to icicle-completion-help-string.
;; 2007/03/23 dadams
;;     Bound icicle-apropos-complete-and-narrow to S-SPC.  Mention in *-completion-help-string.
;; 2007/03/14 dadams
;;     Added: icicle-top-level-prep.
;;     Removed: icicle-reset-candidates-alist.
;;     Do top-level stuff in icicle-minibuffer-setup, not in icicle-mode.
;;     icicle-minibuffer-setup: Add icicle-top-level-prep to pre-command-hook.
;;     icicle-mode: Remove icicle-top-level-prep from pre-command-hook.
;; 2007/03/07 dadams
;;     icicle-cancel-Help-redirection: Use 0, not t, as frame arg to get-buffer-window.
;; 2007/03/02 dadams
;;     icicle-bind-S-TAB-in-keymaps-from: Bound S-iso-lefttab also.
;; 2007/03/02 dadams
;;     icicle-define-icicle-maps:
;;       Bound S-iso-lefttab also to icicle-generic-S-tab.  Thx to Shreevatsa R.
;; 2007/02/28 dadams
;;     Added: icicle-reset-candidates-alist.
;;     icicle-mode: Use icicle-reset-candidates-alist.
;; 2007/02/27 dadams
;;     icicle-minibuffer-setup: Wait icicle-incremental-completion-delay before initial display.
;; 2007/02/24 dadams
;;     Bound: delete, S-mouse-2 to icicle(-mouse)-remove-candidate,
;;            C-S-RET, C-S-mouse-2 to icicle(-mouse)-candidate-alt-action,
;;            S-delete to icicle-delete-candidate-object.
;;     Don't remap icicle-kill-region(-wimpy) to delete key.
;; 2007/02/17 dadams
;;     Added: icicle-bind-S-TAB-in-keymaps-from, icicle-bind-S-TAB-for-map-variable.
;;     icicle-rebind-non-completion-keys:
;;       Bind S-TAB to keymaps in icicle-keymaps-for-key-completion.
;; 2007/02/02 dadams
;;     icicle-completing-p: Cache the value in variable icicle-completing-p.
;;     icicle-minibuffer-setup: Reset icicle-completing-p to nil.
;;     icicle-activate-mark: Use var, not function, icicle-completing-p, but after minibuf test.
;; 2007/01/23 dadams
;;     icicle-(redefine|restore)-std-completion-fns:
;;       Added icicle-read-face-name, icicle-face-valid-attribute-values.
;;     icicle-define-icicle-maps, icicle-rebind-completion-maps:
;;       Updated wrt toggles.  Added icicle*-highlight-historical-candidates*.
;;     icicle-bind-completion-keys: Added icicle-toggle-highlight-historical-candidates.
;; 2007/01/22 dadams
;;     Renamed icicle-regions to icicle-region-alist (forgot occurrences here).
;; 2007/01/20 dadams
;;     icicle-(redefine|restore)-std-completion-fns: Added icicle-display-completion-list.
;; 2007/01/15 dadams
;;     Moved C-, binding from icicle-toggle-sorting to icicle-change-sort-order.
;;     Moved icicle-toggle-alternative-sorting from M-, to C-M-,.
;;     Bound icicle-change-alternative-sort-order to M-,.
;;     Updated list of options in icicle-completion-help-string.
;; 2007/01/12 dadams
;;     Removed: icicle-override-maps-w-minibuffer-map, icicle-restore-overriding-local-map.
;;              Not used in minibuffer hooks.
;;     Removed [pause] bindings from minibuffer maps.
;;     Removed remap of yank in minibuffer maps.
;;     No longer bind icicle-remove-Completions-window in minibuffer maps.
;; 2007/01/11 dadams
;;     Renamed: icicle-define-icicle-mode-map to icicle-define-icicle-maps.
;;     icicle-define-icicle-maps: Use icicle-menu-map.  Don't recreate it.
;;     Bound [pause] to icicle-switch-to/from-minibuffer in all minibuffer maps.
;; 2007/01/10 dadams
;;     Added: icicle-override-maps-w-minibuffer-map, icicle-restore-overriding-local-map,
;;            icicle-(rebind|restore)-non-completion-keys. 
;;     Added: icicle-rebind-global: This used to be called icicle-remap.
;;     icicle-(remap|unmap): Different purpose and use now.  Redefined to use remapping when
;;        available (as was done before for self-insert-command).
;;     icicle-mode:
;;       Add, remove as minibuffer setup and exit hooks: icicle-override-maps-w-minibuffer-map,
;;                                                       icicle-restore-overriding-local-map.
;;       Call icicle-(rebind|restore)-non-completion-keys.
;;     icicle-define-icicle-mode-map:
;;       Use icicle-remap where previously used substitute-key-definition for top-level cmds.
;;       Moved to icicle-(rebind|restore)-non-completion-keys:
;;         binding of Info commands in Info map and S-tab in all keymaps (to *-rebind-* only).
;;     icicle-(bind|restore)-completion-keys: Use new icicle-(remap|unmap) where possible.
;;       Use icicle-rebind-global and substitute-key-definition for keys defined in vanilla 
;;         completion maps.
;; 2007/01/06 dadams
;;     icicle-mode: Update doc and bind icicle-toggle-~-for-home-dir to M-~.
;; 2007/01/01 dadams
;;     Moved assq-delete-all to icicles-fn.el.
;;     Require at runtime, not compile-time: icicles-var.el, icicles-fn.el.
;; 2006-12-31 dadams
;;     icicle-define-icicle-mode-map: Delete icicle-mode entry from minor-mode-map-alist.
;;     icicle-mode: Unbind icicle-mode-map when the mode is turned off.
;;     Added assq-delete-all for Emacs 20.
;;     Use current-global-map function, not global-map variable.
;; 2006/12/25 dadams
;;     Bound icicle-candidate-set-truncate to M-$.
;; 2006/12/24 dadams
;;     icicle-bind-completion-keys: transpose-yank(-pop) -> yank(-pop): typo.
;;     Bound mouse-3 to icicle-Completions-mouse-3-menu in completion-list-mode-map.
;; 2006/12/22 dadams
;;     Bound icicle-exchange-point-and-mark.
;;     :group 'icicles -> :group 'Icicles-Miscellaneous.
;; 2006/12/17 dadams
;;     Bound icicle(-mouse)-candidate-read-fn-invoke.
;; 2006/12/16 dadams
;;     icicle-define-icicle-mode-map: Protect icicle-kmacro with fboundp.
;; 2006/12/12 dadams
;;     Added icicle-customize-*-group, icicle-kill-buffer, icicle-delete-windows to I. menu.
;;     Added + to multi-command menu items.
;; 2006/12/11 dadams
;;     Added icicle-customize-apropos* and icicle-Info-* to menu-bar menus.
;; 2006/12/10 dadams
;;     Updated user options list in icicle-completion-help-string.
;;     Updated list of icicle-opt stuff used here.
;; 2006/12/06
;;     icicle-select-minibuffer-contents:
;;       Use icicle-minibuffer-prompt-end, not point-min.  Thx to Erik Postma.
;; 2006/11/26 dadams
;;     Added icicle-regions stuff.
;; 2006/11/24 dadams
;;     icicle-redefine-standard-options: Treat icicle-kmacro-ring-max.
;;     Bind icicle-kmacro to f5
;;     Replaced icicle-select-window-or-frame by icicle-other-window-or-frame.
;;     Removed binding of icicle-select-frame.
;;     Do not require mb-depth+.el for Emacs 21 (do it only for Emacs 22).
;; 2006/11/23 dadams
;;     Bound icicle-execute-named-keyboard-macro to C-x M-e.
;; 2006/11/18 dadams
;;     Soft require mb-depth+.el instead of minibuf-depth.el.
;; 2006/11/17 dadams
;;     Bind icicle-select-window-or-frame to whatever other-window(-or-frame) is bound to.
;;     Bind icicle-select-frame to whatever other-frame is bound to.
;; 2006/11/09 dadams
;;     Bind icicle-dispatch-C-^, not icicle-toggle-ignored-space-prefix, to C-^.
;;     icicle-rebind-completion-maps: Updated doc string for icicle-dispatch-C-^.
;; 2006/11/05 dadams
;;     Bound icicle-occur to C-c '.  Added it to menu-bar menus.
;; 2006/10/18 dadams
;;     icy-mode: Invoke icicle-define-icicle-mode-map unconditionally, not just first time.
;; 2006/10/16 dadams
;;     icicle-define-icicle-mode-map: Try to avoid binding S-TAB to menu maps.
;; 2006/10/15 dadams
;;     icicle-define-icicle-mode-map: Simplified, corrected binding of S-TAB for key completion.
;;                                    Use a separate map for the menu bar.
;;     Moved here from icicles-fn.el:
;;       icicle-bind-isearch-keys, icicle-rebind-completion-maps,
;;       icicle-(redefine|restore)-standard-(commands|options),
;;       icicle-(redefine|restore)-std-completion-fns, icicle-(re|un)map,
;;       icicle-(bind|restore)-completion-keys, icicle-minibuffer-setup,
;;       icicle-cancel-*Help*-redirection, icicle-activate-mark,
;;       icicle-run-icicle-(pre|post)-command-hook, icicle-set-calling-cmd,
;;       icicle-undo-std-completion-faces icicle-update-ignored-extensions-regexp,
;;       icicle-completing-p, icicle-restore-region-face.
;;     Renamed: icicle-cancel-*Help*-redirection to icicle-cancel-Help-redirection.
;;     Moved here from icicles-cmd.el: icicle-select-minibuffer-contents, next-history-element.
;;     Moved to icicles-cmd.el: icicle-generic-S-tab.
;;     Require icicles-opt.el.
;;     Added eval-when-compile's and defvars to quite byte compiler.
;; 2006/09/23 dadams
;;     icicle-define-icicle-mode-map: Corrected binding of icicle-yank-insert.
;; 2006/09/22 dadams
;;     icicle-minibuffer-setup: Set this-command and last-command, for scrolling *Completions*.
;; 2006/09/18 dadams
;;     icicle-mode: Picked up all global prefixes for S-TAB.
;; 2006/09/17 dadams
;;     Added: icicle-generic-S-tab.  Bound to S-TAB.
;;     icicle-mode:
;;       Bound icicle-complete-keys to prefix keys followed by S-TAB.
;;       Added run-hooks for Emacs 22 version.
;; 2006/09/12 dadams
;;     Bound icicle-switch-to/from-minibuffer to [pause].
;; 2006/08/27 dadams
;;     Bound icicle-abort-minibuffer-input to what abort-recursive-edit is normally bound to.
;;       And add it to Icicle menu.
;; 2006/08/23 dadams
;;     Bound icicle-delete-window to what delete-window and delete-windows-for are normally
;;       bound to.
;;     Put use of Info-mode-map inside an eval-after-load.
;; 2006/08/18 dadams
;;     Added icicle-Info-goto-node-cmd to icicle-mode doc string.
;;       Substitute it for Info-goto-node binding.
;; 2006/08/13 dadams
;;     Added icicle-Info-index-cmd to icicle-mode doc string.
;;       Substitute it for Info-index binding.
;; 2006/08/04 dadams
;;     Added icicle-plist to menus.
;;     icicle-doc treats faces too now.
;; 2006/08/03 dadams
;;     Bound icicle-insert-yank to what yank is normally bound to.
;;     icicle-mode: Updated doc string.
;; 2006/07/29 dadams
;;     icy-mode, icicle-define-icicle-mode-map: Added missing toggle commands.
;; 2006/07/22 dadams
;;     Changed binding of C-c C-s for icicle-search to C-c ` for icicle-search-generic.
;;     Removed: add-hooks for icicle-compilation-search - see icicles-cmd.el.
;; 2006/06/08 dadams
;;     Converted global bindings in icicles-keys.el to icicle-mode-map bindings here.
;;     Added f10 binding for icicle-execute-menu-command.
;; 2006/05/19 dadams
;;     icicle-mode: (add-hook 'kill-emacs-hook 'icicle-control-reminder-prompt).
;; 2006/05/18 dadams
;;     Change :init-value to nil, per new Emacs convention.
;; 2006/05/13 dadams
;;     icicle-mode: Updated doc string.
;; 2006/05/10 dadams
;;     icicle-define-icicle-mode-map: Added menu item Send Bug Report.
;; 2006/04/03 dadams
;;     icicle-define-icicle-mode-map: Added icicle-toggle-(regexp-quote|incremental-completion).
;; 2006/03/16 dadams
;;     icicle-mode: Turn on minibuffer-indicate-depth-mode (Emacs 22 only).
;;     Added soft require of minibuf-depth.el for Emacs 22.
;; 2006/03/14 dadams
;;     Do not use icicle-reset-icicle-completing-p as minibuffer-exit-hook.
;; 2006/03/07 dadams
;;     Corrected menu items for icicle-doc (no name regexp input, just doc regexp).
;; 2006/03/05 dadams
;;     Moved here from icicle-opt.el: icicle-mode, icicle-mode-hook.
;;     Moved here from icicle-fn.el: icicle-mode-map.
;;     Added: icicle-define-icicle-mode-map.
 
;;;(@* "CHANGE LOG FOR `icicles-opt.el'")
;;
;; 2007/12/03 dadams
;;     Renamed longest common match (lcm) to expanded common match (ecm).
;; 2007/11/25 dadams
;;     Added: icicle-command-abbrev-(alist|match-all-parts-flag|priority-flag).
;; 2007/11/23 dadams
;;     Added: icicle-(apropos|prefix)-cycle-(next|previous)-keys.
;; 2007/11/17 dadams
;;     Added: icicle-add-proxy-candidates-flag.
;; 2007/11/02 dadams
;;     Added: icicle-generic-S-tab-keys, icicle-prefix-complete-keys,
;;            icicle-(apropos|prefix)-complete-no-display-keys, icicle-isearch-complete-keys.
;;     Renamed icicle-modal-cycle-(up|down)-key to icicle-modal-cycle-(up|down)-keys,
;;             icicle-word-completion-key to icicle-word-completion-keys.
;; 2007/10/29 dadams
;;     icicle-define-alias-commands-flag, icicle-deletion-action-flag,
;;       icicle-list-nth-parts-join-string: Added type and group.
;; 2007/10/28 dadams
;;     Added: icicle-search-replace-common-match-flag.
;; 2007/10/23 dadams
;;     icicle-highlight-input-initial-whitespace-flag:
;;       Mention icicle-highlight-input-completion-failure-flag in doc string.
;; 2007/10/21 dadams
;;     icicle-candidate-width-factor, icicle-inter-candidates-min-spaces: Mention Do Re Mi.
;; 2007/10/14 dadams
;;     icicle-act-before-cycle-flag: Default value is now nil.
;; 2007/10/07 dadams
;;     Added: icicle-deletion-action-flag.
;; 2007/09/28 dadams
;;     Added: icicle-fuzzy-completion-flag.
;; 2007/08/25 dadams
;;     Added: icicle-anything-transform-candidates-flag, icicle-define-alias-commands-flag.
;; 2007/08/19 dadams
;;     Added: icicle-highlight-input-completion-failure-flag.
;; 2007/08/16 dadams
;;     icicle-region-alist, icicle-sort-functions-alist: Use alist as :type for recent Emacs.
;; 2007/07/27 dadams
;;     Added: Moved icicle-act-first-then-navigate-p here from icicles-var.el, as option *-flag.
;;            Thx to Juri Linkov for suggestion.
;; 2007/07/03 dadams
;;     Added: icicle-completion-history-max-length, icicle-C-l-uses-completion-flag.
;;     icicle-expand-input-to-common-match-flag: Updated doc string accordingly.
;; 2007/06/20 dadams
;;     icicle-WYSIWYG-Completions-flag: Use string value, not whole number, for sample text.
;; 2007/06/19 dadams
;;     icicle-WYSIWYG-Completions-flag: Allow also a whole-number value, for separate swatch.
;; 2007/06/17 dadams
;;     Added: icicle-WYSIWYG-Completions-flag.
;; 2007/06/12 dadams
;;     icicle-region-background: Use different value for dark-background frames.
;; 2007/06/09 dadams
;;     Added: icicle-use-candidates-only-once-flag.
;; 2007/06/05 dadams
;;     Don't require hexrgb.el if no window system.
;;     icicle-increment-color-*: Protected with featurep hexrgb and error message.
;; 2007/05/06 dadams
;;     Added: icicle-search-context-match-predicate.
;; 2007/05/02 dadams
;;     Added: icicle-search-whole-word-flag, icicle-yank-function.
;;     icicle-regexp-quote-flag: Updated doc string to mention search.
;; 2007/04/20 dadams
;;     Added: icicle-search-highlight-context-levels-flag, icicle-increment-color-saturation.
;; 2007/04/17 dadams
;;     Added: icicle-search-replace-literally-flag.
;; 2007/04/15 dadams
;;     icicle-search-replace-whole-candidate-flag: Changed default value to t.
;; 2007/04/07 dadams
;;     Added: icicle-search-replace-whole-candidate-flag.
;; 2007/03/31 dadams
;;     Added: icicle-top-level-when-sole-completion-flag.
;;     icicle(-regexp)-search-ring-max: Default is 1/10th what it was.
;; 2007/03/30 dadams
;;     Added: icicle-candidate-width-factor, icicle-inter-candidates-min-spaces.
;; 2007/03/12 dadams
;;     Added: icicle-Completions-window-max-height.
;;     icicle-show-Completions-help-flag: defvaralias it to completion-show-help (if bound).
;; 2007/03/10 dadams
;;     Added: icicle-Completions-window-default-width.
;; 2007/02/27 dadams
;;     Changed default value of icicle-incremental-completion-delay to 0.7.
;; 2007/02/22 dadams
;;     icicle-buffer-sort: Use icicle-buffer-sort-*...*-last, not nil, as default value.
;; 2007/02/20 dadams
;;     Changed icicle-region-auto-open-files-flag default value to nil.
;; 2007/02/19 dadams
;;     icicle-region-alist: Added buffer's file to alist entry.
;;     Added: icicle-region-auto-open-files-flag.
;; 2007/02/17 dadams
;;     Added: icicle-keymaps-for-key-completion.
;; 2007/02/06 dadams
;;     Added: icicle-add-buffer-name-flag.
;; 2007/01/29 dadams
;;     icicle-sort-function: Use icicle-case-string-less-p as value, not string-lessp.
;; 2007/01/23 dadams
;;     Added: icicle-highlight-historical-candidates-flag.
;;     Updated doc strings of *-flag to mention toggles.
;; 2007/01/18 dadams
;;     Renamed: icicle-regions to icicle-region-alist.
;; 2007/01/15 dadams
;;     Added: icicle-change-sort-order-completion-flag, icicle-sort-functions-alist.
;;     icicle-cycle-into-subdirs-flag, icicle-sort-function: Updated doc string.
;; 2007/01/14 dadams
;;     Added: icicle-list-nth-parts-join-string.
;; 2007/01/08 dadams
;;     icicle-reminder-prompt-flag: Reduced default value from 20 to 7 Emacs sessions.
;; 2007/01/06 dadams
;;     Added: icicle-use-~-for-home-dir-flag.  Thanks to Timothy Stotts for the suggestion.
;; 2006/12/29 dadams
;;     icicle-thing-at-point-functions: Added ffap-guesser as first alternative text grabber.
;;     icicle-default-thing-insertion: Changed default value to icicle-default-thing-insertion.
;; 2006/12/25 dadams
;;     Moved to icicles-fn.el: icicle-historical-alphabetic-p.
;; 2006/12/22 dadams
;;     Assigned Icicles subgroups, instead of group Icicles.
;; 2006/12/10 dadams
;;     icicle-regions: Corrected (forgot repeat).
;; 2006/11/26 dadams
;;     Added: icicle-regions(-name-length-max).
;; 2006/11/24 dadams
;;     Added: icicle-kmacro-ring-max.
;; 2006/11/23 dadams
;;     Added: icicle-TAB-shows-candidates-flag.  Thx to Tamas Patrovics for the suggestion.
;; 2006/11/09 dadams
;;     icicle-search-highlight-all-flag -> icicle-search-highlight-threshold.
;;     Added: icicle-search-highlight-all-current-flag.
;; 2006/10/28 dadams
;;     icicle-region-background: Changed :type to 'color for Emacs 21+.
;;     icicle(-alternative)-sort-function, icicle-buffer-sort, icicle-transform-function:
;;       function -> choice of nil or function.
;;     icicle-buffer-configs: Added :tag's.
;;     icicle-saved-completion-sets: Corrected doc string.
;; 2006/10/21 dadams
;;     Added: icicle-complete-keys-self-insert-flag.
;; 2006/10/14 dadams
;;     icicle-list-end-string: Added :type and :group.
;;     Moved conditional eval-when-compile to top level.
;; 2006/10/04 dadams
;;     Added: icicle-special-candidate-regexp.
;; 2006/10/03 dadams
;;     icicle-list-join-string: Replaced ^G^J by \007\012, to be able to upload to Emacs Wiki.
;; 2006/10/01 dadams
;;     icicle-alternative-sort-function: Updated doc string - it's now a general toggle.
;; 2006/09/30 dadams
;;     Added: icicle-key-descriptions-use-*-flag.
;; 2006/09/16 dadams
;;     Added: icicle-list-end-string.
;; 2006/09/03 dadams
;;     Renamed icicle-show-Completions-help to icicle-show-Completions-help-flag.
;; 2006/08/13 dadams
;;     Added: icicle-completing(-mustmatch)-prompt-prefix.
;; 2006/07/28 dadams
;;     icicle-change-region-background-flag:
;;       Default value takes no account of delete-selection mode.  Improved doc string.
;;     icicle-region-background:
;;       Don't make region invisible if hexrgb.el was not loaded.
;;       Change value, not hue, if grayscale frame background.  Improved doc string.
;; 2006/07/23 dadams
;;     Added: icicle-transform-function.
;;     icicle-sort-function: Added Note to doc string.
;; 2006/07/20 dadams
;;     Added: icicle-modal-cycle-(up|down)-key.
;;     Renamed icicle-arrows-respect-* to icicle-cycling-respects-completion-mode-flag.
;; 2006/07/19 dadams
;;     Applied patch from Damien Elmes <emacs@repose.cx>:
;;       Added: icicle-show-completions-help.  Renamed it to icicle-show-Completions-help.
;; 2006/07/18 dadams
;;     Added: icicle-Completions-display-min-input-chars.  Thx to Damien Elmes.
;; 2006/07/10 dadams
;;     icicle-historical-alphabetic-p: Fallback directory if no previous input.
;; 2006/07/07 dadams
;;     Added: icicle-alternative-sort-function, icicle-historical-alphabetic-p.
;; 2006/07/04 dadams
;;     icicle-expand-input-to-common-match-flag: Updated doc string.
;; 2006/06/09 dadams
;;     icicle-region-background: Use nil in defcustom.  Initialize separately.
;; 2006/06/08 dadams
;;     icicle-bind-top-level-commands-flag: Updated doc string.
;; 2006/05/19 dadams
;;     Renamed icicle-inhibit-reminder* to icicle-reminder*.
;;       Changed its functionality to use a countdown.
;; 2006/05/16 dadams
;;     Added: icicle-bind-top-level-commands-flag.
;; 2006/05/15 dadams
;;     Renamed: icicle-completion-nospace-flag to icicle-ignore-space-prefix-flag.
;;     Added: icicle-buffer-ignore-space-prefix-flag.
;;     icicle-ignore-space-prefix-flag: Changed default value to nil.
;; 2006/05/09 dadams
;;     icicle-incremental-completion-threshold: Updated doc string (msg "Displaying...").
;; 2006/04/28 dadams
;;     Added: icicle-highlight-input-initial-whitespace-flag.
;; 2006/04/14 dadams
;;     Added: icicle-input-string, icicle-search-cleanup-flag, icicle-update-input-hook.
;;     icicle-list-join-string: Added :type and :group.
;; 2006/04/09 dadams
;;     Added: icicle-arrows-respect-completion-type-flag.
;; 2006/04/07 dadams
;;     Added: icicle-search-highlight-all-flag.
;; 2006/04/02 dadams
;;     Added: icicle-regexp-quote-flag.
;; 2006/03/24 dadams
;;     Added: icicle-incremental-completion-(delay|threshold).
;; 2006/03/20 dadams
;;     icicle-expand-input-to-common-match-flag: Changed default value to t.
;; 2006/03/19 dadams
;;     Added: icicle-expand-input-to-common-match-flag.
;; 2006/03/17 dadams
;;     Removed: icicle-cache-file.
;;     Added: icicle-saved-completion-sets.
;; 2006/03/13 dadams
;;     Added: icicle-cache-file.
;; 2006/03/08 dadams
;;     icicle-default-thing-insertion: Use substitute-command-keys in :tag.
;; 2006/03/05 dadams
;;     Moved from here to icicle-mode.el: icicle-mode, icicle-mode-hook.
;;     Added: icicle-touche-pas-aux-menus-flag.
;; 2006/03/03 dadams
;;     icicle-list-join-string: Changed value to ^G^J.  Clarified doc string.
 
;;;(@* "CHANGE LOG FOR `icicles-var.el'")
;;
;; 2007/11/25 dadams
;;     Added: icicle-commands-for-abbrev.
;; 2007/11/17 dadams
;;     Added: icicle(saved)-proxy-candidates, icicle-proxy-candidate-regexp.
;; 2007/10/06 dadams
;;     icicle-object-named-types: Added file type.
;; 2007/08/19 dadams
;;     Added: icicle-input-fail-pos.
;; 2007/08/18 dadams
;;     Added: icicle-whole-candidate-as-text-prop-p.
;; 2007/07/29 dadams
;;     Added: icicle-object-named-types, icicle-object-predicate-types.
;; 2007/07/27 dadams
;;     Moved icicle-act-first-then-navigate-p to icicles-opt.el as icicle-act-before-cycle-flag.
;; 2007/07/08 dadams
;;     Added: icicle-all-candidates(-alternative)-action-fn.
;; 2007/07/03 dadams
;;     Added: icicle-previous-raw(-non)-file-name-inputs.
;; 2007/06/23 dadams
;;     Added: icicle-search-replacement-history.
;; 2007/06/17 dadams
;;     Added: icicle-saved-candidate-overlays.
;; 2007/06/07 dadams
;;     Added: icicle-face-name-history.
;;     Renamed: frame-name-history to icicle-frame-name-history,
;;              icicle-font-history to icicle-font-name-history,
;;              icicle-function-history to icicle-function-name-history,
;;              icicle-variable-history to icicle-variable-name-history.
;; 2007/05/29 dadams
;;     icicle-insert-string-at-pt-*: Initialize to nil, not 0.
;; 2007/05/25 dadams
;;     Added: icicle-char-property-value-history.
;; 2007/05/06 dadams
;;     Added defvars to quiet byte compiler.
;; 2007/04/28 dadams
;;     Added: icicle-search-in-context-fn.
;; 2007/04/20 dadams
;;     Added: icicle-search-level-overlays.
;; 2007/04/15 dadams
;;     Added: icicle-search-context-regexp.
;; 2007/04/10 dadams
;;     Added: icicle-search-context-level.
;; 2007/04/08 dadams
;;     Added: icicle-all-candidates-action-p.
;;     icicle-candidate-action-fn: Corrected doc string: reversed success and failure values.
;; 2007/04/07 dadams
;;     Added: icicle-search-replacement, icicle-searching-p, icicle-act-first-then-navigate-p.
;; 2007/04/02 dadams
;;     Added: icicle-text-property-value-history.
;;     Added: icicle-text-properties-alist (commented out).
;; 2007/03/23 dadams
;;     Added: icicle-require-match-p.
;; 2007/03/14 dadams
;;     Added: icicle-last-top-level-command.
;; 2007/03/06 dadams
;;     Added: icicle-inhibit-sort-p.
;;     icicle-candidates-alist: Improved doc string.
;; 2007/02/20 dadams
;;     Added: icicle-delete-candidate-object, icicle-candidate-alternative-action-fn.
;; 2007/02/03 dadams
;;     Renamed icicle-icompleting-p to icicle-edit-update-p.
;; 2007/02/02 dadams
;;     Added: icicle-completing-p.
;; 2007/01/29 dadams
;;     icicle-last-sort-function: Use icicle-case-string-less-p, not string-lessp.
;; 2007/01/19 dadams
;;     Added: icicle-candidate-properties-alist.
;; 2007/01/15 dadams
;;     Added: icicle-reverse-sort-p.
;; 2007/01/14 dadams
;;     icicle-list-use-nth-parts: Updated doc string for new icicle-list-nth-parts-join-string.
;; 2007/01/12 dadams
;;     Added: icicle-list-use-nth-parts.
;;     Removed icicle-saved-overriding-local-map.
;; 2007/01/11 dadams
;;     Added: icicle-menu-map, icicle-minor-mode-map-entry.
;; 2007/01/10 dadams
;;     Added: icicle-saved-overriding-local-map.
;; 2007/01/05 dadams
;;     icicle-initial-value: Updated doc string to mention you can bind it.
;; 2006/12/25 dadams
;;     Added: icicle-saved-completion-candidates-internal.
;; 2006/12/23 dadams
;;     Added: icicle-candidate-help-fn.
;; 2006/12/17 dadams
;;     Added: icicle-saved-completion-candidate.
;; 2006/11/24 dadams
;;     Added: icicle-universal-argument-map, icicle-kmacro-alist, icicle-saved-kmacro-ring-max,
;;            icicle-kmacro-history.
;; 2006/11/18 dadams
;;     Added: frame-name-history, icicle-bookmark-history, icicle-buffer-config-history,
;;            icicle-color-history, icicle-color-theme-history, icicle-completion-set-history,
;;            icicle-dictionary-history, icicle-font-history, icicle-function-history,
;;            icicle-kill-history, icicle-search-history, icicle-variable-history,
;; 2006/11/09 dadams
;;     icicle-search-refined-overlays: Updated doc string: icicle-search-highlight-threshold.
;; 2006/10/14 dadams
;;     Moved conditional eval-when-compile to top level.
;; 2006/09/24 dadams
;;     icicle-last-transform-function: Corrected default value.
;; 2006/09/12 dadams
;;     Added: icicle-pre-minibuffer-buffer.
;; 2006/08/20 dadams
;;     icicle-current-completion-mode: Updated doc string.
;; 2006/08/04 dadams
;;     Removed icicle-apropos-completing-p (not used).
;; 2006/07/23 dadams
;;     Added: icicle-last-transform-function.
;; 2006/07/22 dadams
;;     Added: icicle-search-command, icicle-search-final-choice.
;; 2006/07/20 dadams
;;     Renamed icicle-arrows-respect-* to icicle-cycling-respects-completion-mode-flag.
;; 2006/07/19 dadams
;;     Applied patch from Damien Elmes <emacs@repose.cx>:
;;       Added: icicle-current-completion-type.
;;     Renamed: icicle-current-completion-type to icicle-current-completion-mode.
;; 2006/07/05 dadams
;;     Renamed: icicle-current-regexp-input to icicle-current-raw-input.
;; 2006/06/18 dadams
;;     Added: icicle-apropos-completing-p.
;; 2006/04/30 dadams
;;     Added: icicle-candidate-entry-fn.
;;     Renamed: icicle-search-candidates to icicle-candidates-alist.
;; 2006/04/14 dadams
;;     Renamed icicle-search-refined-overlay to icicle-search-refined-overlays.
;;     Added: icicle-search-candidates.
;; 2006/04/07 dadams
;;     Added: icicle-search-overlays.
;;     Renamed icicle-search-overlay to icicle-search-current-overlay.
;; 2006/03/27 dadams
;;     Added: icicle-search-refined-overlay.
;; 2006/03/26 dadams
;;     Added: icicle-search-overlay.
;; 2006/03/25 dadams
;;     Added: icicle-saved-candidates-variables-obarray.
;; 2006/03/20 dadams
;;     Added: icicle-common-match-string, icicle-current-regexp-input.
;; 2006/03/14 dadams
;;     Removed: icicle-icicle-completing-p.
;; 2006/03/13 dadams
;;     Added: icicle-re-no-dot.
;; 2006/03/05 dadams
;;     Moved to icicles-mode.el: icicle-mode-map.
;; 2006/03/04 dadams
;;     Moved options stuff to Options menu, when available.
;;     Moved apropos stuff to Apropos menu, when available.
;;     Moved describe stuff to Describe menu, when available.
;; 2006/03/03 dadams
;;     Added to Icicles menu: icicle-complete-thesaurus-entry, icicle-apropos*,
;;       option-setting cmds, buffer-config cmds icicle-(var|fun)doc.
;;     Require apropos-fn+var.el.
 
;;;(@* "CHANGE LOG FOR `icicles.el'")
;;
;; 2007/07/22 dadams
;;     Require icicles-cmd.el before icicles-mode.el.
;; 2007/06/07 dadams
;;     Moved all doc to new files icicles-doc1.el and icicles-doc2.el.
;; 2007/05/12 dadams
;;     Moved Search Enhancements subsections to top level: Isearch
;;       Completion, Icicles Search Commands, Overview, Search and Replace.
;; 2007/05/06 dadams
;;     Changed S-C- to C-S- and M-C- to C-M- in doc.
;; 2007/04/20 dadams
;;     Require icicles-face.el after icicles-opt.el.
;; 2007/03/09 dadams
;;     Renamed sections .*Removal of Duplicates to .*Removing Duplicates and
;;                      More on Multi-Commands to More About Multi-Commands.
;; 2007/02/24 dadams
;;     Added section More on Multi-Commands.  Added subsection Chipping Away
;;           the Non-Elephant to Nutshell View.
;; 2007/02/03 dadams
;;     Updated section Sorting Candidates and Removal of Duplicates.
;; 2007/01/28 dadams
;;     Added: subsection Using Progressive ... Process of Elimination.
;; 2007/01/21 dadams
;;     Added: section Text Properties in *Completions*.
;; 2007/01/19 dadams
;;     Added: section Programming Multi-Completions.
;; 2007/01/16 dadams
;;     Added linkd links.  Cleanup.
;; 2007/01/15 dadams
;;     Added: section Sorting Candidates and Removal of Duplicates.
;;     Renamed:
;;      icicle-sort-and-strip-ignored to icicle-strip-ignored-files-and-sort,
;;      icicle-dirs-last-p to icicle-dirs-last-p,
;;      icicle-sort-case-insensitively to *-case-insensitive-string-lessp.
;; 2007/01/12 dadams
;;     Updated section Multi-Completions for icicle-list-use-nth-parts.
;; 2007/01/06 dadams
;;     File-Name and Directory-Name Completion Tips:
;;       Mention icicle-use-~-for-home-dir-flag.
;; 2006/11/23 dadams
;;     Added icicle-TAB-shows-candidates-flag.
;; 2006/11/10 dadams
;;     Multi-Commands: Mention prompt prefix +.
;; 2006/11/05 dadams
;;     icicle-occur is bound to C-c '.  Search commands use multiple buffers.
;;     Added Nutshell subsection Perform Multiple Operations In One Command.
;; 2006/10/19 dadams
;;     Added Goggle Matching section.
;; 2006/10/16 dadams
;;     Added key completion to Nutshell View.
;; 2006/10/14 dadams
;;     Renamed: icicle-cancel-*Help*-* to icicle-cancel-Help-*.
;;     Moved conditional eval-when-compile to top level.
;; 2006/10/01 dadams
;;     Updated for new alternative-sort toggle:
;;       History Enhancements, Key Completion, Customization *, Key Bindings.
;; 2006/09/30 dadams
;;     Changed bindings of icicle-candidate-set-(save|retrieve) from C-<, C->
;;       to C-M-<, C-M->.
;;     Added icicle-key-descriptions-use-<>-flag in Customization section.
;; 2006/09/17 dadams
;;     Added section Key Completion.
;; 2006/09/12 dadams
;;     Added section Moving Between the Minibuffer and Other Buffers.
;; 2006/08/23 dadams
;;     Added sections Icicles Mult M-x and Defining Icicles Multi M-x.
;; 2006/08/18 dadams
;;     Added section Icicles Info Enhancements.
;; 2006/08/13 dadams
;;     Documented icicle-completing(-mustmatch)-prompt-prefix.
;; 2006/06/17 dadams
;;     Rewrote Multi-Commands, Defining Icicles Commands (Including
;;       Multi-Commands), and Defining Multi-Commands the Hard Way.
;;     Renamed: Defining Icicles Commands: + (Including Multi-Commands).
;;              Defining Multi-Commands: + the Hard Way.
;;     Added: Defining Multiple-Choice Menus.
;; 2006/06/08 dadams
;;     Removed require of icicle-keys.el (obsolete).
;; 2006/05/26 dadams
;;     Mention M-k as icicle-erase-minibuffer-or-history-element.
;;     Don't mention M-S-backspace and M-S-delete any more.
;; 2006/05/19 dadams
;;     Renamed icicle-inhibit-reminder* to icicle-reminder*.
;;       Updated its doc to reflect new functionality.
;; 2006/05/18 dadams
;;     Change install instructions to include turning on Icicle mode.
;; 2006/05/16 dadams
;;     Require icicles-keys.el when icicle-bind-top-level-commands-flag.
;;     Updated doc to reflect new library icicles-keys.el.
;; 2006/05/15 dadams
;;     Renamed: ici*-nospace-flag to icicle-ignore-space-prefix-flag.
;;     Updated doc of icicle-ignore-space-prefix-flag.
;;     Added doc of icicle-buffer-ignore-space-prefix-flag.
;; 2006/04/14 dadams
;;     Added section Inserting a Regexp from a Variable.
;; 2006/04/09 dadams
;;     Added descriptions of icicle-arrows-respect-completion-type-flag.
;; 2006/03/19 dadams
;;     Added description of icicle-expand-input-to-common-match-flag.
;; 2006/03/07 dadams
;;     Correct the description of icicle-doc - match against only the
;;       doc, not the symbol name.
;; 2006/03/06 dadams
;;     Reordered Commentary sections, putting Emacs-Lisp stuff later.
;; 2006/03/05 dadams
;;     Mention icicle-touche-pas-aux-menus-flag.
;; 2006/03/03 dadams
;;     Clarified Multi-Completions description.
;; 2006/03/01 dadams
;;     Added: icicle-(complete|insert)-thesaurus-entry.
;;            Updated Commentary.
;; 2006/02/27 dadams
;;     Split into multiple libraries:
;;       *-cmd, *-face, *-fn, *-mac, *-mode, *-opt, *-var.
;; 2006/02/25 dadams
;;     Added: icicle-narrow-candidates (bound to M-*),
;;            icicle-icicle-completing-p, icicle-set-calling-cmd,
;;            icicle-reset-icicle-completing-p,
;;            icicle-run-icicle-(pre|post)-command-hook.
;;     Add all hooks in icicle-mode only, except for minibuffer-local
;;       hooks (pre- and post-command).
;;     Remove all hooks when exit Icicle mode.
;;     icicle-completing-read, icicle-read-file-name:
;;       Add catch icicle-read-top.  Set icicle-icicle-completing-p.
;;       Separate case of not Icicle mode from other no-prompt cases.
;;     Reordered some groups of functions.
;; 2006/02/24 dadams
;;     icicle-candidate-set-1: Treat empty set.
;; 2006/02/21 dadams
;;     icicle-prefix-complete:
;;       Implemented icompletion here, like icicle-apropos-complete-1.
;;     icicle-call-then-update-Completions:
;;       Use icicle-last-completion-command, not
;;           icicle-apropos-complete.
;;     Renamed icicle-apropos-icompleting-p to icicle-icompleting-p.
;;     Added: icicle-(kill|delete)(-backward)-*, icicle-yank etc.
;;            Bound them.
;;     Added: icicle-call-then-update-Completions.
;;     Added: icicle-incremental-completion-p.
;;       Use instead of icicle-incremental-completion-flag everywhere.
;;       Upgrade from t in icicle-display-candidates-in-Completions.
;;       Reset in icicle-minibuffer-setup.
;;     icicle-isearch-complete:
;;       Use search-ring symbol as history arg to completing-read.
;;     icicle-display-candidates-in-Completions,
;;     icicle-keep-only-past-inputs, icicle-history:
;;       Ensure that minibuffer-history-variable is a list.
;;     Fixed typos:
;;       icicle-keep-past-inputs -> icicle-keep-only-past-inputs.
;; 2006/02/20 dadams
;;     icicle-insert-string-at-point: Treat negative prefix arg.
;;     Added: icicle-signum.
;;     icicle-insert-thing:
;;       Remove text properties of string to insert.
;; 2006/02/19 dadams
;;     icicle-thing-at-point-functions:
;;       Added function to grab successive text.
;;     icicle-insert-string-at-point:
;;       Treat successive-grab fn and prefix arg.
;;     Added: icicle-default-thing-insertion,
;;            icicle-default-thing-insertion-flipped-p,
;;            icicle-insert-string-at-pt-(start|end),
;;            icicle-successive-grab-count, icicle-insert-thing.
;;     Renamed: icicle-insert-string-near-point to
;;              icicle-insert-string-at-point.
;; 2006/02/18 dadams
;;     icicle-retrieve-last-input:
;;       Don't reset icicle-last-completion-command if not interactive
;;     icicle-candidate-set-complement, icicle-keep-only-past-inputs:
;;       Use icicle-retrieve-last-input.
;;     icicle-keep-only-past-inputs:
;;       Rewrote modeled on icicle-apropos-complete:
;;        Take into account singleton and empty candidate set.
;;        Provide input to icicle-display-ca*.
;;        Set icicle-last-completion-command.
;;     icicle-history: Force redisplay of *Completions*.
;;                     Don't set this-command.
;;     icicle-completing-read: Ensure icicle-initial-value is not nil.
;;     icicle-save-or-restore-input: Don't restore empty input.
;;     icicle-recompute-candidates:
;;       Don't recompute if last completion cmd was
;;       icicle-keep-only-past-inputs.
;;     Added: icicle-historical-candidate,
;;            icicle-keep-only-past-inputs.
;;     icicle-display-candidates-in-Completions:
;;       Use icicle-historical-candidate.
;;     Bind icicle-keep-only-past-inputs to M-pause in minibuffer
;;       completion maps.
;; 2006/02/17 dadams
;;     Added: icicle-complete-input-overlay,
;;            icicle-highlight-complete-input, icicle-complete-input.
;;     icicle-(prefix|apropos)-complete(-1):
;;       Use icicle-highlight-complete-input.
;;     Added icicle-inhibit-reminder-prompt-flag.
;;           Thx to Jonathan Simms for the suggestion.
;;     icicle-completing-read, icicle-read-file-name:
;;       Use icicle-inhibit-reminder-prompt-flag.
;; 2006/02/12 dadams
;;     icicle-read-string: Finished bug fix of 2/11.
;;                         More thx to Andrey Zhdanov.
;; 2006/02/11 dadams
;;     icicle-insert-string-near-point:
;;       Always start with first function.
;;     read-from-minibuffer: Bug fix: don't use def if init is consp.
;;                           Thx to Andrey Zhdanov.
;; 2006/02/09 dadams
;;     Added: icicle-insert-string-near-point,
;;            icicle-thing-at-point-functions,
;;            icicle-thing-at-pt-fns-pointer.
;;            Bound icicle-insert-string-near-point.
;;     Added Commentary section "Inserting Text Found Near the Cursor"
;;     Require: thingatpt+.el, thingatpt.el.
;;     Bug fix: icicle-execute-extended-command(-1):
;;              Take care of last-command and this-command.
;; 2006/02/08 dadams
;;     icicle-completing-read: Treat consp case of initial-input.
;;     icicle-read-file-name: Fixed bug introduced 02/02:
;;       Don't ensure initial-input is not null.
;; 2006/02/07 dadams
;;     Bug fix: Files menu find-file stuff was bound to *recent-file*.
;; 2006/02/03 dadams
;;     icicle-init-value-flag: Use nil as the default value.
;;     Added: icicle-read-from-minibuffer, icicle-read-string.
;;              Use in icicle-(redefine|restore)-standard-commands.
;; 2006/02/02 dadams
;;     icicle-completing-read, read-file-name:
;;       Respect icicle-init-value-flag only if default value not nil.
;;     read-file-name: Ensure initial-value is not null.
;;                     Initialize icicle-initial-value.
;;                     Respect icicle-init-value-flag.
;; 2006/01/29 dadams
;;     icicle-completing-read, icicle-read-file-name:
;;       Remove binding of ESC-TAB.
;;     icicle-lisp-complete-symbol:
;;       Enable recursive minibuffers if in minibuffer.
;;     Commentary: Combine lisp-complete-symbol with dabbrev.
;;     Updated bindings listed in icicle-completion-help-string.
;; 2006/01/28 dadams
;;     New feature: icicle-lisp-complete-symbol (added).
;;                  Added to Commentary and moved section.
;;     Corrected fix of 2005/12/14:
;;       icicle-minibuffer-setup:
;;         Save region background at recursion level 1.
;;       icicle-saved-region-background: defvar to nil.
;;     Added: icicle-increment-color-hue.
;;            Use in icicle-region-background.
;;     Added: icicle-(re)set-option-to-(nil|t), icicle-clear-option,
;;            icicle-toggle-option, icicle-binary-option-p.
;; 2006/01/26 dadams
;;     Added: icicle(-saved)(-regexp)-search-ring-max,
;;            icicle-(redefine|restore)-standard-options.
;;     icicle-mode: Use icicle-(redefine|restore)-standard-options.
;;                  Use icicle-(redefine|restore)-standard-commands
;;                    for Emacs 21+ also (forgot?).
;;     icicle-(redefine|restore)-*: Use defalias, not fset.
;; 2006/01/24 dadams
;;     New feature: icicle-isearch-complete.
;;       Added: icicle-isearch-complete, icicle-isearch-resume,
;;              icicle-bind-isearch-keys.
;;       icicle-mode: add/remove isearch-mode-hook.
;;     Minor bug fix: initial value was treated as
;;                    icicle-last-completion-candidate.
;;       Added: icicle-initial-value.
;;       icicle-completing-read, icicle-read-file-name:
;;         Set icicle-initial-value,
;;             not icicle-last-completion-candidate.
;;       icicle-next-candidate:
;;         Initialize icicle-last-completion-candidate to
;;           icicle-initial-value.
;;       icicle-save-or-restore-input:
;;         Don't change icicle-current-input if = icicle-initial-value
;;       Renamed: icicle-init-value to icicle-init-value-flag.
;; 2006/01/23 dadams
;;     Use command remapping for self-insert-command in Emacs 22.
;;     Changed icicle-(re|un)map to defsubst.
;;     Removed Commentary section on icicle-execute-extended-command.
;;     icicle-apropos-complete-and-exit, icicle-apropos-complete-1:
;;       Use flag icicle-apropos-complete-and-exit-p to suppress
;;         minibuffer-message.
;; 2006/01/22 dadams
;;     Added: icicle-execute-extended-command*.
;;     completing-read, icicle-read-file-name:
;;       Corrected nil case for icicle-require-match-flag (bug fix).
;;       Hard-code bindings, instead of using \\[...], so the simpler
;;         bindings are shown.
;;     Changed C-o to C-RET for consistency (C-o still works too).
;;       icicle-(bind|restore)-completion-keys: Added C-RET binding.
;; 2006/01/21 dadams
;;     icicle-mouse-choose-completion:
;;       Don't save selected window if it's *Completions*.
;;     Added more Commentary about icicle-retrieve-last-input.
;; 2006/01/20 dadams
;;     icicle-sort-and-strip-ignored:
;;       Don't ignore names if only ignored extensions match.
;;     Added: icicle-apropos-complete-and-exit.
;;            Bound it in icicle-rebind-completion-maps.
;;     icicle-minibuffer-setup: Don't reset icicle-require-match-flag.
;;     icicle-apropos-complete: Return the list of candidates.
;; 2006/01/19 dadams
;;     Added: icicle(-buffer)-require-match-flag.
;;            Thanks to Mathias Dahl for feedback.
;;            Use in completing-read, read-file-name, and
;;              icicle-minibuffer-setup.
;;     Re-alphabetized defcustoms.
;; 2006/01/07 dadams
;;     Added :link.
;; 2005/12/31 dadams
;;     Added: icicle-fix-default-directory.
;;     icicle-read-file-name:
;;       Use icicle-fix-default-directory hack to fix bug.
;; 2005/12/26 dadams
;;     Added icicle-sort-case-insensitively.
;;     Added more parent groups for icicles group.
;; 2005/12/14 dadams
;;     icicle-minibuffer-setup:
;;       Only save region background when at top level.
;;     Added: icicle-Completions-frame-at-right-flag.
;;            Use in icicle-candidate-action.
;;     Added: defvars for font-lock-keyword-face,
;;            font-lock-function-name-face.
;; 2005/12/09 dadams
;;     Fontify icicle-define* in emacs-lisp-mode.
;; 2005/12/02 dadams
;;     Added: icicle-customize-apropos*.
;;            Use in icicle-(redefine|restore)-standard-commands.
;; 2005/12/01 dadams
;;     Added: icicle-repeat-complex-command,
;;            icicle-redefine-standard-commands-flag,
;;            icicle-(redefine|restore)-standard-commands.
;; 2005/11/30 dadams
;;     Added: icicle-apropos-zippy.
;;     icicle-apropos-command, icicle-apropos-variable:
;;       Corrected completing-read for do-all arg.
;;     icicle-apropos-command, icicle-apropos-option:
;;       My version must not respect apropos-do-all.
;; 2005/11/29 dadams
;;     Added: icicle-apropos*.
;;     icicle-help-on-candidate: Treat plists.
;;                               Message "No help" is the default.
;; 2005/11/25 dadams
;;     Added: icicle-dabbrev-completion.
;;     Renamed all names with "Completions" to use "Completions", for
;;       coherence with XEmacs port.
;; 2005/11/24 dadams
;;     icicle-mouse-choose-completion:
;;       Delete *Completions* window systematically.
;; 2005/11/21 dadams
;;     icicle-delete-windows-on:
;;       Avoid error Attempt to delete minibuffer or sole ... window.
;;     icicle-prefix-complete, icicle-apropos-complete-1,
;;     icicle-next-candidate:
;;       Use icicle-delete-windows-on, not delete-window.
;;     icicle-candidate-set-save: Use map in doc string.
;;     icicle-compilation-search: Tidied up doc string.
;;     Use #' for clarity.
;; 2005/11/20 dadams
;;     icicle-completing-read:
;;       Added treatment of completions that are lists of strings.
;;     Updated Commentary: new section on completions that are lists.
;;     Added: icicle-list-join-string, icicle-doc, icicle-fundoc,
;;            icicle-vardoc.
;; 2005/11/15 dadams
;;     Temporarily removed defadvice of next-history-element for
;;       Emacs 22.  Bug reported.
;;     icicle-minibuffer-prompt-end: Changed from defsubst to defun.
;; 2005/11/13 dadams
;;     icicle-mouse-candidate-action:
;;       buffer-substring -> buffer-substring-no-properties.
;;     icicle-completing-read:
;;       Bind, don't set, minibuffer-completion-table.
;;     icicle-buffer*: Use other buffer for DEF, not INIT-VALUE.
;;     Added: icicle-preselect-init-value-flag,
;;            icicle-(add|remove)-buffer-*,
;;            icicle-read-from-minibuf-nil-default,
;;            icicle-buffer-list, icicle-select-minibuffer-contents,
;;            icicle-completing-p.
;;     icicle-minibuffer-setup:
;;       Select minibuf contents if icicle-preselect-init-value-flag.
;;       Only display *Completions* if icicle-completing-p.
;;     Advised next-history-element.
;; 2005/11/11 dadams
;;     Added: icicle-show-*Completions*-initially-flag,
;;            icicle-display-*Completions*.
;;     icicle-minibuffer-setup:
;;       If icicle-show-*Completions*-initially-flag, display it.
;; 2005/11/09 dadams
;;     Added: icicle-mouse-candidate-action.
;;            Bind in icicle-rebind-completion-maps.
;;     icicle-buffer(-other-window):
;;       Use buffer-name-history as HIST arg to completing-read.
;; 2005/11/08 dadams
;;     Add/remove hook icicle-cancel-*Help*-redirection in
;;       icicle-mode, not at top level.
;;     Removed icicle-reset-icicle-menu-items-alist.
;;     Reset icicle-menu-items-alist in icicle-execute-menu-command
;;       of icicles-menu.el.
;; 2005/11/06 dadams
;;     Include minibuffer-local-filename-completion-map.
;; 2005/11/05 dadams
;;     icicle-display-candidates-in-*Completions*:
;;       Don't try to highlight root if it is "".
;;     icicle-help-on-candidate:
;;       Test null, not boundp icicle-menu-items-alist.
;;       If menu item's command is a lambda, set cand-symb to nil.
;;     icicle-mode: Use icicle-reset-icicle-menu-items-alist on
;;                  minibuffer-exit-hook.
;;     Added: icicle-reset-icicle-menu-items-alist.
;;     Added defvar for icicle-menu-items-alist.
;;     Added byte-compiler comments and defvars to quiet byte-compile.
;; 2005/11/04 dadams
;;     icicle-display-candidates-in-*Completions:
;;       Bug fix - use (functionp minibuffer-completion-table), not
;;                 (icicle-file-name-input-p).
;; 2005/11/03 dadams
;;     Added: icicle-filter-wo-input and vars icicle-must-*,
;;            icicle-extra*, icicle-buffer-*, icicle-buffer-config*,
;;            icicle-buffer-sort*.
;;     icicle-unsorted-*:
;;       Use icicle-filter-wo-input and icicle-extra-candidates.
;;     Added Commentary section Global Filters.
;;     icicle-buffer* commands: Added filter bindings.
;;     icicle-define(-file)-command: Minor bug fix:
;;       Ensure buffer is live before switching back.
;; 2005/11/01 dadams
;;     Added: icicle-must(-not)-match-regexp.
;;            Use in icicle-unsorted-*-candidates.
;; 2005/10/31 dadams
;;     Added: icicle-use-default-as-init-value-flag.
;;            Use in completing-read.
;;     icicle-find-file*: Minor bug fix - REQUIRE-MATCH should be nil.
;; 2005/10/29 dadams
;;     icicle-display-candidates-in-*Completions:
;;       Minor bug fix - wrap in save-window-excursion.
;;     icicle-minibuffer-contents-from-minibuffer:
;;       Minor bug fix - do nothing if file & user erased minibuffer.
;;     Menu-bar menus:
;;       Enable Icicles menu items only in Icicle mode.  Put search
;;       stuff on Search menu, if available.   Use "[Icy]" prefix for
;;       Icicles items in menus other than "Icicles".
;; 2005/10/28 dadams
;;     Added: icicle-define-file-command.
;;            Use it to define icicle-delete-file, icicle-find-file*.
;;     icicle-(next|previous)-(apropos|prefix)-candidate-action:
;;       Do action before moving to next|prev.
;;     icicle-candidate-action:
;;       Raise *Completions* frame, to keep it on top.
;; 2005/10/27 dadams
;;     Added: icicle-define-command, icicle-find-file*,
;;            select-frame-set-input-focus.
;;     Redefined using icicle-define-command:
;;       icicle-bookmark, icicle-buffer*, icicle-color-theme,
;;       icicle-delete-file, icicle-find-file*, icicle-font,
;;       icicle-frame-*, icicle-recent-file*.
;;     icicle-all-candidates-action:
;;       Report failures, not successes.  Use error msg.
;;     Added Commentary sections: Special-Character Conflicts,
;;                                Defining Icicles Commands.
;;     Commentary section Act on All Candidates:
;;       Added delete-one-or-more-files example.
;;     Added icicle-find-file* to menu-bar menus.
;;     Inactivated top-level menu items when minibuffer is active.
;;     Renamed:
;;       icicle-delete-file-1 to icicle-delete-file-or-directory.
;; 2005/10/25 dadams
;;     Thx to Lennart Borgman for suggestion about
;;       select-frame-set-input-focus.
;; 2005/10/24 dadams
;;     icicle-search:
;;       1) Bug fix - need to have mouse-choose-completion set
;;          icicle-candidate-nb.
;;       2) Show error message.
;;     Default value of icicle-candidate-nb is now nil, not -1.
;;     Added: icicle-mouse-choose-completion,
;;            icicle-nb-of-candidate-in-*Completions*.
;;     icicle-move-to-(next|previous)-completion,
;;     icicle-increment-cand-nb+signal-end:
;;       Reset candidate number to 0 if nil.
;;     icicle-(redefine|restore)-std-completion-fns:
;;       Use icicle-mouse-choose-completion.
;; 2005/10/23 dadams
;;     Added: icicle-mode-map.
;;     icicle-(bind|restore)-completion-keys: Updated menu-bar menu.
;;     icicle-compilation-search:
;;       Error if not in a compilation buffer.
;; 2005/10/21 dadams
;;     icicle-remove-duplicates: redefined.
;; 2005/10/18 dadams
;;     icicle-file-name-input-p doc string:
;;       Mention why don't use minibuffer-completing-file-name.
;; 2005/10/16 dadams
;;     Added: icicle-compilation-search, icicle-search-hook.
;;     icicle-search: Run icicle-search-hook.
;;                    Added optional sit-for-period arg.
;;     icicle-mode: Added list of top-level commands to doc string.
;;     icicle-scroll-or-update-*Completions*:
;;       Added msg arg - only display msg if don't scroll.
;; 2005/10/14 dadams
;;     Allow for multisets of candidates.
;;     Added: icicle-search, icicle-completion-nospace-flag,
;;            icicle-candidate-nb, icicle-filter-alist,
;;            icicle-increment-cand-nb+signal-end.
;;     Commentary: Updated for icicle-search.
;;     icicle-next-candidate: Major rewrite.
;;       Uses icicle-candidate-nb,
;;         icicle-increment-cand-nb+signal-end,
;;         icicle-move-to-next-completion.
;;     Use icicle-completion-nospace-flag in calls to all-completions.
;;     icicle-previous-(apropos|prefix)-candidate,
;;     icicle-(next|previous)-(apropos|prefix)-candidate-action:
;;       Added optional arg.
;;     icicle-apropos-complete-1, icicle-next-candidate,
;;     icicle-recompute-candidates:
;;       Added *-action commands to memq test.
;;     icicle-move-to-next-completion:
;;       Added optional no-minibuffer-follow-p arg.
;;     icicle-scroll-or-update-*Completions*:
;;       Update display even if handle-switch-frame.
;; 2005/10/12 dadams
;;     Added: icicle-redefine-std-completion-fns,
;;            icicle-restore-std-completion-fns,
;;            icicle-delete-windows-on, icicle-frames-on.
;;     icicle-mode: Use icicle-redefine-std-completion-fns,
;;                  icicle-restore-std-completion-fns.
;;     Renamed to use icicle- prefix: choose-completion-string,
;;       completing-read, completion-setup-function, exit-minibuffer,
;;       minibuffer-complete-and-exit, read-file-name,
;;       switch-to-completions.  Added these and also old- versions.
;;     icicle-history: Treat file names also.
;;     remove-windows-on -> icicle-delete-windows-on.
;; 2005/10/11 dadams
;;     Added: icicle-history, icicle-scroll-or-update-*Completions*,
;;            icicle-undo-std-completion-faces.
;;     Minor bug fixes:
;;       icicle-remove-dots: Also match against "." and ".."
;;         (lack of slash in Emacs 21+).
;;       icicle-save-or-*: Don't reset to last input if
;;                         icicle-last-completion-candidate is "".
;;                         Update icicle-last-completion-candidate
;;                         also to use current input.
;;       Reset icicle-last-input in icicle-minibuffer-setup, not in
;;         completing-read and read-file-name.
;;       icicle-display-candidates-in-*Completions*,
;;       icicle-next-candidate:
;;         Put candidate in consp before applying predicate.
;;       icicle-recompute-candidates:
;;         Don't recompute unless icicle-last-completion-command.
;;       icicle-retrieve-last-input:
;;         Use icicle-current-input, not icicle-last-input.
;;       icicle-self-insert:
;;         Update icicle-current-input and set this-command to
;;         icicle-apropos-complete.
;;       icicle-apropos-complete: Use error-message-string.
;;       icicle-apropos-complete-1:
;;         Protect icicle-file-directory-p with
;;         icicle-file-name-input-p.  Unconditionally update
;;         icicle-last-completion-command.
;;     Moved undoing of std completion faces to icicle-mode.
;;     Use icicle-scroll-or-update-*Completions* in
;;         icicle-candidate-set-1.
;; 2005/10/06 dadams
;;     icicle-prefix-complete, icicle-apropos-complete-1:
;;       Removed vestigial slash cruft - should have been removed in
;;         2005/09/01 fix.
;;     Added: icicle-remove-dots.
;;            Use in icicle-save-or-restore-input.
;; 2005/10/05 dadams
;;     icicle-msg-maybe-in-minibuffer: use format-string arg.
;; 2005/10/04 dadams
;;     Replace use of minibuffer-completion-help by
;;       icicle-apropos-complete.
;;     Added: icicle-recent-file*, icicle-toggle-ignored-extensions,
;;            icicle-update-completions,
;;            icicle-msg-maybe-in-minibuffer,
;;            icicle-saved-ignored-extensions.
;;     Bound icicle-toggle-*.
;;     icicle-toggle-sorting:
;;       Use icicle-update-completions, icicle-msg-maybe-in-minibuffer
;;     icicle-sort-and-strip-ignored:
;;       icicle-ignored-extensions-regexp nil => nothing is ignored.
;;     Reorder key bindings, so prompt shows S-tab, not S-iso-lefttab.
;;     icicle-next-candidate: Fixed code to highlight candidate in
;;       *Completions*: restriction.
;; 2005/10/03 dadams
;;     Regexps can now use backslash (it is no longer a directory
;;       separator on MS Windows).
;;       icicle-minibuffer-contents-from-minibuffer,
;;       icicle-file-name-directory-w-default:
;;         Escape backslash, so not used as directory separator on
;;         MS Windows.
;;       Added: icicle-apropos-complete-1,
;;              icicle-file-name-nondirectory.
;;       icicle-apropos-complete: Use icicle-apropos-complete-1.
;;                                Treat regexp error via message.
;;       Use icicle-file-name-nondirectory everywhere, instead of
;;         file-name-nondirectory.
;;     Can now use "?" for regexps; it no longer shows completion list
;;     Do icicle-update-ignored-extensions-regexp inside
;;       icicle-minibuffer-setup.
;;     Added and bound: icicle-retrieve-last-input.
;;     Updated icicle-completion-help-string with recent bindings.
;;     Renamed: icicle-last-command to icicle-last-completion-command.
;;              icicle-candidate-set-restore to
;;              icicle-candidate-set-retrieve.
;; 2005/10/01 dadams
;;     Added: icicle-candidate-set-(define|restore|swap).
;;     Changed binding of icicle-candidate-set-save to C->.
;;     Bound new commands.
;; 2005/10/01 dadams
;;     Major rewrite to add set operations: complement, difference,
;;                                          union, intersection.
;;       Added: icicle-completion-candidates, icicle-current-input,
;;              icicle-candidate-set-*, icicle-set-*,
;;              icicle-save-or-restore-input,
;;              icicle-recompute-candidates.
;;       Bound icicle-candidate-set*.
;;       Added Commentary for Sets of Completion Candidates.
;;       icicle-(apropos|prefix)-complete:
;;         Update icicle-completion-candidates, only as needed.
;;       icicle-next-candidate:
;;         Reverse candidates only if switched to opposite-direction
;;           command of same type.
;;         Likewise, for refresh of *Completions*.
;;         Protect put-text-property for root (e.g. no match for
;;           complement).
;;       icicle-(apropos|prefix)-complete,
;;       icicle-prefix-word-complete, icicle-next-candidate:
;;         use icicle-completion-candidates.
;;       icicle-all-candidates-action:
;;         Use icicle-completion-candidates, not
;;         icicle-apropos-complete.
;;       icicle-display-candidates-in-*Completions*:
;;         Removed first arg (candidates).
;;         Update icicle-completion-candidates.
;;    icicle-all-candidates-action:
;;      Use icicle-completion-candidates, so act on completions of
;;      either kind.
;; 2005/09/30 dadams
;;     Commented out resetting of minibuffer-completion-table to nil
;;     for icompletion.
;;     Thx to Andrey for bug report on M-x M-r problem.
;; 2005/09/27 dadams
;;     icicle-(bind|restore)-completion-keys:
;;       Bound [S-iso-lefttab] like [S-tab].
;; 2005/09/26 dadams
;;     Bug fix: Changed "\C-!"  to [(control ?!)] (others similarly).
;;     Bound [S-iso-lefttab] like [S-tab].
;; 2005/09/16 dadams
;;     Added: icicle-all-candidates-action, icicle-delete-file*,
;;     icicle-rebind-completion-maps:
;;       Bound icicle-all-candidates-action to C-!.
;;     icicle-(apropos|prefix)-complete: Return candidates list.
;;     icicle-bookmark, icicle-buffer*, icicle-color-theme,
;;     icicle-font, icicle-frame*:
;;       Return t for success, nil for failure.
;;     Commentary: Added section Choose All Completion Candidates.
;; 2005/09/14 dadams
;;     icicle-rebind-completion-maps:
;;       Bound TAB and S-TAB for navigation.
;;     icicle-move-to-(next|previous)-completion,
;;     icicle-(next|previous)-line: Wrap around.
;; 2005/09/13 dadams
;;     Major rewrite of file treatment, to treat directory candidates
;;       similarly to files.
;;     Added: icicle-default-directory, icicle-file-directory-p,
;;            icicle-sort-function, icicle-toggle-sorting,
;;            toggle-icicle-sorting.
;;     Use icicle-file-directory-p everywhere, except
;;       choose-completion-string.
;;     Removed: icicle-nondirectory-*.
;;     icicle-next-candidate:
;;       If not icicle-cycle-into-subdirs-flag, then use relative
;;       file/dir name, not nondirectory part.
;;     icicle-(apropos|prefix)-complete:
;;       Set icicle-default-directory if sole completion is a
;;       subdirectory.
;;     icicle-sort-and-strip-ignored:
;;       Removed optional arg and treatment of subdirs.
;;     icicle-next-(apropos|prefix)-candidate,
;;     icicle-(apropos|prefix)-complete:
;;       Don't treat icicle-cycle-into-subdirs-flag here.
;;     icicle-(apropos|prefix)-complete, icicle-next-candidate:
;;       Set icicle-default-directory, if directory candidate.
;;     icicle-minibuffer-setup: Set icicle-default-directory.
;;     icicle-apropos-complete:
;;       Different message if icicle-apropos-icompleting-p.
;;     icicle-sort-dirs-last:
;;       Treat other kinds of candidates, besides files and dirs.
;;     Commentary and doc strings: Updated for icicle-sort-function,
;;                                 icicle-cycle-into-subdirs.
;;     Let delete-selection mode work with icicle-self-insert.
;;     icicle-display-candidates-in-*Completions*:
;;       Make *Completions* read-only.
;; 2005/09/09 dadams
;;     choose-completion-string:
;;       bug fix for Emacs 21.3.1 - use Emacs 20 version for 21.3.1.
;; 2005/09/08 dadams
;;     completion-setup-function:
;;       bug fix for Emacs 21.3.1 - use Emacs 20 version for 21.3.1.
;;     Added: icicle-remap, icicle-unmap,
;;            icicle-(bind|restore)-completion-keys.
;;     completing-read: Do not append suffix if not in Icicle mode.
;;     icicle-rebind-completion-maps:
;;       Clean-up.  Use icicle-(bind|restore)-completion-keys.
;;       Don't (suppress-keymap completion-list-mode-map).
;; 2005/09/06 dadams
;;     Provided apropos icompletion.
;;     Added: icicle-self-insert, icicle-incremental-completion-flag,
;;            icicle-apropos-icompleting-p.
;;     icicle-apropos-complete: Respect icicle-apropos-icompleting-p.
;;     Commentary: Updated Icompletion and Customization sections.
;;                 Added Apropos Icompletion.
;;     Changed default value of icicle-word-completion-key to M-SPC.
;;     icicle-rebind-completion-maps:
;;       Bind icicle-self-insert. Use self-insert for SPC.
;;       Updated icicle-completion-help-string.
;;       Treat menu-bar menu for the minibuffer.
;;     completion-setup-function:
;;       Only add instruction2 when icicle-mode.
;;     icicle-display-candidates-in-*Completions*:
;;       Use save-restriction.
;;     icicle-minibuffer-contents-from-minibuffer:
;;       Allow for mixing $ of environment vars with $ of regexps.
;; 2005/09/02 dadams
;;     Added: icicle-bookmark, icicle-buffer(-other-window),
;;            icicle-candidate-action, icicle-candidate-action-fn,
;;            icicle-color-theme(s), icicle-font, icicle-frame-(b|f)g.
;;     Renamed: icicle-(next|previous)-(apropos|prefix)-*-help to
;;              icicle-(next|previous)-(apropos|prefix)-*-action.
;;     icicle-(apropos|prefix)-complete:
;;       Set icicle-last-completion-candidate.
;;     In renamed functions:
;;       Use icicle-candidate-action, not icicle-help-on-candidate.
;;     icicle-rebind-completion-maps:
;;       Bound C-o to icicle-candidate-action.
;;     Added Commentary section on actions on candidates.
;;     icicle-move-to-next-completion:
;;       Test line num, not char position (fix).
;;     icicle-previous-line: 3 or 4, not 4 or 5 (fix).
;; 2005/09/01 dadams
;;     Fixed major bug: file-name completion did not work at all in
;;       non-MS Windows!
;;       icicle-file-name-(apropos|prefix)-candidates:
;;         Removed code for case where input starts with "/".
;;       icicle-nondirectory-file-name-(apropos|prefix)-candidates:
;;         Removed code for case where input starts with "/".
;;         Bind default-directory.
;;       icicle-(apropos|prefix)-complete:
;;         Treat case when icicle-cycle-into-subdirs-flag = nil.
;;     icicle-next-candidate:
;;       Took out code that moved point when line is too long.
;;     icicle-minibuffer-setup: Reset icicle-prompt.
;; 2005/08/23 dadams
;;     Added: icicle-help-on-candidate,
;;            icicle-cancel-*Help*-redirection,
;;            icicle-(previous|next)-(prefix|apropos)-candidate-help.
;;            Bound them all.
;;     icicle-rebind-completion-maps:
;;       Bound icicle-help-on-candidate,
;;       icicle-(previous|next)-(prefix|apropos)-candidate-help.
;; 2005/08/22 dadams
;;     Unconditionally require cl.el when compile (because of case).
;; 2005/08/19 dadams
;;     Renamed icicle-cursor-position-in-candidate to
;;             icicle-point-position-in-candidate.
;;     Added: icicle-mark-position-in-candidate,
;;            icicle-minibuffer-prompt-end.
;;     icicle-place-cursor: Position both point and mark.
;;     icicle-point-position-in-candidate:
;;       Change values from bob, eob to input-start/end.
;;     Removed: icicle-select-rest-of-completion-flag.
;;              Use inequality test on point and mark.
;;     Updated commentary.
;; 2005/08/16 dadams
;;     Minbuffer messages:
;;       Differentiate prefix from apropos completion.
;;     completing-read, read-file-name:
;;       Append icicle-prompt-suffix for Emacs 20 (oversight).
;; 2005/08/15 dadams
;;     Bug fix: Only use face-spec-reset-face if target faces defined.
;;     read-file-name: bug fix:
;;       Use condition-case to get the correct number of args for
;;       old-read-file-name. Thx to Mathias Dahl for both bug reports.
;; 2005/08/14 dadams
;;     icicle-place-cursor: Narrow region to exclude minibuffer-prompt
;; 2005/08/13 dadams
;;     Add regexp support (removed it when introduced highlighting).
;;       icicle-next-candidate:
;;         Added regexp-p arg.  Use in icicle-next-apropos-candidate.
;;       icicle-place-cursor:
;;         Use regexp search.  For root-start, go to match-beginning.
;;       icicle-unsorted-file-name-apropos-candidates:
;;         Don't use regexp-quote.
;;     icicle-switch-to-*Completions*:
;;       Search in restriction of mouse-face zone; repeat.
;;       Treat file case (use nondirectory part).
;;       Bind case-fold-search.
;;     Protect (aref <input> 0) against empty string.
;;     member -> memq, for symbols.
;; 2005/08/12 dadams
;;     Added: icicle-word-completion-key, icy-mode,
;;            icicle-insert-a-space.
;;     icicle-rebind-completion-maps:
;;       Use icicle-word-completion-key and icicle-insert-a-space.
;;     completing-read, icicle-rebind-completion-maps:
;;       Corrected bindings in doc string.
;; 2005/07/29 dadams
;;     Added: icicle-change-region-background-flag,
;;            icicle-increment-color-value, icicle-region-background,
;;            icicle-saved-region-background,
;;            icicle-restore-region-face.
;;     Added icicle-restore-region-face to minibuffer-exit-hook.
;;     Require hexrgb.el.
;;     Removed: icicle-select-rest-of-completion.
;;     icicle-minibuffer-setup: Save icicle-saved-region-background
;;                              and use icicle-region-background.
;; 2005/07/28 dadams
;;     Added: icicle-*Completions*-instruction-*.
;;     completion-setup-function:
;;       Use icicle-*Completions*-instruction-*.
;;       Remove ? from instruction2.  Put both instr on same line.
;;       Use put-text-property, not *-w-face*.
;;     ------
;;     Move all completion stuff here, from simple+.el:
;;       choose-completion-string, completion-setup-function,
;;       switch-to-completions.
;;     Wrap *Completions* window deletion in save-selected-window.
;;     Added icicle-prefix-word-complete, and bound it to SPC.
;;     completion-setup-function: Renamed
;;       icicle-completing-read-prompt-suffix to icicle-prompt-suffix.
;; 2005/07/27 dadams
;;     Renamed: icicle-completing-read-prompt* to icicle-prompt*.
;;     Added: read-file-name, face
;;            icicle-completing-read-prompt-suffix,
;;            icicle-remove-property,
;;            icicle-select-rest-of-completion (simple, for now).
;;     completing-read: Apply faces to prompt.
;;     icicle-place-cursor: Use icicle-select-rest-of-completion.
;;     Added (if icicle-mode (icicle-mode 1)) at end.
;;     Reworded Commentary in terms of "input completion", not just
;;       completing-read.
;; 2005/07/26 dadams
;;     rebind-minibuffer-completion-maps: Minor bug fix.
;;     icicle-mode: Added " Icy" to mode line.
;;     Wrapped Emacs 21 version of icicle-mode (with
;;       define-minor-mode) in (eval (quote...)), so byte-compiling
;;       in Emacs 20 will produce a *.elc that works in Emacs 21.
;; 2005/07/25 dadams
;;     Added: icicle-mode, icicle-*-hook, icicle-minibuffer-setup,
;;            icicle-activate-mark.
;;     rebind-minibuffer-completion-maps:
;;       Restore bindings when exit Icicle mode.
;;       Added argument.  Pick up everything bound to help-command.
;;                        Updated doc string.
;;       Message only when mode is turned on.
;; 2005/07/24 dadams
;;     Now leave region from end of root to end of completion, so you
;;       can easily replace it, especially if you use
;;       delete-selection mode.  (Suggestion by Lennart Borgman.)
;;     Added: icicle-select-rest-of-completion-flag.
;;     icicle-place-cursor:
;;       Create active region if icicle-select-rest-of-completion-flag
;;     icicle-completion-help: Removed icicle-abort-minibuffer-input.
;;     icicle-abort-minibuffer-input:
;;       Removed obsolete code & comment on icomplete-inhibit.
;; 2005/07/22 dadams
;;     Major fixup: Treat file and directory names well, respect std
;;                  user options, more.
;;     Renamed:
;;       icicle-(next|previous)?-completion-candidate to
;;         icicle-*-prefix-candidate(s),
;;       icicle*filename* to icicle*file-name*,
;;       icicle-descend-into-subdirs to
;;         icicle-cycle-into-subdirs-flag.
;;     Added: icicle-file-name-apropos-candidates,
;;            icicle-file-name-directory-w-default,
;;            icicle-file-name-input-p,
;;            icicle-file-name-prefix-candidates,
;;            icicle-nondirectory-file-name-apropos-candidates,
;;            icicle-nondirectory-file-name-prefix-candidates,
;;            icicle-sort-dirs-last,
;;            icicle-unsorted-apropos-candidates,
;;            icicle-unsorted-file-name-apropos-candidates,
;;            icicle-unsorted-file-name-prefix-candidates,
;;            icicle-unsorted-prefix-candidates, icicle-last-command.
;;     Respect insert-default-directory and completion-auto-help.
;;     Use minibuffer-message instead of message.
;;     Commentary: Added Customization & Tips section.
;;     completing-read: Updated doc string.  Save icicle-last-input.
;;                      Reset icicle-nb-of-other-cycle-candidates.
;;     icicle-next-*-candidate: Branch to file-specific functions.
;;     icicle-*-candidates: Use icicle-unsorted-*-candidates.
;;     icicle-next-candidate:
;;       Delete *Completions* window if no candidates.
;;       Use icicle-file-name-directory, not file-name-directory.
;;     icicle-minibuffer-contents-from-minibuffer:
;;       Use substitute-in-file-name.
;;     icicle-*-complete:
;;       Treat slashed file names (e.g. "/foo").
;;       Use icicle-file-name-*-candidates,
;;         icicle-file-name-directory-w-default for files.
;;       Added messages [No completion], [Sole completion],
;;         [Complete, but not unique].
;;       Use icicle-last-command for repetition test. And set it.
;;     icicle-rebind-completion-maps:
;;       Updated icicle-completion-help-string and message.
;; 2005/07/21 dadams
;;     icicle-apropos-candidates:
;;       Use, not apropos, but delete-if-not on string-match.
;;       Treat files too.
;;     Removed icicle-intersection.
;;     Added: icicle-descend-into-subdirs.
;;     icicle-sort-and-strip-ignored: Use icicle-descend-into-subdirs.
;;                                    Don't use "." and "..".
;;     icicle-next-candidate:
;;       File names w/o dir.
;;       Use regexp-quote on root for underlining file-name root.
;;       Insert directory name for file.
;;     icicle-place-cursor:
;;       Search past dir, then search for file-name w/o dir.
;;     icicle-prefix-complete, icicle-apropos-complete,
;;     icicle-switch-to-*Completions*:
;;       Use icicle-minibuffer-contents-from-minibuffer.
;;     icicle-prefix-complete, icicle-apropos-complete:
;;       Insert dir when single candidate.
;;     icicle-display-candidates-in-*Completions*:
;;       Underline file-name w/o dir.
;; 2005/07/20 dadams
;;     icicle-next-candidate,
;;     icicle-display-candidates-in-*Completions*:
;;       Use set-buffer-modified-p.
;;     icicle-next-candidate: Use ding when hit end of cycle.
;;     Added: icicle-cursor-position-in-candidate,
;;            icicle-place-cursor.
;;            Use in icicle-next-candidate to position cursor.
;;     Added: defgroup icicles.
;; 2005/07/19 dadams
;;     Initialize icicle-ignored-*.
;;     Added: icicle-nb-of-other-cycle-candidates,
;;            icicle-minibuffer-contents-from-minibuffer.
;;     completing-read: Reset icicle-last-completion-candidate to nil.
;;     icicle-next-candidate:
;;       Use icicle-minibuffer-contents-from-minibuffer.
;;       Save icicle-nb-of-other-cycle-candidates for
;;         icomplete-completions (icomplete+).
;;       Use copy of "next" string since change its text properties.
;;       Use regexp-quote for underlined root.
;;       Use put-text-property, so works in Emacs 20.
;;       Update *Completions*, even if last command is repeated.
;;     icicle-*-complete: Complete rewrite.
;;     icicle-display-candidates-in-*Completions*:
;;       Do even if last command is repeated.
;; 2005/07/18 dadams
;;     icicle-display-*:
;;       Highlight only first occurrence in each candidate.
;;     icicle-next-candidate: Use completion-ignore-case.
;; 2005/07/17 dadams
;;     Treat file names also.
;;     Added: icicle-delete-if*, and use instead of delete-if-*.
;;            Removed require cl.el.
;;     Added: icicle-ignored-extensions*,
;;            icicle-sort-and-strip-ignored,
;;            icicle-filename-input-p,
;;            icicle-update-ignored-extensions-regexp,
;;            icicle-prefix-complete.  Bound icicle-prefix-complete.
;;     Use icicle-update-ignored-extensions-regexp as
;;       minibuffer-setup-hook.
;;     icicle-*-candidates: Use icicle-sort-and-strip-ignored.
;;     icicle-next-candidate,
;;     icicle-display-candidates-in-*Completions*:
;;       Don't use predicate on file-name candidates
;;       (icicle-filename-input-p).
;;     icicle-next-candidate:
;;       Use read-file-name-completion-ignore-case (Emacs 22) and
;;       file-name-nondirectory.
;;     icicle-apropos-complete:
;;       Return t/nil. Treat single candidate as no-op.
;;     Reset std completions-* faces, so they don't interfere with
;;       apropos highlighting.
;; 2005/07/16 dadams
;;     Added: icicle-display-*, icicle-apropos-complete.
;;     Use icicle-display-* in icicle-next-candidate and
;;       icicle-apropos-complete.
;;     Bound icicle-apropos-complete to S-tab in completion maps.
;;     icicle-switch-to-*Completions*:
;;       Move to start of candidate.  Highlight candidate, not regexp.
;;     icicle-next-candidate: Underline the root that was completed.
;;     Added: faces icicle-root-highlight-*.
;;     Removed: faces: icicle-completion-help*.
;;     Removed (not used): require of strings.el.
;;     Commentary: Added Nutshell View.
;; 2005/07/15 dadams
;;     Renamed: icicle-completion-help+ to icicle-completion-help.
;;     Replaced: icicle-delete-lines by icicle-erase-minibuffer.
;;     icicle-next-candidate:
;;       Wrapped display-* and re-search-forward in condition-case.
;;       Use icicle-place-overlay.
;;     Changed icicle-completion-help bindings to [f1].
;;     Added: icicle-*-line, icicle-switch-to-*,
;;            icicle-move-to-*-completion,
;;            icicle-current-completion-in-*Completions*,
;;            icicle-place-overlay.
;;     Added bindings for icicle-*-line, icicle-switch-to-*,
;;                        icicle-move-to-*.
;;     Bound q to icicle-abort-minibuffer-input in
;;       completion-list-mode-map.
;;     icicle-completing-read-prompt-suffix: Mention both [f1] and ?.
;;     Removed: icicle-fit-frame.
;;     Commentary: Added How...Improves...(5).  Updated Key Bindings.
;; 2005/07/14 dadams
;;     icicle-next-candidate:
;;       Update *Completions*, if displayed, to reflect current
;;       candidates, but don't do it if this-command = last-command.
;;       Reverse list as needed, to keep same order.   Ensure current
;;       *Completions* choice shows in window (recenter as needed).
;;       For highlighting: Search with re-search-forward to be sure
;;                         to get the right one.
;;       Took test for presence of predicate out of loop.
;;     Commentary: Added Note on pop-up-frames = t.
;; 2005/07/13 dadams
;;     Rewrote icicle-apropos-candidates.
;;     Added: icicle-intersection.
;; 2005/07/12 dadams
;;     Added: icicle-(next|previous)-apropos-candidate,
;;            icicle-next-candidate, icicle-apropos-candidates,
;;            icicle-completion-candidates.
;;     Bound: icicle-(next|previous)-apropos-candidate.
;;     Renamed: icicle-completion-help-(title-)face: Removed "-face".
;;     icicle-next-completion-candidate:
;;       Redefined to use icicle-next-candidate.
;;     icicle-rebind-completion-maps:
;;       Updated text to mention apropos completion.
;;     icicle-completion-help+:
;;       Use icicle-abort-minibuffer-input, not abort-recursive-edit.
;; 2005/07/10 dadams
;;     First version of icicles.el (previously called elect-mbuf.el).
;;     Renamed: minibuffer-completion-help-string to
;;              icicle-completion-help-string,
;;       completing-read-prompt to icicle-completing-read-prompt,
;;       completing-read-prompt-suffix to
;;        icicle-completing-read-prompt-suffix,
;;       mbuf-completion-help-face to icicle-completion-help-face,
;;       mbuf-completion-help-title-face to
;;         icicle-completion-help-title-face,
;;       minibuffer-last-default to icicle-last-completion-candidate,
;;       command-calling-for-completion to
;;         icicle-cmd-calling-for-completion,
;;       minibuffer-completion-help+ to icicle-completion-help+,
;;       abort-minibuffer-input to icicle-abort-minibuffer-input,
;;       next-default-input to icicle-next-completion-candidate,
;;       previous-default-input to
;;         icicle-previous-completion-candidate,
;;       rebind-minibuffer-completion-maps to
;;         icicle-rebind-completion-maps,
;;     Added: minibuffer-complete-and-exit, icicle-fit-frame,
;;            icicle-last-input.
;;     Moved delete-lines here from and renamed to
;;       icicle-delete-lines.
;;     Removed: mod+ (unused).
;;     icicle-completion-help+:
;;       Use *Help*, not *Completions*.  Don't show completions.
;;     icicle-next-completion-candidate:
;;       Use insert, not insert-string.
;;     icicle-rebind-completion-maps: Made it interactive.
;; 2005/07/09 dadams
;;     Removed: buffer-alist (not used).
;; 2005/05/15 dadams
;;     Renamed: flash-ding-minibuffer-frame to
;;              1on1-flash-ding-minibuffer-frame.
;; 2005/05/10 dadams
;;     Hacked completing-read to remove *Completions* window at end
;;       if require-match is non-nil.  (Don't know why/when this
;;       became a problem.)
;; 2004/09/21 dadams
;;     Updated to work in Emacs 21 (and 20):
;;       next-default-input uses delete-minibuffer-contents for 21,
;;       but erase-buffer for 20.
;;       minibuffer-completion-help+:
;;         bind inhibit-read-only to t around erase-buffer.
;; 2001/01/10 dadams
;;     Protected remove-windows-on via fboundp.
;; 1999/09/03 dadams
;;     Added: mbuf-completion-help-face,
;;            mbuf-completion-help-title-face.
;;     minibuffer-completion-help+:
;;       Use mbuf-*-face's instead of hard-coding.
;;     minibuffer-completion-help-string,
;;     completing-read-prompt-suffix: defconst -> defvar.
;; 1999/08/26 dadams
;;     Protected faces via boundp.
;; 1999/04/13 dadams
;;     Bound delete-lines to M-S-DEL and M-S-backspace.
;; 1999/03/17 dadams
;;     protect calls with test fboundp.
;; 1996/04/26 dadams
;;     Put escaped newlines on long-line strings.
;; 1996/03/26 dadams
;;     minibuffer-completion-help+: concat -> concat-w-faces (color).
;; 1995/12/20 dadams
;;     exit-minibuffer: Iconify *Completion* frame.
;; 1995/12/15 dadams
;;     abort-minibuffer-input:
;;       Reset minibuffer-completion-table to avoid icompletion.
;;     Defined replacement exit-minibuffer to do the same as #1.
;; 1995/12/01 dadams
;;     abort-minibuffer-input: Incorporated delete-selection-mode code
;;     rebind-minibuffer-completion-maps: Added C-g bindings for
;;       minibuffer-local-map, minibuffer-local-ns-map,
;;       minibuffer-local-isearch-map.
;; 1995/10/25 dadams
;;     Put defvar of minibuffer-completion-help-string after do
;;       rebind-minibuffer-completion-maps, so its doc string gives
;;       bindings.
;; 1995/10/24 dadams
;;     Mention ESC-TAB completion in completing-read.
;; 1995/10/17 dadams
;;     Let minibuffer use ESC-TAB for completion (Lisp symbols etc.)
;;     completing-read:
;;       Minibuffer adopts current buffer's ESC-TAB binding.
;;     Added command-calling-for-completion to memorize current
;;       command (done in completion-setup-hook).
;; 1995/09/12 dadams
;;     Added abort-minibuffer-input.
;;     Define C-g as abort-minibuffer-input in
;;       completion-list-mode-map and minibuffer-local-* maps.
;;     No self-insertion for completion-list-mode-map.
;; 1995/08/16 dadams
;;     next-default-input: Fixed bug - skip repeated alist entries.
;; 1995/08/10 dadams
;;     Rewrote minibuffer-completion-help+:
;;       Provide help even if no completions.
;;     So, added minibuffer-completion-help-string.
;;     `?' defined correctly for minibuffer-local-must-match-map.
;; 1995/08/08 dadams
;;     next-default-input: error msg: no hard coding of key seq.
;; 1995/08/02 dadams
;;     Major rewrite.
;;       No reminders in prompts.  Added minibuffer-completion-help+
;;       to provide help info for *Completions*.
;;     Log for functions that were previously in simple+.el:
;;       choose-completion-string, completion-setup-function,
;;       switch-to-completions.
;; 2005/07/28 dadams
;;     completion-setup-function:
;;       Renamed icicle-completing-read-prompt-suffix to
;;         icicle-prompt-suffix.
;; 2005/07/15 dadams
;;     choose-completion-string, completion-setup-function:
;;       Updated for Emacs 21+.
;; 2005/07/10 dadams
;;     Renamed: command-calling-for-completion to
;;              icicle-cmd-calling-for-completion.
;; 2004/09/21 dadams
;;     Only redefine choose-completion-string if prior to Emacs 21.
;; 1999/03/17 dadams
;;     choose-completion-string:
;;       Added doc string.  Updated to correspond to Emacs 34.1.
;;     completion-setup-function: diff prompt setups.
;;       face1 & face2 tests.
;;     Added: switch-to-completions.
;; 1996/04/26 dadams
;;     Put escaped newlines on long-line strings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(provide 'icicles-chg)                  ; Not used.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; icicles-chg.el ends here
