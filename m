Return-Path: <devicetree+bounces-13820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE35F7E09DC
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 21:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D4E4B2123A
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 20:05:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B76D623753;
	Fri,  3 Nov 2023 20:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LDRnk5T7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D834814276
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 20:05:35 +0000 (UTC)
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA784D65
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 13:05:33 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1cc79f73e58so1835ad.1
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 13:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699041933; x=1699646733; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5VbkSNuwWNxADmq74BTzzOffPoezQ3iEIy9T2gZ4ntQ=;
        b=LDRnk5T7TIQr+Y9klixAkwPlyYLFTHTQ18cV+Ma8mrHMA6SXhvZk/aSQ898tTlgefi
         RxZfgi/ir1tC/BKVoO+LFJ/bS04LMLF+nCxh44R7uNt/Nr0AsHr7amk/bliAnq4UsKNY
         3tYBuycY9ZP/8uOn6I36ciPfZ0koY9YQSC/O1MdAFBGODcDN+Y0JRcDE+lz1GeyBJmbo
         yMBE6j+6OUovw+G+3uVRqmXZqqdbvv2f/DybmapMGuALn/kNgJ0JTDkDIAX57iobbX3N
         DrTZLmQWW57YI5D6xUWoqw6Eb7jpspjPwnn7GivyJMNQundJfiyCJK84F64QgRT1sGKy
         xxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699041933; x=1699646733;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5VbkSNuwWNxADmq74BTzzOffPoezQ3iEIy9T2gZ4ntQ=;
        b=Zb9SptmlNOvIFQ7cDxnZgaGlv0j/KO1ukd1GykD2fD/03wkACuo8whWEPr8ctT25lm
         s2ewKm4uzyrM1QapnFxADJC1UTDmz2Pg+4NNcQwVLsX6a75YDYP2SfpPzcfvmFRkjIZa
         XeD2i347LU7ygSl8nJOVhV6aadAcAoW/LDPnGbl03/tFl/QTRnXswfPanx7fAnR2x1Mf
         C7dqPn1NkMMBTdU0frfa6jKz7Eep36k29hDCVl6wpa1nIIcjEk1+KD1bzDV3NSS6J/p4
         3SFPMvH0q16tgFe8cjGbc79f6P4w/YyABMzumUOvb8qgLm6chUJRKxk/GStS2U5eRdHF
         cwhw==
X-Gm-Message-State: AOJu0Yxm0bFn7jhqDN/6Pk69ViQpWA7/CwJ5IN5yN9u+73BWaCgAWWYz
	5/bb4qUSK3dxN9Ji9kSRRZ2sgA==
X-Google-Smtp-Source: AGHT+IGSLym7LjReWH2oEnEAARiZ56Hfr6abFPm4QXjfoHgBTcHOJjCKffwUPorSCrtlytrQU0sQdA==
X-Received: by 2002:a17:903:41cd:b0:1bd:9c78:8031 with SMTP id u13-20020a17090341cd00b001bd9c788031mr9924ple.9.1699041932747;
        Fri, 03 Nov 2023 13:05:32 -0700 (PDT)
Received: from google.com (137.22.168.34.bc.googleusercontent.com. [34.168.22.137])
        by smtp.gmail.com with ESMTPSA id jb20-20020a170903259400b001cc615e6850sm1758011plb.90.2023.11.03.13.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 13:05:32 -0700 (PDT)
Date: Fri, 3 Nov 2023 13:05:28 -0700
From: William McVicker <willmcvicker@google.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Maksym Holovach <maksym.holovach.an.2022@lpnu.ua>,
	Peter Griffin <peter.griffin@linaro.org>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com,
	s.nawrocki@samsung.com, linus.walleij@linaro.org,
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com,
	will@kernel.org, arnd@arndb.de, olof@lixom.net,
	cw00.choi@samsung.com, tudor.ambarus@linaro.org,
	andre.draszik@linaro.org, semen.protsenko@linaro.org,
	saravanak@google.com, soc@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com, linux-serial@vger.kernel.org,
	Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v2 00/20] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
Message-ID: <ZUVSiBvy9SNXFG_A@google.com>
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
 <3d489d6c-2098-4f0c-9ec4-f6040665753e@lpnu.ua>
 <CADrjBPp+fyNoPdix6=Wp4cDCRFq2Mui8NS6WENejcHn+H1M-jA@mail.gmail.com>
 <48e1c0bd-9518-4927-b490-f3206256bbd4@lpnu.ua>
 <c0b8f356-0f26-459d-850d-ec0fa1fd3987@linaro.org>
 <ZUUvp3kqM7NPlyZ_@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZUUvp3kqM7NPlyZ_@google.com>

