Return-Path: <devicetree+bounces-223336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB54EBB388B
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 12:01:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 802EE321E16
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 10:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D4E23081B2;
	Thu,  2 Oct 2025 10:01:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E92D307AD6
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 10:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759399282; cv=none; b=i1lsfjk4Bjyd+i38/FruRUjAJ6uyHoJesoD9aN8vh1Q5aKVeK6mlHBzn4INLzZB3yiT0uBt4cI4QeKPn4HoNW2rTlGKgsXOtm56bep0aiijxVL1M++KIJdJmbnOleS7Vbh7buvEXICnz4awNvYV1vNfS7GbbCTL424MnOhA5rWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759399282; c=relaxed/simple;
	bh=qwdrYHsBvQB14wz2U6J8ch7KCqaJXYov7V2ZknrzUZw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EZgorBGgqS7fs3IIHTzEQFFoZAgzcZDZYODPyX6423kCEs3NWfAOCDWGjUn+lgS25vEAikr13M1yxwXpPeg1+Et5B8yCK8IC4CfGE5YNyHzeY496feW415sGNWWmYgnjVD6V4UKJ8mSnfmvtUBp53/yj/gKCIc49F7N6teizHUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-528d157a48cso541068137.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:01:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759399279; x=1760004079;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/RofOWkGuskT0pThBBpcV4K5QWIKwV7pHTHUt6UmS6o=;
        b=nQUIDO1ODtbMpD0dFoyLS7E282K0azxHWJhCOhAnLYOyS1G1g4RECH4EUkQ/uszeUz
         M7C27+jhWiNawkX1aKqA3o5ATz1Y0Qz5ZoZgaceu9BShNBBmpx/hElvRDRV57713nH5T
         TGVn3n2xIOW9wdgQiUQ1FTkoK77HWic0EGDnzjgjHTYfkO0POXOgCgQYTG9aA+mQV9Gw
         RnuB3IEHbO0Bvx8iNP0x9RjbeGXUfT/OXEibghXasgXXnbSoPcUpwrBMMVm1orODqfju
         OFObhUVwLRSIDlktWXdXmwTsh/V/SMoQRQkn7Lpwwc2dDssiHNhWc5jgKFK/rCL1IUa0
         4hKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW36koibILX2xPZQT8VyYAC39/zYNCQF68dqXBzXHeT+e6C70h1u3cpoXN+TgNM+aJMyR5cytrx6Qa3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8igYiLRquRUmsen0wQzDJ82zKpXoXBmWG5NEgFbpB4pIg0rie
	eLi2P6xUuDQm+J6mA639wfIVWKQ2AG4M8PiPc8B+wh4NcY7ZJMROZgmrMalQSaxP
X-Gm-Gg: ASbGnctTrMaZvtHuY2r5uGWxJM2+5SrRNR7cbHMsxdhR0+V/mvpY5xKx1y9mqEM0Yz4
	y4nE6edZqGp05trRR9oV/fG+LFr6y6kHj14i340J7TG6nPnDfo7BNB0PWEI3FltpYWxy0KUgpWK
	MUZrQDm1/ybezsd2vNpYofb1RCvjnsZi9eA2XUHr3avFLeVqWGxF2aRc6CCGcIE7+VGnVWdepML
	xa46M3ooYYXf+wjYHy08YKpGPlGwvGGiy4Vjn3DYghWBj6ij14IdCxrfeIF3/+pmS9puV8/zYBY
	uRyg/bhj/GGbbQEpX87lRjOMYPOw3RNARVl/gmolPeKFG+hQkSwtrwm1snuJneRPZx8X/AfXhkd
	B4t9fVRJvMuC2r4w26ccYkifzr/AcuBxMxFoaLaMO1wNVJnEG1tRp70KG5bRINZHjWUxZGiHp3x
	eBiW1x9eb+qcDvtW8D80Q=
X-Google-Smtp-Source: AGHT+IFdj/+gDYUVvJ3qp2Tul8/ynHqvdDjaVPOkKU4aRwgGW0w0uSfIsgzCO7ESjNwMgAsjZIJhLA==
X-Received: by 2002:a67:e015:0:20b0:5d4:1499:99c6 with SMTP id ada2fe7eead31-5d414999cd1mr184605137.0.1759399279230;
        Thu, 02 Oct 2025 03:01:19 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d40c50a12fsm507260137.7.2025.10.02.03.01.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 03:01:18 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-8e286a1afc6so498435241.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:01:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUgE+tojacSx2ijr1Ti2fhF2OTccB0r4M/53oMYurFPTq4mpq5weiRxVr0Bq2yphliJIUCsMIV9hCQy@vger.kernel.org
