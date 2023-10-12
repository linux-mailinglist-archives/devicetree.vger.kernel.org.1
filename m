Return-Path: <devicetree+bounces-8140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E92A7C6D5E
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32E2B282519
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 11:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70FD324A0B;
	Thu, 12 Oct 2023 11:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z4U/+th/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD78249F2
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 11:52:49 +0000 (UTC)
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D92F65FCE
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:51:18 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-66cfd35f595so5064456d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 04:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697111470; x=1697716270; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6wguIFACywm82p+kwjY1C1abIOanzWtWu5hp7VdYjEQ=;
        b=Z4U/+th/egFk8MmlMe51P1QDT1DNtPvvKYERJLMtNUAu4M1cv1BxyhPKQgRl6xQ7cf
         IvgMlpRUD4Ri/F20Arw31eY9Joa34yYp1AXPzsLtsCggUWoOUyYqkzV2XWPQXCl4IkUM
         ai0oHYqn36eJlNdS2Q3nH911LJi+s3oZyb5PIl/ssCP/q+/EYYDvgT1ICRVJI6kRoEaq
         GuHLl4n1Es/y+XW0qlbzJHLhkJF2LzkcAspzL2mjQYBR3/i6NYTlaabEnS+cxrp2/28D
         RkZa6PN3UweN56aV2+3OSXDCjX98r9PEX2wdQvw0Fx6oFbj2mWBGk+3eXfIXwOryVoiZ
         XfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697111470; x=1697716270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6wguIFACywm82p+kwjY1C1abIOanzWtWu5hp7VdYjEQ=;
        b=fU/FJn1xGpzgbKUG+3o338XD6tpbRerPSHeU10hpc7OCyHm85fLrnWIHJzbMCZP5ex
         PIOkgBvyeKY59BHoh0n0gAE5Sb5+G87ZGN6dE+w3Pas4y9WEGeUCKYRv26hwlUliSv5D
         pm9hV5HRQaPWMhyMpbppWGXeeYqPkPMvyprVBUbr6EbYfhFRH5aDucfCz9BBpra1ndgn
         R/y4TfP3ZUbD4z+H6T9od8ykNNAYMd9N1k0y7/RFN9FiaSuAKtLEUCkgzBHximHD+Di5
         K+g6XqfFECwEqFOv5hMw9x/HLFPmI4zn91dAHTuBF4/bNXaM8s7zM4SV22rNIFg5pWPu
         td1g==
X-Gm-Message-State: AOJu0YxgxAZ3WLZtHvyc2TdAGWr9q+hZHie6mg/QhpTgDy9Sc4sbKLJf
	NA6OmMzgv8wLLm2T13dpUAxNAi/SykzCmtnlXKqsoA==
X-Google-Smtp-Source: AGHT+IEvqT6kbO6hVsQ4G1yNHRRTZQluz8FwmB8xQs8FuXvEunZhGsOYdqUcE+o4RW+c8m2PI7lkpx1R0l5LGmrcKek=
X-Received: by 2002:a0c:d641:0:b0:668:7bc2:d64d with SMTP id
 e1-20020a0cd641000000b006687bc2d64dmr21776663qvj.27.1697111470058; Thu, 12
 Oct 2023 04:51:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-10-peter.griffin@linaro.org> <CAPLW+4nmonxdLCWEZy15attd5ULUfL0VgZf5YQzFBA_0bvUwUw@mail.gmail.com>
In-Reply-To: <CAPLW+4nmonxdLCWEZy15attd5ULUfL0VgZf5YQzFBA_0bvUwUw@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 12:50:58 +0100
Message-ID: <CADrjBPoCOzJ0tNU3XSZFy7PAVAUAqCN3bFFDZZPaeyZ_wTJygw@mail.gmail.com>
Subject: Re: [PATCH v3 09/20] clk: samsung: clk-pll: Add support for pll_{0516,0517,518}
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Sam,

On Thu, 12 Oct 2023 at 00:19, Sam Protsenko <semen.protsenko@linaro.org> wr=
ote:
>
> On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@lina=
ro.org> wrote:
> >
> > These plls are found in the Tensor gs101 SoC found in the Pixel 6.
> >
> > pll0516x: Integer PLL with high frequency
> > pll0517x: Integer PLL with middle frequency
> > pll0518x: Integer PLL with low frequency
> >
> > PLL0516x
> > FOUT =3D (MDIV * 2 * FIN)/PDIV * 2^SDIV)
> >
> > PLL0517x and PLL0518x
> > FOUT =3D (MDIV * FIN)/PDIV*2^SDIV)
> >
> > The PLLs are similar enough to pll_0822x that the same code can handle
> > both. The main difference is the change in the fout formula for the
> > high frequency 0516 pll.
> >
> > Locktime for 516,517 & 518 is 150 the same as the pll_0822x lock factor=
.
> > MDIV, SDIV PDIV masks and bit shifts are also the same as 0822x.
> >
> > When defining the PLL the "con" parameter should be set to CON3
> > register, like this
> >
> > PLL(pll_0517x, CLK_FOUT_SHARED0_PLL, "fout_shared0_pll", "oscclk",
> >     PLL_LOCKTIME_PLL_SHARED0, PLL_CON3_PLL_SHARED0,
> >     NULL),
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/clk/samsung/clk-pll.c | 9 ++++++++-
> >  drivers/clk/samsung/clk-pll.h | 3 +++
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/samsung/clk-pll.c b/drivers/clk/samsung/clk-pl=
l.c
> > index 74934c6182ce..4ef9fea2a425 100644
> > --- a/drivers/clk/samsung/clk-pll.c
> > +++ b/drivers/clk/samsung/clk-pll.c
> > @@ -442,7 +442,11 @@ static unsigned long samsung_pll0822x_recalc_rate(=
struct clk_hw *hw,
> >         pdiv =3D (pll_con3 >> PLL0822X_PDIV_SHIFT) & PLL0822X_PDIV_MASK=
;
> >         sdiv =3D (pll_con3 >> PLL0822X_SDIV_SHIFT) & PLL0822X_SDIV_MASK=
;
> >
> > -       fvco *=3D mdiv;
> > +       if (pll->type =3D=3D pll_0516x)
> > +               fvco =3D fvco * 2 * mdiv;
> > +       else
> > +               fvco *=3D mdiv;
> > +
>
> Can be written like this I guess:
>
>        fvco *=3D mdiv;
>        if (pll->type =3D=3D pll_0516x)
>               fvco *=3D 2;
>
> if you think it's more neat. Other than that:
>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

I will update like you suggest and add your Reviewed-by tag.

regards,

Peter.

