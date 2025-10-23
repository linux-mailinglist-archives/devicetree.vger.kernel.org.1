Return-Path: <devicetree+bounces-230243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 466A8C00D7A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:45:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 895BF3B1C54
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68ACE30DD3C;
	Thu, 23 Oct 2025 11:38:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7798630DED5
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 11:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761219509; cv=none; b=sNBaU+CeVrV4q1Us0ZF/clIfhfjbMTZa0xpCCzgH8OF/N6PvJZLNqmvRihjauGvF0MZ5fr+vyw7xdgmX52SKQg8bLAYOpOX9HNzk+ZcBI00AFtd2oItyoRw87EAGQALNhyiK1SZwn1FYs9YS0mtDArkamDIjQnyeIldp0VUyyX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761219509; c=relaxed/simple;
	bh=6/N3YiTLQifAY9zz3xwpfpgdh+PsNHV80wg+8+9zp1Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OGdob1dE2bj2pfj2zpSDzIY+E66dsG4RqbPRPThnmOY5mFn4MOjKq7MJR7VQVi5njjC22ih5NuYmWSkK59HKk1Em4WTvd4icWW/yqqQleNshE4wNHNaGQ+cY5UK3A9xCuchlH2AfxI7QM5QSp3iF0DomJcHW7HyaiWYW/NIqbU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-556706ea172so657869e0c.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:38:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761219506; x=1761824306;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6zsBv2UTTNDe+bvN26dCEz5bfw+/JNH9ObmAd3JmbGM=;
        b=lxzNVofb/zuY53Mm9rc25Tp3JC42L55Gdcfo2ojQ75tht5Wr3s3bht3HVMNulIcNcL
         1mRCkSCYc4ToCMnJ1lEUJq6fFqjVfKk3c92Jq4sbc1Fw6aqB1NSCnNaaJMmLLN9HHif4
         1JJ1pJKSaMjaenPCAueYjmthdV3MjpacnbOR4/86aqZ9cj/7IwdOhnsQEVSa7pUtmvs1
         jDCpn6b910y29cVt059iGzDtIGKre1TFg1mxaOExsWAqqfktBDr5s9Vvc6BZCug5VeC1
         6sGyzfHBDSU9nIrQl7p2p5KGAuiRfmR/63db79lVaAw1zoF6XQ2aOpmzbPX9wgUFs1Nr
         Ivlw==
X-Forwarded-Encrypted: i=1; AJvYcCWQBAg8PxtKtEagXYfUmK21jEq1YvTOn/UyyB8ipsUBuyF7NqYWHK/3WSp3J9tCgmvJSWWZLdcqS4Ty@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4FDlZMpwF0+MbhPkKDhHdGFxNa8Rc63bTCj36vk1vYI0NP53g
	kjEmMtLx5ejQneiSzhrzL3T0pGPaXmAZ+CVc6BWU9ypJ6I1oYBgpofQDfdYSDnUb
X-Gm-Gg: ASbGncuELQp4kt6s6Eol6OZ0sQ5n6K1/BKIqPwV3a2GqgoNNjPDf+ZnyY2BySdau08R
	9jR89ObebqZMTNPKMrMntzUpvJxZoQwcN3ab/pzyuMAAX3hPvbn70SofOYte3jld3Wabf9RPHmK
	gJtnNN+cg2hbKBQpV+0K70AN6Hz1PJ0L7mmcxsviaxm/UGvl9EAGJBvkNNQ/JLDEQiyuTGoXezT
	t6DsCyg1MNsbyMLhyU/YhfkH1Z864A0TdzL3Fdh2NhyDWNKGEQzRukKsVfG7wAkY4JmqFAycVrm
	CIh3ZkcvynOhyT5sf3+sPgzeEsSaeheQQAd5vmZOhRHSYYaUVG2aglNj+S+pP3EbUcClZm/iBps
	X4ixCxlI1UD032RSb5GIPtRWbARzotigxq3WoVnSk6Um+ECOgPfBJmYZdkt8L+xSP/h2Pabfwb/
	4YukUnFuC6yuOsRJ5QDgB8Bhkc+S4QFHA/JUVBn2Q6Y/pLYqsIRLpl
X-Google-Smtp-Source: AGHT+IFVheNlwJXqy8hh+lwHXfQaL/69nxZ9DDkGcg2TrXPMjU2X+AMf0qbL5HRCFfSaHFKboWeKvQ==
X-Received: by 2002:a05:6122:789:b0:556:94ae:ae32 with SMTP id 71dfb90a1353d-556964c6ed2mr2251790e0c.4.1761219505969;
        Thu, 23 Oct 2025 04:38:25 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557bdbbba23sm628480e0c.13.2025.10.23.04.38.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 04:38:25 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-556706ea172so657846e0c.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 04:38:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVXTAjqDAwWBzlcjnZlX1dlJ/Vm+ulh1xwnF4rGWB348zVQvaCsKdKvxm65i5i1jxftfQ5+ZVpUtExa@vger.kernel.org
