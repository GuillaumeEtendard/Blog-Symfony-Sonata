<?php

namespace BlogBundle\Service;


class Slug
{
    static function generateSlug($toSlugify)
    {
        // Remove accented characters
        $string = htmlentities($toSlugify, ENT_COMPAT, "UTF-8");
        $string = preg_replace('/&([a-zA-Z])(uml|acute|grave|circ|tilde);/','$1',$string);
        $string = html_entity_decode($string);
        // Lowercase
        $string = strtolower($string);
        // Make alphanumeric (removes all other characters)
        $string = preg_replace("/[^a-z0-9_\s-]/", "", $string);
        // Clean up multiple dashes or whitespaces
        $string = preg_replace("/[\s-]+/", " ", $string);
        // Convert whitespaces and underscore to dash
        $string = preg_replace("/[\s_]/", "-", $string);

        return $string;
    }
}