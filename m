Return-Path: <devicetree+bounces-13740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B927E0372
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 14:11:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE3B5281D80
	for <lists+devicetree@lfdr.de>; Fri,  3 Nov 2023 13:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCCAB1775F;
	Fri,  3 Nov 2023 13:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DEGfxmzh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1DC617729
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 13:11:38 +0000 (UTC)
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D2119D
	for <devicetree@vger.kernel.org>; Fri,  3 Nov 2023 06:11:33 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-66cfc96f475so11470216d6.3
        for <devicetree@vger.kernel.org>; Fri, 03 Nov 2023 06:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699017092; x=1699621892; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FLQ8I7lDOhGrWVVA7zYIIpOGZoz1CFTDBLwX6lRbXH8=;
        b=DEGfxmzhCGMDIeG2bFblT0WuP9qlwuSDA0PAvpvmBG667m3yyP27CHC66P+JYDmbUc
         nbhii2bck/JJvtd3+OUqC4M25hFd6qL1cZUHv8hcRb121kKjtSTV5+hay72LZXqDkfJy
         86E+/HeIJzRtpQaVAtt+kOwWQS9Iiq9ffR/YPk0vA9zaFPfAB7Y3NzCqGiQmpAZIms+C
         ZbzqATbef3JGEHb+2j2eaIR3Cvv7ILWDwHQgHRMrRkJDI/SLaMqo6RkEP2snijbuFQcY
         kvTUts3TsVEhH/uFFzMkanTYDA/Iyb8UltvNgggQZZN9zCzXYUqxb2go5f7407Lq1ltc
         MqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699017092; x=1699621892;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FLQ8I7lDOhGrWVVA7zYIIpOGZoz1CFTDBLwX6lRbXH8=;
        b=hHHq8qrF1dvMhJQfgIEzIGvyd4/ISO4Jc24rM4lwT+TS0NWcPST8cuUgYQTbnR4PBX
         yIhJxwXpvemabI2zuor/Skn5Tm8r1Sl7B1gx+aPZbyiqyAi0NMzAe25ROaSEguog6ilW
         A4VcKHN4pO0CiN39061hpze1AgwrO/EahCH9XPL+UMzpx4nhBSFwAd5ofjw1qgcFCwZk
         F+u/V6S69hsi39L6nypUh175gPkhh8sMHadaPqoPcE64yGeTvMBToZ08Zc5U0FviEYoG
         GroMMe0uyq4Eh+OvpwEeTvw835HQRlqSn7N4cljQsZHJ4pJVdkzzaFOweCkknwBW6Dwg
         7qxQ==
X-Gm-Message-State: AOJu0YyC5CKw709J7Bpl8ScfSUNkj4kVdlhT2oij1uRzMouvOgIzUVDG
	s8bJF0CaZIzQJ+RR54fYElRM3cz/1ljEBkOrc3YkrQ==
X-Google-Smtp-Source: AGHT+IHneuAbjLV5ldmav1uAdg32WbBu0eFBZ86y0DgqJYOYx4j0ibWrIxjYYwOmeX4G9aANqIciZA9xvd8OumsKu/Y=
X-Received: by 2002:a05:6214:aca:b0:673:b0e7:1916 with SMTP id
 g10-20020a0562140aca00b00673b0e71916mr15887632qvi.2.1699017092594; Fri, 03
 Nov 2023 06:11:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010224928.2296997-1-peter.griffin@linaro.org> <3d489d6c-2098-4f0c-9ec4-f6040665753e@lpnu.ua>
In-Reply-To: <3d489d6c-2098-4f0c-9ec4-f6040665753e@lpnu.ua>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 3 Nov 2023 13:11:20 +0000
Message-ID: <CADrjBPp+fyNoPdix6=Wp4cDCRFq2Mui8NS6WENejcHn+H1M-jA@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
To: Maksym Holovach <maksym.holovach.an.2022@lpnu.ua>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Maksym,

Thanks for your feedback.

On Thu, 2 Nov 2023 at 22:32, Maksym Holovach
<maksym.holovach.an.2022@lpnu.ua> wrote:
>
> Hi, all
>
> I wanted to inquire about how do you all feel about calling this SoC by
> the Google "gs101" name.

Interesting question, I think calling it gs101 is the correct approach see
below for my rationale.

>
> I believe the proper name for it should be the actual Samsung name,
> written in the silicon and reported in the Chip ID hardware: Exynos9845.
> This also touches the Tensor G2 (Exynos9855), Tensor G3 (Exynos9865),
> and possibly the "Tesla" SoCs.
>
> I do not think the Linux kernel should be a marketing material: it
> should reflect reality. The chip is almost 100% composed of Samsung
> Exynos IP blocks and should be called that way.

