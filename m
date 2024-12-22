Return-Path: <devicetree+bounces-133353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D26989FA610
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 15:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79A4F1886862
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 14:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BAD618FDC8;
	Sun, 22 Dec 2024 14:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkkAXBZb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDD818FC9D;
	Sun, 22 Dec 2024 14:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734877459; cv=none; b=UWgRMzavwZ/L4LBCOaVtoiUIVzuZrz0yUCI38iVYsJ0PpAwUKnPELq6yILj23L1VxduE0ukjS0YDZ5QFN8e9Yg58CvplMHfxAm07IbRQLwjIwTBgp+UsXCal710Qm1g7MEtIo+pTuxeGBrbm+1gic28IFTehYs0BOCqY/gqGV/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734877459; c=relaxed/simple;
	bh=0XcZORZTYCC8Zsw33n+0LgRXzG40hhH2RqpgjdwCwhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hw/5XxkZusyk9xxqujrgoRqVhGr46GZMZgq8sw3aYEZAxe88jSK1xE4sI3PxU5wy+qPmXiq+e4c740yZROtUfVeRHURxzWu3hNBwzuQ6qNZWUEjZI/6GYFsxpG3dWr1PEKLyFMMh4U0bagJxXHo3vVenI9cjPS5EjN0zrtYsnUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkkAXBZb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C783C4CEDC;
	Sun, 22 Dec 2024 14:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734877459;
	bh=0XcZORZTYCC8Zsw33n+0LgRXzG40hhH2RqpgjdwCwhE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PkkAXBZb9TGY0K7hOXgzRvYEdaZZgkETkLX4L7yI+IGjpFqSTODldC6ewGhBfrNVe
	 8m0gQW8KXjEuMRxdoQR4ehPMGkdMBo5pI53dbhMj+hybUWrGU3l4e93b/vNY9uiN/M
	 MJ6JSsZ7eAaXWvHTOHmq0Mcf2krJTCOfkv6ULOi6h8JQwW2raWXLIur2IEW585TQ2O
	 dOY7zH7BnaPRXtB+98sYHhJpHT+nrYQHlvIIOofUASxpRLVRfp8mcRyPes7G8EOLY7
	 mIItlupS0xvHYunHHvar3TumKvvGVw22gIDxQDzKRg6X7fu7gzg2BfS+xAi3EkmBA+
	 9gcBjkQUmXYHA==
Message-ID: <fbdeffe0-c908-4df1-9096-350a7d330570@kernel.org>
Date: Sun, 22 Dec 2024 13:17:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] soc: samsung: exynos-pmu: enable CPU hotplug support
 for gs101
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com,
 kernel-team@android.com
References: <20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-0-c72978f63713@linaro.org>
 <20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-4-c72978f63713@linaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20241213-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v1-4-c72978f63713@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/12/2024 17:44, Peter Griffin wrote:
>  /*
> @@ -325,6 +328,52 @@ struct regmap *exynos_get_pmu_regmap_by_phandle(struct device_node *np,
>  }
>  EXPORT_SYMBOL_GPL(exynos_get_pmu_regmap_by_phandle);
>  
> +/*
> + * CPU_INFORM register hint values which are used by
> + * EL3 firmware (el3mon).
> + */
> +#define CPU_INFORM_CLEAR	0
> +#define CPU_INFORM_C2		1
> +
> +static int cpuhp_pmu_online(unsigned int cpu)

exynos_cpuhp_pmu_online
or gs101_cpuhp_pmu_online
same for offline

> +{
> +	void __iomem *base = pmu_context->pmuintrgen_base;
> +	u32 reg;
> +	u32 mask;
> +
> +	/* clear cpu inform hint */
> +	regmap_write(pmu_context->pmureg, GS101_CPU_INFORM(cpu),
> +		     CPU_INFORM_CLEAR);
> +
> +	mask = (1 << cpu);

BIT(cpu)

> +
> +	writel(((0 << cpu) & mask), base + GS101_GRP2_INTR_BID_ENABLE);

I am not sure if I follow. You want to zero-out all other bits or enable
all other bits?

> +
> +	reg = readl(base + GS101_GRP2_INTR_BID_UPEND) & mask;
> +	writel(reg & mask, base + GS101_GRP2_INTR_BID_CLEAR);

reg is &mask twice.

I don't follow this either, are these auto-cleared? It feels like you
wanted to update some bits, but you are updating entire registers in
both cases.


> +
> +	return 0;
> +}
> +
> +static int cpuhp_pmu_offline(unsigned int cpu)
> +{
> +	void __iomem *base = pmu_context->pmuintrgen_base;
> +	u32 reg, mask;
> +
> +	/* set cpu inform hint */
> +	regmap_write(pmu_context->pmureg, GS101_CPU_INFORM(cpu),
> +		     CPU_INFORM_C2);
> +
> +	writel((1 << cpu), base + GS101_GRP2_INTR_BID_ENABLE);
> +
> +	mask = ((1 << cpu) | (1 << (cpu+8)));

What does 8 stands for?

> +
> +	reg = readl(base + GS101_GRP1_INTR_BID_UPEND) & mask;
> +	writel(reg & mask, base + GS101_GRP1_INTR_BID_CLEAR);
> +
> +	return 0;
> +}
> +
>  static int exynos_pmu_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -377,6 +426,28 @@ static int exynos_pmu_probe(struct platform_device *pdev)
>  	pmu_context->pmureg = regmap;
>  	pmu_context->dev = dev;
>  
> +	if (pmu_context->pmu_data && pmu_context->pmu_data->pmu_cpuhp) {
> +

Drop blank line

> +		pmu_context->pmuintrgen_base =
> +			devm_platform_ioremap_resource_byname(pdev, "pmu-intr-gen");
> +		/*
> +		 * To maintain support for older DTs that didn't specify pmu-intr-gen
> +		 * register region, just issue a warning rather than fail to probe.
> +		 */
> +		if (IS_ERR(pmu_context->pmuintrgen_base)) {
> +			dev_warn(&pdev->dev,
> +				 "failed to map pmu-intr-gen registers\n");

Test old DTS, I think you do write() to the ERR_PTR when
offlining/onlining...

> +		} else {
> +			cpuhp_setup_state(CPUHP_BP_PREPARE_DYN,
> +					"soc/exynos-pmu:prepare",
> +					cpuhp_pmu_online, NULL);
> +
> +			cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
> +					"soc/exynos-pmu:online",
> +					NULL, cpuhp_pmu_offline);
> +		}
> +	}
> +
>  	if (pmu_context->pmu_data && pmu_context->pmu_data->pmu_init)
>  		pmu_context->pmu_data->pmu_init();
>  



Best regards,
Krzysztof

