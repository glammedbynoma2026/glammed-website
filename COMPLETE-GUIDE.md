# GLAMMED BY NOMA — COMPLETE WEBSITE BUILD & DEPLOYMENT GUIDE
## Everything from zero to live on glammedbynoma.com

---

# PART 1 — YOUR FILES

You need these 4 files downloaded to your computer before starting.
Keep them all in ONE folder — name the folder: glammed-website

  index.html       ← your complete website
  icon-192.png     ← small logo (browser tab, nav bar)
  icon-512.png     ← large logo (hero section)
  logo.png         ← full resolution logo

---

# PART 2 — BEFORE UPLOADING ANYTHING

## Update your WhatsApp number in the website file

1. Find index.html on your computer
2. Right-click it → Open with → Notepad (Windows) or TextEdit (Mac)
3. Press Ctrl+H (Windows) or Cmd+H (Mac) to open Find & Replace
4. Find:     YOUR_WHATSAPP_NUMBER
5. Replace with your number like this: 84901234567
   (Use your Vietnamese number — drop the 0 at the start, add 84)
   Example: if your number is 0912 345 678 → type 84912345678
6. Click Replace All
7. Save the file (Ctrl+S)

---

# PART 3 — CREATE YOUR GITHUB ACCOUNT

GitHub stores your website files so Vercel can read them.

1. Go to github.com
2. Click Sign up in the top right
3. Enter your email address → click Continue
4. Create a password → click Continue
5. Enter a username (suggestion: glammedbynoma2026)
6. Solve the puzzle → click Create account
7. Check your email for a verification code → enter it
8. On the welcome screen — skip all questions, click Continue

---

# PART 4 — CREATE YOUR WEBSITE REPOSITORY ON GITHUB

A repository is just a folder that holds your website files online.

1. Log into github.com
2. Click the + icon in the top right corner
3. Click New repository
4. Fill in:
   Repository name: glammed-website
   Description: Glammed by Noma website
   Set to: Public (make sure this is selected)
   Leave everything else unchecked
5. Click Create repository (green button)
6. On the next page you will see some text — look for the link that says
   "uploading an existing file" and click it
7. A file upload area appears — drag all 4 files into it:
   - index.html
   - icon-192.png
   - icon-512.png
   - logo.png
8. Wait for all 4 to finish uploading — you will see green ticks
9. At the bottom where it says "Commit changes":
   Leave the message as is
   Click the green Commit changes button
10. You will be taken back to your repository — you should see all 4 files listed

---

# PART 5 — CREATE YOUR VERCEL ACCOUNT

Vercel hosts your website and makes it live on the internet.

1. Go to vercel.com
2. Click Sign Up in the top right
3. Click Continue with GitHub
4. A popup appears asking you to authorise Vercel — click Authorise Vercel
5. You may be asked to install Vercel on GitHub — click Install
6. Select All repositories → click Install & Authorize
7. You are now logged into Vercel

---

# PART 6 — DEPLOY YOUR WEBSITE ON VERCEL

1. On the Vercel dashboard click Add New... → Project
2. You will see a list of your GitHub repositories
3. Find glammed-website → click Import
4. On the Configure Project screen:
   Framework Preset: leave as Other
   Root Directory: leave as ./
   Build Command: leave EMPTY
   Output Directory: leave EMPTY
   Everything else: leave as default
5. Click Deploy (big blue button)
6. Wait about 60 seconds — you will see a confetti animation
7. Click Continue to Dashboard
8. At the top you will see your live link — something like:
   glammed-website-abc123.vercel.app
9. Click that link — your website is live! 🌸

---

# PART 7 — CONNECT YOUR NAMECHEAP DOMAIN TO VERCEL

This is how glammedbynoma.com points to your website.

## In Vercel — add your domain:

1. You are on your glammed-website project page in Vercel
2. Click Settings at the top of the page
3. Click Domains on the left side menu
4. In the text box type: glammedbynoma.com
5. Click Add
6. In the text box type: www.glammedbynoma.com
7. Click Add
8. You will see both domains listed with a red warning —
   that is normal, you haven't set up the DNS yet
