Return-Path: <devicetree+bounces-56036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BBA8976D7
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 19:34:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 561E41F2F790
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5CA15FA8D;
	Wed,  3 Apr 2024 17:19:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="qzOhqNad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7413215F412
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 17:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712164759; cv=none; b=uArph2ZTnAC3UlVbXZLJz0c9X1QiQ7j2/1aIlKyRGdv7jkyti5AVsUslnXvP2IgtP0Qtuw/u3bgqrTh5+JDYN9cIESSZO7OFYHjc6ZntJcDKm+TBWDUDLQVhicbwvToctHpcRORciwBn3PKFPyNX7PXvI09OzOf+37iILk087Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712164759; c=relaxed/simple;
	bh=7WCygVy7w74ejcPOlh+nPVv7g5gmJJBdDz9sW2iRKLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZeQqnA9vU7n+cU1hI2ldzO6eNdpW6pbuBS1ahGx7DmE6FEFss/E/A4FqT5ZvWjBujWNu9HNdAb+hR5WWDmxEeIBiu+oTP1bbHtieihVgHBqlkHhIvwem9CnK8pI4wXkKKJgioxqRr0lwQ19iq8lMwypmxAiFSh8qzvtm28Ghvyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=qzOhqNad; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-369f3082524so100755ab.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 10:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1712164756; x=1712769556; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Z7t0uImy7n5WDw0eNkAk8ksvRGRviUSYCwUauyh+YE=;
        b=qzOhqNadpwW+2ttN0BLBUPYhZddfZHmbEX2zUPRzcd1wNslvUmCWuqELD9V6UeaNP9
         TlOQyop41+IaMKJisBabTGL2re3rFG2YavekoOylWDw7EJJGSCF83jI0Kr8TroFeh/8N
         8cpUsTZ4Y72Ybt51FEu0+kZn7CS8Wc2u8464GjogmcYDnpGHZxZDI8OJVloYiV9iYKou
         diwf+t9u3B4jPZ8i0qQPDu3oSZ7ZCNBPz1XUYHcMN0U89RctPqIXRI9GwaMWJcKvQk3G
         gAyAmyenovUGRQu4wrX97Q1uWKwCirsZVd3ed/AfdhQbwk3HicXNUr1rohkPtHssbrW2
         p6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712164756; x=1712769556;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Z7t0uImy7n5WDw0eNkAk8ksvRGRviUSYCwUauyh+YE=;
        b=ny3ehFuSJTsmQ2qSBeZHab5GtXyzjy3rIw7cnHp3Ecvd4P5buKfBXum+S/T5saky+a
         xC+nQ6XeAxBZ/t4jNvYicZaul8q2vXMJ/wlRsEjtOENqpDcGUcNdz/LciofoaJ0iXds5
         yRlIYI3TP/+6a+zDn93Ld+Jrym2jl6v54sSz7DTxyWXPtq4/vtqO1Yvj1IbH94KE6q0D
         MysB3sNvFD7WQLoSkYXkGUcCvRrVyLKJaCi+jIacN0OKoUZWNNv+k/wyGtFDhFqOR26x
         /iwFrZMmaOXYHXCwH6w0hHM9L8DGCxFc/ifQHJUsHIdMnf/RONc979G05C4qUxpiMIG6
         blWA==
X-Forwarded-Encrypted: i=1; AJvYcCU2m5bsZwie/mlM9v50SafVN7+quUvgTTNWbyYTTbWEmNMD4hjsJCdjPYUuWngholD5GcV/Ow/ImRJULPaRedP6zIuATEaqZjNgPw==
X-Gm-Message-State: AOJu0Yw56mACUxMpeQk8ECGaDpa91D8+9zphXRpWY8FsMurYBOLLnPoN
	WQZOChcebLu5iP/MRWA8AsKJvl5YPiyaq9Au5Tse2S21dT4uGmDFssEKQaGe/mpEXLQg1uYJorK
	zlTMcxS3W0fNBks3tWNQXxD2QlKfD7OOG16dX4A==
X-Google-Smtp-Source: AGHT+IEqVdgnXbdDh9CbZVI24256r9T+FVR5QXVTF8fAn05s0ucQcU9MTtFkNFbC1NNm0uzSG/hflw+wi5+kai0kSMY=
X-Received: by 2002:a05:6e02:12eb:b0:368:96d2:7cdc with SMTP id
 l11-20020a056e0212eb00b0036896d27cdcmr440484iln.10.1712164756522; Wed, 03 Apr
 2024 10:19:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CA+V-a8tGucbJ87hsMQDEgcor5BzDmB_WnRsEn6c9F_HzucWLXQ@mail.gmail.com>
 <CAK9=C2VgiRcQjBEPmZjdcMf221omKS8ntdcenSE7G__4xYcCUA@mail.gmail.com> <CA+V-a8ser=hDmst6+XSeOWaEoOd+iY3Ys6bYBWDa5UYPfT+Pug@mail.gmail.com>
In-Reply-To: <CA+V-a8ser=hDmst6+XSeOWaEoOd+iY3Ys6bYBWDa5UYPfT+Pug@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 3 Apr 2024 22:49:04 +0530
Message-ID: <CAAhSdy32Lxp-8_wQdZ3oc0yKBqJzurrMr7i30XRA6WTyqTbqmA@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 3, 2024 at 9:19=E2=80=AFPM Lad, Prabhakar
<prabhakar.csengg@gmail.com> wrote:
>
> On Wed, Apr 3, 2024 at 3:17=E2=80=AFPM Anup Patel <apatel@ventanamicro.co=
m> wrote:
> >
> > On Wed, Apr 3, 2024 at 2:01=E2=80=AFPM Lad, Prabhakar
> > <prabhakar.csengg@gmail.com> wrote:
> > >
> > > Hi Anup,
> > >
> > > On Thu, Feb 22, 2024 at 9:41=E2=80=AFAM Anup Patel <apatel@ventanamic=
ro.com> wrote:
> > > >
> > > > The PLIC driver does not require very early initialization so conve=
rt
> > > > it into a platform driver.
> > > >
> > > > After conversion, the PLIC driver is probed after CPUs are brought-=
up
> > > > so setup cpuhp state after context handler of all online CPUs are
> > > > initialized otherwise PLIC driver crashes for platforms with multip=
le
> > > > PLIC instances.
> > > >
> > > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > > > ---
> > > >  drivers/irqchip/irq-sifive-plic.c | 101 ++++++++++++++++++--------=
----
> > > >  1 file changed, 61 insertions(+), 40 deletions(-)
> > > >
> > > This patch seems to have broken things on RZ/Five SoC, after revertin=
g
> > > this patch I get to boot it back again on v6.9-rc2. Looks like there
> > > is some probe order issue after switching to platform driver?
> >
> > Yes, this is most likely related to probe ordering based on your DT.
> >
> > Can you share the failing boot log and DT ?
>
> non working case, https://paste.debian.net/1312947/
> after reverting, https://paste.debian.net/1312948/
> (attached is the DTB)

One potential problem is that
drivers/clocksource/renesas-ostm.c is probed early
using TIMER_OF_DECLARE() but the timer interrupt
is connected to PLIC which is probed late hence the
timer probe will fail.

We have two possible options:
1) Disable OSTM nodes
2) Improve the OSTM driver to probe like a
    regular platform device on RISC-V

Regards,
Anup

