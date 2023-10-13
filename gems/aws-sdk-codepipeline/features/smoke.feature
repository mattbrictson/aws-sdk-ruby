# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for CodePipeline

  @codepipeline @smoke
  Scenario: ListPipelinesSuccess
    Given I create a 'Aws::CodePipeline' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_pipelines' with params:
      """
{}
      """
    Then I expect an error was not raised

  @codepipeline @smoke
  Scenario: GetPipelineFailure
    Given I create a 'Aws::CodePipeline' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_pipeline' with params:
      """
{"name":"fake-pipeline"}
      """
    Then I expect an error was raised
