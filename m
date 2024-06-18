Return-Path: <devicetree+bounces-77144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF790D7BA
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:49:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E0F328764B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282F247F59;
	Tue, 18 Jun 2024 15:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="cojZHNZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFA6D299
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 15:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718725732; cv=none; b=s/MwTY8ahySkatgLRbhaOyRYYYSURkBq27amWI9VuTMShGD/OY6Cf2EAXAq57XpebI1TrV6w9AYelnxXP/99nvlszetY9CmKl/ppJ2fpOp2nyOQc/8hPTSAUm/+whpR9M5CDffrHa9fN4Tb8VjFPDCai07ZbmNpbiM3P+7jQcdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718725732; c=relaxed/simple;
	bh=7nYwdxwp+v0UdRiaHwObwWEhHmUzgbvBhanukfXuTMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bpGxKTu5KP/BCqOiQyBtJAcPA2+xALx8xy/nLt7MSOn28mzGlexGjeZS46PRCGVGN9QXyL0aD9Nzehw30QQOC+jcGW9pLtWNuDgDcpEAc9qRY9f/rx0WbMO3OvTVNEpFnOj3bfmUa3v+oy7FyFgvhDAeV9tHXf2t3KreTG9n6Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=cojZHNZ5; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52c94cf4c9bso6488788e87.2
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 08:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1718725727; x=1719330527; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+inZ/rA5cGwmfLVrVBxGHIe/ByHkiXTR9D7JYXq2mRY=;
        b=cojZHNZ52K5Ka0AojyyLRyrUQwbjSHMQYL4Gc3bIBY5cT3rek3Kz5xWD2WTaqBe6ft
         c8mZPFC3x3bKIbPueNlHAy69AMgEBQkRjirmpc5wNcfzF4I2HxXKI+blmjsSYenubbIt
         jMnMtBoMSORlvENLYvBl9+GaJls6Tt4teaEFEuYg0XtA2MWNGMXVQ1NcUDqxCt86g8Zg
         Jx2RMnCKu1Uyjov21tsYDjMO3qWjn1Di0Zz4dm1vzxvQBZuKROqNUlxxV63loWCc/v83
         FSg+4UM+9skZ2x6c7tgS2aRGBbsmTfLkM+yVCqb4AYEAFPdbclmmjs2d26yNNivauTdF
         Cvag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718725727; x=1719330527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+inZ/rA5cGwmfLVrVBxGHIe/ByHkiXTR9D7JYXq2mRY=;
        b=f6VFM9oz3t/cZGac0BqMfOpJQbcfBA1wIZDCw7X2HiTuauOzF7MmAFz1s5fkVkYcs5
         HZsuUOf5EQseGuxh1LIoBwwCEOYRxxHIZQyE9BkercIeWKCkYtrr1/UymOoB5d3Xx6Y7
         jtHV3Lr9uI1OVnKNj6lSX5qVSYTwSKpcRVbAaVlOwP+k1K1+pCYteqsGaa8p9sdjvgIs
         rZjJ35qx4GtbHZBKfMMfuCLZvgi8jh3Bfbe2SVQk1IEBArEqreLeWlSRdXRYrNvJ8DmO
         ti2vyvylOIIbCJQnso9gG+irrFlJvQlAWQDC6XZZvF2j1OBmmqePfM7MUtzxuI7eiIHr
         f96A==
X-Forwarded-Encrypted: i=1; AJvYcCV6kZhezqLb+mrPw427xah88ohNjiZvUis6iivry2GRSApm65UqE0ttjDsvNs7pDdiVh4G4/BiGimMP0jQrY17mKd8pnlsQBQdkkw==
X-Gm-Message-State: AOJu0YxV1Ji6mdDYqyLkw5WF22kZEYZU00ZdxscI6WYEuMCcJPS5hcwP
	t2AGZR7nPoMAXaT9dji9D6ASVNFRt2a6AAudGe5XVuE3Bk8NlhlfzWxd4NnVc3U9T+L9liOr63X
	0q07sEmKSQWto5vFHbDQtm4ZmoE7FbGnGQlhAgg==
X-Google-Smtp-Source: AGHT+IHCofJB3nYZ6lnH+ZjdxZ2DthLF1hCVxttcISmMh5ZfJdkYeASXNXsViX1ARHn9yLCyM1WKZsQdPaZ/1TcUt9I=
X-Received: by 2002:a05:6512:3119:b0:52c:8079:b264 with SMTP id
 2adb3069b0e04-52ccaa2c834mr37588e87.9.1718725726403; Tue, 18 Jun 2024
 08:48:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com> <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
In-Reply-To: <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 18 Jun 2024 21:18:35 +0530
Message-ID: <CAK9=C2WP2+gKScUFuoE9782gjSfnDtcLAw01eCwram3LMAStBg@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, 
	linux-kernel@vger.kernel.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 7:00=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:
