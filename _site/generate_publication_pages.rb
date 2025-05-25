require 'yaml'
require 'fileutils'
require 'date'

# Load the publications data
begin
  publications = YAML.load_file('_data/publications.yml')
rescue => e
  puts "Error loading publications data: #{e.message}"
  exit 1
end

# Create the publications directory if it doesn't exist
FileUtils.mkdir_p('_publications')

# Read the template
begin
  template = File.read('publication_template.md')
rescue => e
  puts "Error reading template: #{e.message}"
  exit 1
end

publications.each do |pub|
  next unless pub['key'] # Skip if no key is present
  
  # Handle month conversion
  month_name = if pub['month'].is_a?(Integer) && pub['month'].between?(1, 12)
    Date::MONTHNAMES[pub['month']]
  else
    pub['month'].to_s
  end
  
  # Create the publication page
  page_content = template.gsub('{{ page.title }}', pub['title'].to_s)
                        .gsub('{{ page.key }}', pub['key'].to_s)
                        .gsub('{{ page.authors }}', pub['authors'].to_s)
                        .gsub('{{ page.affiliation }}', pub['affiliation'].to_s || '')
                        .gsub('{{ page.abstract }}', pub['abstract'].to_s || '')
                        .gsub('{{ page.journal }}', pub['journal'].to_s || '')
                        .gsub('{{ page.year }}', pub['year'].to_s)
                        .gsub('{{ page.month }}', month_name || '')
                        .gsub('{{ page.url }}', pub['url'].to_s || '')
                        .gsub('{{ page.pdf }}', pub['pdf'].to_s || '')
                        .gsub('{{ page.code }}', pub['code'].to_s || '')
                        .gsub('{{ page.video }}', pub['video'].to_s || '')
                        .gsub('{{ page.bibtex }}', pub['bibtex'].to_s || '')
                        .gsub('{{ page.img }}', pub['img'].to_s || '')
  
  # Write the publication page
  begin
    File.write("_publications/#{pub['key']}.md", page_content)
    puts "Generated page for: #{pub['title']}"
  rescue => e
    puts "Error writing page for #{pub['title']}: #{e.message}"
  end
end

puts "Done generating publication pages!"