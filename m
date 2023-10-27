Return-Path: <devicetree+bounces-12543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E74967D9F25
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 19:57:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A022728246B
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F2A93B297;
	Fri, 27 Oct 2023 17:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="keo8ZRjn";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="J8HWFFYg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8AD1946F
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 17:57:27 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F78512A;
	Fri, 27 Oct 2023 10:57:25 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698429443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=58t0D6ESCSzexSg4v1kt6tJ4hy3mICpcIPZMbCXXn84=;
	b=keo8ZRjniGvDQH8XixV0C/IW4SmfusttUIfuaDrFMsYMlp9/TLJbbkpIykf1qNT9r2p+X4
	WOl+pS+ezpf6OmYoxfOTRp+y2m4SKskZ8+gk25re2TmuG22G/++/MukocbZtnKqiIPbrH7
	wF4CHapZo5B+t0Tqsv0Z+vVQ5KUgR/+TgEkd38qB1EdVSwkm1sX/RC1DlcYHYX3q3LzBif
	E4u+fhV6uGbQ6Ci+O7aAFp+ANMIsdBObtBs3qCzfiyX2/ZiKEYQg+tmx78X3aerV7zkTm6
	+bXxdXIt+48AErihL4mNQOE9vr0yWhdCikozeuBbNnBxUJQ8FT2n+Q9gDFUx/w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698429443;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=58t0D6ESCSzexSg4v1kt6tJ4hy3mICpcIPZMbCXXn84=;
	b=J8HWFFYgzidROH/s2RBjpBwD4G2jhOYDfrOjJBKITQEJJs9sfRG+xQR+Gff1ptjKKQjZQF
	O8jeOEWApyIH5jCw==
To: Claudiu <claudiu.beznea@tuxon.dev>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, Claudiu
 Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 5/7] irqchip/renesas-rzg2l: cache registers on
 suspend/resume
In-Reply-To: <20231023102223.1309614-6-claudiu.beznea.uj@bp.renesas.com>
References: <20231023102223.1309614-1-claudiu.beznea.uj@bp.renesas.com>
 <20231023102223.1309614-6-claudiu.beznea.uj@bp.renesas.com>
Date: Fri, 27 Oct 2023 19:57:23 +0200
Message-ID: <87h6mc2bjw.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Oct 23 2023 at 13:22, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Cache registers content when going to suspend and restore them in resume
> as these may be lost when switching to deep sleep states. With this
> driver data has been marked as static to be able to play with it
> in struct syscon_ops::{suspend, resume}.

I have no idea what you are trying to tell me here. Why do the
suspend/resume callbacks need a static data structure and cannot operate
on a pointer which wastes less builtin memory when the driver is not
used?

Also "play with it" is definitely not a technical term. See
Documentation/process/* which has lots of explanations how to write
proper change logs.

> Because IA55 input is from pin controller and IA55 resumes before pin
> controller we don't restore interrupt enable bits here but let the
> pinctrl to do it on IA55 behalf after pins are in proper state to
> avoid invalid interrupts.
> +
> +static struct rzg2l_irqc_priv {
>  	void __iomem *base;
>  	struct irq_fwspec fwspec[IRQC_NUM_IRQ];
>  	raw_spinlock_t lock;
> -};
> +	struct rzg2l_irqc_reg_cache cache;
> +} priv;

https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#struct-declarations-and-initializers

>  
>  static struct rzg2l_irqc_priv *irq_data_to_priv(struct irq_data *data)
>  {
> @@ -238,6 +251,37 @@ static int rzg2l_irqc_set_type(struct irq_data *d, unsigned int type)
>  	return irq_chip_set_type_parent(d, IRQ_TYPE_LEVEL_HIGH);
>  }
>  
> +static int rzg2l_irqc_irq_suspend(void)
> +{
> +	struct rzg2l_irqc_reg_cache *cache = &priv.cache;
> +
> +	cache->iitsr = readl_relaxed(priv.base + IITSR);
> +	for (u8 i = 0; i < 2; i++)
> +		cache->titsr[i] = readl_relaxed(priv.base + TITSR(i));
> +
> +	return 0;
> +}
> +
> +static void rzg2l_irqc_irq_resume(void)
> +{
> +	struct rzg2l_irqc_reg_cache *cache = &priv.cache;
> +	u8 i;
> +
> +	/*
> +	 * Restore only interrupt type. TSSRx will be restored at the
> +	 * request of pin controller to avoid spurious interrupts due
> +	 * to invalid PIN states.
> +	 */
> +	for (i = 0; i < 2; i++)
> +		writel_relaxed(cache->titsr[i], priv.base + TITSR(i));
> +	writel_relaxed(cache->iitsr, priv.base + IITSR);
> +}
> +
> +static struct syscore_ops rzg2l_irqc_syscore_ops = {
> +	.suspend = rzg2l_irqc_irq_suspend,
> +	.resume = rzg2l_irqc_irq_resume,
> +};

Ditto.

>  static const struct irq_chip irqc_chip = {
>  	.name			= "rzg2l-irqc",
>  	.irq_eoi		= rzg2l_irqc_eoi,
> @@ -323,7 +367,6 @@ static int rzg2l_irqc_init(struct device_node *node, struct device_node *parent)
>  	struct irq_domain *irq_domain, *parent_domain;
>  	struct platform_device *pdev;
>  	struct reset_control *resetn;
> -	struct rzg2l_irqc_priv *priv;

Make this pointer static at the top level and leave the rest of the code
alone and please give it a proper name. "priv" at the file level is
really non-descriptive.

Thanks,

        tglx

