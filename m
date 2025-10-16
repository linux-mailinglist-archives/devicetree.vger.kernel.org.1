Return-Path: <devicetree+bounces-227896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4872BE590D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 23:25:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D389D487D94
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 21:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54BF42E3B1C;
	Thu, 16 Oct 2025 21:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lR7BcZwL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764EF2BD001
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 21:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760649897; cv=none; b=eDZ3KMu1+4APBl3BjNCsjV77jzVHI1Di9xFLUBT89y+67xES+kyIPrwn35/1AgwpwkalgQeVLL5BqHCzkOxry0SgCXv6T+kFWToFkGkgabLYVSt2JTFjRGQXB/RC/QbTXy4a2iyVymQdhYElzZDi/TTGR8ItAEVJtr+AgUOJy/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760649897; c=relaxed/simple;
	bh=jfu5ly7hYCH7M6FPpJ9TWxzmAmpRDYMQzPgHkXlldhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XGVHONEG3uCnzcvTDTvKm04k+YnhrpqxmZT6RG6u8g+Bw/R4YJqGpjsNrDmfOVqbml3c5MsN9q5VpiWtejjt7GgxLcIRF581Ma0dD2oXR1F5VJj3VY+1N2Pr4IZ7zMAQ4qWsUGUIAB+0Ed0GuJLqf5D5oqeVbMe+IxTRHKbwxUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lR7BcZwL; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7811fa91774so1176077b3a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 14:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760649895; x=1761254695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zd/3SMts5DKBfe91ys3jWrhKDCgkhqpFgsK5gsCZVIQ=;
        b=lR7BcZwLPkv+OH43TkVXdHDKbSEPuCx2igXyLrWr34Pd1mzEjZeWXctI2DvKl9uvfG
         VBQ1S+AMvQhZo4sZ15RqzrMVpqhxKWXeB6vOxyr/msnsAj/xT61lSQPXuF29gh8LklK1
         erAFwDE72BWDQrrUdTWbYyQ2Wpbgtfn6ST3TX67q7JQSnxFki3E2O6GmTdqBqwdQ6dPf
         3FI/JjhXpmHQTIEWzmEvooD6kTH8zXEANiT5/G1YKNicHHwpiRgBmX0mj9apTDsNlhw9
         Im1SfsuDGsJQM16kLxU6uw6ucOano2mF6SHAyTiWl3Wq6Nh1GUq1X52uVKK0mmFAcFR6
         AKAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760649895; x=1761254695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zd/3SMts5DKBfe91ys3jWrhKDCgkhqpFgsK5gsCZVIQ=;
        b=psMRMVtN1V2aThHv9mixAArIM07H4ikt5tH+4xVvz7iRh+zrXJhpELbcrtdhK+cwvb
         cKQkTU1wD0ZvHA5xyvYorKreF+0JBSAFXzAen/loCDbj6a08rcRIvzHhFtrWNn6SylDy
         +/bGhaSprpnugRTngwK/KKn18tVfc6eP6m3lyAY4CaLtOf3pRnQngh2KJ1xiy2KCO8Md
         96KFkFKpRDJ//QOxFMuDXFe2XrDuqOKopcT4yEnEZvXpAJSO7GAJst++vvpgF2WDIPdY
         77h+8KV02xnoxq/cxnopcoCNCqDxJt4b5PdBvj/HoWZu/cqtdQLeNLShevOmnRO5sx1q
         cx8A==
X-Forwarded-Encrypted: i=1; AJvYcCXDjsIIX/LorpsZcUDuf5TSdIdIBPTto27rWYK+AaH8m2QxNnlX4au9fNjDXalysWRrsGLD/lp0q0p/@vger.kernel.org
X-Gm-Message-State: AOJu0YxcPE9mHENMm4SdCKyad6Ki5qh0OhaXn1sK0HtOngkqD20vJFdJ
	M0i333Oioy3wkElrD22LeoTxJ/sX38ZCwQob6fxfVjHuPG9ovUd3uazN
X-Gm-Gg: ASbGncu7hMykR2+qCYlWJkv/3LWjuwBpxIN+haxK7+Xy4Cg5eFNgagHlT4kvvVVWibg
	CwtKlwk3s1QDUvqn4DHLGf3mdQ10uOyEv8ZbuzTwXJWKqYsgFejOG9JgIvPe5/7M6EYojBzqmiG
	kaVd0CMMMxkp03hWohsfZLjYJ26PEcGX0dBBHtDcjitYnjQP9lfg2UyZgTtou+LhVth+jmcictZ
	gxMW53rE3oH/rNclwn1mYrVkbbLMn+etwEuHXes1wcm+qhzZE0AfA47fvu36NZtHrCFDcwglKo8
	mx1JxcWe1U3nll84Td+wc8aLw7RSU/Jy8kywbof2EAljSqZsZJ6RNxtK8MAkhAL7a/bGTLAwNj0
	Q6+A1+07a5J17QBibTkJcC6ZwoMb3NtVO8x5ooLWXr8luUdvZ/SdcJ7tC8zTiJ4sMbaWdda8TOE
	8mWpKl7kwiUP1foMnMBOvcR3rC
