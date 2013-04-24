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
  pending "add some examples to (or delete) #{__FILE__}"
end
