-- https://macoutreach.rocks/share/78ea267f

 

-- Marbled Cat, Lion, Cougar, Leopard, Tiger, Cheetah, Caracal, Canada Lynx, Margay, Jaguar        

 

import Bootstrap.Form.Input as Input  

import Html.Events as Events 

 

--this appears at the top of the browser screen (or on the tab) 

title : String 

title = "Feline Breeds" 

 

blankLine = Grid.row [] --this is an empty row (to add blank space) 

              [ Grid.col [] 

                  [ Html.h6[Spacing.my3][] --change spacing number to make empty row bigger or smaller (0-5) 

                  ] 

              ] 

      

 

 

 

thing model = [ if   (List.member "Feline" model.searchList )  

                 then  Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

                 else  Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

                 ,if   (List.member "Labrador Retriever" model.searchList )  

                 then Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Asian_Golden_cat.jpg") 

                 else Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

 

                    ] 

 

-- displays the list of images created from slidesi in a carousel  

makeCarousel model = 

                if ( List.member "Feline" model.searchList ) then 

                Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Asian_Golden_cat.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/b/b0/Bengal_tiger_%28Panthera_tigris_tigris%29_female_3_crop.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates) 

                else  

                 Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates) 

 

-- creates list of images related to model.searchList  

 

marbCatCarousel model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/3/3f/Marbled_cat_borneo.jpg") 

                        , Slide.config [] (image "500px" "https://bigcatswildcats.com/wp-content/uploads/2019/01/marbled-cat-on-grass.jpg") 

                        , Slide.config [] (image "500px" "https://www.wildcatfamily.com/wp-content/uploads/2018/08/Male-Marbled-Cat-by-Rod-Williams.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

                 

 

                 

lionCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/c/c6/Okonjima_Lioness.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/4/48/Asiatic_lion_01.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

 

cougarCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d6/Mountain_Lion_in_Glacier_National_Park.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/1/11/Torres_del_Paine_puma_JF2.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f4/Cougar_sitting.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

 

leopardCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/c/c5/Leopard_africa.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/2/23/Leopard_%28Panthera_pardus%29.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/7/7d/Levhart_jávský_v_Zoo_Praha_001.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

 

tigerCarousel    model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/b/b0/Bengal_tiger_%28Panthera_tigris_tigris%29_female_3_crop.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/1/17/Tiger_in_Ranthambhore.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/8/81/2012_Suedchinesischer_Tiger.JPG") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

 

cheetahCarousel    model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/0/09/TheCheethcat.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/6/68/Cheetah_%28Kruger_National_Park%2C_South_Africa%2C_2001%29.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/6/65/Kooshki_%28Iranian_Cheetah%29_05.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

 

caracalCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/a/a3/Caracl_%2801%29%2C_Paris%2C_décembre_2013.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/4/4a/SanWild07a.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d1/Lightmatter_caracal.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

                 

canLynxCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/1/1a/Canada_lynx_by_Michael_Zahra_%28cropped%29.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/e/e2/Canada_lynx_portrait_by_Michael_Zahra.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/0/0a/Canadian_lynx_by_Keith_Williams.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

 

 

 

margayCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/b/bd/Margay_in_Costa_Rica.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d3/Margay.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/3/32/Margaykat_Leopardus_wiedii.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

                 

 

jaguarCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/0/0a/Standing_jaguar.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/6/63/Jaguar_%28Panthera_onca_palustris%29_female_Piquiri_River.JPG") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/a/ae/Jaguar_%28Panthera_onca_palustris%29_male_Three_Brothers_River_2.jpg") ] 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

                 

 

 

