function Run() {
  plugins = Sibelius.Plugins;

  if (not (plugins.Contains('Test'))) {
    Sibelius.MessageBox('Please install the Test plugin!');
    ExitPlugin();
  }

  suite = Test.Suite('Sibelius MEI Exporter', Self, sibmei2);

  suite
    .AddModule('TestExportConverters')
    .AddModule('TestLibmei')
    .AddModule('TestExportGenerators')
    .AddModule('TestUtilities')
  // suite
  //   .AddModule('TestExportGenerators')
    ;

  suite.Run();

}  //$end

function RunLibmeiTests () {
  suite = Test.Suite('Sibelius MEI Exporter', Self, sibmei2);

  suite
    .AddModule('TestLibmei')
    ;

  suite.Run();
}  //$end


function RunGeneratorTests () {
  suite = Test.Suite('Sibelius MEI Exporter', Self, sibmei2);

  suite
    .AddModule('TestExportGenerators')
    ;

  suite.Run();

}  //$end