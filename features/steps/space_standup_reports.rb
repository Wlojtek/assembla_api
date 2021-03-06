class Spinach::Features::SpaceStandupReports < Spinach::FeatureSteps
  include ApiTasks

  step 'I make request with method create' do
    create_standup_report
  end

  step 'I have a standup report' do
    create_standup_report
  end

  step 'I make request with method edit' do
    @response = @instance.edit @space.wiki_name,
      standup_report: { roadblocks: 'Needs chef deployed on app servers'}
  end

  step 'I make request with method my' do
    @response = @instance.my @space.wiki_name
  end

  step 'I make request with method list' do
    @response = @instance.list @space.wiki_name
  end

  step 'I have "Assembla::Client::Spaces::StandupReports" instance' do
    @standup_api = @instance = Assembla::Client::Spaces::StandupReports.new
  end

  step 'I use different space name' do
    @space_name = 'StandUp Reports API'
  end
end
