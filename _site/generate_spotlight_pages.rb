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

# Create the spotlight directory if it doesn't exist
FileUtils.mkdir_p('_publications/spotlight')

# Read the template
# begin
#   template = File.read('_publications/template.md') # Use the template from _publications
# rescue => e
#   puts "Error reading template: #{e.message}"
#   exit 1
# end

publications.each do |pub|
  next unless pub['key'] # Skip if no key is present
  
  # Handle month conversion
  month_name = if pub['month'].is_a?(Integer) && pub['month'].between?(1, 12)
    Date::MONTHNAMES[pub['month']]
  else
    pub['month'].to_s
  end
  
  # Define output path (directly in _publications)
  output_dir = "_publications"
  output_path = File.join(output_dir, "#{pub['key']}.md")

  # Create the output directory if it doesn't exist
  FileUtils.mkdir_p(output_dir)

  # Prepare front matter - SET THE LAYOUT HERE
  front_matter = <<~FRONTMATTER
    ---
    layout: publication_spotlight # Use the new layout
    title: "#{pub['title'].gsub('"', '\\"')}" # Escape quotes in title
    collection: publications
    key: #{pub['key']}
    authors: "#{pub['authors']}"
    affiliation: "#{pub['affiliation'] || ''}"
    journal: "#{pub['journal']}"
    year: #{pub['year']}
    month: "#{month_name || ''}" # Use the converted month name
    tldr: "#{pub['tldr'] || ''}"
    abstract: "#{pub['abstract'].gsub('"', '\\"')}"
    img: "#{pub['img'] || ''}"
    url: "#{pub['url'] || ''}"
    pdf: "#{pub['pdf'] || ''}"
    code: "#{pub['code'] || ''}"
    video: "#{pub['video'] || ''}"
    bibtex: "#{pub['bibtex'] || ''}"
    ---
  FRONTMATTER

  # Write ONLY the front matter to the spotlight page
  begin
    File.write(output_path, front_matter) # Write only front_matter
    puts "Generated spotlight page for: #{pub['title']}"
  rescue => e
    puts "Error writing spotlight page for #{pub['title']}: #{e.message}"
  end
end

puts "Done generating spotlight pages!" 