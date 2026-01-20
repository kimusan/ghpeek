# Changelog

## [0.2.0] - 2026-01-20

### Added
- Scrollable preview with issue/PR descriptions and comment previews.
- Comment boxes with a "Load older" option and visible loading feedback.
- Mouse-clickable Issues/Pull Requests tabs.
- Persistent closed-items toggle with clear "(all)" indicator.

### Changed
- GitHub token loading from `~/.config/ghpeek/.env`.
- README updates, including screenshot slot and refreshed usage text.

### Fixed
- Comment list rendering and layout handling inside the preview.

## [0.1.0] - 2026-01-20

### Added
- Initial GHpeek TUI with repo list, issue/PR views, preview modal, and browser open flow.
- Repository picker when a GitHub token is set, with filters for forks, public/private, and organizations.
- Closed items toggle, status bar spinner, quit binding, and Textual styling via `app.tcss`.
- Version display in the app title and a release helper script.

### Changed
- Added persistence for repo filters and state data.
- Updated Add Repo layout and centered modals.

### Fixed
- Repo picker threading and layout issues.
- Border title compatibility for older Textual versions.