>
> Anup Patel wrote:
> > The PLIC driver does not require very early initialization so convert
> > it into a platform driver.
> >
> > After conversion, the PLIC driver is probed after CPUs are brought-up
> > so setup cpuhp state after context handler of all online CPUs are
> > initialized otherwise PLIC driver crashes for platforms with multiple
> > PLIC instances.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>
> Hi Anup,
>
> Sorry for the late reply to the mailing list, but ever since 6.9 where th=
is was
> applied my Allwinner D1 based boards no longer boot. This is the log of m=
y
> LicheeRV Dock booting plain 6.10-rc4, locking up and then rebooting due t=
o the
> the watchdog timing out:
>
> https://pastebin.com/raw/nsbzgEKW
>
> On 6.10-rc4 I can bring the same board to boot by reverting this patch an=
d all
> patches building on it. Eg.:
>
>   git revert e306a894bd51 a7fb69ffd7ce abb720579490 \
>              956521064780 a15587277a24 6c725f33d67b \
>              b68d0ff529a9 25d862e183d4 8ec99b033147

Does your board boot with only SBI timer driver enabled ?

If yes then probing of Allwinner timer driver needs to be fixed since it
depends on PLIC.

Regards,
Anup

>
> After that it boots but run into this separate issue:
> https://lore.kernel.org/all/DM6PR01MB58047C810DDD5D0AE397CADFF7C22@DM6PR0=
1MB5804.prod.exchangelabs.com/
>
> Samuel: After the reverts above applying this also prevents my board from
> booting:
> https://lore.kernel.org/all/20240312192519.1602493-1-samuel.holland@sifiv=
e.com/
>
> /Emil
>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 101 ++++++++++++++++++------------
> >  1 file changed, 61 insertions(+), 40 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-si=
five-plic.c
> > index 5b7bc4fd9517..7400a07fc479 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -64,6 +64,7 @@
> >  #define PLIC_QUIRK_EDGE_INTERRUPT    0
> >
> >  struct plic_priv {
> > +     struct device *dev;
> >       struct cpumask lmask;
> >       struct irq_domain *irqdomain;
> >       void __iomem *regs;
> > @@ -406,30 +407,50 @@ static int plic_starting_cpu(unsigned int cpu)
> >       return 0;
> >  }
> >
> > -static int __init __plic_init(struct device_node *node,
> > -                           struct device_node *parent,
> > -                           unsigned long plic_quirks)
> > +static const struct of_device_id plic_match[] =3D {
> > +     { .compatible =3D "sifive,plic-1.0.0" },
> > +     { .compatible =3D "riscv,plic0" },
> > +     { .compatible =3D "andestech,nceplic100",
> > +       .data =3D (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> > +     { .compatible =3D "thead,c900-plic",
> > +       .data =3D (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> > +     {}
> > +};
> > +
> > +static int plic_probe(struct platform_device *pdev)
> >  {
> >       int error =3D 0, nr_contexts, nr_handlers =3D 0, i;
> > -     u32 nr_irqs;
> > -     struct plic_priv *priv;
> > +     struct device *dev =3D &pdev->dev;
> > +     unsigned long plic_quirks =3D 0;
> >       struct plic_handler *handler;
> > +     struct plic_priv *priv;
> > +     bool cpuhp_setup;
> >       unsigned int cpu;
> > +     u32 nr_irqs;
> > +
> > +     if (is_of_node(dev->fwnode)) {
> > +             const struct of_device_id *id;
> > +
> > +             id =3D of_match_node(plic_match, to_of_node(dev->fwnode))=
;
> > +             if (id)
> > +                     plic_quirks =3D (unsigned long)id->data;
> > +     }
> >
> >       priv =3D kzalloc(sizeof(*priv), GFP_KERNEL);
> >       if (!priv)
> >               return -ENOMEM;
> >
> > +     priv->dev =3D dev;
> >       priv->plic_quirks =3D plic_quirks;
> >
> > -     priv->regs =3D of_iomap(node, 0);
> > +     priv->regs =3D of_iomap(to_of_node(dev->fwnode), 0);
> >       if (WARN_ON(!priv->regs)) {
> >               error =3D -EIO;
> >               goto out_free_priv;
> >       }
> >
> >       error =3D -EINVAL;
> > -     of_property_read_u32(node, "riscv,ndev", &nr_irqs);
> > +     of_property_read_u32(to_of_node(dev->fwnode), "riscv,ndev", &nr_i=
rqs);
> >       if (WARN_ON(!nr_irqs))
> >               goto out_iounmap;
> >
> > @@ -439,13 +460,13 @@ static int __init __plic_init(struct device_node =
*node,
> >       if (!priv->prio_save)
> >               goto out_free_priority_reg;
> >
> > -     nr_contexts =3D of_irq_count(node);
> > +     nr_contexts =3D of_irq_count(to_of_node(dev->fwnode));
> >       if (WARN_ON(!nr_contexts))
> >               goto out_free_priority_reg;
> >
> >       error =3D -ENOMEM;
> > -     priv->irqdomain =3D irq_domain_add_linear(node, nr_irqs + 1,
> > -                     &plic_irqdomain_ops, priv);
> > +     priv->irqdomain =3D irq_domain_add_linear(to_of_node(dev->fwnode)=
, nr_irqs + 1,
> > +                                             &plic_irqdomain_ops, priv=
);
> >       if (WARN_ON(!priv->irqdomain))
> >               goto out_free_priority_reg;
> >
> > @@ -455,7 +476,7 @@ static int __init __plic_init(struct device_node *n=
ode,
> >               int cpu;
> >               unsigned long hartid;
> >
> > -             if (of_irq_parse_one(node, i, &parent)) {
> > +             if (of_irq_parse_one(to_of_node(dev->fwnode), i, &parent)=
) {
> >                       pr_err("failed to parse parent for context %d.\n"=
, i);
> >                       continue;
> >               }
> > @@ -491,7 +512,7 @@ static int __init __plic_init(struct device_node *n=
ode,
> >
> >               /* Find parent domain and register chained handler */
> >               if (!plic_parent_irq && irq_find_host(parent.np)) {
> > -                     plic_parent_irq =3D irq_of_parse_and_map(node, i)=
;
> > +                     plic_parent_irq =3D irq_of_parse_and_map(to_of_no=
de(dev->fwnode), i);
> >                       if (plic_parent_irq)
> >                               irq_set_chained_handler(plic_parent_irq,
> >                                                       plic_handle_irq);
> > @@ -533,20 +554,29 @@ static int __init __plic_init(struct device_node =
*node,
> >
> >       /*
> >        * We can have multiple PLIC instances so setup cpuhp state
> > -      * and register syscore operations only when context handler
> > -      * for current/boot CPU is present.
> > +      * and register syscore operations only once after context
> > +      * handlers of all online CPUs are initialized.
> >        */
> > -     handler =3D this_cpu_ptr(&plic_handlers);
> > -     if (handler->present && !plic_cpuhp_setup_done) {
> > -             cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> > -                               "irqchip/sifive/plic:starting",
> > -                               plic_starting_cpu, plic_dying_cpu);
> > -             register_syscore_ops(&plic_irq_syscore_ops);
> > -             plic_cpuhp_setup_done =3D true;
> > +     if (!plic_cpuhp_setup_done) {
> > +             cpuhp_setup =3D true;
> > +             for_each_online_cpu(cpu) {
> > +                     handler =3D per_cpu_ptr(&plic_handlers, cpu);
> > +                     if (!handler->present) {
> > +                             cpuhp_setup =3D false;
> > +                             break;
> > +                     }
> > +             }
> > +             if (cpuhp_setup) {
> > +                     cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTI=
NG,
> > +                                       "irqchip/sifive/plic:starting",
> > +                                       plic_starting_cpu, plic_dying_c=
pu);
> > +                     register_syscore_ops(&plic_irq_syscore_ops);
> > +                     plic_cpuhp_setup_done =3D true;
> > +             }
> >       }
> >
> > -     pr_info("%pOFP: mapped %d interrupts with %d handlers for"
> > -             " %d contexts.\n", node, nr_irqs, nr_handlers, nr_context=
s);
> > +     pr_info("%pOFP: mapped %d interrupts with %d handlers for %d cont=
exts.\n",
> > +             to_of_node(dev->fwnode), nr_irqs, nr_handlers, nr_context=
s);
> >       return 0;
> >
> >  out_free_enable_reg:
> > @@ -563,20 +593,11 @@ static int __init __plic_init(struct device_node =
*node,
> >       return error;
> >  }
> >
> > -static int __init plic_init(struct device_node *node,
> > -                         struct device_node *parent)
> > -{
> > -     return __plic_init(node, parent, 0);
> > -}
> > -
> > -IRQCHIP_DECLARE(sifive_plic, "sifive,plic-1.0.0", plic_init);
> > -IRQCHIP_DECLARE(riscv_plic0, "riscv,plic0", plic_init); /* for legacy =
systems */
> > -
> > -static int __init plic_edge_init(struct device_node *node,
> > -                              struct device_node *parent)
> > -{
> > -     return __plic_init(node, parent, BIT(PLIC_QUIRK_EDGE_INTERRUPT));
> > -}
> > -
> > -IRQCHIP_DECLARE(andestech_nceplic100, "andestech,nceplic100", plic_edg=
e_init);
> > -IRQCHIP_DECLARE(thead_c900_plic, "thead,c900-plic", plic_edge_init);
> > +static struct platform_driver plic_driver =3D {
> > +     .driver =3D {
> > +             .name           =3D "riscv-plic",
> > +             .of_match_table =3D plic_match,
> > +     },
> > +     .probe =3D plic_probe,
> > +};
> > +builtin_platform_driver(plic_driver);
> > --
> > 2.34.1
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv

