$(document).ready(function() {
  $('li').on('click','#logout',function(){
		$('#logout-modal').fadeIn();
  });

  
  
  // jQuery稼働確認テスト用
  // $("p").text("jQuery稼働テスト(稼働中)");
  // $("#hoge").click(function(){
  //   $("#hoge").css("color","red")
  // });
  // $(function(){ // if document is ready
  //   alert('jQuery is ready.')
  // });
});