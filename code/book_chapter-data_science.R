library(DiagrammeR)

mermaid("
graph LR
  A[The World]-->B[Data]
  A-->C
  C-->E
  B-->D
  C-->D
  D-->F
  E-->F
")

mermaid("
sequenceDiagram
  customer->>ticket seller: ask ticket
  ticket seller->>database: seats
  alt tickets available
    database->>ticket seller: ok
    ticket seller->>customer: confirm
    customer->>ticket seller: ok
    ticket seller->>database: book a seat
    ticket seller->>printer: print ticket
  else sold out
    database->>ticket seller: none left
    ticket seller->>customer: sorry
  end
")

mermaid("
sequenceDiagram
  The World->>Data: collect data
  Data->>Processing: manipulate and combine data
  Processing->>Analysis: gain insites about data
  Analysis->>Communication: interpret results for others
  Communication->>Decision: conclustion, decision, or action
  Decision->>The World: decision affects changes to the environment
  alt Bias
    The World->>Data: external forces, data collection
    Data->>Analysis: technical challenges, mistakes, overlooked, data leakage
    Analysis->>Decision: overly complex, missinterpretation
  else Data Science
    Data->>Analysis: exploratory data analysis, transform, visualize, model
    Analysis->>Data: 

    The World->>Analysis: look for additional data sources
    Analysis->>The World: 

    Analysis->>Communication: tell an accurate story
    Communication->>Analysis: 

    Decision->>The World: consequences
  end
")
