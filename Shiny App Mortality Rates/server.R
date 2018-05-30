
mortalityDFYear<-mortalityDF
library(UsingR)
library(ggplot2)
#data(mortalityDF)

shinyServer(  
  function(input, output) {  
    output$mortalityPlot <- renderPlot({      
    
      mortalityDFYear<-mortalityDFYear[mortalityDFYear$Year>=input$Year[1],]
      mortalityDFYear<-mortalityDFYear[mortalityDFYear$Year<=input$Year[2],]
     if(input$DisplayAll==TRUE){
       P<-ggplot(mortalityDFYear,aes(x=Year, y=Average.Life.Expectancy..Years., color=Race, shape=Sex))+
         geom_jitter()+
         #xlab(paste(input$Race))
         ylab("Average Life Expectancy in Years")+
         theme_bw()
       print(P)
       
     }else if(input$DisplayAll==FALSE){
      
      Race<-input$Race
      tempDF<-mortalityDFYear[mortalityDFYear$Race %in% Race,]
      Sex<-input$Sex
      tempDF<-tempDF[tempDF$Sex %in% Sex,]
      
      
      P<-ggplot(tempDF,aes(x=Year, y=Average.Life.Expectancy..Years.))+
        geom_jitter()+
        #xlab(paste(input$Race))
        ylab("Average Life Expectancy in Years")+
        theme_bw()
      print(P)
     }    
    })      }
)


