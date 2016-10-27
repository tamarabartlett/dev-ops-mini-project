control "dev-ops-mini-project-1.0" do
  impact 1.0
  title "Inspect Web Page"
  desc "Text should include the words 'Automation For The People'."
  describe file('index.html') do
   its('content') { should include 'Automation for the People' }
  end
end