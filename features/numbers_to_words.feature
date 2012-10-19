Feature: Convert numbers to words

  Scenario Outline: Basic test cases
    Given the number <number>
    When I convert it to words
    Then the words should be "<words>"

    Examples:
      | number    | words                                                                     |
      | 1         | one                                                                       |
      | 10        | ten                                                                       |
      | 123       | one hundred and twenty three                                              |
      | 10,456    | ten thousand four hundred and fifty six                                   |
      | 1,234,123 | one million two hundred thirty four thousand one hundred and twenty three |
