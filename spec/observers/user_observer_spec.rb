require "rails_helper"

RSpec.describe(UserObserver) do
  it "show a message in rails logger when updates a user" do
    allow(Rails.logger).to(receive(:info).once)

    user = User.create(name: "Jackson", email: "jack@jack.com")
    user.update(name: "Joao")

    expect(Rails.logger).to(have_received(:info).with(">>>> User #{user.name} was updated. Mudanças: #{user.previous_changes}"))
  end
end
