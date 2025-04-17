Return-Path: <devicetree+bounces-168209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B01A91CFA
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1344F19E671D
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C4C23E22B;
	Thu, 17 Apr 2025 12:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="G2XWn26E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE10188CDB
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 12:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744894403; cv=none; b=l8bgmc0xR+6weXp29AalLdRauqfQGQFSVuvXx8FNnSY0osmW8zvpkI27GXb7AP+h/YA2sMqmF6ydF0os3NF7zF6FZ7qhqEexpc7bJk8ETeFsS2KjcGmZ6DJ9zra/Gt9hf7/MlgOFWWsTi0ixDUHpQpuysmuZfQIcG1rW+zU2axU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744894403; c=relaxed/simple;
	bh=v8LtHKR8VDn4kPK84X0FXJ6nB0e+9YdOgZbGZtUwquw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HcKJfyIj93vojTDUeqnQa6UDhAMtsonSxyzsdcE1PrzGNTv1+z+/Rxlbexe6Jy0UrVEbYL17qx3sCMpE6fqO5ohh/vnmdeivkohEU9ahOJUKn++jTqHb0uvfVyfDXaz7CYcD1vYa4c4mhf0ZQxrUfwVhFme0p2aaQhpRL7UxDs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=G2XWn26E; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39c1ef4ae3aso480312f8f.1
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 05:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744894399; x=1745499199; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zjC36ZPf50aHqfa2Se7VHPLUpGAe6Mh0Hz/kXCMF/9A=;
        b=G2XWn26EqLH50fNBd1W7q9+CB2rGh9Z6gL2BcTlPPg3VIboifASmLxcPtnvqvowk8+
         ijqcakHn5Givk4+4Jz4ITTaKEsfVdW2TmXXhplepkmuxZw+6rBiUNWQcUPOiY5Z5dJEJ
         kkv6ZWym61zXcno06dKSs4OH6Q+GmhOs6PWr0TazSTV0s8GELltaNHCYnoJDM+a5PV1x
         SRSYoaUGyL0T5figz7B9CSMFFj5v2Bhuyi94PnmxK8p/8DYcAtnohfQMU5f/9yybuwZe
         WIuLq3ytl60JolwqwDsX5AJhRlgFVWYwLJzumypeAStFjxXGFKV0DBe3Ex569LfoI/dE
         j5Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744894399; x=1745499199;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zjC36ZPf50aHqfa2Se7VHPLUpGAe6Mh0Hz/kXCMF/9A=;
        b=tXi30lRBLJsar/+JeReZvIjtDO5EOJZ2j9LubFvWFqBZjpZXSQNzHhgGTK8YPk70mo
         69UINfOM0TXVQ+lu/XkAUhmqmmAUzU5dqOCYXS0QrBvfuA1hlVavKkMC6H4MYIHS4z+5
         9AehVcmQ9GPLC8j7RBNmsmN/Ct4h+n0ni/kBGIBVshSo4pO/oAMWLdwUXczBD7IwEwpK
         GDqFRko0xf68eUv1QalUdDlx7aHVCevcpxiWMYugXDPJqzugztlxDekcytQDnntI69um
         8RbkJEq0bXYVT6YjeM8AxUr4MxbJZC+RLapAPTgauxWKqOQqWgTnHjer3qAV/5i3XW/W
         lzvw==
X-Forwarded-Encrypted: i=1; AJvYcCUzhBEL4ceXg0eY1QtC/JBrrm3YKEsaxVTptNgNXi7IRjk6+CZaUI6jkH03Xd/euiBmd5iFtZJo1p/I@vger.kernel.org
X-Gm-Message-State: AOJu0YzenxHrXVqzv00qBN6h523CrIqPVyNgtU8jh1N0d8HrFkcV0z4v
	UPncvimXItPdQGIusSsPfPuskLMdO4gW+PWanpK2aLnQNnJPysHnBmaDGXrTV3g=
X-Gm-Gg: ASbGncuLpoGcizirPBDSCSfmg3MypyTpA6Bjkp25egwhDCM3o39eH9sb3mfmOGh3ikQ
	o6yftV3oxGGXSH0UPsTTMt/ntrVQTp+CXZt5xpt7zZUap+VAIjY3s3RVsLY+6x+xthVPuQYnCHQ
	L2qpoezNxcAMGPNHtU69EQ+1MIMKdpvjrAg42+ARN1KSpCiPiXjEOdu+Bd+KTxS9MVJ+hnouXBB
	qKjC+pfuBT2fLUT1/+6fh8F/CBl0zw1VS5xOJU6R1jjqr3cMA+vCH3aTP+9coIygILwO2/Aq04e
	d2GYnKkAQ7DVrpQaq0UkvYudbGLXZ2lRCdIbBgL0IRkVeOQbHz26PuoE1zpdjUeTLTDs0i0=
