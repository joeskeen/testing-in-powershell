# Arrange
. "$PSScriptRoot\Get-Pizza.ps1"

Describe "Get-Pizza" {
  BeforeEach {
    # Arrange
  }
  # Act(ion)
  Context "when you order a Classic pizza" {
    Context "pepperoni" {
      BeforeEach {
        # Act
        $result = Get-Pizza -ClassicName "pepperoni"
      }
      It "should have cheese" { 
        # Assert
        $result | Should -Contain "cheese"
      }
      It "should have pepperoni" { 
        # Assert
        $result | Should -Contain "pepperoni"
      }
    }
    Context "cheese" {
      It "should only have cheese" {  }
    }
    # ...
  }
  Context "when you order a Custom pizza" {
    Context "when no toppings are requested" {
      It "should not have toppings" {  }
    }
    Context "when less than 5 available toppings are requested" {
      It "should include all requested toppings" {  }
    }
    Context "when 5 available toppings are requested" {
      It "should include all requested toppings" {  }
    }
    Context "if more than 5 toppings are requested" {
      BeforeEach {
        # Arrange 
        $toppings = @(
          "pepperoni"
          "sausage"
          "cheese"
          "pineapple"
          "green peppers"
          "ham"
        )
        $action = { Get-Pizza -Toppings $toppings }
      }
      It "should throw error" { 
        # Act / Assert
        $action | Should -Throw "Hey!"
      }
    }
    Context "if an unavailable ingredient is requested" {
      It "should throw error" {  }
    }
  }
}