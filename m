Return-Path: <devicetree+bounces-8176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0ED7C6FBD
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49DE728297F
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C56A2E640;
	Thu, 12 Oct 2023 13:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gIIRbUZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78A71A72D
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:52:17 +0000 (UTC)
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D3BC6
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:52:15 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-d81dd7d76e0so1018950276.1
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697118734; x=1697723534; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O2gG3fg3q52fvlTCT+QjsQd6tuCwnP38cEJE5IRE6jM=;
        b=gIIRbUZ4Gi8sK9ilsh4xnDXqxqcRXgrF9YjKUkPXmKSD/D9IVd9vj+U0lxgBkt/WS1
         e23WX/9V6HF1kKNXQHF63nJ7pKnGE1hkG8VE4x5M/FG7yEDqmftEpOuhTL/z9hSYy4iW
         CXEDvK6XryqkkIQo43Nt1kEL2EZbrcGD5itzjSl9P7k6f4889XqEHTPCbUFiae9LYW7d
         zab+k0QQpbcaWfjOtJopbV3qGZ7tNbzF2NoLq03jiRuvqpUF9lS6Wth0oPGJ9ErrOgk0
         ADDgZ3Y6+LN9xqFJNeFRahe0ljaQoPXT4KFpH+AlBhbFIUp8KMeCxl4fJXXPouudVQ+b
         M6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697118734; x=1697723534;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O2gG3fg3q52fvlTCT+QjsQd6tuCwnP38cEJE5IRE6jM=;
        b=diZI2Rndz/iO7M/DbcGQPenPcb3QujH20ily2VcMtcQZGvZLZ/PrOiTuxNQpM8KW/q
         LrrI9unNnqvOHNrFypdLz8hxcyBY6MIPwVT8dAfRQN/ZeeC9yyx85+Zo/syEUjktnaev
         0eqks5ntnsvEEXBQjoxt6mUAVIlLmF4DxLfPY0sihnBX8J9LsVTclyDaNVvb8OPpUdIm
         bhbdqog2K0DfanIHpslmx0kuLVpUqTNM0vRlm8zCHOLqX8JEDDPUm7DqCjyfZrZd/Dwh
         7Aa/D2DkESl1bhUT0HRnXywotBinWe44eoSd8EhIT4BrBrZVjBYY2wOwFGAxSXkmlSzq
         cTUQ==
X-Gm-Message-State: AOJu0Yxydrc9PDKKK3GDgtww72gGqxhj5ZGxbRRMeEoOWzRd+j3c98On
	3qjkmtKrQEZebJ7U2A7t+M+Z1T3hW/Jm+lS9mWJ0KA==
X-Google-Smtp-Source: AGHT+IEUixItd1kXxNUWqJ7YWtNJT7rR6hD0H/r/LT4Rvu2rvoR99SCGtsC+RPlcyYZVTc4zHe4JBltjz4OLDyvTd9I=
X-Received: by 2002:a05:6902:1507:b0:d81:917c:69b with SMTP id
 q7-20020a056902150700b00d81917c069bmr27103248ybu.10.1697118734615; Thu, 12
 Oct 2023 06:52:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-11-peter.griffin@linaro.org> <CAPLW+4mO1dMjh1EDPbaL0QGe4EM0GnbQ1G7NsdtBaCcPzdmkPw@mail.gmail.com>
 <CADrjBPqo8kKUr-EPay3zDQiF7XRwN+FDFN5W2tD5Aet50L2KUA@mail.gmail.com> <28bee37b-1d6d-433e-810f-da847635fcaf@linaro.org>
In-Reply-To: <28bee37b-1d6d-433e-810f-da847635fcaf@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 14:52:02 +0100
Message-ID: <CADrjBPoHu4d-WjgO3sQb0T784QBm7S8YFUnDANmMHkZqjgv90w@mail.gmail.com>
Subject: Re: [PATCH v3 10/20] clk: samsung: clk-gs101: Add cmu_top registers,
 plls, mux and gates
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com, 
	s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org, 
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	olof@lixom.net, gregkh@linuxfoundation.org, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Thu, 12 Oct 2023 at 13:24, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 12/10/2023 14:06, Peter Griffin wrote:
> > Hi Sam,
> >
> > Thanks for the review.
> >
> > On Thu, 12 Oct 2023 at 01:07, Sam Protsenko <semen.protsenko@linaro.org=
> wrote:
> >>
> >> On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@l=
inaro.org> wrote:
> >>>
> >>> CMU_TOP is the top level clock management unit which contains PLLs, m=
uxes
> >>> and gates that feed the other clock management units.
> >>>
> >>> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> >>> ---
> >>>  drivers/clk/samsung/Kconfig     |    9 +
> >>>  drivers/clk/samsung/Makefile    |    2 +
> >>>  drivers/clk/samsung/clk-gs101.c | 1551 +++++++++++++++++++++++++++++=
++
> >>>  3 files changed, 1562 insertions(+)
> >>>  create mode 100644 drivers/clk/samsung/clk-gs101.c
> >>>
> >>> diff --git a/drivers/clk/samsung/Kconfig b/drivers/clk/samsung/Kconfi=
g
> >>> index 76a494e95027..14362ec9c543 100644
> >>> --- a/drivers/clk/samsung/Kconfig
> >>> +++ b/drivers/clk/samsung/Kconfig
> >>> @@ -12,6 +12,7 @@ config COMMON_CLK_SAMSUNG
> >>>         select EXYNOS_5410_COMMON_CLK if ARM && SOC_EXYNOS5410
> >>>         select EXYNOS_5420_COMMON_CLK if ARM && SOC_EXYNOS5420
> >>>         select EXYNOS_ARM64_COMMON_CLK if ARM64 && ARCH_EXYNOS
> >>> +       select GOOGLE_GS101_COMMON_CLK if ARM64 && ARCH_GOOGLE_TENSOR
> >>>         select TESLA_FSD_COMMON_CLK if ARM64 && ARCH_TESLA_FSD
> >>>
> >>>  config S3C64XX_COMMON_CLK
> >>> @@ -95,6 +96,14 @@ config EXYNOS_CLKOUT
> >>>           status of the certains clocks from SoC, but it could also b=
e tied to
> >>>           other devices as an input clock.
> >>>
> >>> +config GOOGLE_GS101_COMMON_CLK
> >>> +       bool "Google gs101 clock controller support" if COMPILE_TEST
> >>> +       depends on COMMON_CLK_SAMSUNG
> >>> +       depends on EXYNOS_ARM64_COMMON_CLK
> >>> +       help
> >>> +         Support for the clock controller present on the Google gs10=
1 SoC.
> >>> +         Choose Y here only if you build for this SoC.
> >>> +
> >>
> >> Why is that new option needed? From the look of it, it could be just a
> >> part of EXYNOS_ARM64_COMMON_CLK. Like clk-exynos850 or
> >> clk-exynosautov9. Is there any particular feature that makes it SoC
> >> special?
> >
> > No, it could also be added to EXYNOS_ARM64_COMMON_CLK. I was following
> > the example set by TESLA_FSD which is another custom Exynos based chips=
et
> > that added its own config option.
> >
> > Krzysztof do you have any preference on this?
>
> Usually there is only one image for several boards so long time ago we
> stopped adding per-SoC Kconfig entries. This has its own ARCH_xxx, just
> like Tesla, thus having separate Kconfig for all Google Tensor clock
> drivers makes sense. Maybe it should be just called a bit differently,
> e.g. GOOGLE_TENSOR_COMMON_CLK

Thanks, I will update the name in v4.

Peter.

