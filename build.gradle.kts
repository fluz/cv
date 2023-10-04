/*
 * This file was generated by the Gradle 'init' task.
 *
 * This is a general purpose Gradle build.
 * To learn more about Gradle by exploring our Samples at https://docs.gradle.org/8.3/samples
 */

import java.nio.file.Files

tasks.register<Exec>("Markdown") {
    logger.info("Generating Markdown CV version")
    

    // Store target directory into a variable to avoid project reference in the configuration cache
    val directory = file("build/markdown")

    doFirst {
        Files.createDirectories(directory.toPath())
    }
    commandLine("./tools/jinja2-render", "-y", "fluz.yml",
                "-o", "build/markdown/cv.md", 
                "markdown/cv.md.jinja"
                )
}

tasks.register<Exec>("MarkdownHtml") {
    logger.info("Generating Markdown HTML CV version")
    dependsOn("Markdown")

    commandLine("pandoc", "-f", "markdown", "-t", "html", 
                "--metadata", "title='Fernando Luz'", "-s", 
                "--template", "pandoc-bootstrap/template.html", "--css", "pandoc-bootstrap/template.css",
                "-o", "build/markdown/cv.html", 
                "build/markdown/cv.md")

}

tasks.register<Exec>("MarkdownTxt") {
    logger.info("Generating Markdown TXT CV version")
    dependsOn("Markdown")

    commandLine("pandoc", "-f", "markdown", "-t", "plain", 
                "-V", "'title:Fernando Luz'", "-s", 
                "-o", "build/markdown/cv.txt", 
                "build/markdown/cv.md")

}

tasks.register<Exec>("EuropassTex") {
    logger.info("Generation Europass CV [tex]")

    // Store target directory into a variable to avoid project reference in the configuration cache
    val directory = file("build/europasscv")

    doFirst {
        Files.createDirectories(directory.toPath())
    }
    commandLine("./tools/jinja2-render", "-y", "fluz.yml", 
                "-o", "build/europasscv/cv.tex", 
                "europasscv/cv.tex.jinja")

}

tasks.register<Exec>("EuropassPdf") {
    logger.info("Generation Europass CV [pdf]")
    dependsOn("EuropassTex")

    commandLine("cp", "europasscv/europasscv.cls", "build/europasscv/europasscv.cls")
    commandLine("./tools/cddo", "build/europasscv/cv.tex", "${project.rootDir}/tools/latexer")

}

tasks.register<Exec>("DevResume") {
    logger.info("Generating DevResume")

    // Store target directory into a variable to avoid project reference in the configuration cache
    val directory = file("build/DevResume")

    doFirst {
        Files.createDirectories(directory.toPath())
    }
    commandLine("./tools/jinja2-render", "-y", "fluz.yml",
                "-o", "build/DevResume/index.html", 
                "DevResume/cv.html.jinja")
}

tasks.register<Exec>("CeeVee") {
    logger.info("Generating CeeVee")

    // Store target directory into a variable to avoid project reference in the configuration cache
    val directory = file("build/ceevee")

    doFirst {
        Files.createDirectories(directory.toPath())
    }
    commandLine("./tools/jinja2-render", "-y", "fluz.yml",
                "-o", "build/ceevee/index.html", 
                "ceevee/cv.html.jinja")
}

tasks.register<Exec>("ModernCVClassicTex") {
    logger.info("Generating Modern CV Classic")

    // Store target directory into a variable to avoid project reference in the configuration cache
    val directory = file("build/moderncvclassic")

    doFirst {
        Files.createDirectories(directory.toPath())
    }
    commandLine("./tools/jinja2-render", "-y", "fluz.yml",
                "-o", "build/moderncvclassic/cv.tex", 
                "moderncvclassic/cv.tex.jinja")

}

tasks.register<Exec>("ModernCVClassicPdf") {
    logger.info("Generation Modern CV Classic [pdf]")
    dependsOn("ModernCVClassicTex")

    // commandLine("cp", "europasscv/europasscv.cls", "build/europasscv/europasscv.cls")
    commandLine("./tools/cddo", "build/moderncvclassic/cv.tex", "${project.rootDir}/tools/latexer")
}

