#!/usr/bin/perl -0777
while (<>) {
  print "1. <table> in <article>: ", /<article[^>]*>.*?<table[^>]*>.*?<\/table>.*?<\/article>/s ? "✅ MATCH\n" : "❌ NO MATCH\n";
  print "2. <thead> in <table>:   ", /<table[^>]*>.*?<thead[^>]*>.*?<\/thead>.*?<\/table>/s      ? "✅ MATCH\n" : "❌ NO MATCH\n";
  print "3. <tbody> in <table>:   ", /<table[^>]*>.*?<tbody[^>]*>.*?<\/tbody>.*?<\/table>/s      ? "✅ MATCH\n" : "❌ NO MATCH\n";
  print "4. thead before tbody:   ", /<table[^>]*>.*?<thead[^>]*>.*?<\/thead>.*?<tbody[^>]*>.*?<\/tbody>.*?<\/table>/s
        ? "✅ MATCH\n" : "❌ NO MATCH\n";
}
