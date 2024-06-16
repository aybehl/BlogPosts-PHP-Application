<?php
    function formatDate($dateString) {
        $date = new DateTime($dateString);
        return $date->format('jS F, Y');
    }
