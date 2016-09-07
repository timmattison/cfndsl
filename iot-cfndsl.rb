#!/usr/bin/env ruby

CloudFormation {
  Description "Test"

  Parameter("One") {
    String
    Default "Test"
    MaxLength 15
  }

  Output(:One, FnBase64(Ref("One")))

  IoT_TopicRule(:MyTopicRule) {
    RuleName "MyTestRule"
    TopicRulePayload {
      Actions [
                  Republish [{
                    RoleArn "asdf"
                  }]
              ]
      Description "my description"
      RuleDisabled false
      Sql "SELECT * FROM 'thingtopic'"
    }
  }
}