X-Google-Smtp-Source: AGHT+IHj3kvQNQuwygBClqqZbgOyKaiMJWyTf63buy+7wpnebSi6rnr/xD4tdoeaaLdERbXgJbSGpw==
X-Received: by 2002:a5d:47a9:0:b0:39c:30d8:32a4 with SMTP id ffacd0b85a97d-39eea30b9e0mr2135444f8f.26.1744894398838;
        Thu, 17 Apr 2025 05:53:18 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf447914sm20097393f8f.97.2025.04.17.05.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 05:53:18 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 17 Apr 2025 14:54:41 +0200
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v8 05/13] clk: rp1: Add support for clocks provided by RP1
Message-ID: <aAD6EXrav161J0vS@apocalypse>
References: <cover.1742418429.git.andrea.porta@suse.com>
 <370137263691f4fc14928e4b378b27f75bfd0826.1742418429.git.andrea.porta@suse.com>
 <23ac3d05-5fb7-4cd8-bb87-cf1f3eab521d@gmx.net>
 <Z__alTyVJOwu_1gR@apocalypse>
 <CAPY8ntD2W5xAHGCD+uBL-0QgyYNj6k9MExns=DFvxU1WGYtO5g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPY8ntD2W5xAHGCD+uBL-0QgyYNj6k9MExns=DFvxU1WGYtO5g@mail.gmail.com>

Hi Dave,

