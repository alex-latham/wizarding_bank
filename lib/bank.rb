class Bank

  def initialize(name_parameter)
    @name = name_parameter

    p "#{name} has been created."
  end

  # should have a method that allows the creation of an account that is
  # attached to a person, by passing it a person

  def open_account(person_parameter)
    person_parameter.banks[:name] = 0.0

    p "An account has been opened for #{person_parameter.name} with #{@name}."
  end

  def deposit(person_parameter, deposit_parameter)
    if deposit_parameter <= person_parameter.cash
      person_parameter.cash -= deposit_parameter
      person_parameter.banks[:name] += deposit_parameter

      p "#{deposit_parameter} galleons have been deposited into #{person_parameter.name}'s #{@name} account. Balance: #{person_parameter.banks[:name]} Cash: #{person_parameter.cash}"
    else
      p "#{person_parameter.name} does not have enough cash to perform this deposit."
    end
  end

  def withdraw(person_parameter, withdrawal_parameter)
    if withdrawal_parameter <= person_parameter.cash
      person_parameter.banks[:name] -= withdrawal_parameter
      person_parameter.cash += withdrawal_parameter

      p "#{person.parameter.name} has withdrawn #{withdrawal_parameter} galleons. Balance: #{person_parameter.banks[:name]}"
    else
      p "Insufficient funds."
  end

  def transfer(person_parameter, bank_parameter, transfer_parameter)
    if transfer_parameter <= person_parameter.banks[:name]
      if person_parameter.banks.key?(bank_parameter.name)
        person_parameter.banks[:name] -= transfer_parameter
        person_parameter.banks[bank_parameter] += transfer_parameter

        p "#{person_parameter.name} has transferred #{transfer_parameter} galleons from #{@name} to #{bank_parameter.name}."
      else
        p "#{person_parameter.name} does not have an account with #{bank_parameter.name}."
      end
    else
      p "Insufficient funds."
    end
  end
end
