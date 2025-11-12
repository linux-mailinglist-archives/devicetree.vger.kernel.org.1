Return-Path: <devicetree+bounces-237838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A4185C54DD0
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 00:55:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 534F44E052A
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 23:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D49852F12C1;
	Wed, 12 Nov 2025 23:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="be2+Jepo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F92EB876
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 23:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991710; cv=none; b=gqBjX4YO5VKeTE1MdevqFILdGjrE6HJQS7OxKKmjDV9aN4TylhvuWuqIBNbyq8TcVTYqJSZTAXUBCwW/WhnP93UMHyryoVQ+vVF+3WeIssN+S2megV8r/XGNEdBrzAFmfeqzlETHOf9vMdnIEP1pLmjX86hkrlL8J7BJnJXmjOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991710; c=relaxed/simple;
	bh=Us25Ow4LTRbEQvqsZr0IcOc4aoJJGqD1PGayCn9qrv0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t0CdrZeyXkr5jyXUuQsguFiM7kmRWdkRlL9w05dAm9/0ikPZTiFsrcLc4WDPIzMoMBLoAd4Vr5u9gwirRrj5v2xBz5TeOjdR4g9Bx7Jm5IyfKXwtQqyi3Z2hZJMnKH7IcYe0HFFfLJrFyYu8HQROIcziaGvj67vwmfTx2AEP/Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=be2+Jepo; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-343d49b7227so259063a91.1
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762991708; x=1763596508; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6OffR4lIkpzwUex3aL8B2PN3fOXP6I4NsdzFgFrC6Q=;
        b=be2+JepoDYAaRF85jTyh55xYas6UTEDz0dW5cDhlioMK/nyUD9cBDFiT1Dg8+YNzCC
         kILhDUtJg/tyicHDaL8bJhdZP1273daPlsmOKEyzVuplT7cE7gerIDEFgXMx+9HphG7g
         seFthbIeNsop+YWxGlEpW0GNAubU6tAy1oJtcACwmiWyy2erWt2fqC3sNKn04FHBHeEz
         S2AoFJOF9OwJsX1cBypy+DXq+9bEKyWwWEIiyk8tn+3LPBK0kuYRkLNEYJAmc6eMaWey
         s5J3w7wpVaHnJcyFjz4wIq/zyXtYxCvjiDzh0NVHAtqHMgbenMGuzhDKUqsREStJ3bhS
         6v8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762991708; x=1763596508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=w6OffR4lIkpzwUex3aL8B2PN3fOXP6I4NsdzFgFrC6Q=;
        b=Dfg7xSmZfNNBiHqp5KF13U0nfALH/YuMQTT6ggiMvv3wbw51+2Otbc78Hx7cDtf1PR
         lehW3Q3uCR3B+zoZdeu2wMqy/Ev8wwFKog3KjLUJw59Dt0+DHCszKL0DAGkwjrBOd9W2
         5UE5fUHf34IYVeb2r3ImKBhxP3PD/XfMmfJAhAdCLlNNuT4ja8q9gNdH2vxrPUTWypbl
         NY0+bXDsZzpfDgw2cSfVnicUqf9jd5uoyym9PBmY+C7fMxdjQ8GMHHua2EhvIBq1mkDm
         lQ2wrGUoVElePX9mx5TQuhMgj8h5l+yONqcNdUulrScmWrsSC2C21TOOy+VahHrchLLm
         wixQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNSnQzbaKJ+CtJdXxxeFCfkWKQ9YMKtqvxBxnOyN1l/zDwqtbOODghAHJZou+expo/sPD0uiEChs4q@vger.kernel.org
X-Gm-Message-State: AOJu0YzCXmNLaF701y6AjfV9Akn+J5wun2+oXiDiMLULj8AUgm969Q6I
	iLtGSjuDRICVxtvkUXER1LduJYc6iQoJNyTHKXlaOhzA3Ntedo58LpfF
X-Gm-Gg: ASbGncsN2Z4JB4qcuK8BLWjSktcvbGBWMf72YY7PKl2UQHUcX21VQGRxe8MQvgB7kg6
	5p2eA1xnZPi5KkdQKW20V1wM04BjZhXHp+NaQ8FEMVvsl2SFjdhFow2flJUqsdAY0jbiE/CZcoQ
	9nhDte2fR9ejm2vojfQELOHKAfEctZtT0NQOdal5kVa8IquIJStdit2sAbpWakqOhh/MRUNDiis
	Hu1DpDw03Dsd5BfV4Uk+LmDdW6mraiO8I5DR49DgObrDG+GtXtYWV0BJdesnjcZBfERnJYYF8k1
	Elvic+XI/c9Zu0DbtsZ/Ax6ONsFr5EaT9UBqPnq0D5yWFrO4lBmKjbTjbRwBY3Ns6mfcpr3N0/X
	pKmBQ5oCk+dJs5BCN62y4GslD1JQIA00fxLf3SdScTUUynyfjLWRKGrZV5aICdBKWRwGQIAJ/yC
	jLNmJRxt44lDPw