9. Keep this Vercel tab open

## In Namecheap — add the DNS records:

1. Open a new browser tab → go to namecheap.com
2. Log into your Namecheap account
3. Click Domain List on the left side
4. Find glammedbynoma.com in the list
5. Click the Manage button on the right
6. Click the Advanced DNS tab at the top of the page
7. Look at the existing records — you will see some default ones
8. DELETE every A Record and CNAME Record that is already there
   (click the red trash icon next to each one)
9. Now add these 3 new records:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
RECORD 1 — This connects glammedbynoma.com to Vercel

  Click: Add New Record
  Type:  A Record
  Host:  @
  Value: 76.76.21.21
  TTL:   Automatic
  Click the green tick ✓ to save

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
RECORD 2 — This connects www.glammedbynoma.com

  Click: Add New Record
  Type:  CNAME Record
  Host:  www
  Value: cname.vercel-dns.com
  TTL:   Automatic
  Click the green tick ✓ to save

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
RECORD 3 — This connects app.glammedbynoma.com (your loyalty card)

  Click: Add New Record
  Type:  CNAME Record
  Host:  app
  Value: cname.vercel-dns.com
  TTL:   Automatic
  Click the green tick ✓ to save

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

10. You should now have exactly 3 records saved

## Wait for DNS to connect:

1. Go back to your Vercel tab
2. Go to your project → Settings → Domains
3. You will see a spinning circle next to your domains
4. Wait 10 to 30 minutes (sometimes up to 2 hours)
5. When you see a green tick ✓ next to glammedbynoma.com — you are live!
6. Open a new tab and type: glammedbynoma.com
7. Your website loads! 🌸

---

# PART 8 — CONNECT YOUR LOYALTY CARD APP TO app.glammedbynoma.com

Your loyalty card is a separate Vercel project. Connect it to the subdomain.

## In Vercel:

1. Go to vercel.com → click on your LOYALTY CARD project
   (it will be called something like glammed-by-noma)
2. Click Settings → Domains
3. Type: app.glammedbynoma.com → click Add
4. Wait 10–30 minutes → green tick means it is connected

## In Firebase — allow the new domain:

1. Go to console.firebase.google.com
2. Click your glammed-by-noma project
3. Click the gear icon ⚙️ in the left sidebar → Project settings
4. Scroll down to the section called Your apps
5. Click on your web app
6. Scroll to Authorized domains
7. Click Add domain
8. Type: app.glammedbynoma.com
9. Click Add
10. Done — your loyalty card app now works at app.glammedbynoma.com

---

# PART 9 — TELL GOOGLE YOUR WEBSITE EXISTS (SEO)

This gets you found on Google when people search for a makeup artist in Hanoi.

1. Go to search.google.com/search-console
2. Sign in with your Google account
3. Click Add Property on the left
4. Select URL prefix
5. Type: https://www.glammedbynoma.com
6. Click Continue
7. Google will show you a verification method
8. Choose HTML tag — it gives you a line of code that looks like this:
   <meta name="google-site-verification" content="xxxxxx" />
9. Copy that entire line
10. Open index.html in Notepad
11. Find the line that says: <meta name="author" content="Glammed by Noma"/>
12. Paste your Google verification tag on the line directly below it
13. Save the file
14. Go to your GitHub repo → click index.html → click the pencil icon (Edit)
15. Select all the text → delete it → paste your updated code
16. Click Commit changes
17. Vercel automatically redeploys in about 1 minute
18. Go back to Google Search Console → click Verify
19. Once verified → click URL Inspection in the left menu
20. Type: https://www.glammedbynoma.com → press Enter
21. Click Request Indexing
22. Google will index your site within 2 to 7 days

---

# PART 10 — SET UP YOUR GOOGLE BUSINESS PROFILE