On 11/03/2023, William McVicker wrote:
> Hi Maksym, Krzysztof, Peter,
> 
> On 11/03/2023, Krzysztof Kozlowski wrote:
> > On 03/11/2023 14:56, Maksym Holovach wrote:
> > > Hi Peter,
> > > 
> > > On 11/3/23 15:11, Peter Griffin wrote:
> > >> Hi Maksym,
> > >>
> > >> Thanks for your feedback.
> > >>
> > >> On Thu, 2 Nov 2023 at 22:32, Maksym Holovach
> > >> <maksym.holovach.an.2022@lpnu.ua> wrote:
> > >>> Hi, all
> > >>>
> > >>> I wanted to inquire about how do you all feel about calling this SoC by
> > >>> the Google "gs101" name.
> > >> Interesting question, I think calling it gs101 is the correct approach see
> > >> below for my rationale.
> > >>
> > >>> I believe the proper name for it should be the actual Samsung name,
> > >>> written in the silicon and reported in the Chip ID hardware: Exynos9845.
> > >>> This also touches the Tensor G2 (Exynos9855), Tensor G3 (Exynos9865),
> > >>> and possibly the "Tesla" SoCs.
> > >>>
> > >>> I do not think the Linux kernel should be a marketing material: it
> > >>> should reflect reality. The chip is almost 100% composed of Samsung
> > >>> Exynos IP blocks and should be called that way.
> > >> As you alluded to Tesla fsd and Axis artpec8 SoCs are also based on
> > >> Exynos designs and support upstream uses the axis,artpec8* or tesla,fsd*
> > >> compatibles.
> > >>
> > >> So using google,gs101 is consistent with the existing upstream naming
> > >> scheme, for customized ASICs that were based off a Exynos design. But
> > >> it also reflects the reality that this SoC is not a Exynos9845 as there is
> > >> also a lot of Google owned and other third party IP integrated that is not
> > >> found in Exynos9845.
> > > 
> > > A quick question: Do you imply Exynos9845 exists outside of the context 
> > > of Tensor G1? I used to believe Exynos9845 **is** Tensor G1.
> 
> Yes, the gs101 SoC is *not* equivalent to the Exynos9845. Similar to how Tesla
> FSD licenses Exynos IP blocks, gs101 does not only comprise of Exynos IP
> blocks. The final design is unique to Google and comprises of several different
> vendor IP blocks (not only Exynos).

Sorry, I need to correct this after talking to more people. The Exynos9845 is
the name that Samsung LSI refers to as the gs101 SoC. However, it was made
exclusively for Google with Google-designed IP. Since this chip is exclusive to
the Pixel device line-up, it would make sense to use the well known name that
is used by Google in the Pixel factory kernel.

Regards,
Will

