# Future Plan

This document outlines the current status of the project and proposes a roadmap for future enhancements.

## Phase 1: Foundation (Completed)

The foundational phase of the project is complete. The core functionality allows contributors to add their profiles as static HTML files, which are then dynamically loaded onto the main page.

**Key Achievements:**
*   **Structure:** Established a clear directory structure separating content (`contributors/`), logic (`scripts/`), and documentation (`docs/`).
*   **Workflow:** defined a clear contribution workflow via `CONTRIBUTING.md`.
*   **Automation:** Implemented `scripts/generate-cards.sh` to automate the updating of the registry file.
*   **Documentation:** Fully documented the codebase including JSDoc for JavaScript files and header comments for Shell scripts. `README.md` has been updated to provide a comprehensive guide for new users.

## Phase 2: Enhancements (Proposed)

For the next phase, we aim to improve the user experience, maintainability, and scalability of the project.

### 1. Automated Validation
*   **Goal:** Ensure that all new contributor files follow the correct format and do not break the layout.
*   **Action:** Implement a CI/CD pipeline (e.g., GitHub Actions) to validate HTML syntax and check for forbidden tags (like `<script>`) to prevent XSS.

### 2. Search and Filter
*   **Goal:** As the number of contributors grows, finding a specific card becomes difficult.
*   **Action:** Add a search bar to `index.html` to filter cards by username or technology (e.g., "Python", "JavaScript").

### 3. Improved UI/UX
*   **Goal:** Make the main page more visually appealing and responsive.
*   **Action:** Refine `style.css` to better handle a large number of cards. Consider a masonry layout or pagination.

### 4. JSON-based Data Source
*   **Goal:** Decouple data from presentation.
*   **Action:** Instead of individual HTML files, contributors could add a JSON entry. A build script or frontend logic would then generate the cards consistently. This ensures uniform styling and easier validation.

### 5. Dark Mode
*   **Goal:** Accessibility and user preference.
*   **Action:** Implement a toggle for dark/light mode using CSS variables.

## Conclusion

This project serves as an excellent starting point for open-source beginners. Phase 2 focuses on making the ecosystem more robust and feature-rich while keeping the barrier to entry low.
