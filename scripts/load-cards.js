/**
 * Creates an iframe element for a contributor card and appends it to the DOM.
 *
 * This function creates a new `iframe` element, sets its class name, source, and title
 * based on the provided contributor filename. It then appends the created iframe
 * to the element with the ID 'contributor-cards'.
 *
 * @param {string} contributor - The filename of the contributor's HTML card (e.g., "username.html").
 * @returns {void} This function does not return a value.
 */
function createCard(contributor) {
    const iframe = document.createElement('iframe');
    iframe.className = 'card col col-6-md col-3-lg bd-grey';
    iframe.src = `contributors/${contributor}`;
    iframe.title = contributor
    document.getElementById('contributor-cards').appendChild(iframe);
}

/**
 * Iterates over the `contributorFiles` array and creates a card for each contributor.
 *
 * @description
 * This loop goes through the global `contributorFiles` array (defined in scripts/contributors.js)
 * and calls `createCard` for each file name in the list.
 */
contributorFiles.forEach(contributor => createCard(contributor));
