Return-Path: <devicetree+bounces-168345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10968A9244C
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 19:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45B20462314
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A88256C67;
	Thu, 17 Apr 2025 17:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="tWMmo9NK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692F8245020
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 17:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744911989; cv=none; b=Moj3dp4IGnl+Xa/NBS0SOErJvGg7gdynZsKZ3vA0s6NV91aaOthFPI+cqdu6X7BMb0/uft4NQgQVRTDiKID6M0eeaNNqPerzpK+y+QVqu3E+VE6viO+LfuHDs7Nm/9DF9vVBkhJsH5xh0kv+z73umsQkSpPfGoDeVDadWjWJIkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744911989; c=relaxed/simple;
	bh=SHusiNh4+rFgJuDeK17m5Z1S6PLQHVzz+ZfMyp5VOJ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mrsLTuIzWsVS1TtbUBMc7+A2cV2jXP+32ecu8hgglDdAdW2hE3Qq9qp+8ukoyVgN/RxA2ctlGTcGys6MhIynIPdO5BNn2V7qF7jm14tV2UcE3/newfQ+19lm3eUZVKEdl5Oeyl0ZCyza7vllva14A9iIILrt2waBXQte6xjeiEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=tWMmo9NK; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6fece18b3c8so9964837b3.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1744911985; x=1745516785; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fWFVgupzA3WcXLT+BN9IkoTUzlpVNJIm/ZYe94t2FFM=;
        b=tWMmo9NK9eWYG+HQkTG9aeDcZ2fXuHS3Dk/tzhWMvHAlkBnOD/EOCjsHoKeicfoT+g
         kXeu69M+leUM23r/TU5rZDMMiFxQXLZE1yEmwncnDYVaNy52HZsUxcmOGVICZEO8On85
         mNUPc9LBJidlVVAqrJE+/TJhuTIUjSVZ9W4t6vREcz2LmqOpCe5KlJp65vlHyx8kA4Wh
         qwWb3KJAl8vaO6oiE52vbvhsZNo2oEm+N3cLAf3f5XmiHYUUpLB7BWJpxj+n59FOZ/g8
         tgJhqC2J7I0aLbvDJONRnbpAaeFZyF2mD2Hc2MvTerKb/sprupC9nMs8VdbFlIMVc38d
         ROSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744911985; x=1745516785;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fWFVgupzA3WcXLT+BN9IkoTUzlpVNJIm/ZYe94t2FFM=;
        b=MGr68LX6KJIwJr2eiUqyLWRYDSAGp+MNr0F6hg+656ErmZ0C37R2fcH0/ZhnJv6T/5
         AK0q7P9jm2pTDsepPwkPt9O/jh7ljcu9Diw7UOUlK41Q6zj0xgSHZhJaccrBvSK1+4u3
         1kfPglAKpRx6Z+jWm7Rau2+o3gi/2QQYHj/ql3WoTA3FotpQ5sDb8eno2CuFC3Zx8oIo
         yG+sX726szHoBPGl+HddWrngcBT4yGP9WKNcB8EyX6S1gfyKIxk0EBwBzeS0lgNM0Mr4
         AlXFyOs9d1fPLYctDUCp78FGGyQC1lHDp+/gLi7RpCZQFl1lmWU5lRD7qTxHaYKh4/Vi
         Ea7w==
X-Forwarded-Encrypted: i=1; AJvYcCW4Oaa7KJXGmvrvxnNFitAVf6RvlDtZIRCyzyNrcy+Et2mzipIsekelQ5SrpGlBN2lLiOfwxhpFmpxL@vger.kernel.org
X-Gm-Message-State: AOJu0YzPUogYhAddQnC1If7gk9XpMlGzaDKuokSfPxts/5wE7oe4L5/E
	V31Njx1ucP1xC7dsFHbVF2O1adh0cCaplaLu96EbK8f42mJ6WyFtKbw5I3+RkZhoUwmyemNLO4t
	lU1Nr87OsbgL9ymrfpSC8JVooYK/3emJGNjIA4A==
X-Gm-Gg: ASbGncvZU0mhnz7kwX8iKJ35qqBN5EitB3ByjA8zCA3QxEr3jrnySiMIeY8fRUrbiZy
	E2IU+UUL6YwLAN4tjfhr2Qlt0ZAad3tak7wFGGHWJw5CdBZj5ROpAc2gDPD2npfN4HBsOet2xVU
	9knndNYBd8joN/Jck/MwwO177dsq8Q7/i0eIQP6DnYLTrtlqhPfkNROg==