On 11:48 Thu 17 Apr     , Dave Stevenson wrote:
> Hi Andrea & Stefan.
> 
> On Wed, 16 Apr 2025 at 17:26, Andrea della Porta <andrea.porta@suse.com> wrote:
> >
> > Hi Stefan,
> >
> > On 14:09 Mon 14 Apr     , Stefan Wahren wrote:
> > > Hi Andrea,
> > >
> > > Am 19.03.25 um 22:52 schrieb Andrea della Porta:
> > > > RaspberryPi RP1 is an MFD providing, among other peripherals, several
> > > > clock generators and PLLs that drives the sub-peripherals.
> > > > Add the driver to support the clock providers.
> > > >
> > > > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > > > ---
> > > >   MAINTAINERS           |    5 +
> > > >   drivers/clk/Kconfig   |    9 +
> > > >   drivers/clk/Makefile  |    1 +
> > > >   drivers/clk/clk-rp1.c | 1512 +++++++++++++++++++++++++++++++++++++++++
> > > >   4 files changed, 1527 insertions(+)
> > > >   create mode 100644 drivers/clk/clk-rp1.c
> > > >
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index 896a307fa065..75263700370d 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -19748,6 +19748,11 @@ S: Maintained
> > > >   F:        Documentation/devicetree/bindings/media/raspberrypi,rp1-cfe.yaml
> > > >   F:        drivers/media/platform/raspberrypi/rp1-cfe/
> > > >
> > > > +RASPBERRY PI RP1 PCI DRIVER
> > > > +M: Andrea della Porta <andrea.porta@suse.com>
> > > > +S: Maintained
> > > > +F: drivers/clk/clk-rp1.c
> > > > +
> > > >   RC-CORE / LIRC FRAMEWORK
> > > >   M:        Sean Young <sean@mess.org>
> > > >   L:        linux-media@vger.kernel.org
> > > > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> > > > index 713573b6c86c..cff90de71409 100644
> > > > --- a/drivers/clk/Kconfig
> > > > +++ b/drivers/clk/Kconfig
> > > > @@ -88,6 +88,15 @@ config COMMON_CLK_RK808
> > > >       These multi-function devices have two fixed-rate oscillators, clocked at 32KHz each.
> > > >       Clkout1 is always on, Clkout2 can off by control register.
> > > >
> > > > +config COMMON_CLK_RP1
> > > > +   tristate "Raspberry Pi RP1-based clock support"
> > > > +   depends on MISC_RP1 || COMPILE_TEST
> > > > +   default MISC_RP1
> > > > +   help
> > > > +     Enable common clock framework support for Raspberry Pi RP1.
> > > > +     This multi-function device has 3 main PLLs and several clock
> > > > +     generators to drive the internal sub-peripherals.
> > > > +
> > > >   config COMMON_CLK_HI655X
> > > >     tristate "Clock driver for Hi655x" if EXPERT
> > > >     depends on (MFD_HI655X_PMIC || COMPILE_TEST)
> > > > diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> > > > index bf4bd45adc3a..ff3993ed7e09 100644
> > > > --- a/drivers/clk/Makefile
> > > > +++ b/drivers/clk/Makefile
> > > > @@ -84,6 +84,7 @@ obj-$(CONFIG_CLK_LS1028A_PLLDIG)  += clk-plldig.o
> > > >   obj-$(CONFIG_COMMON_CLK_PWM)              += clk-pwm.o
> > > >   obj-$(CONFIG_CLK_QORIQ)                   += clk-qoriq.o
> > > >   obj-$(CONFIG_COMMON_CLK_RK808)            += clk-rk808.o
> > > > +obj-$(CONFIG_COMMON_CLK_RP1)            += clk-rp1.o
> > > >   obj-$(CONFIG_COMMON_CLK_HI655X)           += clk-hi655x.o
> > > >   obj-$(CONFIG_COMMON_CLK_S2MPS11)  += clk-s2mps11.o
> > > >   obj-$(CONFIG_COMMON_CLK_SCMI)           += clk-scmi.o
> > > > diff --git a/drivers/clk/clk-rp1.c b/drivers/clk/clk-rp1.c
> > > > new file mode 100644
> > > > index 000000000000..72c74e344c1d
> > > > --- /dev/null
> > > > +++ b/drivers/clk/clk-rp1.c
> > > > @@ -0,0 +1,1512 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > ...
> > > > +
> > > > +static int rp1_pll_divider_set_rate(struct clk_hw *hw,
> > > > +                               unsigned long rate,
> > > > +                               unsigned long parent_rate)
> > > > +{
> > > > +   struct rp1_clk_desc *divider = container_of(hw, struct rp1_clk_desc, div.hw);
> > > > +   struct rp1_clockman *clockman = divider->clockman;
> > > > +   const struct rp1_pll_data *data = divider->data;
> > > > +   u32 div, sec;
> > > > +
> > > > +   div = DIV_ROUND_UP_ULL(parent_rate, rate);
> > > > +   div = clamp(div, 8u, 19u);
> > > > +
> > > > +   spin_lock(&clockman->regs_lock);
> > > > +   sec = clockman_read(clockman, data->ctrl_reg);
> > > > +   sec &= ~PLL_SEC_DIV_MASK;
> > > > +   sec |= FIELD_PREP(PLL_SEC_DIV_MASK, div);
> > > > +
> > > > +   /* Must keep the divider in reset to change the value. */
> > > > +   sec |= PLL_SEC_RST;
> > > > +   clockman_write(clockman, data->ctrl_reg, sec);
> > > > +
> > > > +   /* TODO: must sleep 10 pll vco cycles */
> > > Is it possible to implement this with some kind of xsleep or xdelay?
> >
> > I guess so... unless anyone knows a better method such as checking
> > for some undocumented register flag which reveals when the clock is stable
> > so it can be enabled (Phil, Dave, please feel free to step in with advice
> > if you have any), I think this line could solve the issue:
> >
> > ndelay (10 * div * NSEC_PER_SEC / parent_rate);
> 
> I've checked with those involved in the hardware side.
> There's no hardware flag that the clock is stable, so the ndelay is
> probably the best option. The VCO can go as low as 600MHz, so the max
> delay would be 166ns.

Perfect, I'll use ndelay then. However, shouldn't this be 16ns max?
I think this formula should give a good estimate:

10ULL * div * NSEC_PER_SEC / parent_rate

and has the advantage of not depending on hard coded values.

> 
> Thanks for your continuing work on this.

Thank you for checking.

Regards,
Andrea

> 
>   Dave
> 
> > Many thanks,
> > Andrea
> >
> > > > +   sec &= ~PLL_SEC_RST;
> > > > +   clockman_write(clockman, data->ctrl_reg, sec);
> > > > +   spin_unlock(&clockman->regs_lock);
> > > > +
> > > > +   return 0;
> > > > +}
> > > > +
> > > >

