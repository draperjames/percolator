/*******************************************************************************
 Copyright 2006-2009 Lukas Käll <lukas.kall@cbr.su.se>

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

 *******************************************************************************/

#ifndef SQT2PIN_H_
#define SQT2PIN_H_

#ifndef SCHEMA_VERSION_MAJOR
#define SCHEMA_VERSION_MAJOR @SCHEMA_VERSION_MAJOR@
#endif
#ifndef SCHEMA_VERSION_MINOR
#define SCHEMA_VERSION_MINOR @SCHEMA_VERSION_MINOR@
#endif

#include <string>
#include <iostream>
#include <fstream>
#include <string>
#include "SqtReader.h"
#include "Option.h"
#include "Enzyme.h"
#include "config.h"
#include "serializer.hxx"
#include "MSReader.h"
#include "Spectrum.h"
#include "MSToolkitTypes.h"
#include "MassHandler.h"
#include "SqtReader.h"
#include "DataSet.h"
#include <boost/foreach.hpp>
#include <boost/lexical_cast.hpp>
#include <limits>
#include <cmath>

using namespace std;


class Sqt2Pin {
public:
	Sqt2Pin();
	virtual ~Sqt2Pin();
	std::string greeter();
	bool parseOpt(int argc, char **argv);
	int run();
	void readRetentionTime(std::string filename);
	void storeRetentionTime(FragSpectrumScanDatabase& database);

protected:
	ParseOptions parseOptions;
	std::string tokyoCabinetTmpFN;
	std::string targetFN;
	std::string decoyFN;
	std::string xmlOutputFN;
	std::string call;
  std::string spectrumFile;
  map<int, vector<double> > scan2rt;
};

int main(int argc, char **argv);

#endif /* SQT2PIN_H_ */