X-Google-Smtp-Source: AGHT+IFCaV6xglyKst+oFUXgvZM2Y+I/mFeCUZu1bLy7lDUbpg0VgGAYl951jYFBFM2GACulIHnn6Q==
X-Received: by 2002:a05:6a00:130e:b0:781:15d0:8848 with SMTP id d2e1a72fcca58-7a2208eec13mr1621582b3a.13.1760649894512;
        Thu, 16 Oct 2025 14:24:54 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0965c3sm23431038b3a.52.2025.10.16.14.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 14:24:54 -0700 (PDT)
Message-ID: <831744c6-ba89-4029-a035-9a70c3f57465@gmail.com>
Date: Thu, 16 Oct 2025 14:28:43 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] irqchip/plic: add support for UltraRISC DP1000
 PLIC
To: Lucas Zampieri <lzampier@redhat.com>, linux-kernel@vger.kernel.org
Cc: Charles Mirabile <cmirabil@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Vivian Wang <dramforever@live.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Zhang Xincheng <zhangxincheng@ultrarisc.com>
References: <20251016084301.27670-1-lzampier@redhat.com>
 <20251016084301.27670-4-lzampier@redhat.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20251016084301.27670-4-lzampier@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Lucas, Charles,

I just realized your last reply and sorry about the messy formatting.
Please disregard the previous one from me and use this one.

