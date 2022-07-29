Describe "a locking doorknob" {
  Context "when locked" {
    Context "when you flip the lock nub to the other position" {
      It "should unlock" {}
    }
    Context "when an key is inserted" {
      Context "and the key is not the right key" {
        It "should do nothing" {}
      }
      Context "and the key is the right key" {
        It "should unlock" {}
      }
    }
  }
}