As you alluded to Tesla fsd and Axis artpec8 SoCs are also based on
Exynos designs and support upstream uses the axis,artpec8* or tesla,fsd*
compatibles.

So using google,gs101 is consistent with the existing upstream naming
scheme, for customized ASICs that were based off a Exynos design. But
it also reflects the reality that this SoC is not a Exynos9845 as there is
also a lot of Google owned and other third party IP integrated that is not
found in Exynos9845.

I guess the same is also true for `axis,artpec8` and `tesla,fsd` SoCs.
IMO the SoC compatible string should be uniquely identifying the actual
SoC, not a close relative.

Regarding product_id you are correct this reads 0x09845000 but even
within Samsung Exynos family there are examples where the register
value does not match the SoC compatible. For example Exynos850 SoC
has a product ID value of "E3830". Where the Linux compatible is
matching the Samsung marketing name, not the internal/outdated name.

regards,

Peter.



>
> Yours,
>
> - Markuss
>
> On 10/11/23 01:49, Peter Griffin wrote:
> > Hi folks,
> >
> > Firstly, thanks to everyone who reviewed the v1 series! V2 incorporates all
> > the review feedback received so far.
> >
> > This series adds initial SoC support for the GS101 SoC and also initial board
> > support for Pixel 6 phone (Oriole).
> >
> > The gs101 / Tensor SoC is also used in Pixel6a (bluejay) and Pixel 6 Pro
> > (raven) phones. Currently DT is added for the gs101 SoC and Oriole.
> > As you can see from the patches the SoC is based on a Samsung Exynos SoC,
> > and therefore lots of the low level Exynos drivers can be re-used.
> >
> > The support added in this series consists of:
> > * cpus
> > * pinctrl
> > * some CCF implementation
> > * watchdog
> > * uart
> > * gpio
> >
> > This is enough to boot through to a busybox initramfs and shell using an
> > upstream kernel though :) More platform support will be added over the
> > following weeks and months.
> >
> > Note 1: I've removed the dtbo overlay from v2 submission and will re-submit once
> > I have appropriate documentation for it.
> >
> > Note 2: I've left the bootargs in dts with earlycon for now, for two reasons.
> > 1) The bootloader hangs if bootargs isn't present in the dtb as it tries to
> > re-write this with additional bootargs.
> > 2) there is a issue whereby the full serial console doesn't come up properly
> > if earlycon isn't also specified. This issue needs further investigation.
> >
> > Note 3: In `dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible`
> > I tried to narrow the interrupts check to google,gs101-pinctrl but I still see
> > a warning:
> > gs101-oriole.dtb: pinctrl@174d0000: interrupts: [[0, 0, 4],[..] is too long
> >
> > If anyone can educate me on what I've done wrong here it would be most
> > appreciated!
> >
> > kind regards,
> >
> > Peter.
> >
> > Changes since v1:
> >   - Remove irq/gs101.h and replace macros with irq numbers globally
> >   - exynos-pmu - keep alphabetical order
> >   - add cmu_apm to clock bindings documentation
> >   - sysreg bindings - remove superfluous `google,gs101-sysreg`
> >   - watchdog bindings - Alphanumerical order, update gs201 comment
> >   - samsung,pinctrl.yaml - add new "if:then:else:" to narrow for google SoC
> >   - samsung,pinctrl-wakeup-interrupt.yaml - Alphanumerical order
> >   - samsung,pinctrl- add google,gs101-wakeup-eint compatible
> >   - clk-pll: fixup typos
> >   - clk-gs101: fix kernel test robot warnings (add 2 new clocks,dividers,gate)
> >   - clk-gs101: fix alphabetical order
> >   - clk-gs101: cmu_apm: fixup typo and missing empty entry
> >   - clk-gs101: cmu_misc: remove clocks that were being registerred twice
> >   - pinctrl: filter sel: rename/reorder variables, add comment for FLTCON bitfield
> >   - pinctrl: filter sel: avoid setting reserved bits by loop over FLTCON1 pins as well
> >   - pinctrl: gs101: rename bank_type_6/7 structs to be more specific, split from filter
> >   - watchdog: s3c2410_wdt: remove dev_info prints
> >   - gs101.dtsi/oriole.dts: order by unit node, remove underscores from node name, blank lines
> >     add SoC node, split dts and dtsi into separate patches, remove 'DVT' suffix
> >   - gs101-oriole.dtso: Remove overlay until board_id is documented properly
> >   - Add GS101_PIN_* macros to gs101-pinctrl.h instead of using Exynos ones
> >   - gpio-keys: update linux,code to use input-event-code macros
> >   - add dedicated gs101-uart compatible
> >
> > Peter Griffin (20):
> >    dt-bindings: soc: samsung: exynos-pmu: Add gs101 compatible
> >    dt-bindings: clock: Add Google gs101 clock management unit bindings
> >    dt-bindings: soc: google: exynos-sysreg: add dedicated SYSREG
> >      compatibles to GS101
> >    dt-bindings: watchdog: Document Google gs101 & gs201 watchdog bindings
> >    dt-bindings: arm: google: Add bindings for Google ARM platforms
> >    dt-bindings: pinctrl: samsung: add google,gs101-pinctrl compatible
> >    dt-bindings: pinctrl: samsung: add gs101-wakeup-eint compatible
> >    dt-bindings: serial: samsung: Add google-gs101-uart compatible
> >    clk: samsung: clk-pll: Add support for pll_{0516,0517,518}
> >    clk: samsung: clk-gs101: Add cmu_top registers, plls, mux and gates
> >    clk: samsung: clk-gs101: add CMU_APM support
> >    clk: samsung: clk-gs101: Add support for CMU_MISC clock unit
> >    pinctrl: samsung: Add filter selection support for alive banks
> >    pinctrl: samsung: Add gs101 SoC pinctrl configuration
> >    watchdog: s3c2410_wdt: Add support for Google tensor SoCs
> >    tty: serial: samsung: Add gs101 compatible and SoC data
> >    arm64: dts: google: Add initial Google gs101 SoC support
> >    arm64: dts: google: Add initial Oriole/pixel 6 board support
> >    arm64: defconfig: Enable Google Tensor SoC
> >    MAINTAINERS: add entry for Google Tensor SoC
> >
> >   .../devicetree/bindings/arm/google.yaml       |   46 +
> >   .../bindings/clock/google,gs101-clock.yaml    |  125 +
> >   .../samsung,pinctrl-wakeup-interrupt.yaml     |    2 +
> >   .../bindings/pinctrl/samsung,pinctrl.yaml     |   19 +
> >   .../bindings/serial/samsung_uart.yaml         |    2 +
> >   .../bindings/soc/samsung/exynos-pmu.yaml      |    2 +
> >   .../soc/samsung/samsung,exynos-sysreg.yaml    |    6 +
> >   .../bindings/watchdog/samsung-wdt.yaml        |   10 +-
> >   MAINTAINERS                                   |   10 +
> >   arch/arm64/Kconfig.platforms                  |    6 +
> >   arch/arm64/boot/dts/Makefile                  |    1 +
> >   arch/arm64/boot/dts/google/Makefile           |    4 +
> >   arch/arm64/boot/dts/google/gs101-oriole.dts   |   79 +
> >   arch/arm64/boot/dts/google/gs101-pinctrl.dtsi | 1275 ++++++++++
> >   arch/arm64/boot/dts/google/gs101-pinctrl.h    |   32 +
> >   arch/arm64/boot/dts/google/gs101.dtsi         |  503 ++++
> >   arch/arm64/configs/defconfig                  |    1 +
> >   drivers/clk/samsung/Kconfig                   |    9 +
> >   drivers/clk/samsung/Makefile                  |    2 +
> >   drivers/clk/samsung/clk-gs101.c               | 2164 +++++++++++++++++
> >   drivers/clk/samsung/clk-pll.c                 |    9 +-
> >   drivers/clk/samsung/clk-pll.h                 |    3 +
> >   .../pinctrl/samsung/pinctrl-exynos-arm64.c    |  163 ++
> >   drivers/pinctrl/samsung/pinctrl-exynos.c      |   84 +-
> >   drivers/pinctrl/samsung/pinctrl-exynos.h      |   41 +
> >   drivers/pinctrl/samsung/pinctrl-samsung.c     |    4 +
> >   drivers/pinctrl/samsung/pinctrl-samsung.h     |   24 +
> >   drivers/tty/serial/samsung_tty.c              |   12 +
> >   drivers/watchdog/s3c2410_wdt.c                |  104 +-
> >   include/dt-bindings/clock/google,gs101.h      |  232 ++
> >   30 files changed, 4961 insertions(+), 13 deletions(-)
> >   create mode 100644 Documentation/devicetree/bindings/arm/google.yaml
> >   create mode 100644 Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> >   create mode 100644 arch/arm64/boot/dts/google/Makefile
> >   create mode 100644 arch/arm64/boot/dts/google/gs101-oriole.dts
> >   create mode 100644 arch/arm64/boot/dts/google/gs101-pinctrl.dtsi
> >   create mode 100644 arch/arm64/boot/dts/google/gs101-pinctrl.h
> >   create mode 100644 arch/arm64/boot/dts/google/gs101.dtsi
> >   create mode 100644 drivers/clk/samsung/clk-gs101.c
> >   create mode 100644 include/dt-bindings/clock/google,gs101.h
> >