felineCarousel   model = Carousel.config (CarouselMsg 0 {-the id number of the Carousel-}) [style "height" "500px"] 

                |> Carousel.withControls 

                |> Carousel.withIndicators 

                |> Carousel.slides 

 

                         [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/b/b0/Bengal_tiger_%28Panthera_tigris_tigris%29_female_3_crop.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/1/1a/Canada_lynx_by_Michael_Zahra_%28cropped%29.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/7/70/Leptailurus_serval_-Serengeti_National_Park%2C_Tanzania-8.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d6/Mountain_Lion_in_Glacier_National_Park.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f7/Prionailurus_viverrinus_01.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Asian_Golden_cat.jpg") 

                        ,Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d0/Felis_silvestris_silvestris_Luc_Viatour.jpg") 

                        , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d9/Fishing-Cat.jpg") 

                        ,Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/0/02/Fishing_cat_amidst_mangroves.jpg") ] 

 

 

 

                |> Carousel.view (carouselState 0 model.carouselStates)  

                 

                 

 

getFeline model = if ( List.member "Feline" model.searchList ) 

               then [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Asian_Golden_cat.jpg") 

               , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

               , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/b/b0/Bengal_tiger_%28Panthera_tigris_tigris%29_female_3_crop.jpg") ] 

               else if  ( List.member "Feline" model.searchList ) 

               then [ Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Asian_Golden_cat.jpg") 

               , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Ocelot_%28Jaguatirica%29_Zoo_Itatiba.jpg") 

               , Slide.config [] (image "500px" "https://upload.wikimedia.org/wikipedia/commons/b/b0/Bengal_tiger_%28Panthera_tigris_tigris%29_female_3_crop.jpg") ] 

               else [] 

 

removeImage   : List (List a, Int) -> List (Maybe a) 

removeImage list = List.map ( \(a,b) -> List.head a) list 

                     

 

                  

 

                  

                  

                  

 

                     

 

-- this the first function to be called to be called to create the acordion,  

-- calls newaccord, removes all unwanted cards and takes cards out of there tuples and displays them in a grid  

 

acord model =  Grid.row [] 

        [ Grid.col [] 

            [ Accordion.config (AccordionMsg 0) -- the ID number of the accordion 

                |> Accordion.withAnimation 

                |>   Accordion.cards  (removeCards(newfilter   ( newaccord  model) ) )  

                |> Accordion.view (accordionState 0 {-same id as above-} model.accordionStates) 

            ] 

        ] 

 

 

 

 

--this function removes the type a out of the tuples, getting rid of the numbers  

removeCards   : List (a, Int) -> List (a) 

removeCards list = List.map ( \(a,b) -> a) list 

 

 

             

--pass function a list of tuples of type a  and numbers, and removed all elements that have number 0            

newfilter : List (a,Int) -> List (a, Int) 

newfilter list = List.filter (\(a,b) -> b/=0) list  

 

-- creates list of tuples with card and number, containing all cards that should be returned given model.searchList, also unwanted cards whose number is 0 

 

newaccord : Model -> List (Accordion.Card msg, Int) 

newaccord model   =  

                    [ 

                     if  ( List.member "Feline" model.searchList )  

                    then (Accordion.card 

                        { id = "card1" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Feline Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "In the largest cat breed, the average male weighs approximately 20 pounds." ] ] 

                            ] 

                        } , 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                    , if  ( List.member "Marbled Cat" model.searchList )  

                    then (Accordion.card 

                        { id = "card2" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Marbled Cat Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "The marbled cat is about the size of a domestic cat; it measures roughly 45–60 cm (18–24 inches) long, excluding a tail of approximately the same length." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                    , if  ( List.member "Lion" model.searchList )  

                    then (Accordion.card 

                        { id = "card3" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Lion Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Lions are the only cats that live in groups." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                    , if  ( List.member "Cougar" model.searchList )  

                    then (Accordion.card 

                        { id = "card4" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Cougar Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Cougars are known for their large front paws and long tail, which is used for balance and can grow to a length of 90 centimetres." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                   , if  ( List.member "Leopard" model.searchList )  

                    then (Accordion.card 

                        { id = "card5" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Leopard Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Leopards are astoundingly strong." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                         

                   , if  ( List.member "Tiger" model.searchList )  

                    then (Accordion.card 

                        { id = "card6" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Tiger Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Tigers live between 20-26 years in the wild." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                    , if  ( List.member "Cheetah" model.searchList )  

                    then (Accordion.card 

                        { id = "card7" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Cheetah Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "The cheetah is the world's fastest land animal." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                   , if  ( List.member "Caracal" model.searchList )  

                    then (Accordion.card 

                        { id = "card8" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Caracal Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Strong hind legs allow them to leap up to 10 feet high and grab birds from midair with their thick, hooked claws." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                   , if  ( List.member "Canada Lynx" model.searchList )  

                    then (Accordion.card 

                        { id = "card9" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Canada Lynx Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Canadian lynx specifically has a unique black tail tip as well as extremely thick, light brown or gray fur with light spots." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                    , if  ( List.member "Margay" model.searchList )  

                    then (Accordion.card 

                        { id = "card10" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Margay Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "Margays were hunted illegally for the wildlife trade, which resulted in a large population decrease." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                         

                         

                    , if  ( List.member "Jaguar" model.searchList )  

                    then (Accordion.card 

                        { id = "card11" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Jaguar Fact" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "The spots resemble roses, and as such are known as rosettes." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                   , if  ( List.member "feline" model.searchList )  

                    then (Accordion.card 

                        { id = "card12" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "Did You Know" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "They spend 70% of their lives sleeping." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0) 

                         

                   , if  ( List.member "feline" model.searchList )  

                    then (Accordion.card 

                        { id = "card13" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "How long can a feline live?" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "The oldest cat lived to be 38 years and 3 days." ] ] 

                            ] 

                        }, 1) 

                    else (Accordion.card 

                        { id = "card0" --each accordion card needs an id 

                        , options = [] 

                        , header = 

                            Accordion.header [] <| Accordion.toggle [] [ Html.text "" ] 

                        , blocks = 

                            [ Accordion.block [] 

                                [ Block.text [] [ Html.text "" ] ] 

                            ] 

                        } , 0)  

                         

                    ] 
         

             

page : Model -> List (Html Msg) 

page model = 

    [ Grid.container [] -- Wrap in a container to center the navbar 

        [ Navbar.config NavbarMsg 
            
            |> Navbar.withAnimation 

            |> Navbar.collapseMedium            -- Collapse menu at the medium breakpoint 

            |> Navbar.info      |> Navbar.dark               -- Customize coloring 

            |> Navbar.brand                     -- Add logo to your brand with a little styling to align nicely 

                [ href "#" ] 

                [ Html.img 

                    [ src "https://www.kindpng.com/picc/m/471-4715556_cats-walking-png-cat-clipart-walking-transparent-png.png" 

                    , class "d-inline-block align-top" 

                    , style  "width" "120px"  
                    , style   "height" "100px"
                    ] 

                    [] 

                ] 

            |> Navbar.items 

                [ Navbar.itemLink 

                    [ href "#" ] [ Html.text "Feline species" ]
                , Navbar.itemLink 
                    [ href "#" ] [ Html.text "Cute Cats" ]

                , Navbar.dropdown         

                    { id = "mydropdown" 

                    , toggle = Navbar.dropdownToggle [] [ Html.text "Species" ] 

                    , items =                 
                    [ Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Marbled_cat" ] [ Html.text "Marbled Cat" ], 
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Lion" ] [ Html.text "Lion" ], 
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Cougar" ] [ Html.text "Cougar" ], 
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Leopard" ] [ Html.text "Leopard" ], 
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Tiger" ] [ Html.text "Tiger" ], 
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Cheetah" ] [ Html.text "Cheetah" ],
                Navbar.dropdownItem

                [ href "https://en.wikipedia.org/wiki/Caracal" ] [ Html.text "Caracal" ],
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Canada_lynx" ] [ Html.text "Canada Lynx" ],
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Margay" ] [ Html.text "Margay" ],                                    
                Navbar.dropdownItem

                    [ href "https://en.wikipedia.org/wiki/Jaguar" ] [ Html.text "Jaguar" ]
                
                ]    

                    } 

                ] 

                    

            |> Navbar.customItems 

                [ Navbar.formItem [] 

                    [ Input.text [ Input.attrs [placeholder "character search", value model.searchString, Events.onInput UpdateSearch ]] 

                    ] 

                ] 

            |> Navbar.view model.navbarState 

        ] 

     --HEADER 

    , Html.text model.searchString 

    , Html.div [] [] 

    ]  

    ++ 

    ( List.map (\ wrd -> Html.text (wrd ++ ", ")) model.searchList ) 

 

{- The number of accordions, carousels and pop ups. 

   To add more than one of each, you must increase these numbers and then make sure to 

   put the correct id in the code where you add it. The ids start at 0 and go up from there 

   (0, 1, 2, 3, etc.) 

-} 

numAccordions = 1 

numCarousels = 2 

numPopUps = 1 

 

 

type alias Model = 

    { navKey : Navigation.Key 

    , page : Page 

    , time : Float 

    , navbarState : Navbar.State 

    , accordionStates : Dict Int Accordion.State --ADD ACCORDION 

    , carouselStates : Dict Int Carousel.State -- ADD CAROUSEL 

    , modalVisibilities : Dict Int Modal.Visibility -- ADD MODAL 

    , searchString : String 

    , searchList : List String 

    } 

 

type Page 

    = Home 

    | NotFound 

 

 

type Msg 

    = UrlChange Url 

    | ClickedLink UrlRequest 

    | NavbarMsg Navbar.State 

    | NoOp 

    | AccordionMsg Int Accordion.State --ADD ACCORDION 

    | CarouselMsg Int Carousel.Msg --ADD CAROUSEL 

    | CloseModal Int 

    | ShowModal Int 

    | Tick Float 

    | UpdateSearch String 

 

init : Flags -> Url -> Navigation.Key -> ( Model, Cmd Msg ) 

init flags url key = 

    let 

        ( navbarState, navCmd ) = 

            Navbar.initialState NavbarMsg 

 

        ( model, urlCmd ) = 

            urlUpdate url { navKey = key 

                          , navbarState = navbarState 

                          , page = Home 

                          , time = 0 

                          , accordionStates = Dict.fromList <| List.map (\n -> (n,Accordion.initialStateCardOpen "")) (List.range 0 (numAccordions-1)) --ADD ACCORDION - what does accordion look like when you open the page? 

                            --Accordion.initialStateCardOpen "card1" -- if you put a card id, the accordion starts with that card open 

                          , carouselStates = Dict.fromList <| List.map (\n -> (n,Carousel.initialState)) (List.range 0 (numCarousels-1)) 

                          , modalVisibilities = Dict.fromList <| List.map (\n -> (n,Modal.hidden)) (List.range 0 (numPopUps-1)) 

                          , searchString = "" 

                          , searchList = [] 

                          } 

    in 

        ( model, Cmd.batch [ urlCmd, navCmd ] ) 

 

 

 

subscriptions : Model -> Sub Msg 

subscriptions model = 

    --ADD ACCORDION - now that there are multiple subscriptions, they need to be grouped in Sub.batch 

    Sub.batch [Navbar.subscriptions model.navbarState NavbarMsg 

              , Sub.batch <| List.map (\(n, s) -> Accordion.subscriptions s (AccordionMsg n)) <| Dict.toList model.accordionStates 

              , Sub.batch <| List.map (\(n, s) -> Carousel.subscriptions s (CarouselMsg n)) <| Dict.toList model.carouselStates 

              , onAnimationFrame ( \ posix -> Tick ((Time.posixToMillis posix |> toFloat) * 0.001) ) 

              ] 

 

 

update : Msg -> Model -> ( Model, Cmd Msg ) 

update msg model = 

    case msg of 

        ClickedLink req -> 

             case req of 

                 Browser.Internal url -> 

                     ( model, Navigation.pushUrl model.navKey <| Url.toString url ) 

 

                 Browser.External href -> 

                     ( model, Navigation.load href ) 

 

 

        UrlChange url -> 

            urlUpdate url model 

 

        NavbarMsg state -> 

            ( { model | navbarState = state } 

            , Cmd.none 

            ) 

 

        NoOp -> (model, Cmd.none) 

 

        --ADD ACCORDION 

        AccordionMsg id state -> 

            ( { model | accordionStates = Dict.insert id state model.accordionStates } 

            , Cmd.none 

            ) 

 

        --ADD CAROUSEL 

        CarouselMsg id cMsg -> 

            ( {model | carouselStates = Dict.update id 

                                            (\m -> case m of 

                                                    Just s -> Just <| Carousel.update cMsg s 

                                                    Nothing -> Nothing 

                                            ) model.carouselStates 

 

             } 

            , Cmd.none 

            ) 

 

        --ADD MODAL 

        CloseModal id -> 

            ( { model | modalVisibilities = Dict.insert id Modal.hidden model.modalVisibilities } , Cmd.none ) 

 

        ShowModal id -> 

            ( { model | modalVisibilities = Dict.insert id Modal.shown model.modalVisibilities } , Cmd.none ) 

 

        Tick t -> ({ model | time = t }, Cmd.none) 

         

         

        UpdateSearch str -> 

                        let searchString = String.filter filterChars str 

                            listWords = (String.split " " (String.toLower searchString)) 

                            firstList = List.take ((List.length listWords)-1) listWords 

                            lastList = List.drop ((List.length listWords)-1) listWords 

                            searchList = wordFilter (List.filter commonWrds firstList)++lastList --filter out common words only from fully typed keyword 

                        in 

                        ({ model | searchString = searchString 

                                 , searchList = searchList 

                                --, searching = True 

                                --, searchBeginT = if model.searching then model.searchBeginT else model.t 

                                --, searchContinuesT = model.t 

                                --, menuState = Closed 

                        }, Cmd.none ) 

 

filterChars char = if Char.isLower char || Char.isUpper char || Char.isDigit char || char == ' ' then True else False 

 

commonWrds wrd = case wrd of 

                  "the" -> False 

                  "best" -> False 

                  "with" -> False 

                  "about" -> False 

                  "and" -> False 

                  "as" -> False 

                  "at" -> False 

                  "a" -> False 

                  "to" -> False 

                  "in" -> False 

                  "by" -> False 

                  "on" -> False 

                  "for" -> False 

                  "from" -> False 

                  "greatest" -> False 

                  "ever" -> False 

                  "school" -> False 

                  "grade" -> False 

                  "catholic" -> False 

                  "public" -> False 

                  "junior" -> False 

                  "senior" -> False 

                  "elementary" -> False 

                  "secondary" -> False 

                  "district" -> False 

                  "" -> False 

                  _ -> True 

 

resetViewport : Cmd Msg 

resetViewport = 

  Task.perform (\_ -> NoOp) (Dom.setViewport 0 0) 

 

 

urlUpdate : Url -> Model -> ( Model, Cmd Msg ) 

urlUpdate url model = 

    case decode url of 

        Nothing -> 

            ( { model | page = NotFound }, resetViewport ) 

 

        Just route -> 

            ( { model | page = route }, resetViewport ) 

 

decode : Url -> Maybe Page 

decode url = 

    { url | path = Maybe.withDefault "" url.fragment, fragment = Nothing } 

    |> UrlParser.parse routeParser 

 

routeParser : Parser (Page -> a) a 

routeParser = 

    UrlParser.oneOf 

        [ UrlParser.map Home top 

        ] 

 

 

view : Model -> Browser.Document Msg 

view model = 

    { title = case model.page of 

          Home -> 

            title 

 

          NotFound -> 

              "Page Not Found" 

    , body = 

        [ 

          Html.node "link" [attribute "rel" "stylesheet", href "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"] [] 

        , Html.node "link" [attribute "rel" "stylesheet", href "https://documents.mcmaster.ca/www/cdn/css/1.0/mcm-bw.css"] [] 

        ,  Html.div [] 

            [ mainContent model 

            ] 

        ,  

         if (List.member "feline" model.searchList) then felineCarousel model 

         

        else if (List.member "Marbled Cat" model.searchList) then marbCatCarousel model 

        else if (List.member "Lion" model.searchList) then lionCarousel model 

        else if (List.member "Cougar" model.searchList) then cougarCarousel model 

        else if (List.member "Leopard" model.searchList) then leopardCarousel model 

        else if (List.member "Tiger" model.searchList) then tigerCarousel model 

        else if (List.member "Cheetah" model.searchList) then cheetahCarousel model 

        else if (List.member "Caracal" model.searchList) then caracalCarousel model 

        else if (List.member "Canada Lynx" model.searchList) then canLynxCarousel model 

        else if (List.member "Margay" model.searchList) then margayCarousel model 

        else if (List.member "Jaguar" model.searchList) then jaguarCarousel model 

          else acord model 

        , acord model  

        ] 

     

    } 

 

mainContent : Model -> Html Msg 

mainContent model = 

    Grid.container [] <| 

        case model.page of 

            Home -> 

                page model 

 

            NotFound -> 

                pageNotFound 

 

wordFilter : List String -> List String 

wordFilter word = case word of 

  x::xs -> if (String.contains "marb" x || String.contains "bl" x || String.contains "led" x  ||String.contains "cat" x ) then 

    "Marbled Cat":: (wordFilter xs) 

    else if (String.contains "lio" x || String.contains "io" x || String.contains "on" x) then 

    "Lion":: (wordFilter xs) 

    else if (String.contains "cou" x || String.contains "oug" x || String.contains "gar" x ||String.contains "gar" x) then 

    "Cougar":: (wordFilter xs) 

    else if (String.contains "le" x || String.contains "pa" x || String.contains "op" x || String.contains "rd" x || String.contains "leop" x) then 

    "Leopard":: (wordFilter xs) 

    else if (String.contains "ti" x || String.contains "ge" x || String.contains "ig" x || String.contains "er" x) then 

    "Tiger":: (wordFilter xs) 

    else if (String.contains "ch" x || String.contains "ee" x || String.contains "ta" x) then 

    "Cheetah":: (wordFilter xs) 

    else if (String.contains "car" x || String.contains "ara" x || String.contains "rac" x || String.contains "cal" x) then 

    "Caracal":: (wordFilter xs) 

    else if (String.contains "can" x || String.contains "nad" x || String.contains "da" x || String.contains "ly" x || String.contains "yn" x || String.contains "nx" x) then 

    "Canada Lynx":: (wordFilter xs) 

    else if (String.contains "mar" x || String.contains "rg" x || String.contains "gay" x || String.contains "ay" x) then 

    "Margay":: (wordFilter xs) 

    else if (String.contains "ja" x || String.contains "ag" x ||String.contains "gua" x || String.contains "uar" x) then 

    "Jaguar":: (wordFilter xs) 

    else if (String.contains "fe" x || String.contains "lin" x || String.contains "ine" x) then 

    "feline":: (wordFilter xs) 

    else 

    x:: (wordFilter xs) 

 

  _ -> [] 

 

pageNotFound : List (Html Msg) 

pageNotFound = 

    [ Html.h1 [Spacing.my4] [ Html.text "Not found" ] 

    , Html.text "Sorry, couldn't find that page" 

    ] 

 

 

 
