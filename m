Return-Path: <devicetree+bounces-77012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A490D2D0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 15:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8EBE1F24B26
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 413A515252D;
	Tue, 18 Jun 2024 13:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="C9Jh6/Mm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5211865C
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718717431; cv=none; b=Bn7E3zdj3/vvtDp245e5GZKw6kY947n/nq2BAEY9YZv/fW9DoCqCMaIkGwD0LnOW8m2frGSwhEdyyvPq+HcL/d+YihSebruL9B1va0P8S5oXYGGlclsPYoW/kJ3XyK+if/A3lHMkpWvdNovlDYlCXrvsyIre4mpBBRUMftpv7kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718717431; c=relaxed/simple;
	bh=sdOb9EORLYNPJDU8iu/Sk18niCs0Jmvz4G4PN8ki7Pw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VKdz5vVrW5j5WBabpTNFhqbfWCchuiREzCTc4veykv1cHJZ/mGlY1TF9cIJgCW7ew3yohsG3sA+T86eYSsIbtEs6EIfh0icLfirHh5vPXzf2ekanluCM6W0on+PwTRs0U4kePNVbk0zy/3d8M2KDJ/psMZKk+ardUNVOGdiDrL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=C9Jh6/Mm; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2ED023F5E7
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1718717422;
	bh=UfYUpHbPqFcu0UCjRRx628bbJJmPPda02ds2dKR0ulg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=C9Jh6/MmOVqFDN9TAHMPy0RaBP5xSKNfQOOxZwZOH5H5fuzTo+5/WFyigKitzqse4
	 hfTKmuj63+jrF+qg3gnFLgdztJDh5FXO6Eq7FCTKsftRPKM98aOtxb79ycsnvx53RN
	 ZcWzyvvKe2n6g0kLlMh6JKrqeX+HeqVWETz9n5rSeoCCLcyzznARxKTPz1eeRYHEM9
	 veOSN1pdeDEH4wxKH08zPYE/wc2+tktxJiCZKmOacSwxNeZXe0P1tAfc1xFztS45hC
	 3JKi/0EgHKTPtve8f5wXPMr1A0s8ZYagCmNrow5jeyHY7Oyye3YTAJTUK0E0x6VOtR
	 GZ3ncQ9KTzG6Q==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44055a09af8so57123091cf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 06:30:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718717421; x=1719322221;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UfYUpHbPqFcu0UCjRRx628bbJJmPPda02ds2dKR0ulg=;
        b=P3hZB8bZyJK+BRB4S/pzSjxdQ7XSYcW0RlUAjNfbHUlGu7R/6ytyE1pWeCd8AuARJo
         hZLykEjrTDEL4mWXPvnkFsGzDv+s0f/6x7g8O30/8ZAw8IptrftvdRWSJJ7YsyINFK5q
         Nt2GFodBYqR1hlAF+HGtPqhCdAajryn+cJbWQcXe+pE+n0+5UcasgByCRdKG5oYvCVBi
         00t/h3gZZCoJOx9sod8VImcwURoIHW02so3zaB1PczbpAQys2ilCkqsPZaf1o4txnQh5
         VGmWwDeIc69AQCyArhgxI2TXsIqADgzGpu3ZPeUc4xdzz7ZPoI4McF6fsRRsgizZBQHh
         auvA==
X-Gm-Message-State: AOJu0YyZ81KK5mCCjSBJpSNUC6dX7WLZYAA3vjCxYp/BVKPQ821CPzf5
	om6U29BYB87qoD+hMk6d6E8uiyvSWEsVyo9+1zRofe0mdwA0Ohadojk6NhdjbLntZryno60aCmu
	jT9jnf66c2y06AYVlNAAwlMoOPnlCEDNOGzL6/5zF0jLg5f3H8hbK804ciPs7JXbY7t1CIHe5WS
	JFsRtLIG1SqWmf/wwOjUuBEiuvKLxw9PfuUa7SzKp0vBC+71TNpA==
X-Received: by 2002:ac8:5889:0:b0:440:bf37:9007 with SMTP id d75a77b69052e-4421685e9e1mr161696801cf.8.1718717421104;
        Tue, 18 Jun 2024 06:30:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUEZOZK+nvGqCai2GCOShHEu62ZKZfIicwdKAchRFLUWD5elNWBjF9IVRKayp3TCWv9lyKfPRk5axmMs6MwvE=
X-Received: by 2002:ac8:5889:0:b0:440:bf37:9007 with SMTP id
 d75a77b69052e-4421685e9e1mr161696391cf.8.1718717420696; Tue, 18 Jun 2024
 06:30:20 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 18 Jun 2024 09:30:20 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240222094006.1030709-2-apatel@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com> <20240222094006.1030709-2-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 18 Jun 2024 09:30:20 -0400
