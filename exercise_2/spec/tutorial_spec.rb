require_relative "../lib/tutorial.rb"

describe Tutorial do
  describe "#is_harder_than?" do
    context "when the other tutorial type is different" do
      it "returns an error message" do
        tutorial = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
        tutorial2 = Tutorial.new("Introduction to Javascript", :javascript, :easy)

        expect(tutorial.is_harder_than?(tutorial2)).to eq "You cannot compare a Ruby with a Javascript tutorial."
      end
    end

    context "when the other tutorial is the same type" do
      context "when the other tutorial is harder" do
        it "returns false" do
          tutorial = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
          tutorial2 = Tutorial.new("Other Ruby tutorial", :ruby, :expert)

          expect(tutorial.is_harder_than?(tutorial2)).to eq false

        end
      end

      context "when the other tutorial is easier" do
        it "returns true" do
          tutorial = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
          tutorial2 = Tutorial.new("Other Ruby tutorial", :ruby, :easy)

          expect(tutorial.is_harder_than?(tutorial2)).to eq true
        end
      end
    end
  end
end
