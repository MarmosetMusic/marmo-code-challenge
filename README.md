# Marmoset Tech Team Challenge

## Objective

Build a small Rails app where **models, business logic, and automated tests are the main focus**. You will implement behavior to add and remove songs on an artist, track genres and a single optional featured song, and surface that data in a **basic, functional** web UI.

- **Primary:** Artist/Song models, clear APIs (e.g. methods you call from the console), correct recalculation rules, and solid RSpec coverage.
- **Secondary:** Enough controllers and views that reviewers can create artists, manage songs, see featured song, song count, and top genres without using the console. Polished design and rich JavaScript are **not** required.
- You may choose model attributes, persistence strategy, and public method names—we care about behavior and tests, not matching a specific API verbatim.

Complete all requirements below.

## Setup (template → your app)

Target **Ruby 3.1.4** and **Rails 6.1** (or document in your README if you use nearby patch versions).

- **Windows:** e.g. [Rails on Windows 11](https://billicodes.medium.com/how-to-install-rails-on-windows-11-step-by-step-5bf24c63527a), then from the project directory:
  - `bundle install`
  - With Yarn or npm: `rails webpacker:install`, then `yarn install` or `npm install`
- **macOS:** Use rbenv, rvm, or another Ruby manager you prefer; install Ruby and Rails 6.1.

**Bootstrap from this repo:**

```bash
git clone https://github.com/MarmosetMusic/marmo-code-challenge.git
cd marmo-code-challenge
gem install rspec
rails new .
rails generate scaffold artist [attributes and types you need]
rails generate scaffold song [attributes and types you need]
```

Scaffolding is a starting point—you will adjust models, controllers, and views to meet the requirements.

## Requirements

### Core behavior (models / business logic)

- Complete the **Artist** and **Song** models (and any associations) needed for the features below.
- Support **adding** and **removing** songs from an artist (how you expose this—instance methods, service object, etc.—is up to you).
- **Featured song**
  - An artist may have **zero or one** featured song.
  - When a song is marked featured, it **replaces** any currently featured song on that artist.
  - If the **featured song is removed** (deleted or disassociated from the artist), the artist should have **no** featured song afterward unless you explicitly set another.
- **Top genres and song count**
  - After every song **add** or **remove**, recalculate the artist’s **song count** and **top 3 genres** (by number of songs in each genre for that artist).
  - **Tie-breaking:** When two genres have the same count, order them **alphabetically by genre name** (case-insensitive is fine) so results are deterministic.
  - Return **up to** three genres; if an artist has fewer than three distinct genres, return as many as exist.
- After add/remove operations that affect counts or genres, **output** the artist’s updated summary (e.g. `puts` or returning a hash—see example). The example below is an **illustration** of the shape of data we expect, not a requirement for exact method names or a specific return type.

**Console illustration (your method names may differ):**

```ruby
# rails c
artist = Artist.new(...)
song = Song.new(...)
artist.add_song(song) # or equivalent; name it however you like
# Example of updated artist info (shape is what matters):
# { id: 1, name: 'Some Artist', song_count: 2, top_genres: ['Folk', 'Pop', 'Rock'], featured_song_id: 3 }
```

### Web UI (functional, not fancy)

- Wire **controllers and views** so reviewers can: manage artists, add/remove songs, and see **featured song**, **song count**, and **top genres** on an artist-oriented page (or equivalent flow).
- **Extra credit:** Improve styling/CSS and add JavaScript for nicer form interactions—we evaluate these only after core logic and tests.

### Tests

- Follow [Better Specs](http://betterspecs.org/) style where it helps. Test **all relevant** model/domain behavior (featured song rules, recalculation, tie-breaking, edge cases like removing the featured song).

## Your README (required for submission)

Include a **README** in your submission (this file can stay as challenge text; **your** repo should have clear instructions) with at least:

- Ruby and Rails versions you used
- How to install dependencies (`bundle install`, and any `yarn` / `npm` steps if applicable)
- Database setup (`rails db:create db:migrate` or equivalent)
- How to run the test suite (`bundle exec rspec` or your command)
- How to run the app (`rails server`) and a one-line note on how to try the same flows in `rails console` if useful

This keeps local evaluation consistent and reduces setup guesswork.

## Notes

One commit is _fine_, but it would be nice to see your **thought** process through multiple commits. This is up to you.

We look for code cleanliness, method naming and length, sound data modeling, and appropriate test coverage.

## How to submit

**Default:** Create a bundle from your solution branch and email it.

```bash
git bundle create marmoset.bundle master
```

- Email `marmoset.bundle` to **dev@marmosetmusic.com**
- Subject: **Marmo Code Challenge - YOUR NAME**

**Alternative:** If we’ve agreed on another channel (e.g. a private GitHub repo link), use that instead—otherwise please use the bundle flow above.
