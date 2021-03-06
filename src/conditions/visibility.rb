module Visibility
  def is_public
    proc { |method| method.owner.public_instance_methods.include?(method.name) }
  end

  def is_private
    proc { |method| method.owner.private_instance_methods.include?(method.name) }
  end
end