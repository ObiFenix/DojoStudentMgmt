$(document).ready(() => {
    $('select').formSelect();
    // $('select').material_select();
    $('.datepicker').datepicker();
    $("nav").find("a").click(function(e) {
        e.preventDefault();
        var section = $(this).attr("href");
        $("html, body").animate({
            scrollTop: $(section).offset().top
        }, 1500,'easeInOutExpo');
        e.preventDefault();
    });

    $('#dtTable1').DataTable();
    $('#dtTable2').DataTable();
    $('.dataTables_length').addClass('bs-select');

    // Handles DELETE_ALL request from a form
    // var delete_all = document.getElementById('delete_all');
    // delete_all.onsubmit = function(e) {
    //     var form = this;
    //     e.preventDefault();
    //     if (confirm("Are you sure you wish to remove all?")) {
    //         form.submit();
    //     }
    // }

    // Front-End Validation
    $("form").validate({
        rules: {
            first_name: {
                required: true,
                minlength: 2
            },
            last_name: {
                required: true,
                minlength: 2
            },
            email: {
                required: true,
                email:true
            },
            password: {
            required: true,
            minlength: 8
            },
            password_confirmation: {
                required: true,
                minlength: 8,
                equalTo: "#password"
            },
        },
        //For custom messages
        messages: {
            first_name:{
                required: "Must enter a first name",
                minlength: "Enter at least 2 characters"
            },
            last_name:{
                required: "Must enter a last name",
                minlength: "Enter at least 2 characters"
            },
            email:{
                required: "Must enter a valid email",
            },
        },
        errorElement : 'div',
        errorPlacement: function(error, element) {
            var placement = $(element).data('error');
            if (placement)  { $(placement).append(error) }
            else            { error.insertAfter(element); }
        }
    });
});