This is the most powerful thing for local search — your profile shows up
on Google Maps and above regular search results when people search
"makeup artist Hanoi" or "dark skin MUA Vietnam".

1. Go to business.google.com
2. Sign in with your Google account
3. Click Manage now or Add your business
4. Business name: Glammed by Noma
5. Category: Search for "Makeup Artist" and select it
6. Do you have a physical location? Select No
   (since you go to clients or work from home)
7. Service area: type Hanoi, Vietnam → add it
8. Phone number: add your WhatsApp number
9. Website: https://www.glammedbynoma.com
10. Click Finish
11. Choose verification method — usually a phone call or postcard
12. Once verified, add:
    - At least 5 photos of your work (before/after, glam looks)
    - Your logo
    - Your services and prices
    - A description mentioning melanated skin, soft glam, bridal

Your profile can appear at the top of Google within 1–2 weeks.

---

# PART 11 — UPDATE YOUR INSTAGRAM FOR SEO

Instagram profiles appear in Google search results.
These changes help people find you.

Go to your Instagram profile → Edit Profile:

NAME FIELD (not username — this is the bold name that shows):
  Glammed by Noma | MUA · Melanated Skin · Hanoi

BIO:
  Luxury makeup for melanated & dark skin 💄
  ✨ Soft Glam · Full Glam · Bridal
  📍 Hanoi, Vietnam
  💳 Digital Loyalty Card below ↓

WEBSITE LINK:
  https://www.glammedbynoma.com

Under Add Link — add a second link:
  https://app.glammedbynoma.com
  Label it: Loyalty Card 💄

---

# PART 12 — MAKING CHANGES TO YOUR WEBSITE LATER

Every time you want to update text, prices, or anything on the site:

1. Edit index.html on your computer in Notepad
2. Go to github.com → your glammed-website repo
3. Click on index.html
4. Click the pencil icon (Edit this file) in the top right
5. Select all → delete → paste your updated code
6. Click Commit changes
7. Vercel detects the change and redeploys automatically in ~1 minute
8. Open glammedbynoma.com — your changes are live

---

# YOUR FINAL LINKS — SAVE THESE

  Main website:      https://www.glammedbynoma.com
  Loyalty card app:  https://app.glammedbynoma.com
  Instagram:         https://instagram.com/glammedbynoma
  Google Business:   search "Glammed by Noma Hanoi" after verification

---

# QUICK CHECKLIST — TICK EACH ONE OFF

  [ ] WhatsApp number updated in index.html
  [ ] GitHub account created
  [ ] glammed-website repo created with all 4 files uploaded
  [ ] Vercel account created and connected to GitHub
  [ ] Website deployed on Vercel — temporary link working
  [ ] glammedbynoma.com added in Vercel domains
  [ ] 3 DNS records added in Namecheap Advanced DNS
  [ ] Green tick on glammedbynoma.com in Vercel
  [ ] glammedbynoma.com opens your website
  [ ] app.glammedbynoma.com added to loyalty card project in Vercel
  [ ] app.glammedbynoma.com added to Firebase authorized domains
  [ ] Google Search Console set up and verified
  [ ] URL submitted for indexing in Google
  [ ] Google Business Profile created
  [ ] Instagram bio and name updated with keywords
  [ ] Website link added to Instagram

---

# IF SOMETHING GOES WRONG

PROBLEM: Site shows a blank page
FIX: Make sure index.html is in the root of your GitHub repo, not inside a folder

PROBLEM: Domain not connecting after 2 hours
FIX: Check Namecheap Advanced DNS — make sure Host is exactly @ not @. and value has no spaces

PROBLEM: App not working after connecting domain
FIX: Go to Firebase → Authorized Domains → make sure app.glammedbynoma.com is listed

PROBLEM: Images not showing on website
FIX: Make sure icon-192.png and icon-512.png are uploaded to the same GitHub repo as index.html

PROBLEM: Vercel says "404 Not Found"
FIX: Your index.html must be named exactly index.html with a lowercase i