Message-ID: <CAJM55Z9hGKo4784N3s3DhWw=nMRKZKcmvZ58x7uVBghExhoc9A@mail.gmail.com>
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, Saravana Kannan <saravanak@google.com>, 
	Marc Zyngier <maz@kernel.org>, Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"

Anup Patel wrote:
> The PLIC driver does not require very early initialization so convert
> it into a platform driver.
>
> After conversion, the PLIC driver is probed after CPUs are brought-up
> so setup cpuhp state after context handler of all online CPUs are
> initialized otherwise PLIC driver crashes for platforms with multiple
> PLIC instances.
>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>

Hi Anup,

Sorry for the late reply to the mailing list, but ever since 6.9 where this was
applied my Allwinner D1 based boards no longer boot. This is the log of my
LicheeRV Dock booting plain 6.10-rc4, locking up and then rebooting due to the
the watchdog timing out:

https://pastebin.com/raw/nsbzgEKW

On 6.10-rc4 I can bring the same board to boot by reverting this patch and all
patches building on it. Eg.:

  git revert e306a894bd51 a7fb69ffd7ce abb720579490 \
             956521064780 a15587277a24 6c725f33d67b \
	     b68d0ff529a9 25d862e183d4 8ec99b033147

After that it boots but run into this separate issue:
https://lore.kernel.org/all/DM6PR01MB58047C810DDD5D0AE397CADFF7C22@DM6PR01MB5804.prod.exchangelabs.com/

Samuel: After the reverts above applying this also prevents my board from
booting:
https://lore.kernel.org/all/20240312192519.1602493-1-samuel.holland@sifive.com/

/Emil

