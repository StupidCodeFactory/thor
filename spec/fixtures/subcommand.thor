module TestSubcommands

  class Subcommand < Thor
    desc "print_opt", "My method"
    def print_opt
      print options["opt"]
    end
  end

  class SubcommandWithArgument < Thor
    argument :arg, type: :string

    desc "print_arg", "My method with a cool argument"
    def print_arg
      print "cool feature\n"
    end
  end

  class Parent < Thor
    class_option "opt"


    desc "arg", "My subcommand with argument"
    subcommand "with_arg", SubcommandWithArgument

    desc "sub", "My subcommand"
    subcommand "sub", Subcommand
  end

end
