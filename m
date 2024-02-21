Return-Path: <devicetree+bounces-44173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0820A85CFDE
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 06:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 73D2DB2229B
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 05:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A85239AF3;
	Wed, 21 Feb 2024 05:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="kJIq0XIU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF55B383BF
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708494157; cv=none; b=S5aiD+J8pcWqZrDUHMdaV/7d79pmPvtWsi8fEAeD6VN1qFyZjqVTg2IKtjzdaXXwcfH+BbaC9asJiAx4tIc9oQEV6M8hvpGoGpdMW8B6TT9FuXtiTdTcagQ5ypTnPgsqavvsr17keDP3NMRdQHbAZqc59vBWR+lyCnWpmpRAl8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708494157; c=relaxed/simple;
	bh=5mHfGkDqXY2sFaL5o9O5bX17A/vCLByoldlnAjHeEcg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M/FXhV27gf31wSieHc7J77sXkNYuoQ3zzy/6GTmWsQ6D5X4gLbONi6RDgUaBxkMKXvcIDpjt93x5nSQMYcvoU7Eor174w8jk3hyECCOWUXcxalN+Fwhn23yZ7Z6DF9KkUxa1nIY/RtspsjfPCnnVfStVAQRmM1OxxvD6qAjSuJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=kJIq0XIU; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d208be133bso66839081fa.2
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 21:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708494154; x=1709098954; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w1d7hZavIMGB2x2hfQFp+lPTn6xdZ/fjiStm9f3KoRE=;
        b=kJIq0XIUbjF7EShwV8QoV94/JtaDLDadPcFOtAsKXF3+jQPK4H3hejkKAqXY5vIROH
         MCrcxCg30f1YCIyp0HNP03OLBvL18qsbL2X36hlU8t1m75j45Nzn3sh2Y5RX7KN3d2Ry
         3pX1nyQ7gx7sZfdsU5p1aWQXz8lQCKxYTrkoksiXoAp1kvCaT2S44EW3J/dKxj8+27u3
         POdtrL0bOYixqm0ALIL9EwSC0lXmTnBJLscemg1yehCUX53xf7xsPEXTYPPiCj4LxzpI
         GVxUy7jMQ1RkThQ3mNs6rNSIj9Y3kvR862Vf1W4FfY2Y4qyoqSXz6CdUDQuNijWH8EsV
         9hXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708494154; x=1709098954;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w1d7hZavIMGB2x2hfQFp+lPTn6xdZ/fjiStm9f3KoRE=;
        b=YO04hPTi7JUYI0fG0UrmY1hX8FeJfyJGf2+C4qYIH3Rq867PFuYHYx3NgRHNC2mEPT
         6LTfOD6QsKNgPK/g/e9IpEX9zbnqbYdpeeENARPixl8VyQm74sx6HxgYV1L7NY/7dGZZ
         w2t2f35r/5yM3OkkkaSAZmWYssvoF5QmS6qDS1tQxAPm4a29pVNc3AmR8YHbU+nM+MyX
         zIViCEQxTdaJS/DjTGGM/umNiHCV2J4NTIKiq0juqGBvzNoBQyDp5ZXT+6hUYGRDmbWr
         9GsYUpe4ujZ6dlOHCGJbzM/A6OMU6GjohfLMEF4Be/1pJTaEj60srz5JY1cBgSbTr4aO
         4w+g==
X-Forwarded-Encrypted: i=1; AJvYcCXX3CtMluXpZjQaKiypimL273w4WV6HIyj0+versPKHwHw8M4QMaYbAikCYrPiphPKMi/KkE28V/ZeHC8ps8Ee3CbXpTafr4iiRBQ==
X-Gm-Message-State: AOJu0Yw6UQm7iV/Fr0nLX9FjjG9uAhrRbSiUU0+a7+zWY9lM+ImCZQHH
	zwWdnI37Fq3DQz8m1gvSZa2mTP1z0DWNrAbRbR9h4Z/Nve1NrE0ISMHbJCX5lokxYkU7zNnnhSt
	MGG9tPn8x/IbOfYCllK4dj3VN48Z+L0VJ52RRFQ==
