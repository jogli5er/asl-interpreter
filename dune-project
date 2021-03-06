(lang dune 2.1)
(name asli)
(using menhir 2.0)

(package
  (name asli)
  (synopsis "Interpreter for Arm's Architecture Specification Language (ASL)")
  (description "\| Interpreter for the language ASL that Arm uses to write their ISA specifications.
               "\|
               "\| Currently supports reading/typechecking the specification,
               "\| interactive execution of ASL statements and expressions,
               "\| executing opcodes one at a time,
               "\| loading ELF files and executing Arm binaries.
  )
  (depends
    ("ocaml"     (and (>= "4.09") :build))
    ("menhir"    :dev)
    ("ott"       :dev)
    ("linenoise" :dev)
    ("pprint"    :dev)
    ("zarith"    :dev)
    ("z3"        (<= "4.7.1"))
    ("alcotest"  :with-test)
  )
)

(license BSD-3-Clause)
(authors "Alastair Reid")
(maintainers "Alastair Reid <alastair.d.reid@gmail.com>")
; (source ...)
(bug_reports "https://github.com/alastairreid/asl-interpreter/issues")
(homepage "https://github.com/alastairreid/asl-interpreter")
; (documentation ...)

(generate_opam_files true)