X-Received: by 2002:a67:fd0f:0:b0:5d4:1499:99a4 with SMTP id
 ada2fe7eead31-5db238491ffmr1515554137.13.1761219064357; Thu, 23 Oct 2025
 04:31:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020080648.13452-1-herve.codina@bootlin.com>
 <20251020080648.13452-8-herve.codina@bootlin.com> <CAMuHMdV03D_3b_JA2vzW4tE_QbkkT1bN1dm+zLLLX24oDHMj0Q@mail.gmail.com>
 <20251022150339.4c48649e@bootlin.com>
In-Reply-To: <20251022150339.4c48649e@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 13:30:53 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWY=FbO6YG1jrd0OWfrpPpBzrqmBVcWnw7TnnsKPGgr8A@mail.gmail.com>
X-Gm-Features: AWmQ_bml4kcY7IJK2WvckNb7k-cRq3k2ESGBRnimvIxLnwqyhf2dlX518mVHMZI
Message-ID: <CAMuHMdWY=FbO6YG1jrd0OWfrpPpBzrqmBVcWnw7TnnsKPGgr8A@mail.gmail.com>
Subject: Re: [PATCH v5 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: Herve Codina <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Serge Semin <fancer.lancer@gmail.com>, Phil Edworthy <phil.edworthy@renesas.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Pascal Eberhard <pascal.eberhard@se.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Wed, 22 Oct 2025 at 15:03, Herve Codina <herve.codina@bootlin.com> wrote=
:
> On Tue, 21 Oct 2025 15:05:35 +0200
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, 20 Oct 2025 at 10:08, Herve Codina (Schneider Electric)
> > <herve.codina@bootlin.com> wrote:
> > > On the Renesas RZ/N1 SoC, GPIOs can generate interruptions. Those
> > > interruption lines are multiplexed by the GPIO Interrupt Multiplexer =
in
> > > order to map 32 * 3 GPIO interrupt lines to 8 GIC interrupt lines.
> > >
> > > The GPIO interrupt multiplexer IP does nothing but select 8 GPIO
> > > IRQ lines out of the 96 available to wire them to the GIC input lines=
.
> > >
> > > Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootli=
n.com>

> > > --- /dev/null
> > > +++ b/drivers/soc/renesas/rzn1_irqmux.c
> > > @@ -0,0 +1,150 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * RZ/N1 GPIO Interrupt Multiplexer
> > > + *
> > > + * Copyright 2025 Schneider Electric
> > > + * Author: Herve Codina <herve.codina@bootlin.com>
> > > + */
> > > +
> > > +#include <linux/bitops.h>
> > > +#include <linux/build_bug.h>
> > > +#include <linux/mod_devicetable.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of.h>
> > > +#include <linux/of_irq.h>
> > > +#include <linux/platform_device.h>
> > > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +
> > > +/*
> > > + * The array index is the output line index, the value at the index =
is the
> > > + * GIC SPI interrupt number the output line is connected to.
> > > + */
> > > +static const u32 rzn1_irqmux_output_lines[] =3D {
> > > +       103, 104, 105, 106, 107, 108, 109, 110
> > > +};
> >
> > I did read the discussion with Wolfram, but the flexibility (and
> > overhead) provided by this array sounds a bit overkill to me.
> >
> > What about just defining:
> >
> >     #define RZN1_IRQMUX_SPI_BASE    103
> >     #define RZN1_IRQMUX_NUM_IRQS    8
> >
> > ?
> >
> > If/when a new SoC with a similar setup ever arrives, you can probably
> > just replace the constants above by variables inside SoC-specific
> > match data.  And if the new mapping would be non-contiguous, you can
> > still revive this array ;-)
>
> I have in mind a use case that can lead to a non-contiguous mapping.
>
> The RZ/N1 SoC embeds a Cortex-M3 CPU. This CPU can use GPIOs and
> some of them for interrupt purpose. In that case, those GPIOs have
> to be routed to the interrupt line expected by the Cortex-M3.
>
> And so, we have some interrupts reserved for CPUs running Linux and
> some others for the Cortex-M3.
>
> Among those reserved interrupts may some are not used.
>
> for instance:
>   Interrupt 103, 102: Reserved and used by Linux
>   Interrupt 103: Reserved for Linux but not used -> Hole in the mapping
>   Interrupt 104: Reserved and used my Cortex-M3 (need to be routed by Lin=
ux)

102 does not seem to  be correct?

> I don't know if this use case is relevant but I think we should be too re=
strictive
> on the mapping and so accept holes.
>
> With that in mind, I let you confirm that you still prefer to have a mapp=
ing
> without any holes. A future patch to support that is always possible.

While that would indeed be a non-discontiguous mapping, I do not see how
it is related to rzn1_irqmux_output_lines[] in the driver.  That array
would still contain the same contiguous values 103..110, right?

Sorry, I haven't been following the development of this driver that
closely (RZ/N1 is completely different from e.g. R-Car, and I never
had access to an RZ/N1 platform), so perhaps I am missing something.
Why does the user have to specify an interrupt-map in DT? Can't the
driver create the mapping dynamically, based actual usage of the
GPIOs? I.e. the first 8 GPIOs that ask for interrupt functionality
receive it, and are mapped to an available GIC interrupt?
I believe this is how rzg2l-irqc works, mapping up to 32 GPIO interrupts
to 32 GIC (TINT) interrupts.

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

