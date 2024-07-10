<?php
/**
 * The template for the 404 page
 *
 * @package marshallu/watt-theme
 */

namespace App;

use Timber\Timber;

$context = Timber::context();
Timber::render( 'templates/404.twig', $context );
