#
# ActionTestGAPDocPackage: Test package for GAP actions
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "ActionTestGAPDocPackage",
Subtitle := "Test package for GAP actions",
Version := "0.1.1",
Date := "27/08/2025", # dd/mm/yyyy format
License := "GPL-2.0-or-later",

Persons := [
  rec(
    FirstNames := "FirstName",
    LastName := "LastName",
    WWWHome := "https://www.gap-system.org/",
    Email := "support@gap-system.org",
    IsAuthor := true,
    IsMaintainer := true,
  ),
],

SourceRepository := rec(
    Type := "git",
    URL := "https://github.com/gap-actions/ActionTestGAPDocPackage",
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := "https://gap-actions.github.io/ActionTestGAPDocPackage/",
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
README_URL      := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL,
                                 "/releases/download/v", ~.Version,
                                 "/", ~.PackageName, "-", ~.Version ),

ArchiveFormats := ".tar.gz",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "ActionTestGAPDocPackage",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "Test package for GAP actions",
),

Dependencies := rec(
  GAP := ">= 4.13",
  NeededOtherPackages := [ ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

#Keywords := [ "TODO" ],

));


