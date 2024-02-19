Return-Path: <devicetree+bounces-43335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D9D85A017
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 10:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0376D1F22807
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 09:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B4924A09;
	Mon, 19 Feb 2024 09:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ZfZOs1ye"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D352421E
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 09:45:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708335952; cv=none; b=pMF6mEczHwpQn8mv91BYBoWs2maaXqNz4JbGwpCi7z1G14XbAGvyYSpqWrFuZdPQojMr8HyMtGdfDjZof84AHcRpKLTwOgXOxSRdH38H9LPBocQNhjM8CmEEI8ZaCDx47uclUO2YSMa9dr6tN3yKwfti5sdqQ0PxsMDooU5+BBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708335952; c=relaxed/simple;
	bh=N9nunNqolWoHQ9jtyYVDUhqU0wlAtz5/DFbjp/E6MEY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=moe7jOcoWYsn0WQvlTdN2C7m3JAoueB0W8s6sEDr+SxhJALK6dn51BJWYgxaBTWn/oDTv8Y3QEcdGmFvdRFByp5a3cWXcIJ6G/bfna7mPcxGeOlPiZAZt9MDL1aehbhMPzH0/DKZvJLc3gdZSuXXfkF1Nv6pLi38n4Q5M83XBys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ZfZOs1ye; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d228a132acso24734531fa.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 01:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708335949; x=1708940749; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=naVcereUeVbO3/kpmJac5B2YT7rfwRkVivtJPUxX/Ps=;
        b=ZfZOs1yepMZ/+X74bNyoNknK8IFMGlFouNR323sArMSPje3AkgsUcXuSFCsHCNc5z8
         SeBav1xcuNb6bi4na7K9OhlbC7cRclvbKvX9t8a7H3TkyTPSLQaBuWh9auLvIBhvtsIt
         Q9hXvgvoIFYPi4wqv8Oc0YNA51yifVJth7F2HansNJJ5Al6kY9AMo5J3V1Gwz4QQY2TO
         oEaa1LLBdbFt2xnJ9MXs5khE4ENge/EjMeFhfwiIm6QRT+0x68oqElubsBX0/dkBuWVB
         ThoHyuUWKBIKjNgsJXAw5jLcLNY78PWw0xKO0US3u0nEXPRc8Syyl6DHaQMq1kn930Ca
         zWeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708335949; x=1708940749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=naVcereUeVbO3/kpmJac5B2YT7rfwRkVivtJPUxX/Ps=;
        b=Ip658sfyyIDOAO3GWuS0LZUKar5yoMiiKDfJsx58yEotxDUNO6bHp6aYyRxhmN6Xy2
         kKinWLZ2FehE4wfCH6CIRDYYLaQ81Fe/ZwdQ2zRbxtSUdI9ba6/NvSj+75kw4624MCar
         WxoBjUkKHW9GZMqC97EL41AzVtgB8rDjjJXxHRgTEpx7V1mrHtnhipxpmNnYzjbGcQ7+
         4CSX5hRpvf1MVENMEhDdjZNlmQW56gBJtu1BN4G/+Q6ENglfc0/iFLL81DArfwXy0YTM
         +sYVgCap7sb21OAoZ/DooFSXvwspQjDSL2dz76ktfxOmFMe2aLQ/Yo4KwFjYEgaIK8UN
         TIFw==
X-Forwarded-Encrypted: i=1; AJvYcCVOEmlGPLxv7HmXrbYueta/T0AcyJ/7uWh+t1UNjtt/wMQFUGJbs2egzGrtS5g22bKnhlFr1MX7OfaniuE2zE55YqDe3dNOfzNS8A==
X-Gm-Message-State: AOJu0YzUfmGG9xxjOHYqbPAyNVA2+LsZZzz9BJtSud7cxqBUCF21AXnm
	AI9K9hSGFq7Wa9ar2mkjdfGAO/OIEbsR7H7lhL58+0TlnFtTi8LIuZHFff0ATEU5aeA117Z6tlh
	XlXxd2hkD1iwepiHtpTyu86Iyfhy/Czje49eFmA==
X-Google-Smtp-Source: AGHT+IGAijWJ2t6HYaGF6pJu0Y9VzBy2gwT9CAw6PjDoQnuVNOtC7X4VHfZDfslwVbPV/P3tZbkNIq5o09aA55e5Vhc=
X-Received: by 2002:a2e:a49a:0:b0:2d2:4315:4d8b with SMTP id
 h26-20020a2ea49a000000b002d243154d8bmr194214lji.2.1708335949088; Mon, 19 Feb
 2024 01:45:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127161753.114685-1-apatel@ventanamicro.com>
 <20240127161753.114685-24-apatel@ventanamicro.com> <8734tsce9o.ffs@tglx>
In-Reply-To: <8734tsce9o.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 19 Feb 2024 15:15:37 +0530
Message-ID: <CAK9=C2Vf63ZcETD-ja33tK11XARz+y5hg1dqjGP-bZTW-XNWHg@mail.gmail.com>
Subject: Re: [PATCH v12 23/25] irqchip/riscv-aplic: Add support for MSI-mode
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 17, 2024 at 2:34=E2=80=AFAM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Sat, Jan 27 2024 at 21:47, Anup Patel wrote:
> > We extend the existing APLIC irqchip driver to support MSI-mode for
> > RISC-V platforms having both wired interrupts and MSIs.
>
> We? Just s/We//

Okay, I will update.

>
> > +
> > +static void aplic_msi_irq_unmask(struct irq_data *d)
> > +{
> > +     aplic_irq_unmask(d);
> > +     irq_chip_unmask_parent(d);
> > +}
> > +
> > +static void aplic_msi_irq_mask(struct irq_data *d)
> > +{
> > +     aplic_irq_mask(d);
> > +     irq_chip_mask_parent(d);
> > +}
>
> Again asymmetric vs. unmask()

Okay, I will update.

>
> > +static void aplic_msi_irq_eoi(struct irq_data *d)
> > +{
> > +     struct aplic_priv *priv =3D irq_data_get_irq_chip_data(d);
> > +     u32 reg_off, reg_mask;
> > +
> > +     /*
> > +      * EOI handling only required only for level-triggered
> > +      * interrupts in APLIC MSI mode.
> > +      */
> > +
> > +     reg_off =3D APLIC_CLRIP_BASE + ((d->hwirq / APLIC_IRQBITS_PER_REG=
) * 4);
> > +     reg_mask =3D BIT(d->hwirq % APLIC_IRQBITS_PER_REG);
> > +     switch (irqd_get_trigger_type(d)) {
> > +     case IRQ_TYPE_LEVEL_LOW:
> > +             if (!(readl(priv->regs + reg_off) & reg_mask))
> > +                     writel(d->hwirq, priv->regs + APLIC_SETIPNUM_LE);
>
> A comment what this condition is for would be nice.

Okay, I will add a comment about the condition.

Regards,
Anup

