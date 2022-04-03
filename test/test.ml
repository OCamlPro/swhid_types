open Swhid_types

let () =
  assert (object_type_of_string "snp" = Some Snapshot);
  assert (object_type_of_string "rel" = Some Release);
  assert (object_type_of_string "rev" = Some Revision);
  assert (object_type_of_string "dir" = Some Directory);
  assert (object_type_of_string "cnt" = Some (Content "sha1_git"));
  assert (object_type_of_string "coucou" = None);

  assert (object_id_invalid "");
  (* len 39 D: *)
  assert (object_id_invalid "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
  (* len 40 :D *)
  assert (not @@ object_id_invalid "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
  (* len 41 D: *)
  assert (object_id_invalid "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
  (* non hexa char *)
  assert (object_id_invalid "a---------------------------------------");

  assert (
    object_id_from_string "a---------------------------------------" = None );
  assert (
    object_id_from_string "abcdef0123456789abcdef0123456789abcdef01"
    = Some "abcdef0123456789abcdef0123456789abcdef01" )
