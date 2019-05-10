var references = {};
var footnotes = {};
var footnote_counter = 0;

$(document).ready(function() {
    // references
    // find all references in list elements, get the ids referenced by them,
    // and create a reference list (global)
    $('#references li').each(function(li) {
        references['#' + $(this).attr('id')] = {
            "id": '#' + $(this).attr('id'),
            "number": li + 1
        };
    });
    // console.log(references);
    
    // citation handler
    // get all citations in text, repalce citation with the number of reference
    $('.citation').each(function() {
        let old_text = $(this).text();
        let citation = '#' + $(this).attr('href');
        var reference = references[citation];
        // console.log(citation, reference);
        if (reference == null) {
            console.log(citation + " reference not found");
            return;
        }
        let new_text = reference.number;
        $(this).text(new_text);
        // console.log(old_text, " -> ", new_text);
    });

    // footnote handler
    // for every div that has a footnote, create a division to hold them
    // $('section div').each(function() {
    //     if ($(this).attr("datatype") == null) return;
    //     $(this).append("<aside class='note'></aside>");
    // });
    // get all footnotes, assign them a number, and append them to the footnote
    // section at the end of the page (changed)
    $('.footnote').each(function(index) {
        let footnote_contents = $(this).html();
        footnote_counter += 1;
        let footnote = '<sup>' + '<a href="#footnote-' + footnote_counter + '">' + footnote_counter + "</a>";
        // console.log(footnote);
        let footnote_holder = $('#footnotes'); // this).closest('section').find('aside:first');
        // console.log(parent.prop("id"));
        footnote_holder.append("<p id='footnote-" + footnote_counter + "'><sup>" + footnote_counter + "</sup> " + footnote_contents + "</p>");
        $(this).replaceWith(footnote);
    });
});
