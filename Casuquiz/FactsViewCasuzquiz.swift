

import SwiftUI

struct FactsViewCasuzquiz: View {
    @State var timer: Timer?
    @State var selectedFact: FactCasuzquiz? = facts.randomElement()!
    @State var showSheet = false
    
    var wtgv = 14143514514
    var wtgwvtgv = "wtgvwtgv"
    func wtgcetghvbtwvwtg() -> Float { return 14514.1454 }
    func wrfcete() { print("wrcfrfccr") }
    private struct wrfccwrRFC {}
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 22, weight: .regular, color: .hex("F59337"))
                                .padding(.top, 16)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.bottom, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("F59337"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFont(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("F59337"))
                    
                    Rectangle()
                        .foregroundColor(.hex("222D4F"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("222D4F")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewCasuzquiz(showLoading: false, selectedTab: .facts)
}


struct FactCasuzquiz {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
    
    var wtgv = 14143514514
    var wtgwvtgv = "wtgvwtgv"
    func wtgcetghvbtwvwtg() -> Float { return 14514.1454 }
    func wrfcete() { print("wrcfrfccr") }
    private struct wrfccwrRFC {}
}

fileprivate let facts: [FactCasuzquiz] = [
    FactCasuzquiz(title: "The Singing Sand Dunes", content: "In certain deserts, such as the Namib and the Gobi, sand dunes can produce a unique humming or singing sound. This phenomenon occurs when the sand grains slide against each other, causing vibrations that resonate through the dune. The pitch and volume of the sound depend on the size and shape of the grains as well as the dune's size."),
        
        FactCasuzquiz(title: "The Upside-Down Waterfall", content: "The Kinder Downfall in the Peak District of England is a waterfall that often flows upward during strong winds. As the water is pushed by the wind, it creates a spectacular illusion of an upside-down waterfall, attracting numerous visitors."),
        
        FactCasuzquiz(title: "The Boiling River", content: "Deep in the Amazon rainforest of Peru lies the Shanay-Timpishka, a river that can reach boiling temperatures of up to 93°C (200°F). Its heat is thought to come from geothermal activity underground. The river is sacred to the indigenous people and is an incredibly rare natural phenomenon."),
        
        FactCasuzquiz(title: "The Bioluminescent Bays", content: "In places like Vieques, Puerto Rico, certain bays glow at night due to bioluminescent microorganisms called dinoflagellates. These tiny creatures emit light when disturbed, creating a magical spectacle as the water shimmers with every movement."),
        
        FactCasuzquiz(title: "The Giant’s Causeway", content: "The Giant's Causeway in Northern Ireland is a natural wonder formed by volcanic activity around 60 million years ago. It features thousands of interlocking basalt columns, most of which are hexagonal in shape. Legend has it that the structure was built by a giant named Finn McCool."),
        
        FactCasuzquiz(title: "The Great Blue Hole", content: "Located off the coast of Belize, the Great Blue Hole is a massive underwater sinkhole. Its nearly perfect circular shape and deep blue color make it a popular diving spot. Scientists believe it formed during the last Ice Age, when the sea level was much lower."),
        
        FactCasuzquiz(title: "The Crooked Forest", content: "The Crooked Forest in Poland features around 400 oddly-shaped pine trees with curved trunks. The cause of their unusual shape is still debated, with theories ranging from human intervention to natural phenomena."),
        
        FactCasuzquiz(title: "The Lake of Exploding Ice", content: "Lake Abraham in Alberta, Canada, is known for its frozen bubbles. These are caused by methane gas trapped under the ice, which forms beautiful, layered patterns. When the ice melts in spring, the gas can escape, sometimes igniting if lit."),
        
        FactCasuzquiz(title: "The Rainbow Eucalyptus", content: "The Rainbow Eucalyptus tree is native to the Philippines and is known for its multicolored bark. As the bark peels away in strips, it reveals bright green layers that age into shades of blue, purple, orange, and maroon."),
        
        FactCasuzquiz(title: "The Door to Hell", content: "The Darvaza gas crater in Turkmenistan, known as the 'Door to Hell,' has been burning continuously since 1971. This fiery pit was created when a natural gas field collapsed, and geologists set it on fire to prevent the spread of gas."),
    FactCasuzquiz(title: "The Blood Falls", content: "In Antarctica, the Taylor Glacier is home to 'Blood Falls,' a stream of red water that seeps out of the ice. The color comes from iron-rich water that oxidizes when exposed to air, creating the eerie blood-like appearance."),
        
        FactCasuzquiz(title: "The Sailing Stones", content: "In Death Valley, California, rocks mysteriously move across the desert floor, leaving long trails behind them. This phenomenon is caused by thin layers of ice and strong winds, which allow the rocks to slide on the surface."),
        
        FactCasuzquiz(title: "The Glowworm Caves", content: "The Waitomo Caves in New Zealand are illuminated by thousands of glowworms that emit a magical blue light. These glowworms are actually the larvae of a type of fungus gnat and use their light to attract prey."),
        
        FactCasuzquiz(title: "The Underwater Forest", content: "Lake Kaindy in Kazakhstan hides a submerged forest beneath its surface. The trees, preserved by the cold water, appear like ghostly spires rising from the depths."),
        
        FactCasuzquiz(title: "The Ice Caves of Iceland", content: "Iceland is famous for its stunning ice caves, formed by melting glacial water. The caves are known for their vibrant blue hues and ever-changing shapes, making each visit unique."),
        
        FactCasuzquiz(title: "The Desert Bloom", content: "In Chile's Atacama Desert, one of the driest places on Earth, rare rain events cause the desert to burst into a colorful bloom of wildflowers. This phenomenon, known as 'Desierto Florido,' happens every few years."),
        
        FactCasuzquiz(title: "The Fairy Circles", content: "In the Namib Desert, mysterious circular patches of barren land, called fairy circles, dot the landscape. Scientists believe they are caused by a combination of termite activity and water competition among plants."),
        
        FactCasuzquiz(title: "The Everlasting Fire", content: "In Turkey, the 'Chimaera' is a natural eternal flame fueled by methane gas seeping through cracks in the Earth's surface. It has been burning for thousands of years and is referenced in ancient mythology."),
        
        FactCasuzquiz(title: "The Pink Lake", content: "Lake Hillier in Australia is famous for its vibrant pink color. The unique hue is caused by the presence of specific algae and bacteria. Interestingly, the water retains its pink color even when bottled."),
        
        FactCasuzquiz(title: "The Blue Volcano", content: "Indonesia's Kawah Ijen volcano emits stunning blue flames at night. This phenomenon is caused by the combustion of sulfuric gases that emerge from the volcano’s vents and ignite in the air."),
        
        FactCasuzquiz(title: "The Frost Flowers", content: "In extremely cold conditions, 'frost flowers' form on the surface of sea ice or thin lake ice. These delicate, ice-crystal formations are created when water vapor rises and instantly freezes upon contact with cold air."),
        
        FactCasuzquiz(title: "The Living Bridges", content: "In the Indian state of Meghalaya, locals grow 'living bridges' using the roots of rubber trees. These natural structures can last for hundreds of years and become stronger over time."),
        
        FactCasuzquiz(title: "The Iceberg Alley", content: "Off the coast of Newfoundland, Canada, Iceberg Alley is a stretch of ocean where massive icebergs drift south from Greenland. These towering ice formations are a breathtaking sight."),
        
        FactCasuzquiz(title: "The Moeraki Boulders", content: "The Moeraki Boulders in New Zealand are large, spherical stones scattered along the beach. These fascinating formations are the result of natural erosion over millions of years."),
        
        FactCasuzquiz(title: "The Chocolate Hills", content: "The Chocolate Hills of the Philippines are more than 1,200 perfectly cone-shaped hills. During the dry season, the grass covering them turns brown, giving them their chocolate-like appearance."),
        
        FactCasuzquiz(title: "The Salt Cathedral", content: "In Zipaquirá, Colombia, a salt mine has been transformed into an underground cathedral. This remarkable structure is carved entirely out of salt rock and attracts thousands of visitors each year."),
        
        FactCasuzquiz(title: "The Great Red Spot", content: "On Jupiter, the Great Red Spot is a massive storm that has been raging for at least 350 years. It is so large that it could fit multiple Earths inside it."),
        
        FactCasuzquiz(title: "The Eye of the Sahara", content: "The Richat Structure, or 'Eye of the Sahara,' is a massive geological formation in Mauritania. Its concentric rings, visible from space, were once thought to be a meteorite impact but are now believed to be the result of natural erosion."),
        
        FactCasuzquiz(title: "The Fire Rainbow", content: "Fire rainbows, or circumhorizontal arcs, are rare optical phenomena caused by sunlight passing through ice crystals in cirrus clouds. They appear as vibrant, rainbow-like streaks in the sky."),
        
        FactCasuzquiz(title: "The Devil’s Kettle", content: "At Minnesota’s Judge C.R. Magney State Park, the Brule River splits into two streams. One flows downstream, while the other vanishes into a hole known as the Devil’s Kettle. Scientists are still puzzled by where the water goes."),
    
    FactCasuzquiz(title: "The Immortal Jellyfish", content: "The Turritopsis dohrnii, often called the 'immortal jellyfish,' has the unique ability to revert its cells to an earlier stage of development when threatened, potentially avoiding death and restarting its life cycle indefinitely."),
        
        FactCasuzquiz(title: "A Spoonful of Neutron Star", content: "If you could take a spoonful of material from a neutron star, it would weigh about 6 billion tons on Earth due to the extreme density of the star's matter."),
        
        FactCasuzquiz(title: "The Human Brain’s Power", content: "The human brain generates about 23 watts of power while awake—enough to power a small lightbulb. Despite this, it consumes only about 20% of the body's energy."),

        FactCasuzquiz(title: "The First Computer Bug", content: "The term 'computer bug' originated in 1947 when a real moth was found stuck in a Harvard Mark II computer, causing a malfunction."),
        
        FactCasuzquiz(title: "The Internet’s Weight", content: "If you could weigh the entire internet, it would be about the same weight as a large strawberry. This is based on the energy and electrons used in transferring data."),
        
        FactCasuzquiz(title: "AI vs. Human Brain", content: "The most advanced supercomputers today are still far less efficient than the human brain, which can perform about 1 exaflop of computations while consuming only 20 watts of power."),

        FactCasuzquiz(title: "Napoleon’s Short Height Myth", content: "Napoleon Bonaparte wasn’t actually short. The myth comes from a confusion between French and British measurements. He was around 5'7\" tall, average for his time."),
        
        FactCasuzquiz(title: "The Longest War", content: "The longest war in history lasted 335 years and was fought between the Netherlands and the Isles of Scilly. Interestingly, there were no casualties."),
        
        FactCasuzquiz(title: "Cleopatra and Time", content: "Cleopatra lived closer in time to the invention of the iPhone than to the construction of the Great Pyramid of Giza."),

        FactCasuzquiz(title: "The Dark Side of the Moon", content: "The 'dark side of the moon' is a misnomer. Both sides receive sunlight; the term simply refers to the side we never see from Earth."),
        
        FactCasuzquiz(title: "One Day on Venus", content: "A day on Venus (243 Earth days) is longer than its year (225 Earth days), making its rotation incredibly slow."),
        
        FactCasuzquiz(title: "The Largest Volcano", content: "The largest volcano in the solar system is Olympus Mons on Mars. It’s about 3 times the height of Mount Everest and spans the size of Arizona."),

        FactCasuzquiz(title: "Octopus Hearts", content: "An octopus has three hearts. Two pump blood to the gills, and one pumps it to the rest of the body. When swimming, the heart pumping to the body stops."),
        
        FactCasuzquiz(title: "Bananas Are Berries", content: "Botanically, bananas are classified as berries, while strawberries are not."),
        
        FactCasuzquiz(title: "Sharks and Trees", content: "Sharks have existed on Earth longer than trees. Sharks appeared about 400 million years ago, while the first trees appeared about 350 million years ago."),

        FactCasuzquiz(title: "The Eiffel Tower Changes Height", content: "The Eiffel Tower can grow taller by about 6 inches during the summer due to the expansion of the metal in heat."),
        
        FactCasuzquiz(title: "The First Movie", content: "The world’s first motion picture, 'Roundhay Garden Scene,' was filmed in 1888 and lasts just 2.11 seconds."),
        
        FactCasuzquiz(title: "The Mona Lisa’s Eyebrows", content: "Leonardo da Vinci’s Mona Lisa has no eyebrows because it was common at the time to paint eyebrows so finely that they would often fade away over time."),

        FactCasuzquiz(title: "The Infinity Symbol", content: "The infinity symbol (∞) was introduced in 1655 by mathematician John Wallis to represent a concept that has no end."),
        
        FactCasuzquiz(title: "0 as a Number", content: "The concept of zero as a number was first used by ancient Indian mathematicians, with the earliest recorded use dating back to the 5th century."),
        
        FactCasuzquiz(title: "Pi Is Infinite", content: "The number pi (π) has been calculated to trillions of digits and shows no repeating pattern, making it an infinite, irrational number."),
    
    FactCasuzquiz(title: "The World's Quietest Room", content: "The quietest place on Earth is an anechoic chamber located at Orfield Laboratories in Minnesota. This room is designed to absorb 99.99% of sound waves, creating an environment so silent that visitors often hear sounds they normally wouldn’t notice, such as their heartbeat, the blood circulating in their veins, or even the creaking of their own bones. Spending extended time in this room can be disorienting, and most people can only endure it for a few minutes."),
        FactCasuzquiz(title: "Honey Never Spoils", content: "Honey is one of the few natural foods that doesn’t spoil, thanks to its unique chemical composition. With a low water content and high acidity, honey creates an environment where bacteria and microorganisms cannot thrive. Archaeologists have uncovered jars of honey in ancient Egyptian tombs that are over 3,000 years old and still perfectly edible, proving its incredible longevity."),
        FactCasuzquiz(title: "The Speed of a Sneeze", content: "A sneeze is a powerful reflex that expels air and particles from your nose and mouth at speeds of up to 100 miles per hour. This reaction is the body’s way of clearing irritants from the nasal passages, and it can send up to 100,000 tiny droplets into the air. The sheer force and speed make sneezes surprisingly efficient at spreading germs."),
        FactCasuzquiz(title: "The Longest Word", content: "The longest word in the English language is the chemical name for titin, a protein essential for muscle contraction. Its full name is 189,819 letters long and takes over three hours to pronounce. While this word is used primarily in scientific contexts, it demonstrates the incredible complexity of proteins and how they are named."),
        FactCasuzquiz(title: "Space Smells Like Steak", content: "Astronauts returning from spacewalks have reported that space has a unique smell, often described as resembling seared steak, welding fumes, or burnt metal. This smell comes from the interaction between space particles and the materials on astronauts’ suits when exposed to the vacuum of space. Though it cannot be smelled directly in space, the scent is noticeable when they re-enter their spacecraft."),
        FactCasuzquiz(title: "Sloths and Their Fur", content: "The fur of a sloth is a unique ecosystem that hosts a variety of organisms, including algae, fungi, and insects like moths. The greenish tint from the algae helps sloths camouflage themselves in the trees, protecting them from predators. The algae also provide additional nutrients to the sloth when they groom themselves by licking their fur."),
        FactCasuzquiz(title: "Paper Can Be Folded", content: "It is a common belief that a piece of paper can only be folded seven times, but this limit applies only to regular-sized sheets. Using a much larger piece of paper and advanced techniques, a group of physicists managed to fold paper 12 times. Each fold exponentially increases the paper’s thickness, making it challenging to continue."),
        FactCasuzquiz(title: "Sharks Don’t Have Bones", content: "Unlike most fish, sharks have skeletons made entirely of cartilage, the same flexible tissue found in human noses and ears. This lightweight structure allows them to be more buoyant and agile in water, making them highly efficient predators. The lack of bones also means that fossilized shark skeletons are rare, as cartilage decomposes quickly."),
        FactCasuzquiz(title: "Ants Never Sleep", content: "Ants do not experience sleep as humans do. Instead, they have short periods of inactivity where their bodies enter a state of rest, but they remain alert to danger or tasks. Some ant species even work in shifts to ensure that the colony is always active, demonstrating their extraordinary teamwork and efficiency."),
        FactCasuzquiz(title: "Water Bears in Space", content: "Tardigrades, also known as water bears, are microscopic creatures that can survive some of the harshest conditions imaginable, including extreme heat, freezing temperatures, and the vacuum of space. They achieve this by entering a state called cryptobiosis, where they lose almost all water in their bodies and shut down metabolic processes, allowing them to withstand environments that would be fatal to most life forms."),
        FactCasuzquiz(title: "The Moon Shrinks", content: "The Moon is gradually shrinking as its interior cools and contracts, causing its surface to form cliffs called thrust faults. These cliffs are evidence of 'moonquakes,' which can measure up to 5 on the Richter scale. Unlike earthquakes, moonquakes occur due to the Moon’s slow cooling rather than tectonic plate movements."),
        FactCasuzquiz(title: "Pineapple Takes Time", content: "Growing a pineapple is a lengthy process that requires patience. After planting, it takes around two years for a pineapple plant to produce a single fruit. Once harvested, the plant can grow additional fruits, but the process remains slow. Despite this, pineapples are highly valued for their sweet taste and health benefits."),
        FactCasuzquiz(title: "Butterflies Taste With Their Feet", content: "Butterflies have taste sensors on their feet, allowing them to detect the chemical composition of surfaces they land on. This ability helps them identify plants that are suitable for laying eggs or feeding. When a butterfly lands on a leaf, it immediately knows if it contains the necessary nutrients for its larvae.")
]
