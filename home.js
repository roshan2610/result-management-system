/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
$('.panel').hover(function(){
        $(this).find('.panel-footer').slideDown(250);
    }
    ,function(){
        $(this).find('.panel-footer').slideUp(250); //.fadeOut(205)
    });
})
