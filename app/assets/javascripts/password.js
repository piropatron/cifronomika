jQuery(function($){
    $('.generate').on(
        'click',
        function(){
            $.ajax(

                {
                    url: 'password/get_password',
                    type: "GET",
                    dataType: 'json'
                }
            ).done(
                function(data){
                    $('.result').text(data.password);
                }
            ).error(
                function(data){
                    console.log(data)
                }
            );
        }
    );
});