X-Received: by 2002:a05:6102:3221:b0:5ca:714b:2dcd with SMTP id
 ada2fe7eead31-5d40c0b1b14mr975153137.10.1759399278022; Thu, 02 Oct 2025
 03:01:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250721173741.6369-1-bruno.thomsen@gmail.com>
 <CAMuHMdUb7Jb2=GqK3=Rn+Gv5G9KogcQieqDvjDCkJA4zyX4VcA@mail.gmail.com> <CAH+2xPAKa6TWiEbS8Xk3UfSyNk9N1+C+Vy64vzduU450OdgSwA@mail.gmail.com>
In-Reply-To: <CAH+2xPAKa6TWiEbS8Xk3UfSyNk9N1+C+Vy64vzduU450OdgSwA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Oct 2025 12:01:07 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXahZ5aeqCuUTQa8t2SO=Q3Ktb5ivGATsL5On+8mbqVvQ@mail.gmail.com>
X-Gm-Features: AS18NWA1XHQIaaAGiIEKupXiBQ5KMzxQEIBWDGvGReBFkof8-7P39i7WrjhBWQo
Message-ID: <CAMuHMdXahZ5aeqCuUTQa8t2SO=Q3Ktb5ivGATsL5On+8mbqVvQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: am33xx-l4: fix UART compatible
To: Bruno Thomsen <bruno.thomsen@gmail.com>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
	Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Judith Mendez <jm@ti.com>
Content-Type: text/plain; charset="UTF-8"

Hi Bruno,

On Wed, 1 Oct 2025 at 21:30, Bruno Thomsen <bruno.thomsen@gmail.com> wrote:
> Den tirs. 30. sep. 2025 kl. 19.08 skrev Geert Uytterhoeven
> <geert@linux-m68k.org>:
> > On Mon, 21 Jul 2025 at 19:38, Bruno Thomsen <bruno.thomsen@gmail.com> wrote:
> > > Fixes the following dtschema check warning:
> > >
> > > serial@0 (ti,am3352-uart): compatible: 'oneOf' conditional failed, one must be fixed:
> > >         ['ti,am3352-uart', 'ti,omap3-uart'] is too long
> > >         'ti,am3352-uart' is not one of ['ti,am64-uart', 'ti,j721e-uart']
> > >         'ti,am654-uart' was expected
> > >         from schema $id: http://devicetree.org/schemas/serial/8250_omap.yaml#
> > >
> > > Signed-off-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> >
> > Thanks for your patch, which is now commit ca8be8fc2c306efb ("ARM:
> > dts: am33xx-l4: fix UART compatible") in soc/for-next.
> >
> > This commit broke the serial console on BeagleBone Black.
> > Upon closer look, my .config had CONFIG_SERIAL_OMAP (for
> > "ti,omap3-uart") enabled instead of CONFIG_SERIAL_8250_OMAP (for
> > "ti,am3352-uart").  However, replacing CONFIG_SERIAL_OMAP by
> > CONFIG_SERIAL_8250_OMAP does not help: the serial driver now probes,
> > but I still get no output nor a login prompt.
>
> You properly need to enable CONFIG_SERIAL_8250_OMAP_TTYO_FIXUP
> if using an existing console= kernel argument from the bootloader as UARTs
> will change to ttyS from ttyO.

I did notice that option, and thought it wouldn't hurt to enable it.
Still, I do not use console=, as I rely on chosen/stdout-path.

> Switching the UART driver on am33xx based products fixed UART issues
> we were seeing in our CD test pipelines.

I have found the issue: in the absence of a (legacy) console= parameter,
the serial console reles on the driver's default speed, which is
115200 bps (good) for omap-serial, but 9600 bps (bad) for 8250 serial.
I have submitted a fix "[PATCH] ARM: dts: am33xx: Add missing serial
console speed"[1].

> > The same issue is present when using omap2plus_defconfig, which has
> > both serial options enabled.

Correction: CONFIG_SERIAL_OMAP is no longer enabled in the defconfig
(and IIRC, I had noticed before the serial console was broken with
 that config, but didn't bother, as my config still worked ;-)

> I did not check if any defconfigs needed to be updated.

After my patch, omap2plus_defconfig works again, too.

[1] https://lore.kernel.org/63cef5c3643d359e8ec13366ca79377f12dd73b1.1759398641.git.geert+renesas@glider.be

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

