unit l4l_const;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
const
  Log4Lazarus = '1.0';

  { Default pattern string for log output.
    Shows the application supplied message. }
  DefaultPattern = '%m%n';
  { A conversion pattern equivalent to the TTCC layout.
    Shows runtime, thread, level, logger, NDC, and message. }
  TTCCPattern    = '%r [%t] %p %c %x - %m%n';

  { Common prefix for option names in an initialisation file.
    Note that the search for all option names is case sensitive. }
  KeyPrefix        = 'log4laz';
  { Specify the additivity of a logger's appenders. }
  AdditiveKey      = KeyPrefix + '.additive.';
  { Define a named appender. }
  AppenderKey      = KeyPrefix + '.appender.';
  { Nominate a factory to use to generate loggers.
    This factory must have been registered with RegisterLoggerFactory.
    If none is specified, then the default factory is used. }
  LoggerFactoryKey = KeyPrefix + '.loggerFactory';
  { Define a new logger, and set its logging level and appenders. }
  LoggerKey        = KeyPrefix + '.logger.';
  { Defining this value as true makes log4d print internal debug
    statements to debug output. }
  DebugKey         = KeyPrefix + '.configDebug';
  { Specify the error handler to be used with an appender. }
  ErrorHandlerKey  = '.errorHandler';
  { Specify the filters to be used with an appender. }
  FilterKey        = '.filter';
  { Specify the layout to be used with an appender. }
  LayoutKey        = '.layout';
  { Associate an object renderer with the class to be rendered. }
  RendererKey      = KeyPrefix + '.renderer.';
  { Set the logging level and appenders for the root. }
  RootLoggerKey    = KeyPrefix + '.rootLogger';
  { Set the overall logging level. }
  ThresholdKey     = KeyPrefix + '.threshold';

  { Special level value signifying inherited behaviour. }
  InheritedLevel = 'inherited';

  { Threshold option for TLogCustomAppender. }
  ThresholdOpt      = 'threshold';
  { Accept option for TLog*Filter. }
  AcceptMatchOpt = 'acceptOnMatch';
  { Appending option for TLogFileAppender. }
  AppendOpt      = 'append';
  { Common date format option for layouts. }
  DateFormatOpt  = 'dateFormat';
  { File name option for TLogFileAppender. }
  FileNameOpt    = 'fileName';
  { Case-sensitivity option for TLogStringFilter. }
  IgnoreCaseOpt  = 'ignoreCase';
  { Match string option for TLogLevelMatchFilter and TLogStringFilter. }
  MatchOpt       = 'match';
  { Maximum string option for TLogLevelRangeFilter. }
  MaxOpt         = 'maximum';
  { Minimum string option for TLogLevelRangeFilter. }
  MinOpt         = 'minimum';
  { Pattern option for TLogPatternLayout. }
  PatternOpt     = 'pattern';
  { Title option for TLogHTMLLayout. }
  TitleOpt       = 'title';
  { Maximum file size option for TLogRollingFileAppender }
  MaxFileSizeOpt = 'maxFileSize';
  { Maximum number of backup files option for TLogRollingFileAppender }
  MaxBackupIndexOpt = 'maxBackupIndex';

  DEFAULT_MAX_FILE_SIZE = 10*1024*1024;
  DEFAULT_MAX_BACKUP_INDEX = 1;

implementation

end.