X-Google-Smtp-Source: AGHT+IEE+ukQ2Egcy4293lQJqi7WMf+MbJ76O7jm9+X36I2yXPp50tCVwO5o7dcTEyhqPA51Cg8LYA==
X-Received: by 2002:a17:90b:5487:b0:343:c839:21d2 with SMTP id 98e67ed59e1d1-343ddef34c5mr5046424a91.28.1762991708311;
        Wed, 12 Nov 2025 15:55:08 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-343ed5331e3sm271066a91.11.2025.11.12.15.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 15:55:07 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 12 Nov 2025 15:55:06 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
	Xiaochuang Mao <maoxiaochuan@loongson.cn>
Subject: Re: [PATCH v2 5/5] watchdog: loongson1: Add Loongson-2k0300 watchdog
 support
Message-ID: <bcfb8eec-546e-40f5-bf12-fc2c68bbd7d4@roeck-us.net>
References: <cover.1762482089.git.zhoubinbin@loongson.cn>
 <d6153aa5457098cea388cff7ee2ceb43b207970b.1762482089.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6153aa5457098cea388cff7ee2ceb43b207970b.1762482089.git.zhoubinbin@loongson.cn>

On Fri, Nov 07, 2025 at 02:01:51PM +0800, Binbin Zhou wrote:
> According to the manual, the Loongson-2K0300 watchdog is similar to the
> Loongson-1, except for some register offsets and inconsistent register
> bit definitions. Separate definitions via driver_data suffice.
> 
> Co-developed-by: Xiaochuang Mao <maoxiaochuan@loongson.cn>
> Signed-off-by: Xiaochuang Mao <maoxiaochuan@loongson.cn>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  drivers/watchdog/Kconfig         |  4 +-
>  drivers/watchdog/loongson1_wdt.c | 73 ++++++++++++++++++++++++++------
>  2 files changed, 62 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 0c25b2ed44eb..002eb785ca1f 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -1965,10 +1965,10 @@ config LANTIQ_WDT
>  
>  config LOONGSON1_WDT
>  	tristate "Loongson1 SoC hardware watchdog"
> -	depends on MACH_LOONGSON32 || COMPILE_TEST
> +	depends on MACH_LOONGSON32 || MACH_LOONGSON64 || COMPILE_TEST
>  	select WATCHDOG_CORE
>  	help
> -	  Hardware driver for the Loongson1 SoC Watchdog Timer.
> +	  Hardware driver for the Loongson family Watchdog Timer.
>  
>  config RALINK_WDT
>  	tristate "Ralink SoC watchdog"
> diff --git a/drivers/watchdog/loongson1_wdt.c b/drivers/watchdog/loongson1_wdt.c
> index 255198cbf5bf..2417519717cc 100644
> --- a/drivers/watchdog/loongson1_wdt.c
> +++ b/drivers/watchdog/loongson1_wdt.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  /*
>   * Copyright (c) 2016 Yang Ling <gnaygnil@gmail.com>
> + * Copyright (C) 2025 Binbin Zhou <zhoubinbin@loongson.cn>
>   */
>  
>  #include <linux/clk.h>
> @@ -10,10 +11,8 @@
>  #include <linux/platform_device.h>
>  #include <linux/watchdog.h>
>  
> -/* Loongson 1 Watchdog Register Definitions */
> +/* Loongson Watchdog Register Definitions */
>  #define WDT_EN			0x0
> -#define WDT_TIMER		0x4
> -#define WDT_SET			0x8
>  
>  #define DEFAULT_HEARTBEAT	30
>  
> @@ -27,18 +26,37 @@ module_param(heartbeat, uint, 0);
>  MODULE_PARM_DESC(heartbeat, "Watchdog heartbeat in seconds. (default="
>  		 __MODULE_STRING(DEFAULT_HEARTBEAT) ")");
>  
> +struct ls1x_wdt_pdata {
> +	u32 timer_offset;
> +	u32 set_offset;
> +	u32 wdt_en_bit;
> +};
> +
> +static const struct ls1x_wdt_pdata ls1b_wdt_pdata = {
> +	.timer_offset = 0x4,
> +	.set_offset = 0x8,
> +	.wdt_en_bit = BIT(0),
> +};
> +
> +static const struct ls1x_wdt_pdata ls2k0300_wdt_pdata = {
> +	.timer_offset = 0x8,
> +	.set_offset = 0x4,
> +	.wdt_en_bit = BIT(1),
> +};
> +
>  struct ls1x_wdt_drvdata {
>  	void __iomem *base;
>  	struct clk *clk;
>  	unsigned long clk_rate;
>  	struct watchdog_device wdt;
> +	const struct ls1x_wdt_pdata *pdata;
>  };
>  
>  static int ls1x_wdt_ping(struct watchdog_device *wdt_dev)
>  {
>  	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>  
> -	writel(0x1, drvdata->base + WDT_SET);
> +	writel(0x1, drvdata->base + drvdata->pdata->set_offset);
>  
>  	return 0;
>  }
> @@ -53,7 +71,7 @@ static int ls1x_wdt_set_timeout(struct watchdog_device *wdt_dev,
>  	wdt_dev->timeout = timeout;
>  
>  	counts = drvdata->clk_rate * min(timeout, max_hw_heartbeat);
> -	writel(counts, drvdata->base + WDT_TIMER);
> +	writel(counts, drvdata->base + drvdata->pdata->timer_offset);
>  
>  	return 0;
>  }
> @@ -62,7 +80,7 @@ static int ls1x_wdt_start(struct watchdog_device *wdt_dev)
>  {
>  	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>  
> -	writel(0x1, drvdata->base + WDT_EN);
> +	writel(drvdata->pdata->wdt_en_bit, drvdata->base + WDT_EN);
>  
>  	return 0;
>  }
> @@ -70,8 +88,10 @@ static int ls1x_wdt_start(struct watchdog_device *wdt_dev)
>  static int ls1x_wdt_stop(struct watchdog_device *wdt_dev)
>  {
>  	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
> +	u32 val = readl(drvdata->base + WDT_EN);
>  
> -	writel(0x0, drvdata->base + WDT_EN);
> +	val &= ~(drvdata->pdata->wdt_en_bit);
> +	writel(val, drvdata->base + WDT_EN);
>  
>  	return 0;
>  }
> @@ -81,9 +101,9 @@ static int ls1x_wdt_restart(struct watchdog_device *wdt_dev,
>  {
>  	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>  
> -	writel(0x1, drvdata->base + WDT_EN);
> -	writel(0x1, drvdata->base + WDT_TIMER);
> -	writel(0x1, drvdata->base + WDT_SET);
> +	writel(drvdata->pdata->wdt_en_bit, drvdata->base + WDT_EN);
> +	writel(0x1, drvdata->base + drvdata->pdata->timer_offset);
> +	writel(0x1, drvdata->base + drvdata->pdata->set_offset);
>  
>  	return 0;
>  }
> @@ -114,6 +134,8 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  	platform_set_drvdata(pdev, drvdata);
>  
> +	drvdata->pdata = of_device_get_match_data(dev);
> +
>  	drvdata->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(drvdata->base))
>  		return PTR_ERR(drvdata->base);
> @@ -142,9 +164,32 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>  	return devm_watchdog_register_device(dev, &drvdata->wdt);
>  }
>  
> +static int ls1x_wdt_resume(struct device *dev)
> +{
> +	struct ls1x_wdt_drvdata *data = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&data->wdt))
> +		ls1x_wdt_start(&data->wdt);
> +
> +	return 0;
> +}
> +
> +static int ls1x_wdt_suspend(struct device *dev)
> +{
> +	struct ls1x_wdt_drvdata *data = dev_get_drvdata(dev);
> +
> +	if (watchdog_active(&data->wdt))
> +		ls1x_wdt_stop(&data->wdt);
> +
> +	return 0;
> +}
> +
> +static DEFINE_SIMPLE_DEV_PM_OPS(ls1x_wdt_pm_ops, ls1x_wdt_suspend, ls1x_wdt_resume);
> +
>  static const struct of_device_id ls1x_wdt_dt_ids[] = {
> -	{ .compatible = "loongson,ls1b-wdt", },
> -	{ .compatible = "loongson,ls1c-wdt", },
> +	{ .compatible = "loongson,ls1b-wdt", .data = &ls1b_wdt_pdata },
> +	{ .compatible = "loongson,ls1c-wdt", .data = &ls1b_wdt_pdata },
> +	{ .compatible = "loongson,ls2k0300-wdt", .data = &ls2k0300_wdt_pdata },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, ls1x_wdt_dt_ids);
> @@ -154,11 +199,13 @@ static struct platform_driver ls1x_wdt_driver = {
>  	.driver = {
>  		.name = "ls1x-wdt",
>  		.of_match_table = ls1x_wdt_dt_ids,
> +		.pm = pm_ptr(&ls1x_wdt_pm_ops),
>  	},
>  };
>  
>  module_platform_driver(ls1x_wdt_driver);
>  
>  MODULE_AUTHOR("Yang Ling <gnaygnil@gmail.com>");
> -MODULE_DESCRIPTION("Loongson1 Watchdog Driver");
> +MODULE_AUTHOR("Binbin Zhou <zhoubinbin@loongson.cn>");
> +MODULE_DESCRIPTION("Loongson Watchdog Driver");
>  MODULE_LICENSE("GPL");
> -- 
> 2.47.3
> 