> 
> > > 
> > > Also, what kind of Google IP are you talking about? I believe only the 
> > > neural accelerator should be custom-ish.
> > > 
> > > Additionally, I believe it having or not having Google IP is irrelevant: 
> > > for example, the new Raspberry Pi 5 Broadcom SoC has a lot of 
> > > Raspberry's own IP, but it's still called Broadcom as it's the real 
> > > manufacturer and designer of the chip.
> > 
> > That's a good argument. Indeed BCM2712 contains "New Raspberry
> > Pi-developed ISP".
> > https://www.raspberrypi.com/documentation/computers/processors.html
> > 
> > There aren't many patches but GPU is still called brcm,2712.
> > 
> > For Tesla FSD, there was discussion and output was not very consisting.
> > First, the name itself was used for everything - SoC architecture, one
> > given SoC and eventually the board.
> > https://lore.kernel.org/all/5ab62673-8d46-ec1d-1c80-696421ab69ca@canonical.com/
> > 
> > Eventually the last part - board - was renamed to "Evaluation board",
> > but I don't know how true or real it is.
> > 
> > See also:
> > "I would argue that if this SoC shares the pinctrl, clock, spi, adc,
> > and timer implementation
> > with Exynos, we should consider it part of the Exynos family,"
> > https://lore.kernel.org/all/CAK8P3a31bCHNcNWrLX+QW+4RuK=DBpxLA_j5BFKxXxXKCT8PFQ@mail.gmail.com/
> > 
> > However it was also claimed:
> > 
> > "AFA architecture is concerns both Exynos and FSD has completely
> > different architecture (at least at HW level)."
> > https://lore.kernel.org/all/07ce01d8091e$9a6fd9c0$cf4f8d40$@samsung.com/
> > 
> > >> I guess the same is also true for `axis,artpec8` and `tesla,fsd` SoCs.
> > >> IMO the SoC compatible string should be uniquely identifying the actual
> > >> SoC, not a close relative.
> > >>
> > >> Regarding product_id you are correct this reads 0x09845000 but even
> > >> within Samsung Exynos family there are examples where the register
> > >> value does not match the SoC compatible. For example Exynos850 SoC
> > >> has a product ID value of "E3830". Where the Linux compatible is
> > >> matching the Samsung marketing name, not the internal/outdated name.
> > > 
> > > I did not know Exynos 850 is also not going under it's real name. 
> > > Ultimately, I believe all of those SoCs should go under their technical 
> > > name in the exynos/ directory.
> > 
> > The initial technical name does not exist outside of vendor sources and
> > part name. E.g. Winlink E850 board hardware manual calls it:
> > "Samsung Exynos 850, S5E3830"
> > and everywhere else Exynos 850 SoC is used.
> > 
> > If you start calling it Exynos 3830, only me and Sam (who mainlined it)
> > would know what is it. Everyone else, all users of kernel, would be
> > confused.
> > 
> > Therefore using well known final product name is for Exynos850 reasonable.
> 
> I agree with this. By using the final (well known) product SoC name -- gs101 --
> other developers will be able to easily identify the particular SoC.
> 
> > 
> > > 
> > > Another concern is that Google could in the future license other SoC: be 
> > > it Qualcomm, Nvidia or anything. If we put completely different hw under 
> > > google/ directory, does it really make sense? In that case, who'll 
> > > maintain the google/ directory? Exynos people? Qualcomm people if they 
> > > license it? Some other people?
> 
> I don't understand why the architecture of the SoC would dictate which folder
> to put the device tree files under. It makes more sense to group board DT files
> together based on who distributes them. Having all the Pixel DT board files
> together allows Google to create a single device tree binary per SoC coupled
> with the set of device tree overlays per board variant (this is the dtbo.img)
> to ship to all their devices. If you look at all the in-market Pixel devices
> with Tensor SoCs, you will find that you could create one dtb (concatenate
> gs101.dtb, gs201.dtb, and zuma.dtb) and one dtbo image for 10 devices which
> significantly simplifies the maintenance, testing, and software distribution
> for all 10 of those products.
> 
> > 
> > That's indeed a problem. Future Tesla SoC might have just few pieces
> > similar to FSD. There would be no common SoC part, except the actual
> > Tesla IP.
> > 
> > Same for Google. Future GSXXX, if done by Qualcomm, will be absolutely
> > different than GS101 and the only common part would be the TPU (Tensor).
> > 
> > So now let's decide what is the common denominator:
> > 1. Core SoC architecture, like buses, pinctrl, clocks, timers, serial,
> > and many IP blocks, which constitute 95% of Devicetree bindings and drivers,
> > 2. The one, big piece made by Samsung's customer: TPU, NPU or whatever.
> 
> As mentioned above, I think this should be based on how the DTBs and DTBOs are
> used and distributed. What is the benefit of adding the gs101 board files under
> the exynos folder?
> 
> Thanks,
> Will
> 
> > 
> > > 
> > > Then, I don't think Tensor G3 has a proper "GS" name, it goes by "Zuma" 
> > > in decompiled kernel modules as far as I see.
> > > 
> > > Finally, Tesla people already tried to submit drivers called by Tesla 
> > > name, but which basically copied the functionality of the Exynos 
> > > drivers. We would want to avoid that, ideally.
> > > 
> > > My opinion is that all the Tesla and Google SoCs should be in the 
> > > exynos/ directory, not only because they are basically Samsung Exynos, 
> > > but also because they don't really need a separate directory: neither 
> > > Google nor Tesla didn't neither manufacture or design those SoCs from 
> > > scratch. The only reason I can think of for them to have it in a 
> > > separate directory is maybe because Google and Tesla actually paid 
> > > Samsung money for the right to call Exynos "Google designed" SoCs, but I 
> > > believe the kernel should be left out of that.
> > 
> > For some reason, although I know which, Cc-list is here trimmed and
> > misses Alim...
> > 
> > So standard reply follow (it makes me really, really grumpy, because it
> > means you develop on some crazy old kernel or do not use tools which
> > automate the process):
> > 
> > Please use scripts/get_maintainers.pl to get a list of necessary people
> > and lists to CC (and consider --no-git-fallback argument). It might
> > happen, that command when run on an older kernel, gives you outdated
> > entries. Therefore please be sure you base your patches on recent Linux
> > kernel.
> > 
> > Best regards,
> > Krzysztof
> > 

