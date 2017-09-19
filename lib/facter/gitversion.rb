Facter.add(:gitversion) do
  confine :kernel => "Linux"
  setcode do
    Facter::Util::Resolution.exec('/bin/git --version'.split(" ").last)
  end
end
