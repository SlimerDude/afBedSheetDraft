using build::BuildPod

class Build : BuildPod {
	
	new make() {
		podName = "afBedSheetDraft"
		summary = "A library for adding Draft idioms in Bedsheet."
		version = Version([0,0,1])

		meta	= [	"org.name"		: "Alien-Factory",
					"org.uri"		: "http://www.alienfactory.co.uk/",
					"vcs.uri"		: "https://bitbucket.org/SlimerDude/afbedsheetdraft",
					"proj.name"		: "AF-BedSheet",
					"license.name"	: "BSD 2-Clause License",
					"repo.private"	: "true",

					"afIoc.module"	: "afBedSheet::BedSheetModule"
				]

		depends = ["sys 1.0", "draft 1.0.3",
					"afIoc 1.3.8+", "afBedSheet 0+"]
		srcDirs = [`test/unit-tests/`, `test/app-tests/`, `test/app/`, `fan/`]
		resDirs = [`doc/`]

		docApi = true
		docSrc = true
	}
}