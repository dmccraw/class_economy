# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  group_id    :integer
#  name        :string(255)
#  description :text
#  approved    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Store do
  it { should belong_to(:group) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:approved) }
  it { should validate_presence_of(:group) }

  it { should ensure_length_of(:name).is_at_most(255) }
end
