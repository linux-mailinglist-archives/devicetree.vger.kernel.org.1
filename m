Return-Path: <devicetree+bounces-50865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E048387D75A
	for <lists+devicetree@lfdr.de>; Sat, 16 Mar 2024 00:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FECA1C20A61
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 23:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016C75A4C2;
	Fri, 15 Mar 2024 23:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="TLWQQRoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC39C59B6C
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 23:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710545644; cv=none; b=HPlrzBNCPOhObwwLGxRJWPXCZ0aADCRQCBOIHzNXPf/iqBXZIYGO+B1eKHa9xgm4WDyaPmMVLzew8V7SePD4fQAzutWHS/zVt9hG5OCe+eUE3pL8qMEvVe9IZizMh1P8KlkP90wNBXuT7kVrnF6xFCrxSJANJARy8cmqKeqr9XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710545644; c=relaxed/simple;
	bh=EOZ9XodFzTqalFpsoPWPyK6u2LJup6kAYoPkvU3+VLQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IoAOMC77nCKFfkaURwl2WVVjrj8ShCKE2eqcyUtsVjNw0lg7capSZgD0xIluzCv0+MpC1Y92GSrYdCKAQmtEcdnL83S27KTUUKKtCfGZRt8l81qDPOkkNO/6aZAUFu7xgS2ytzfyTP5jRPo9lt8ZCNmEi25PwEHgWDm/6cSjG/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=TLWQQRoZ; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-36668066e0aso14570585ab.2
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 16:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710545640; x=1711150440; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7LDRWf6+oq71bOQJEav3fd6gx7d0AmWvkWYm+qlF7/g=;
        b=TLWQQRoZWCE/pk+ikY431sQ5W/Ue1cbYcqHzRfHerKPQBUVqnjo1Rr8pt+OLycjW+V
         Q5IW3qvkD/ovusYmxigjHEC7emIq7xD1uhYuyBhBZI8437Th1JJ1/dcJbtUpmPrD3SYi
         EVkuMwFefyPS3EnnikP2ahNuKM1lqzUGRK2aaHcvCXgIAK4UKao6+dh0tCvMhYvheSub
         dsUnpGIJWS3W8/3oLYDUHZydWOaS2iIk8rlTliEmELqOkmSlfjB4gehju+0pqyhjCjyh
         tUxMCQyW2c9oqcK857Wz/Aa4ZvUWhom2o5ygtMfK8uAOTtmfdCKszYC4CMmyNsxJuxfF
         0lvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710545640; x=1711150440;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7LDRWf6+oq71bOQJEav3fd6gx7d0AmWvkWYm+qlF7/g=;
        b=Xr0/Rc2aibMj3qqj0GqY/sZFidNzvdvLw9tYnjIWwv4eAfDedPokTUrUGwtvot0WQG
         5SlTwl7LVAyvwjvBuldorkFiU7oHn2vDooyZZnuDti+nfYBDAUkUdRHYNLJvnzdnEEWN
         9WKjMJlH9v2qY3ktKygXtmo7ovNWV6BOSkzx5LLlsddUDMHcA2A5oX5ix6XYxw/YOxWe
         UE14ZXNy5ALM82kZqjDpG8tNaeG5Mv2+OpVzxWWJbQk37dDLVPOh/Xoml0JRBRcHlhci
         RaI8IJWS4gO2uLzpjilDeJ2xDQn4gBDTGhYIOYernSHOTblIAHT8dsP9FtyMH5V2RCBD
         nfjQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1PbpgQmO1ervMWd/O6ocYoCANbcPWH0/CUkf0BG5HnMuQv6t+6zUPCN3mF5VZ+UNcD4DCYOerJpkdUMuPlYFFGTMB248pm/whjg==
X-Gm-Message-State: AOJu0YzXT5ouhiBBgxY/tOIUqTFRixf+5tIULl4qKUY6njo01yJr7eVa
	bhpjRHPaeurn5Y6wZ1PMRDRs6jL5U2uhUSA2z/I6UkZCrH7xT+4m1EDPU/7Dc1I=
X-Google-Smtp-Source: AGHT+IFwUcKQpE2li7mYbiKQQgp2djT1SRd++rglhX2dFpusLZBra2sOJKj9e4kDB2X9VfBh2zoICg==
X-Received: by 2002:a92:d68d:0:b0:366:ab6f:f63 with SMTP id p13-20020a92d68d000000b00366ab6f0f63mr716523iln.3.1710545640025;
        Fri, 15 Mar 2024 16:34:00 -0700 (PDT)
Received: from [100.64.0.1] ([136.226.86.189])
        by smtp.gmail.com with ESMTPSA id bf16-20020a056e02309000b0036662e12737sm1013540ilb.44.2024.03.15.16.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 16:33:59 -0700 (PDT)
