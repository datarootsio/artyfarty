[![Build
Status](https://travis-ci.org/Bart6114/artyfarty.svg?branch=master)](https://travis-ci.org/Bart6114/artyfarty)
[![codecov](https://codecov.io/gh/Bart6114/artyfarty/branch/master/graph/badge.svg)](https://codecov.io/gh/Bart6114/artyfarty)

> documentation generated using version 0.0.1

`artyfarty` focuses on providing easy access to a few 'nice' ggplot
theme, it also includes a number of predefined palettes and watermark
convenience functions.

`artyfarty` is a **work in progress**. For now you can install the
development version using `devtools`.

    devtools::install_github('bart6114/artyfarty')

Available themes
================

farty
-----

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_farty() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("flat"))

![](README_files/figure-markdown_strict/unnamed-chunk-3-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_farty() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("flat"))

![](README_files/figure-markdown_strict/unnamed-chunk-3-2.png)

scientific
----------

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_scientific() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("five38"))

![](README_files/figure-markdown_strict/unnamed-chunk-4-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_scientific() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("five38"))

![](README_files/figure-markdown_strict/unnamed-chunk-4-2.png)

monokai
-------

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_monokai() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("monokai"))

![](README_files/figure-markdown_strict/unnamed-chunk-5-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_monokai() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("monokai"))

![](README_files/figure-markdown_strict/unnamed-chunk-5-2.png)

monokai\_full
-------------

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_monokai_full() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("monokai"))

![](README_files/figure-markdown_strict/unnamed-chunk-6-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_monokai_full() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("monokai"))

![](README_files/figure-markdown_strict/unnamed-chunk-6-2.png)

flat
----

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_flat() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("flat"))

![](README_files/figure-markdown_strict/unnamed-chunk-7-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_flat() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("flat"))

![](README_files/figure-markdown_strict/unnamed-chunk-7-2.png)

five38
------

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_five38() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("five38"))

![](README_files/figure-markdown_strict/unnamed-chunk-8-1.png)

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_five38(grid_lines = "horizontal") +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("five38")) +
      coord_flip()

![](README_files/figure-markdown_strict/unnamed-chunk-8-2.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_five38() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("five38"))

![](README_files/figure-markdown_strict/unnamed-chunk-8-3.png)

retro
-----

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_retro() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("retro"))

![](README_files/figure-markdown_strict/unnamed-chunk-9-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_retro() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("retro"))

![](README_files/figure-markdown_strict/unnamed-chunk-9-2.png)

ft
--

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_ft() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("ft"))

![](README_files/figure-markdown_strict/unnamed-chunk-10-1.png)

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_ft(grid_lines = "horizontal") +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("ft")) +
      coord_flip()

![](README_files/figure-markdown_strict/unnamed-chunk-10-2.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_ft() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("ft"))

![](README_files/figure-markdown_strict/unnamed-chunk-10-3.png)

bain
----

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_bain() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("bain"))

![](README_files/figure-markdown_strict/unnamed-chunk-11-1.png)

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_bain(grid_lines = "horizontal") +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("bain")) +
      coord_flip()

![](README_files/figure-markdown_strict/unnamed-chunk-11-2.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_bain() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("bain"))

![](README_files/figure-markdown_strict/unnamed-chunk-11-3.png)

economist
---------

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_economist() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("economist"))

![](README_files/figure-markdown_strict/unnamed-chunk-12-1.png)

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_economist(grid_lines = "horizontal") +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("economist")) +
      coord_flip()

![](README_files/figure-markdown_strict/unnamed-chunk-12-2.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_economist() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("economist"))

![](README_files/figure-markdown_strict/unnamed-chunk-12-3.png)

empty
-----

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_empty() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("flat"))

![](README_files/figure-markdown_strict/unnamed-chunk-13-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_empty() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("flat"))

![](README_files/figure-markdown_strict/unnamed-chunk-13-2.png)

Palettes
========

A number of palettes are available through the `pal()` function. A
visual overview can be acquired as follows:

    plot_palettes()

![](README_files/figure-markdown_strict/unnamed-chunk-14-1.png)

Check the `?pal()` documentation for more specifications.

Watermarks
==========

A watermark might not add much value to a plot, but there are times that
you just need to be able to to add a simple watermark.

    ggplot(diamonds) +
      geom_bar(aes(cut, fill=cut)) +
      theme_retro() +
      ggtitle("Sparkly stones") +
      scale_fill_manual(values = pal("retro")) +
      watermark_img("vignettes/Rlogo.png", alpha=.4, location="tl")

![](README_files/figure-markdown_strict/unnamed-chunk-15-1.png)

    ggplot(mtcars) +
      geom_point(aes(x=wt, y=qsec, color=as.factor(cyl))) +
      theme_ft() +
      ggtitle("Vroom") +
      scale_color_manual(values = pal("ft")) +
      watermark_txt("watermark", location="br")

![](README_files/figure-markdown_strict/unnamed-chunk-16-1.png)
