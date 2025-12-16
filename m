Return-Path: <devicetree+bounces-247097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3875CC4219
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 17:09:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E2C573045C12
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 16:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95FEA346A13;
	Tue, 16 Dec 2025 16:08:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E692128314C
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765901282; cv=none; b=qRS2D8892OwLVphmvIvtQQLdvCWAHSnDoEEfuNQZfHP0p46vjKcIS79ooNsZRV1ybGhfs1ZQ4CzoDIC2/17ZSgkudzl9dT7afHccDI85mG7Z0QrqI5Bla7CLhuQtpTNEIR/Nyta/8X9Tf0aRaUr+0zMAtb+1SJrbcM2owS2F+hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765901282; c=relaxed/simple;
	bh=Zfv7/J2HqBQJAWNtd3OPpdhXYiso4BIxRt28OG2jKaU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fXIH618e1VR7uwohEPGyyZRXJT8/neGsSfaL+kR38mCxCP8dBFTbCODMa6L9E4RgG8plLzwSHLRcZQaemgGsBaR9HbVjPg40Vjn4TjeQyHEC7oFv7Ubv+2j6w+gvsn9H0U2vMxr/pZbE6ovGotW9MpHuCHWfhTRAYEZnROGNpL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55b0d4b560aso3077117e0c.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:07:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765901276; x=1766506076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d7a58Zap6AKD72x6a4wEmUngGW3Eh2V1b4GmMRFg1GY=;
        b=iLwFyDGVHeQd/Jn7lNnmZ9L8dk34A5Zoeh7BftCY8bVqdnWM6o8W7pwzvAXJbXhIGO
         7ufAwVR0nfpqrlgjrJcQ5Bz3KhU+UDt65DhTSWsauqeIMXTrxfH5enRgwIMMpLcg+bBH
         JdgVXcpYeeymvHcQoghXvcDBLVr03+tQ+iwBZPDY5n85l0UoynUwX+ConqWssCMTZT1A
         zpbhZEcFEJIl3qvVFCL7oGLWURJuZo5OXcVbu6/4LT6NxCxeNyaL1Kgl5T+WMOmrsGmD
         kzzg8r48k3bzErSL2Eqm2fJdBB3QFORe1hOOD3keJpkTKcYhQbke8L2yQ47MRFxO+Ytj
         TbWg==
X-Forwarded-Encrypted: i=1; AJvYcCXrx+aKV8m3B/wdEip5Tg0TlI3GwaKMhMRTJIbPshjgLANTuiuv/v2FKdmzmeNo2ZEplCSlC6M7HHw5@vger.kernel.org
X-Gm-Message-State: AOJu0YxWPjb2ITLnzZQqOMe6zIZYJDljb78BE9w9mah0xlDbdAPEFM3N
	6B78TLgFJPqk8yk9Ugs8ACifmnW2hjLqG6uS6uE9CqXHD6a6Kz2YlJoRy0A7ArA2
X-Gm-Gg: AY/fxX7WDEJSL2Xmxq2ireOjprJQ1JX0j2A1Uk6enijcfZiDuZulvWLxKFU9fPCNxnH
	6z+nKAkudW+FdTem39tUeWfaIisjzNRNTznm7juFhP1J8hVy6Csor7vP0b6SXBko0FckYlAy4Cw
	m/pwDE5yk1ZFrXc24X0+cF2Q0dLnDimiugqt1DU83d1KZHVNTzM7qxONfm/9wZxXroFaMbRLw7y
	zHEFVOx8DjU/TBDz3H2LVFDT8azHpQql2ZLUNKpPT9g5CrZZoTiCJZO1Xb5xqeCzkRSk4q7ZY3H
	fS3/1gSKhmMiA+1vn0QzpSrOufPsvEg5eZNa3/d21BzTaBbMKITRNY2knrstpTP6xrEX2cGZNs/
	Js/zHiXefJxaHSgafFDqg++FGi7bwSQiBWGYW9pwkj7nm0v/Js2WQkyKAuHiDH+jDd7md7eyYBJ
	cNMQgRvpCTShuFbtm1FW9riSVpl4XD9iOxNuSYdt/Gf7eGfXmYoKyy