Message-ID: <d8052cb1-d875-4d76-90ab-70b9944a0980@sifive.com>
Date: Fri, 15 Mar 2024 18:33:57 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] cache: Add StarLink-500 cache management for StarFive
 JH8100 RISC-V core
Content-Language: en-US
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, geert+renesas@glider.be,
 prabhakar.mahadev-lad.rj@bp.renesas.com, conor.dooley@microchip.com,
 alexghiti@rivosinc.com, evan@rivosinc.com, ajones@ventanamicro.com,
 heiko@sntech.de, guoren@kernel.org, uwu@icenowy.me, jszhang@kernel.org,
 conor@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, leyfoon.tan@starfivetech.com,
 jeeheng.sia@starfivetech.com
References: <20240314061205.26143-1-joshua.yeong@starfivetech.com>
 <20240314061205.26143-4-joshua.yeong@starfivetech.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20240314061205.26143-4-joshua.yeong@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024-03-14 1:12 AM, Joshua Yeong wrote:
> Add software workaround for StarFive StarLink-500
> on JH8100 SoC for CMO extension instructions.
> 
> Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
> ---
>  drivers/cache/Kconfig             |   9 ++
>  drivers/cache/Makefile            |   1 +
>  drivers/cache/starlink500_cache.c | 137 ++++++++++++++++++++++++++++++
>  3 files changed, 147 insertions(+)
>  create mode 100644 drivers/cache/starlink500_cache.c
> 
> diff --git a/drivers/cache/Kconfig b/drivers/cache/Kconfig
> index 9345ce4976d7..e215379f6a73 100644
> --- a/drivers/cache/Kconfig
> +++ b/drivers/cache/Kconfig
> @@ -14,4 +14,13 @@ config SIFIVE_CCACHE
>  	help
>  	  Support for the composable cache controller on SiFive platforms.
>  
> +config STARLINK_500_CACHE
> +	bool "StarLink-500 Cache controller"
> +	depends on RISCV_DMA_NONCOHERENT
> +	depends on ERRATA_STARFIVE
> +	select RISCV_NONSTANDARD_CACHE_OPS
> +	default y
> +	help
> +	  Support for the StarLink-500 cache controller on StarFive platforms.
> +
>  endmenu
> diff --git a/drivers/cache/Makefile b/drivers/cache/Makefile
> index 7657cff3bd6c..c515eb5714ea 100644
> --- a/drivers/cache/Makefile
> +++ b/drivers/cache/Makefile
> @@ -2,3 +2,4 @@
>  
>  obj-$(CONFIG_AX45MP_L2_CACHE)	+= ax45mp_cache.o
>  obj-$(CONFIG_SIFIVE_CCACHE)	+= sifive_ccache.o
> +obj-$(CONFIG_STARLINK_500_CACHE) += starlink500_cache.o
> diff --git a/drivers/cache/starlink500_cache.c b/drivers/cache/starlink500_cache.c
> new file mode 100644
> index 000000000000..eaf8303cb086
> --- /dev/null
> +++ b/drivers/cache/starlink500_cache.c
> @@ -0,0 +1,137 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Non-coherent cache functions for StarFive's StarLink-500 cache controller
> + *
> + * Copyright (C) 2024 Shanghai StarFive Technology Co., Ltd.
> + *
> + * Author: Joshua Yeong <joshua.yeong@starfivetech.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/cacheflush.h>
> +#include <linux/cacheinfo.h>
> +#include <linux/delay.h>
> +#include <linux/dma-direction.h>
> +#include <linux/io.h>
> +#include <linux/of_address.h>
> +#include <linux/of_platform.h>
> +#include <linux/processor.h>
> +
> +#include <asm/dma-noncoherent.h>
> +
> +#define STARFIVE_SL500_CMO_FLUSH_START_ADDR		0x0
> +#define STARFIVE_SL500_CMO_FLUSH_END_ADDR		0x8
> +#define STARFIVE_SL500_CMO_FLUSH_CTL			0x10
> +#define STARFIVE_SL500_CMO_CACHE_ALIGN			0x40
> +
> +#define STARFIVE_SL500_ADDRESS_RANGE_MASK		GENMASK(39, 0)
> +#define STARFIVE_SL500_FLUSH_CTL_MODE_MASK		GENMASK(2, 1)
> +#define STARFIVE_SL500_FLUSH_CTL_ENABLE_MASK		BIT(0)
> +
> +#define STARFIVE_SL500_FLUSH_CTL_CLEAN_INVALIDATE	0
> +#define STARFIVE_SL500_FLUSH_CTL_MAKE_INVALIDATE	1
> +#define STARFIVE_SL500_FLUSH_CTL_CLEAN_SHARED		2
> +
> +struct starfive_sl500_cache_priv {
> +	void __iomem *base_addr;
> +};
> +
> +static struct starfive_sl500_cache_priv starfive_sl500_cache_priv;
> +
> +static void starfive_sl500_cmo_flush_complete(void)
> +{
> +	ktime_t timeout;
> +
> +	volatile void __iomem *_ctl = starfive_sl500_cache_priv.base_addr +
> +                                      STARFIVE_SL500_CMO_FLUSH_CTL;
> +	timeout = ktime_add_ms(ktime_get(), 5000);
> +
> +	do {
> +		if(!(ioread64(_ctl) & STARFIVE_SL500_FLUSH_CTL_ENABLE_MASK))
> +			return;
> +		msleep(50);

These callbacks can be called from an atomic context, so you cannot use msleep()
here.

> +	} while (ktime_before(ktime_get(), timeout));

I suggest using one of the helpers from linux/iopoll.h, e.g. readq_poll_timeout().

> +
> +	pr_err("StarFive CMO operation timeout\n");
> +	dump_stack();

WARN or WARN_ON would be idiomatic here.

> +}
> +
> +void starfive_sl500_dma_cache_wback(phys_addr_t paddr, unsigned long size)
> +{
> +	writeq(FIELD_PREP(STARFIVE_SL500_ADDRESS_RANGE_MASK, paddr),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_START_ADDR);
> +	writeq(FIELD_PREP(STARFIVE_SL500_ADDRESS_RANGE_MASK, paddr + size),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_END_ADDR);
> +
> +	mb();
> +	writeq(FIELD_PREP(STARFIVE_SL500_FLUSH_CTL_MODE_MASK,
> +	       STARFIVE_SL500_FLUSH_CTL_CLEAN_SHARED),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_CTL);
> +
> +	starfive_sl500_cmo_flush_complete();
> +}
> +
> +void starfive_sl500_dma_cache_invalidate(phys_addr_t paddr, unsigned long size)
> +{
> +	writeq(FIELD_PREP(STARFIVE_SL500_ADDRESS_RANGE_MASK, paddr),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_START_ADDR);
> +	writeq(FIELD_PREP(STARFIVE_SL500_ADDRESS_RANGE_MASK, paddr + size),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_END_ADDR);
> +
> +	mb();
> +	writeq(FIELD_PREP(STARFIVE_SL500_FLUSH_CTL_MODE_MASK,
> +	       STARFIVE_SL500_FLUSH_CTL_MAKE_INVALIDATE),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_CTL);
> +
> +	starfive_sl500_cmo_flush_complete();
> +}
> +
> +void starfive_sl500_dma_cache_wback_inv(phys_addr_t paddr, unsigned long size)
> +{
> +	writeq(FIELD_PREP(STARFIVE_SL500_ADDRESS_RANGE_MASK, paddr),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_START_ADDR);
> +	writeq(FIELD_PREP(STARFIVE_SL500_ADDRESS_RANGE_MASK, paddr + size),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_END_ADDR);
> +
> +	mb();
> +	writeq(FIELD_PREP(STARFIVE_SL500_FLUSH_CTL_MODE_MASK,
> +	       STARFIVE_SL500_FLUSH_CTL_CLEAN_INVALIDATE),
> +	       starfive_sl500_cache_priv.base_addr + STARFIVE_SL500_CMO_FLUSH_CTL);
> +
> +	starfive_sl500_cmo_flush_complete();
> +}
> +
> +static const struct riscv_nonstd_cache_ops starfive_sl500_cmo_ops = {
> +	.wback = &starfive_sl500_dma_cache_wback,
> +	.inv = &starfive_sl500_dma_cache_invalidate,
> +	.wback_inv = &starfive_sl500_dma_cache_wback_inv,
> +};
> +
> +static const struct of_device_id starfive_sl500_cache_ids[] = {
> +	{ .compatible = "starfive,starlink-500-cache" },
> +	{ /* sentinel */ }
> +};
> +
> +static int __init starfive_sl500_cache_init(void)
> +{
> +	struct device_node *np;
> +	struct resource res;
> +	int ret;
> +
> +	np = of_find_matching_node(NULL, starfive_sl500_cache_ids);
> +	if (!of_device_is_available(np))
> +		return -ENODEV;
> +
> +	ret = of_address_to_resource(np, 0, &res);
> +	if (ret)
> +		return ret;
> +
> +	starfive_sl500_cache_priv.base_addr = ioremap(res.start, resource_size(&res));
> +	if (!starfive_sl500_cache_priv.base_addr)
> +		return -ENOMEM;

of_address_to_resource() + ioremap() simplifies to of_iomap().

Regards,
Samuel

> +
> +	riscv_noncoherent_register_cache_ops(&starfive_sl500_cmo_ops);
> +
> +	return 0;
> +}
> +early_initcall(starfive_sl500_cache_init);


