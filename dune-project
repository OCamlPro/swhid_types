(lang dune 2.8)

(name swhid_types)

(license ISC)

(authors "Léo Andrès <contact@ndrs.fr>")

(maintainers "Léo Andrès <contact@ndrs.fr>")

(source
 (github ocamlpro/swhid_types))

(generate_opam_files true)

(package
 (name swhid_types)
 (synopsis "OCaml library to work with Software Heritage identifiers, types library used in swhid")
 (description
  "swhid_types is an OCaml library to work with persistent identifiers found in Software Heritage, it contains the types module used by others libraries")
 (tags
  (swh software heritage archive shwid persistent identifier types))
 (depends
  (ocaml
   (>= 4.08))
  (bisect_ppx
   (and
    :with-test
    (>= 2.6)
    :dev))))
