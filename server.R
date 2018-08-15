library(plotly)
library(shiny)
library(shinydashboard)
shinyServer(function(input,output){
  
  
  output$plot4<-renderPlot({
    g<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),mean,simplify = TRUE)
    barplot(g)
  })
  output$plot1<-renderPlotly({
    g1<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),max,simplify = TRUE,na.rm=TRUE)
    g2<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),min,simplify = TRUE,na.rm=TRUE)
    g3<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),mean,simplify = TRUE,na.rm=TRUE)
    g4<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),median,simplify = TRUE,na.rm=TRUE)
    plot_ly(data11,x=~Year,y=~g1,type='bar',name='max'
    )%>%add_trace(y=~g2,name="min"
    )%>%add_trace(y=~g3,name="mean"
    )%>%add_trace(y=~g4,name='Median'
    )%>%layout(yaxis=list(title='Count'),barmode='group')})
  output$plot2<-renderPlotly({
    g1<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),max,simplify = TRUE,na.rm=TRUE)
    g2<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),min,simplify = TRUE,na.rm=TRUE)
    g3<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),mean,simplify = TRUE,na.rm=TRUE)
    g4<-tapply(as.matrix(IInd[,input$sel]),as.matrix(IInd[,input$s]),median,simplify = TRUE,na.rm=TRUE)
    plot_ly(data11,x=~Year,y=~g1,mode='lines',name='max'
    )%>%add_trace(y=~g2,name="min"
    )%>%add_trace(y=~g3,name="mean"
    )%>%add_trace(y=~g4,name='Median'
    )%>%layout(yaxis=list(title='Count'),barmode='group')})
  output$plot3<-renderPlotly({p3})
  output$plot4<-renderPlotly({p4})
  
})