X-Google-Smtp-Source: AGHT+IHHgBtU4x23G7I5+gX+epl+GZtYda3sa+ENgNVz/O2sUCKP6kt1y+mRO+v0yC90fti2DwGtXQ==
X-Received: by 2002:a05:6122:328e:b0:55b:7494:383c with SMTP id 71dfb90a1353d-55fecbf6c15mr4874701e0c.7.1765901276055;
        Tue, 16 Dec 2025 08:07:56 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93f5ad1abe3sm5677793241.7.2025.12.16.08.07.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 08:07:54 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55b22d3b2a6so3122077e0c.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:07:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVTmOS4Y7G0qjVS2kG+Z1c04ZdpaEvfIb5drRksN5DlXu2142vjadFJ5x+3LSXuUBJ6Mv7PvLF28TEw@vger.kernel.org
X-Received: by 2002:a05:6122:311c:b0:55b:9bf6:da7d with SMTP id
 71dfb90a1353d-55fec96569dmr4663674e0c.2.1765901273927; Tue, 16 Dec 2025
 08:07:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201112933.488801-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20251201112933.488801-3-cosmin-gabriel.tanislav.xa@renesas.com>
 <CAMuHMdWY7QLfag8szj24Oo8ghfZn84msRHREAvrB_A2inA7WrA@mail.gmail.com> <TYYPR01MB139550D01768B025E402B683D85AAA@TYYPR01MB13955.jpnprd01.prod.outlook.com>
In-Reply-To: <TYYPR01MB139550D01768B025E402B683D85AAA@TYYPR01MB13955.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Dec 2025 17:07:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXJbdnqXpt4xJUuB5+0Xm+p==LR+z7umAEE2kv3B1_EOw@mail.gmail.com>
X-Gm-Features: AQt7F2rKCtXMxN22sJ0lYUtQ21UXUHEepLOts4Hc2w5dOJHNvmEqWhA4oFsXrtA
Message-ID: <CAMuHMdXJbdnqXpt4xJUuB5+0Xm+p==LR+z7umAEE2kv3B1_EOw@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] irqchip: add RZ/{T2H,N2H} Interrupt Controller
 (ICU) driver
To: Cosmin-Gabriel Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Tue, 16 Dec 2025 at 13:27, Cosmin-Gabriel Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Mon, 1 Dec 2025 at 12:30, Cosmin Tanislav
> > <cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> > > The Renesas RZ/T2H (R9A09G077) and Renesas RZ/N2H (R9A09G087) SoCs have
> > > an Interrupt Controller (ICU) that supports interrupts from external
> > > pins IRQ0 to IRQ15, and SEI, and software-triggered interrupts INTCPU0
> > > to INTCPU15.
> > >
> > > INTCPU0 to INTCPU13, IRQ0 to IRQ13 are non-safety interrupts, while
> > > INTCPU14, INTCPU15, IRQ14, IRQ15 and SEI are safety interrupts, and are
> > > exposed via a separate register space.
> > >
> > > Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> >
> > Thanks for your patch, which is now commit 13e7b3305b647cf5
> > ("irqchip: Add RZ/{T2H,N2H} Interrupt Controller (ICU) driver")
> > in irqchip/irq/drivers.
> >
> > > --- a/drivers/soc/renesas/Kconfig
> > > +++ b/drivers/soc/renesas/Kconfig
> > > @@ -423,6 +423,7 @@ config ARCH_R9A09G057
> > >  config ARCH_R9A09G077
> > >         bool "ARM64 Platform support for R9A09G077 (RZ/T2H)"
> > >         default y if ARCH_RENESAS
> > > +       select RENESAS_RZT2H_ICU
> > >         help
> > >           This enables support for the Renesas RZ/T2H SoC variants.
> > >
> >
> > This change should have been a separate patch, to be routed through the
> > renesas-devel tree.  In addition, you forgot to add the same select to the
> > ARCH_R9A09G087 entry below.
> >
>
> My bad, I did not think about that. Is there anything I should be doing now
> to fix the situation? Or is it just something to keep in mind for future
> patches?

It is something to keep in mind for future patches.

> I will submit another patch to add the select to ARCH_R9A09G087.

Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

