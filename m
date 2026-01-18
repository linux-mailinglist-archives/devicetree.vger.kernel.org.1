Return-Path: <devicetree+bounces-256455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3162CD393A8
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 10:49:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7AA8C3002D0A
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 09:49:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025B1280CE0;
	Sun, 18 Jan 2026 09:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAm2tfEn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AEC27B35F;
	Sun, 18 Jan 2026 09:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768729744; cv=none; b=E9vs6obRC6SUf06G4eeF7cZtpAqyJoFaJ7fq8uFpph6rE3vlmkmKQOYcC5L0bImbLaOUOKWQmfkrMjVFh/db/+QP5k2uyHEyTDYmhTVXPVD7pSiqkhSvEqU6qlfzdjTaiMftrfQYOXMIo4u+15psnVFUeKNH8MhMkEyQfVbbrZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768729744; c=relaxed/simple;
	bh=o6onDjxx6rTGf8Z/6sCDmtq0AOwSAosZSx2+SVktQHU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ZRBoKAS12QD3Wr8rGJytUFRvpszTjwvb0KXF2gO47fzrxN5Pfio01/9sSN7SdrnYv56I9cy8+tTGfFJjLxNOMkYxHXxIQSZ3kDBraNo1wiEWrsJnblMZzR5LcRCNT626v0Wt3UMHuKYmeOAWbJFbmr65HO4g3UObhbB9+vQJq5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAm2tfEn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94120C116D0;
	Sun, 18 Jan 2026 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768729744;
	bh=o6onDjxx6rTGf8Z/6sCDmtq0AOwSAosZSx2+SVktQHU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=YAm2tfEngsbjOlbRimfTOnszwn9EkE4lgIbAK6ybbKj50IpbuRMg95TntujYv3m94
	 +jB33w/yV9Buq9jbQtc5wz9csGDPzO1A3TOR6phdz0nYCc4i8N/FvcvspZIeSwZJF2
	 lRS733FBaOvu5/QQAGsw832XFL2w8VZleLaX9KKjxqRcflfNrgG5eWDNjhGELC7XQT
	 ha/Miql2c7WSgclFv9mFWQLkeG7J0t5PkiN7KEurBgBjIzNLFuCuO/UArkkKdLZDgA
	 yIik38DHa886nzab1zpbui/ZONgR+k8vjYmqtMWNfNYlsG0gxTQEz3WGUTV6CUczGd
	 6HRXuy/yJ/ptw==
From: Thomas Gleixner <tglx@kernel.org>
To: Aniket Limaye <a-limaye@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 u-kumar1@ti.com, Nishanth Menon <nm@ti.com>, Tero Kristo
 <kristo@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Cc: j-mcarthur@ti.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Aniket Limaye
 <a-limaye@ti.com>
Subject: Re: [PATCH 2/2] drivers: irqchip: irq-ti-sci-intr: Allow parsing
 interrupt-types per-line
In-Reply-To: <20260116-ul-driver-i2c-j722s-v1-2-c28e8ba38a9e@ti.com>
References: <20260116-ul-driver-i2c-j722s-v1-0-c28e8ba38a9e@ti.com>
 <20260116-ul-driver-i2c-j722s-v1-2-c28e8ba38a9e@ti.com>
Date: Sun, 18 Jan 2026 10:49:00 +0100
Message-ID: <8734432qur.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Fri, Jan 16 2026 at 18:38, Aniket Limaye wrote:

The subject line prefix is made up. Please follow the documented
conventions:

https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#patch-submission-notes

> Some INTR router instances act as simple passthroughs that preserve the
> source interrupt type unchanged at the output line, rather than converting
> all interrupts to a fixed type.
>
> When interrupt sources are not homogeneous with respect to trigger type,
> the driver needs to read each source's interrupt type from DT and pass it
> unchanged to its interrupt parent
>
> Previously, the interrupt type for all output lines was set globally using
> the "ti,intr-trigger-type" property (values 1 or 4).

What means 'previously'?

You want to describe the current state and not something which might be
in the past after applying the change.

> Add support for "ti,intr-trigger-type" = 15 (IRQ_TYPE_DEFAULT) to indicate
> passthrough mode:
> - When set to 15: Parse interrupt type per-line from DT
> - When set to 1 or 4: Use global setting (maintains backward compatibility)

> @@ -156,11 +168,27 @@ static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
>  		fwspec.param_count = 3;
>  		fwspec.param[0] = 0;	/* SPI */
>  		fwspec.param[1] = p_hwirq - 32; /* SPI offset */
> -		fwspec.param[2] = intr->type;
> +		fwspec.param[2] = hwirq_type;
>  	} else {
>  		/* Parent is Interrupt Router */
> -		fwspec.param_count = 1;
> -		fwspec.param[0] = p_hwirq;
> +		u32 parent_trigger_type;
> +
> +		err = of_property_read_u32(parent_node,
> +					  "ti,intr-trigger-type",
> +					  &parent_trigger_type);

You have 100 characters and if you need a line break align the second
line argument with the first line argument and not with the bracket.
See documentation.

> +		if (err)
> +			goto err_irqs;
> +
> +		if (parent_trigger_type != IRQ_TYPE_DEFAULT) {
> +			/* Parent has global trigger type */
> +			fwspec.param_count = 1;
> +			fwspec.param[0] = p_hwirq;
> +		} else {
> +			/* Parent supports per-line trigger types */
> +			fwspec.param_count = 2;
> +			fwspec.param[0] = p_hwirq;
> +			fwspec.param[1] = hwirq_type;
> +		}
>  	}
>  
>  	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
> @@ -197,14 +225,14 @@ static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
>  {
>  	struct irq_fwspec *fwspec = data;
>  	unsigned long hwirq;
> -	unsigned int flags;
> +	unsigned int hwirq_type;

https://www.kernel.org/doc/html/latest/process/maintainer-tip.html#variable-declarations

>  	int err, out_irq;
>  
> -	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &flags);
> +	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &hwirq_type);
>  	if (err)
>  		return err;
>  
> -	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq);
> +	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq, hwirq_type);
>  	if (out_irq < 0)
>  		return out_irq;

Thanks,

        tglx

