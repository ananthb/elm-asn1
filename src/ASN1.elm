{-
   This Source Code Form is subject to the terms of the Mozilla Public
   License, v. 2.0. If a copy of the MPL was not distributed with this
   file, You can obtain one at https://mozilla.org/MPL/2.0/.
-}


module ASN1 exposing (ASN1)


type ASN1
    = Boolean Bool
    | Integer Int
    | BitString BitString
    | OctetString OctetString
    | Null
    | OID OID
    | UTF8String String
    | Sequence (List ASN1)
    | Set (List ASN1)
    | PrintableString String
    | UTCTime UTCTime
    | GeneralizedTime UTCTime
    | ContextSpecific Int ASN1
    | Application Int ASN1
    | Constructed Int ASN1
    | Other Int Int OctetString


type alias BitString =
    { unused : Int, value : OctetString }


type alias OctetString =
    List Int


type alias OID =
    List Int


type alias UTCTime =
    { year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int }