X-Google-Smtp-Source: AGHT+IFb84z/g0LynflqO9zK/rVG0kAAg34f4O3W488QJp1C1kHZnlxZ0aHySaTBe0gfXMZeky8a58K7CWioKkUsxPU=
X-Received: by 2002:a2e:9bc2:0:b0:2d2:3c72:516d with SMTP id
 w2-20020a2e9bc2000000b002d23c72516dmr4891326ljj.1.1708494153699; Tue, 20 Feb
 2024 21:42:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-11-apatel@ventanamicro.com> <87zfvvgsnr.ffs@tglx>
In-Reply-To: <87zfvvgsnr.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 21 Feb 2024 11:12:22 +0530
Message-ID: <CAK9=C2XhUQtYqe2t3HvjxMZw3ffbUCfGfBVrFHf0_Bxtpz-E9g@mail.gmail.com>
Subject: Re: [PATCH v13 10/13] irqchip: Add RISC-V advanced PLIC driver for direct-mode
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

On Tue, Feb 20, 2024 at 7:10=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
> > +/*
> > + * To handle an APLIC direct interrupts, we just read the CLAIMI regis=
ter
> > + * which will return highest priority pending interrupt and clear the
> > + * pending bit of the interrupt. This process is repeated until CLAIMI
> > + * register return zero value.
> > + */
> > +static void aplic_direct_handle_irq(struct irq_desc *desc)
> > +{
> > +     struct aplic_idc *idc =3D this_cpu_ptr(&aplic_idcs);
> > +     struct irq_domain *irqdomain =3D idc->direct->irqdomain;
> > +     struct irq_chip *chip =3D irq_desc_get_chip(desc);
> > +     irq_hw_number_t hw_irq;
> > +     int irq;
> > +
> > +     chained_irq_enter(chip, desc);
> > +
> > +     while ((hw_irq =3D readl(idc->regs + APLIC_IDC_CLAIMI))) {
> > +             hw_irq =3D hw_irq >> APLIC_IDC_TOPI_ID_SHIFT;
> > +             irq =3D irq_find_mapping(irqdomain, hw_irq);
> > +
> > +             if (unlikely(irq <=3D 0))
> > +                     dev_warn_ratelimited(idc->direct->priv.dev,
> > +                                          "hw_irq %lu mapping not foun=
d\n", hw_irq);
>
> Lacks brackets. See Documentation....

Okay, I will update.

>
> > +             else
> > +                     generic_handle_irq(irq);
> > +     }
> > +
> > +static int aplic_direct_starting_cpu(unsigned int cpu)
> > +{
> > +     if (aplic_direct_parent_irq)
> > +             enable_percpu_irq(aplic_direct_parent_irq,
> > +                               irq_get_trigger_type(aplic_direct_paren=
t_irq));
>
> Ditto.

Okay, I will update.

>
> > +     return 0;
> > +}
>
> > +void aplic_init_hw_global(struct aplic_priv *priv, bool msi_mode)
> > +{
> > +     u32 val;
> > +#ifdef CONFIG_RISCV_M_MODE
> > +     u32 valH;
>
> No camel case please.

Okay.

>
> > +
> > +     if (msi_mode) {
> > +             val =3D lower_32_bits(priv->msicfg.base_ppn);
> > +             valH =3D FIELD_PREP(APLIC_xMSICFGADDRH_BAPPN, upper_32_bi=
ts(priv->msicfg.base_ppn));
> > +             valH |=3D FIELD_PREP(APLIC_xMSICFGADDRH_LHXW, priv->msicf=
g.lhxw);
> > +             valH |=3D FIELD_PREP(APLIC_xMSICFGADDRH_HHXW, priv->msicf=
g.hhxw);
> > +             valH |=3D FIELD_PREP(APLIC_xMSICFGADDRH_LHXS, priv->msicf=
g.lhxs);
> > +             valH |=3D FIELD_PREP(APLIC_xMSICFGADDRH_HHXS, priv->msicf=
g.hhxs);
> > +             writel(val, priv->regs + APLIC_xMSICFGADDR);
> > +             writel(valH, priv->regs + APLIC_xMSICFGADDRH);
> > +     }
>
> Thanks,
>
>         tglx

Regards,
Anup

