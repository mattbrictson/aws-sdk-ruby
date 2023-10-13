# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SSM

  @ssm @smoke
  Scenario: ListDocumentsSuccess
    Given I create a 'Aws::SSM' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'list_documents' with params:
      """
{}
      """
    Then I expect an error was not raised

  @ssm @smoke
  Scenario: GetDocumentFailure
    Given I create a 'Aws::SSM' client with config:
      """
{"region":"us-west-2"}
      """
    When I call the operation 'get_document' with params:
      """
{"name":"'fake-name'"}
      """
    Then I expect an error was raised
