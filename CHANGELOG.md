# Change Log

ForecastIO adheres to [Semantic Versioning](http://semver.org/).

## 6.0.1

Released on April 8, 2019.

### Updated
- `CodingKeys` for precipitation properties on `DataPoint`
- `nearestStations` on `Flag` is now optional
- All unit test JSON files are now included in all unit test targets

## 6.0.0

Released on March 15, 2019.

### Added
- Most structs now conform to `Decodable`
- `temperatureMax`, `temperatureMaxTime`, `temperatureMin`, `temperatureMinTime`, `apparentTemperatureMax`, `apparentTemperatureMaxTime`, `apparentTemperatureMin`, `apparentTemperatureMinTime`, `windGustTime` on `DataPoint`
- New errors to `ForecastIOError`: `.missingData`, `.missingHeaders`, and `.unexpectedError`
- `nearestStation` on `Flag`

### Updated
- Unit test example JSON data
- Unit tests to conform to new and removed properties and `Decodable`

### Removed
- Custom `init` methods on structs that now conform to `Decodable`
- `ForecastIOError.invalidJSON` error
- `darkSkyStations`, `dataPointStations`, `isdStations`, `lampStations`, `metarStations`, and `metnoLicense` from `Flag`

## 5.1.0

Released on October 2, 2018.

### Added
- Support for Hebrew and Latvian

### Updated
- Fixed `apiRequestsCount` and `responseTime` serialization from headers
- Swift 4.2 compatibility

## 5.0.0

Released on March 31, 2018.

### Added
- `uvIndex`, `uvIndexTime`, and `windGust` properties on `DataPoint`
- Support for Danish, Finnish, Japanese, Georgian, Korean, and Romanian
- `CONTRIBUTING.md`, which describes basic guidelines for contributing to this project

### Updated
- Swift 4.1 compatibility
- Max/min temperatures on `DataPoint` are now high/low

## 4.1.0

Released on March 30, 2018.

### Added
- `time`, `regions`, and `severity` properties on `Alert`
- Support for Bulgarian

### Updated
- `Float` properties are now `Double` on `DataPoint` and `Forecast`

## 4.0.0

Released on February 6, 2017.

### Updated
- `expire` property on `Alert` is now optional

## 3.1.0

Released on December 24, 2016.

### Added
- Support for Catalan, Estonian, and Slovenian

### Updated
- References to the `Array` type now use the `[]` shorthand

## 3.0.3

Released on December 18, 2016.

### Removed
- ForecastIO arm scheme

## 3.0.2

Released on October 17, 2016.

### Updated
- Fixed enum docs 

## 3.0.1

Released on October 8, 2016.

### Removed
- Official iOS 8.x support

## 3.0.0

Released on October 6, 2016.

### Added
- `Result<V>` enum type to encapsulate responses
- `RequestMetadata` to represent data about the consumption of the Dark Sky API
- `ForecastIOError` to represent errors in interacting with the Dark Sky API
- Explicit gzip encoding to all Dark Sky API requests

### Updated
- Lowercased all enum cases
- Moved `ForecastField` enum under `Forecast` as `Field`
- Expanded `precip` on properties to `precipitation`
- `DataBlock.data` is no longer optional
- `Alert.description` is no longer optional
- `Flag.sources` and `Flag.units` are no longer optional
- `Flag.units` is now a `Units` enum type
- API endpoint is now `api.darksky.net` instead of `api.forecast.io`
- `getForecast` methods renamed `completion` to `completionHandler`
- `getForecast` methods' `completionHandler`s now return `Result<Forecast>`
- Documentation formatting
- `APIClient` is now `DarkSkyClient`

### Removed
- `Units.uk2` is gone and its value is now represented by `Units.uk`
- `CustomStringConvertible` protocol conformance from all enums
- `Forecast.offset`
- Constants file and `ForecastIOErrorCode` and `ForecastIOErrorDomain`

## 2.1.1

Released on July 25, 2016.

### Updated
- Fixed typo in `README.md` for the language setting code
- Fixed typos in `Language.swift` docs
- Removed `xcov_report` folder

## 2.1.0

Released on July 24, 2016.

### Added
- Support for multiple languages
- More unit tests for enums
- More platforms for unit testing on Travis CI
- CocoaDocs and Carthage badges to `README.md`
- Codecov.io integration

### Updated
- Unit tests are stricter in checking for a valid URL
- Unit tests now use `@testable` to import ForecastIO
- Details on the optional parameters `extendHourly` and `excludeForecastFields` in `README.md`

## 2.0.0

Released on June 18, 2016.

### Added
- Exclusion of fields from `getForecast` (by [miwand](https://github.com/miwand))
- Extension of `hourly` property to include up to 168 hours of data (by [miwand](https://github.com/miwand))
- `ForecastField` to represent `DataPoint`s and `DataBlock`s on `Forecast` responses (by [miwand](https://github.com/miwand))

### Removed
- Support for OS X 10.9 - deployment target for OS X is now 10.10

### Updated
- Description of `DataPoint`s and `DataBlock`s in `README.md`
- Example project uses `excludeForecastFields` parameter

## 1.6.1

Released on May 12, 2016.

#### Updated
- Fixed issue where the project's interval version number wasn't updated
- Carthage installation section in `README.md`
- Unit test section in `README.md`

## 1.6.0

Released on May 4, 2016.

#### Added
- `ForecastIOErrorDomain` error domain
- `ForecastIOErrorBadJSON` error type

#### Updated
- `APIClient` methods provide more detailed errors
- Unit tests have 100% code coverage
- Travis CI unit tests run on latest versions of iOS, watchOS, and tvOS
- CocoaPod dependencies for unit tests
- Lowered the example project's deployment target to iOS 8.0

## 1.5.0

Released on Jan 24, 2016.

#### Added
- This `CHANGELOG.md` file
- `Package.swift` manifest file for Swift Package Manager
- List of supported units in `README.md`
- Description of `Forecast`'s `DataPoint`s and `DataBlock`s in `README.md`
- Unit tests
- [Travis CI](https://travis-ci.org/sxg/ForecastIO)

#### Updated
- Restructured project hierarchy for Swift Package Manager
- `Units.Auto` enum variant is now capitalized in consistency with Swift style guides
