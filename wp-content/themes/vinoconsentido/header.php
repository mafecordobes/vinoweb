<!DOCTYPE html>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1.0, initial-scale=1.0">
    <title><?php wp_title('-', true, 'right'); ?></title>
    <meta name="description" content="<?php bloginfo( 'description' ); ?>">
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/slick/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/assets/slick/slick/slick-theme.css"/>
    <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/assets/favicon.ico">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

    <!-- FIX HTML STYLES IE9 -->
    <!--[if gte IE 9]>
    <style type="text/css">
        .gradient {
            filter: none;
        }
    </style>
    <![endif]-->

    <!-- FIX HTML JS-->
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Montserrat:400,500,600" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.2/fullpage.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/3.0.2/fullpage.extensions.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/numscroller-1.0.js"></script>

    <script type="text/javascript">
        var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";
    </script>

    <script src="<?php echo get_template_directory_uri(); ?>/js/basic.js"></script>
    <style type="text/css">
        blockquote {
            quotes: "\201C""\201D""\2018""\2019"
        }
    </style>

    <?php wp_enqueue_script("jquery"); ?>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/slick/slick/slick.min.js"></script>
</head>

<body>
    <header>
        <?php
            $logoMenu = get_field( "logo", 9 );
        ?>
        <div class="col-xs-12 dv-top-bar">
            <div class="row ">
                <nav class="navbar navbar-inverse dv-header-container">
                    <div class="container-fluid dv-main-menu">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand dv-logo" href="#">
                                <img src="<?php echo $logoMenu; ?>" alt="Vino con sentido Logo"/>
                            </a>
                        </div>
                        <div class="dv-menu-right">
                            <div class="collapse navbar-collapse" id="myNavbar">
                                <?php
                                // Include WordPress Menu
                                wp_nav_menu( array(
                                    'theme_location' => 'primary',
                                    'container'      => false,
                                    'menu_class'     => "nav navbar-nav"
                                ) );
                                ?>
    
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>