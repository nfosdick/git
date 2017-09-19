Facter.add(:gitversion) do
  confine :kernel => "Linux"
  setcode do
    Facter::Util::Resolution.exec("/bin/git --version|awk '{print $3}'")
  end
end