> ---
>  drivers/irqchip/irq-sifive-plic.c | 101 ++++++++++++++++++------------
>  1 file changed, 61 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index 5b7bc4fd9517..7400a07fc479 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -64,6 +64,7 @@
>  #define PLIC_QUIRK_EDGE_INTERRUPT	0
>
>  struct plic_priv {
> +	struct device *dev;
>  	struct cpumask lmask;
>  	struct irq_domain *irqdomain;
>  	void __iomem *regs;
> @@ -406,30 +407,50 @@ static int plic_starting_cpu(unsigned int cpu)
>  	return 0;
>  }
>
> -static int __init __plic_init(struct device_node *node,
> -			      struct device_node *parent,
> -			      unsigned long plic_quirks)
> +static const struct of_device_id plic_match[] = {
> +	{ .compatible = "sifive,plic-1.0.0" },
> +	{ .compatible = "riscv,plic0" },
> +	{ .compatible = "andestech,nceplic100",
> +	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> +	{ .compatible = "thead,c900-plic",
> +	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> +	{}
> +};
> +
> +static int plic_probe(struct platform_device *pdev)
>  {
>  	int error = 0, nr_contexts, nr_handlers = 0, i;
> -	u32 nr_irqs;
> -	struct plic_priv *priv;
> +	struct device *dev = &pdev->dev;
> +	unsigned long plic_quirks = 0;
>  	struct plic_handler *handler;
> +	struct plic_priv *priv;
> +	bool cpuhp_setup;
>  	unsigned int cpu;
> +	u32 nr_irqs;
> +
> +	if (is_of_node(dev->fwnode)) {
> +		const struct of_device_id *id;
> +
> +		id = of_match_node(plic_match, to_of_node(dev->fwnode));
> +		if (id)
> +			plic_quirks = (unsigned long)id->data;
> +	}
>
>  	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;
>
> +	priv->dev = dev;
>  	priv->plic_quirks = plic_quirks;
>
> -	priv->regs = of_iomap(node, 0);
> +	priv->regs = of_iomap(to_of_node(dev->fwnode), 0);
>  	if (WARN_ON(!priv->regs)) {
>  		error = -EIO;
>  		goto out_free_priv;
>  	}
>
>  	error = -EINVAL;
> -	of_property_read_u32(node, "riscv,ndev", &nr_irqs);
> +	of_property_read_u32(to_of_node(dev->fwnode), "riscv,ndev", &nr_irqs);
>  	if (WARN_ON(!nr_irqs))
>  		goto out_iounmap;
>
> @@ -439,13 +460,13 @@ static int __init __plic_init(struct device_node *node,
>  	if (!priv->prio_save)
>  		goto out_free_priority_reg;
>
> -	nr_contexts = of_irq_count(node);
> +	nr_contexts = of_irq_count(to_of_node(dev->fwnode));
>  	if (WARN_ON(!nr_contexts))
>  		goto out_free_priority_reg;
>
>  	error = -ENOMEM;
> -	priv->irqdomain = irq_domain_add_linear(node, nr_irqs + 1,
> -			&plic_irqdomain_ops, priv);
> +	priv->irqdomain = irq_domain_add_linear(to_of_node(dev->fwnode), nr_irqs + 1,
> +						&plic_irqdomain_ops, priv);
>  	if (WARN_ON(!priv->irqdomain))
>  		goto out_free_priority_reg;
>
> @@ -455,7 +476,7 @@ static int __init __plic_init(struct device_node *node,
>  		int cpu;
>  		unsigned long hartid;
>
> -		if (of_irq_parse_one(node, i, &parent)) {
> +		if (of_irq_parse_one(to_of_node(dev->fwnode), i, &parent)) {
>  			pr_err("failed to parse parent for context %d.\n", i);
>  			continue;
>  		}
> @@ -491,7 +512,7 @@ static int __init __plic_init(struct device_node *node,
>
>  		/* Find parent domain and register chained handler */
>  		if (!plic_parent_irq && irq_find_host(parent.np)) {
> -			plic_parent_irq = irq_of_parse_and_map(node, i);
> +			plic_parent_irq = irq_of_parse_and_map(to_of_node(dev->fwnode), i);
>  			if (plic_parent_irq)
>  				irq_set_chained_handler(plic_parent_irq,
>  							plic_handle_irq);
> @@ -533,20 +554,29 @@ static int __init __plic_init(struct device_node *node,
>
>  	/*
>  	 * We can have multiple PLIC instances so setup cpuhp state
> -	 * and register syscore operations only when context handler
> -	 * for current/boot CPU is present.
> +	 * and register syscore operations only once after context
> +	 * handlers of all online CPUs are initialized.
>  	 */
> -	handler = this_cpu_ptr(&plic_handlers);
> -	if (handler->present && !plic_cpuhp_setup_done) {
> -		cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> -				  "irqchip/sifive/plic:starting",
> -				  plic_starting_cpu, plic_dying_cpu);
> -		register_syscore_ops(&plic_irq_syscore_ops);
> -		plic_cpuhp_setup_done = true;
> +	if (!plic_cpuhp_setup_done) {
> +		cpuhp_setup = true;
> +		for_each_online_cpu(cpu) {
> +			handler = per_cpu_ptr(&plic_handlers, cpu);
> +			if (!handler->present) {
> +				cpuhp_setup = false;
> +				break;
> +			}
> +		}
> +		if (cpuhp_setup) {
> +			cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
> +					  "irqchip/sifive/plic:starting",
> +					  plic_starting_cpu, plic_dying_cpu);
> +			register_syscore_ops(&plic_irq_syscore_ops);
> +			plic_cpuhp_setup_done = true;
> +		}
>  	}
>
> -	pr_info("%pOFP: mapped %d interrupts with %d handlers for"
> -		" %d contexts.\n", node, nr_irqs, nr_handlers, nr_contexts);
> +	pr_info("%pOFP: mapped %d interrupts with %d handlers for %d contexts.\n",
> +		to_of_node(dev->fwnode), nr_irqs, nr_handlers, nr_contexts);
>  	return 0;
>
>  out_free_enable_reg:
> @@ -563,20 +593,11 @@ static int __init __plic_init(struct device_node *node,
>  	return error;
>  }
>
> -static int __init plic_init(struct device_node *node,
> -			    struct device_node *parent)
> -{
> -	return __plic_init(node, parent, 0);
> -}
> -
> -IRQCHIP_DECLARE(sifive_plic, "sifive,plic-1.0.0", plic_init);
> -IRQCHIP_DECLARE(riscv_plic0, "riscv,plic0", plic_init); /* for legacy systems */
> -
> -static int __init plic_edge_init(struct device_node *node,
> -				 struct device_node *parent)
> -{
> -	return __plic_init(node, parent, BIT(PLIC_QUIRK_EDGE_INTERRUPT));
> -}
> -
> -IRQCHIP_DECLARE(andestech_nceplic100, "andestech,nceplic100", plic_edge_init);
> -IRQCHIP_DECLARE(thead_c900_plic, "thead,c900-plic", plic_edge_init);
> +static struct platform_driver plic_driver = {
> +	.driver = {
> +		.name		= "riscv-plic",
> +		.of_match_table	= plic_match,
> +	},
> +	.probe = plic_probe,
> +};
> +builtin_platform_driver(plic_driver);
> --
> 2.34.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