On 10/16/25 01:42, Lucas Zampieri wrote:
> From: Charles Mirabile <cmirabil@redhat.com>
> 
> Add a new compatible for the plic found in UltraRISC DP1000 with a quirk to
> work around a known hardware bug with IRQ claiming in the UR-CP100 cores.
> 
> When claiming an interrupt on UR-CP100 cores, all other interrupts must be
> disabled before the claim register is accessed to prevent incorrect
> handling of the interrupt. This is a hardware bug in the CP100 core
> implementation, not specific to the DP1000 SoC.
> 
> When the PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM flag is present, a specialized
> handler (plic_handle_irq_cp100) saves the enable state of all interrupts,
> disables all interrupts except for the first pending one before reading the
> claim register, and then restores the interrupts before further processing of
> the claimed interrupt continues.
> 
> The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
> SoCs using UR-CP100 cores, regardless of the specific SoC implementation.
> This has no impact on other platforms.
> 
> Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
> Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
> Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
> Acked-by: Samuel Holland <samuel.holland@sifive.com>
> Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
> ---
>   drivers/irqchip/irq-sifive-plic.c | 94 ++++++++++++++++++++++++++++++-
>   1 file changed, 93 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index bf69a4802b71..0428e9f3423d 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -49,6 +49,8 @@
>   #define CONTEXT_ENABLE_BASE		0x2000
>   #define     CONTEXT_ENABLE_SIZE		0x80
>   
> +#define PENDING_BASE                    0x1000
> +
>   /*
>    * Each hart context has a set of control registers associated with it.  Right
>    * now there's only two: a source priority threshold over which the hart will
> @@ -63,6 +65,7 @@
>   #define	PLIC_ENABLE_THRESHOLD		0
>   
>   #define PLIC_QUIRK_EDGE_INTERRUPT	0
> +#define PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM	1
>   
>   struct plic_priv {
>   	struct fwnode_handle *fwnode;
> @@ -394,6 +397,89 @@ static void plic_handle_irq(struct irq_desc *desc)
>   	chained_irq_exit(chip, desc);
>   }
>   
> +static bool cp100_isolate_pending_irq(int nr_irq_groups, u32 ie[],
> +				       void __iomem *pending,
> +				       void __iomem *enable)
> +{
> +	u32 pending_irqs = 0;
> +	int i, j;
> +
> +	/* Look for first pending interrupt */
> +	for (i = 0; i < nr_irq_groups; i++) {
> +		pending_irqs = ie[i] & readl_relaxed(pending + i * sizeof(u32));
> +		if (pending_irqs)
> +			break;

No need to start from group 0. Only readl on the group with ie[i] != 0

> +	}
> +
> +	if (!pending_irqs)
> +		return false;
> +
> +	/* Disable all interrupts but the first pending one */
> +	for (j = 0; j < nr_irq_groups; j++) {
> +		u32 new_mask = 0;
> +
> +		if (j == i) {
> +			/* Extract mask with lowest set bit */
> +			new_mask = (pending_irqs & -pending_irqs);
> +		}
> +
> +		writel_relaxed(new_mask, enable + j * sizeof(u32));


There's no need to write the register if the value isn't changing. You can
check new_mask with the value in ie[].

> +	}
> +
> +	return true;
> +}
> +
> +static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler,
> +					void __iomem *claim)
> +{
> +	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
> +	void __iomem *pending = handler->priv->regs + PENDING_BASE;
> +	void __iomem *enable = handler->enable_base;
> +	irq_hw_number_t hwirq = 0;
> +	int i;
> +
> +	guard(raw_spinlock)(&handler->enable_lock);
> +
> +	/* Save current interrupt enable state */
> +	for (i = 0; i < nr_irq_groups; i++)
> +		handler->enable_save[i] = readl_relaxed(enable + i * sizeof(u32));


I see that you start to use handler->enable_save to track HW in the last reply.
I'm about to suggest that. Please send out a new patch, so people can properly
review it. There's change to common code path.

> +
> +	if (!cp100_isolate_pending_irq(nr_irq_groups, handler->enable_save, pending, enable))
> +		return 0;
> +
> +	hwirq = readl(claim);

Possibly missing a io barrier. readl isn't going to enforce the ordering of
readl/writel_relaxed above and itself. There could be other barriers missing.
Please check.

> +
> +	/* Restore previous state */
> +	for (i = 0; i < nr_irq_groups; i++)
> +		writel_relaxed(handler->enable_save[i], enable + i * sizeof(u32));
> +
> +	return hwirq;
> +}
> +
> +static void plic_handle_irq_cp100(struct irq_desc *desc)
> +{
> +	struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
> +	irq_hw_number_t hwirq;
> +
> +	WARN_ON_ONCE(!handler->present);
> +
> +	chained_irq_enter(chip, desc);
> +
> +	while ((hwirq = cp100_get_hwirq(handler, claim))) {
> +		int err = generic_handle_domain_irq(handler->priv->irqdomain, hwirq);
> +
> +		if (unlikely(err)) {
> +			pr_warn_ratelimited("%pfwP: can't find mapping for hwirq %lu\n",
> +					    handler->priv->fwnode, hwirq);
> +		}
> +	}
> +
> +	chained_irq_exit(chip, desc);
> +}
> +
>   static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
>   {
>   	/* priority must be > threshold to trigger an interrupt */
> @@ -430,6 +516,8 @@ static const struct of_device_id plic_match[] = {
>   	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
>   	{ .compatible = "thead,c900-plic",
>   	  .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
> +	{ .compatible = "ultrarisc,cp100-plic",
> +	  .data = (const void *)BIT(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM) },
>   	{}
>   };
>   
> @@ -664,12 +752,16 @@ static int plic_probe(struct fwnode_handle *fwnode)
>   		}
>   
>   		if (global_setup) {
> +			void (*handler_fn)(struct irq_desc *) = plic_handle_irq;
> +
> +			if (test_bit(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM, &handler->priv->plic_quirks))
> +				handler_fn = plic_handle_irq_cp100;
> +
>   			/* Find parent domain and register chained handler */
>   			domain = irq_find_matching_fwnode(riscv_get_intc_hwnode(), DOMAIN_BUS_ANY);
>   			if (domain)
>   				plic_parent_irq = irq_create_mapping(domain, RV_IRQ_EXT);
>   			if (plic_parent_irq)
> -				irq_set_chained_handler(plic_parent_irq, plic_handle_irq);
> +				irq_set_chained_handler(plic_parent_irq, handler_fn);
>   
>   			cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>   					  "irqchip/sifive/plic:starting",

My rationale of the above comments is to achieve minimal overhead with this
"read pending[] -> disable IE[] -> claim -> enable IE[]" approach. In general,
the fewer interrupts enabled on a hart, the lower the overhead. If there's only
1 interrupt enabled for a give hart, then there's zero reading/writing of IE[],
and you can further optimize away the reading of pending register.

I'd imagine that if the user truly want to avoid the overhead of this quirk,
they can chose to spread out the irq groups onto different harts to alleviate
the slow down, or better isolate a single irq to a given hart, and we should
make it possible.

Feel free to point out any of my misunderstandings.

Bo

