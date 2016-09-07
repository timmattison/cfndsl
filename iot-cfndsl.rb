#!/usr/bin/env ruby

CloudFormation do
  Description "Test"

  IoT_TopicRule(:MyTopicRule) {
    RuleName "MyTestRule"
    TopicRulePayload {
      Actions [
              ]
      Description "my description"
      RuleDisabled false
      Sql "SELECT * FROM 'thingtopic'"
    }
  }
end
