require 'rails_helper'

RSpec.describe Ticket, type: :model do

    describe 'scopes' do
        describe 'close'  do
            it 'includes closed tickets' do
                closed_ticket = create(:ticket, :closed)
                open_ticket = create(:ticket, :open)
                expect(Ticket.closed).to include(closed_ticket)
            end

            it 'does not include non-closed tickets' do
                closed_ticket = create(:tickets, closed_ticket)
                open_ticket = create(:tickets, :open)
                expect(Ticket.closed).to_not include(open_ticket)
            end
        end
    end

    


end
