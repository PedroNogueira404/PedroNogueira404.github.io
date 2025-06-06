Commands that are important:

- bundle install
- bundle exec jekyll clean
            Cleaner: Removing /home/sonic/personal_site/_site...
            Cleaner: Nothing to do for /home/sonic/personal_site/.jekyll-metadata.
            Cleaner: Removing /home/sonic/personal_site/.jekyll-cache...
            Cleaner: Nothing to do for .sass-cache.
- bundle exec jekyll build
- bundle exec jekyll serve

File tree workflow

Uses Jekyll (static website creator)/ruby

- bundle install uses ruby version stated on github/workflows/jekyll.yml or in gemfile?
- In gemfile are shown all the libraries installed with gem "library/plugin" for ruby
- After 


Here’s an explanation of the typical workflow inside your `personal_site` Jekyll project, based on your files and commands:

---

### 1. **Dependencies Setup**
- **`bundle install`**
  - Reads your Gemfile for the Ruby version and required gems (libraries/plugins).
  - Installs all listed gems, ensuring your environment matches the project requirements.

---

### 2. **Cleaning the Site**
- **`bundle exec jekyll clean`**
  - Deletes the generated site folder (`_site/`), cache files (`.jekyll-cache/`, `.jekyll-metadata`), and other temporary files.
  - Ensures a fresh build with no leftover files from previous builds.

---

### 3. **Building the Site**
- **`bundle exec jekyll build`**
  - Jekyll reads your configuration (_config.yml), layouts, includes, and content files (Markdown, HTML, etc.).
  - Processes plugins (like `jekyll-multiple-languages-plugin` for multilingual support).
  - Generates the static site in the `_site/` directory.

---

### 4. **Serving the Site Locally**
- **`bundle exec jekyll serve`**
  - Builds the site (if not already built).
  - Starts a local web server (usually at `http://localhost:4000`).
  - Watches for file changes and automatically rebuilds the site when you edit files.

---

### 5. **File Structure and Triggers**
- **File Changes**
  - Editing content, layouts, or assets triggers a rebuild when using `jekyll serve`.
  - Plugins (like translation or SEO) hook into Jekyll’s build process to modify output.

- **Configuration**
  - Ruby version is set in the Gemfile (and optionally in GitHub Actions workflows).
  - All required Ruby libraries are listed in the Gemfile.

---

### **Summary Flow**
1. Install dependencies (`bundle install`).
2. Clean old builds (`jekyll clean`).
3. Build the site (`jekyll build`).
4. Serve locally and auto-rebuild on changes (`jekyll serve`).

**Everything is orchestrated by Jekyll and Bundler, using the configuration and plugins you specify.**

File tree scheme