X-Google-Smtp-Source: AGHT+IFyC6HYs9e80CmN73xlBJt/HpImaly70LEZmj35WGtDtklY8rBjCjjco5A8WQ2lGInHkA6lzygUfa3Emej99Gg=
X-Received: by 2002:a05:690c:3506:b0:6fe:c040:8eda with SMTP id
 00721157ae682-706b325d56amr97201527b3.4.1744911985301; Thu, 17 Apr 2025
 10:46:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1742418429.git.andrea.porta@suse.com> <370137263691f4fc14928e4b378b27f75bfd0826.1742418429.git.andrea.porta@suse.com>
 <23ac3d05-5fb7-4cd8-bb87-cf1f3eab521d@gmx.net> <Z__alTyVJOwu_1gR@apocalypse>
 <CAPY8ntD2W5xAHGCD+uBL-0QgyYNj6k9MExns=DFvxU1WGYtO5g@mail.gmail.com> <aAD6EXrav161J0vS@apocalypse>
In-Reply-To: <aAD6EXrav161J0vS@apocalypse>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 17 Apr 2025 18:46:02 +0100
X-Gm-Features: ATxdqUHcDbWr8xBnLCzFc0eo6fLOV6JX6u0K_scOh1zjVezR0S_9IzHQVsjXicM
Message-ID: <CAPY8ntBMJUONss_0nCYRPNJ1vTMWMu0Ga3w-r_1jboM+aShH7w@mail.gmail.com>
Subject: Re: [PATCH v8 05/13] clk: rp1: Add support for clocks provided by RP1
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof Wilczynski <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Derek Kiernan <derek.kiernan@amd.com>, 
	Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan <saravanak@google.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Masahiro Yamada <masahiroy@kernel.org>, Herve Codina <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>, kernel-list@raspberrypi.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 17 Apr 2025 at 13:53, Andrea della Porta <andrea.porta@suse.com> wrote:
