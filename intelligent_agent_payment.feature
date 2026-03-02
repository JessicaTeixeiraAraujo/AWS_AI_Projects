Feature: IA Agent Flow

  Scenario: IA agent processes user input and provides correct response
    Given the IA agent is running
    When the user sends the input "Qual é a previsão do tempo para amanhã?"
    Then the IA agent should respond with the weather forecast for tomorrow

  Scenario: IA agent handles unknown queries gracefully
    Given the IA agent is running
    When the user sends the input "Conte uma piada sobre física quântica"
    Then the IA agent should respond with a relevant joke or a polite message indicating it cannot provide that

  Scenario: IA agent maintains context across multiple interactions
    Given the IA agent is running
    When the user sends the input "Quem é o presidente do Brasil?"
    And the user sends the input "E qual o capital do estado dele?"
    Then the IA agent should respond with the president's name
    And respond with the capital of the president's state in the follow-up

  Scenario: IA agent ends the conversation politely
    Given the IA agent is running
    When the user sends the input "Obrigado, até logo!"
    Then the IA agent should respond with a polite goodbye message