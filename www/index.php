



<!DOCTYPE html> 
<html lang="en"> 
    <head>
        <title>How websites track you</title>
        <meta charset="UTF-8">
        <meta name="description" content="Learn how digital fingerprinting works, using the TOR browser negates it.">
        <link rel="stylesheet" href="fonts\fontsyles.css"/>
        <script defer src="scripts\resolution.js"></script> <!--Took 2 hours to find it out that www\scripts\resolution.js doesn't work.-->
        <script defer src="scripts\GetBrowser.js"></script>
        
    </head>
    <body> 
        <header>
            <nav>
               
            </nav>
        </header>
        <main>
            <article>
                <div class="grid">
                    <section>
                        <h2 id="resolution"> </h2>
                        <noscript>  <h2> Javascript is Disabled, Unable to Detect Resolution. </h2> </noscript>
                    </section>
                    <section>
                        <h2 id="bowser_browser"> </h2>
                        <noscript> <h2> Javascript is Disabled, Unable to Detect Browser </h2> </noscript>
                    </section>
                    <section>
                        <?php $remote = isset($_SERVER["REMOTE_ADDR"]) ? $_SERVER["REMOTE_ADDR"] : 'localhost'; ?>
                        <h2> <?php echo "Your IP: $remote"; //Double quotes can embed variables, no concat. ?> </h2> 
                    </section>
                </div>
                <h1 class="grid"> What does this mean? </h1>
                <p class="info"> The three pieces of data you see above are some of the hundreds of pieces of data that almost every website uses to identify you in a process called digital fingerprinting.  Often this data is collected for legitmate reasons.  Usually, the above are used to identify and ban problematic users, fix glitches specific to certain browsers, or for knowing how to display a webpage based on screen size.  However, they are often collected for the sake of selling data to advertisers or whoever else is interested.  Many people would rather their browsing stays private, whether they are a journalist who wants to be safe in a country without freedom of press, or someone who just finds the idea of being tracked creepy.  To know how to stop websites from tracking you, it is important to understand how fingerprinting works.</p>
                <p class="info"> Imagine you are trying to keep your identity hidden from a store owner.  Everyday, the owner writes down data about you.  It could be your shoes, shirt, pants, hair, or whatever else.  If you don't want the owner to recognize you, then you could buy completely new clothing, and wear a mask and sunglasses.  It is the same on the internet.  Change your IP address with a <a href="https://mullvad.net/en/what-is-vpn/">VPN</a> and use a different browser than your regular one and you will have an entirely different digital fingerprint.  However, this still leaves a distinct fingerprint, certainly different from your normal one, but it doesn't exactly blend in.  And of course, there is always the chance that some unforseen data point can still identify you.  However, there is an easy to use browser designed to mitigate these risks. </p>
                <h1 class="grid"> How TOR works </h1>
                <p class="info"><a href="https://www.torproject.org/">Tor</a> (standing for The Onion Router) is the simplest solution to this problem.  It's name comes from how it keeps your internet traffic private.  First, your data is layered (like an onion) in encryption three times.  Then it is sent through three volunteer run servers that each have their own decryption key (see the diagram below).  The advantage of this approach is that by the time your data gets to its destination, it is extremely difficult to track back to its source.  And by the time your data is visible to the last volunteer server, it has no idea where the data came from.  These steps make your IP address and more very secure. </p>
                <!-- Wouldn't work unless I divved it --><div class="tordiagram"> <img src="assets/tor-network.jpg" alt="Couldn't load TOR network diagram"> </div>
                <p class="info"> But that is not what makes Tor the perfect tool to avoid fingerprinting.  That quality comes from its users all agreeing not to modify the browser with addons or themes to differentiate their fingerprints.  Going back to the store analogy, using Tor is like wearing a uniform that hundreds of other people are using at the same time.  You blend in with the crowd. However, it comes at the cost of convenience.  Tor is frequently blocked by common websites as it's secuirty features attract hackers, and it is extremely slow compared to normal browsing as a result of routing your traffic through three extra servers.  So, while it is recommended to try it out, it is not viable for everyday use.  Still, if you're an activist or journalist being targeted by your government, the downsides are worth it. </p>
            </article>
        </main>
        <footer>
            <h3> <pre> Thank you for reading, 
-Written and programmed by D.M. </pre> </h3>   
        </footer>
    </body>
</html>