>
> Hi Dave,
>
> On 11:48 Thu 17 Apr     , Dave Stevenson wrote:
> > Hi Andrea & Stefan.
> >
> > On Wed, 16 Apr 2025 at 17:26, Andrea della Porta <andrea.porta@suse.com> wrote:
> > >
> > > Hi Stefan,
> > >
> > > On 14:09 Mon 14 Apr     , Stefan Wahren wrote:
> > > > Hi Andrea,
> > > >
> > > > Am 19.03.25 um 22:52 schrieb Andrea della Porta:
> > > > > RaspberryPi RP1 is an MFD providing, among other peripherals, several
> > > > > clock generators and PLLs that drives the sub-peripherals.
> > > > > Add the driver to support the clock providers.
> > > > >
> > > > > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > > > > ---
> > > > >   MAINTAINERS           |    5 +
> > > > >   drivers/clk/Kconfig   |    9 +
> > > > >   drivers/clk/Makefile  |    1 +
> > > > >   drivers/clk/clk-rp1.c | 1512 +++++++++++++++++++++++++++++++++++++++++
> > > > >   4 files changed, 1527 insertions(+)
> > > > >   create mode 100644 drivers/clk/clk-rp1.c
> > > > >
> > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > index 896a307fa065..75263700370d 100644
> > > > > --- a/MAINTAINERS
> > > > > +++ b/MAINTAINERS
> > > > > @@ -19748,6 +19748,11 @@ S: Maintained
> > > > >   F:        Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
> > > > >   F:        drivers/media/platform/raspberrypi/rp1-cfe/
> > > > >
> > > > > +RASPBERRY PI RP1 PCI DRIVER
> > > > > +M: Andrea della Porta <andrea.porta@suse.com>
> > > > > +S: Maintained
> > > > > +F: drivers/clk/clk-rp1.c
> > > > > +
> > > > >   RC-CORE / LIRC FRAMEWORK
> > > > >   M:        Sean Young <sean@mess.org>
> > > > >   L:        linux-media@vger.kernel.org
> > > > > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> > > > > index 713573b6c86c..cff90de71409 100644
> > > > > --- a/drivers/clk/Kconfig
> > > > > +++ b/drivers/clk/Kconfig
> > > > > @@ -88,6 +88,15 @@ config COMMON_CLK_RK808
> > > > >       These multi-function devices have two fixed-rate oscillators, clocked at 32KHz each.
> > > > >       Clkout1 is always on, Clkout2 can off by control register.
> > > > >
> > > > > +config COMMON_CLK_RP1
> > > > > +   tristate "Raspberry Pi RP1-based clock support"
> > > > > +   depends on MISC_RP1 || COMPILE_TEST
> > > > > +   default MISC_RP1
> > > > > +   help
> > > > > +     Enable common clock framework support for Raspberry Pi RP1.
> > > > > +     This multi-function device has 3 main PLLs and several clock
> > > > > +     generators to drive the internal sub-peripherals.
> > > > > +
> > > > >   config COMMON_CLK_HI655X
> > > > >     tristate "Clock driver for Hi655x" if EXPERT
> > > > >     depends on (MFD_HI655X_PMIC || COMPILE_TEST)
> > > > > diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> > > > > index bf4bd45adc3a..ff3993ed7e09 100644
> > > > > --- a/drivers/clk/Makefile
> > > > > +++ b/drivers/clk/Makefile
> > > > > @@ -84,6 +84,7 @@ obj-$(CONFIG_CLK_LS1028A_PLLDIG)  += clk-plldig.o
> > > > >   obj-$(CONFIG_COMMON_CLK_PWM)              += clk-pwm.o
> > > > >   obj-$(CONFIG_CLK_QORIQ)                   += clk-qoriq.o
> > > > >   obj-$(CONFIG_COMMON_CLK_RK808)            += clk-rk808.o
> > > > > +obj-$(CONFIG_COMMON_CLK_RP1)            += clk-rp1.o
> > > > >   obj-$(CONFIG_COMMON_CLK_HI655X)           += clk-hi655x.o
> > > > >   obj-$(CONFIG_COMMON_CLK_S2MPS11)  += clk-s2mps11.o
> > > > >   obj-$(CONFIG_COMMON_CLK_SCMI)           += clk-scmi.o
> > > > > diff --git a/drivers/clk/clk-rp1.c b/drivers/clk/clk-rp1.c
> > > > > new file mode 100644
> > > > > index 000000000000..72c74e344c1d
> > > > > --- /dev/null
> > > > > +++ b/drivers/clk/clk-rp1.c
> > > > > @@ -0,0 +1,1512 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > ...
> > > > > +
> > > > > +static int rp1_pll_divider_set_rate(struct clk_hw *hw,
> > > > > +                               unsigned long rate,
> > > > > +                               unsigned long parent_rate)
> > > > > +{
> > > > > +   struct rp1_clk_desc *divider = container_of(hw, struct rp1_clk_desc, div.hw);
> > > > > +   struct rp1_clockman *clockman = divider->clockman;
> > > > > +   const struct rp1_pll_data *data = divider->data;
> > > > > +   u32 div, sec;
> > > > > +
> > > > > +   div = DIV_ROUND_UP_ULL(parent_rate, rate);
> > > > > +   div = clamp(div, 8u, 19u);
> > > > > +
> > > > > +   spin_lock(&clockman->regs_lock);
> > > > > +   sec = clockman_read(clockman, data->ctrl_reg);
> > > > > +   sec &= ~PLL_SEC_DIV_MASK;
> > > > > +   sec |= FIELD_PREP(PLL_SEC_DIV_MASK, div);
> > > > > +
> > > > > +   /* Must keep the divider in reset to change the value. */
> > > > > +   sec |= PLL_SEC_RST;
> > > > > +   clockman_write(clockman, data->ctrl_reg, sec);
> > > > > +
> > > > > +   /* TODO: must sleep 10 pll vco cycles */
> > > > Is it possible to implement this with some kind of xsleep or xdelay?
> > >
> > > I guess so... unless anyone knows a better method such as checking
> > > for some undocumented register flag which reveals when the clock is stable
> > > so it can be enabled (Phil, Dave, please feel free to step in with advice
> > > if you have any), I think this line could solve the issue:
> > >
> > > ndelay (10 * div * NSEC_PER_SEC / parent_rate);
> >
> > I've checked with those involved in the hardware side.
> > There's no hardware flag that the clock is stable, so the ndelay is
> > probably the best option. The VCO can go as low as 600MHz, so the max
> > delay would be 166ns.
>
> Perfect, I'll use ndelay then. However, shouldn't this be 16ns max?
> I think this formula should give a good estimate:
>
> 10ULL * div * NSEC_PER_SEC / parent_rate
>
> and has the advantage of not depending on hard coded values.

I'd copied the number my colleague had given :-) He's now left for the
Easter weekend, but I can hassle him again on Tuesday.

I was expecting a computation rather than hard coded value, but was
giving the maximum as significant delays aren't very friendly.
The fact that we haven't noticed any issues with no delay at all
implies to me that this delay may only be a level of polishing rather
than anything critical. Although there is also the possibility that
they haven't been reconfigured on a regular basis either.

  Dave

> >
> > Thanks for your continuing work on this.
>
> Thank you for checking.
>
> Regards,
> Andrea
>
> >
> >   Dave
> >
> > > Many thanks,
> > > Andrea
> > >
> > > > > +   sec &= ~PLL_SEC_RST;
> > > > > +   clockman_write(clockman, data->ctrl_reg, sec);
> > > > > +   spin_unlock(&clockman->regs_lock);
> > > > > +
> > > > > +   return 0;
> > > > > +}
> > > > > +
> > > > >

