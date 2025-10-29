Return-Path: <devicetree+bounces-232465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D299FC1833C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 04:40:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E247E4EFFA0
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 03:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80AD02E6CDB;
	Wed, 29 Oct 2025 03:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XzNKgtwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824E622A4E1
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761709159; cv=none; b=Nt3AlS078byryr3sQC+yeN9zxd6Cwuz44MWsfRIZIgZdoHmxlyYzTgvfBbuOC8krHgQB50Y3TzKF4CGhBrbmNOSI3l5Oglnx6PnQwRHYJPC2VxhYbQnvXC+mh1rRCwqsddbLybFA3p4GlIQLV9Z/KjKR1gnG9Y74Kj8i/OkW+X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761709159; c=relaxed/simple;
	bh=TyfYGe4/hBzeXrsINZzpk4KGPbSdo9pWIsH0jmRWTDY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E487kJk4ixkUaPkDLThqKt0rfMJTr1CtNv+4mgYWX93coF/Dn4KQ/hrR4Vn3o4lXm87oJ1knSParCwAPVy0ipKBsR9j/+YfspOonTZXwVzBMNyyoAmwTMZkwbzGdPjrBQH9Fs/PHvitixKJj8e2gKwPCWwoA15ZMBTONptwi6OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XzNKgtwc; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3402942e79cso2308779a91.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 20:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761709157; x=1762313957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=/BZncI02+WgKD2vtY17c3GNq2KPB7/BXVKrpLm5xpsw=;
        b=XzNKgtwch/xsJruOA4zuaPPpEHlChQsLI+TEqNH23eZTZoZbZ+q17KTcvPGsc6enwO
         HxHFoA8eilULPB4CS+BYCq5AUX15T0b8g1iKNfVSGsYDw9sIUz2o0F+fId0PI5t8+41b
         vd5DqcO6AmWTYf+YhLM18ORu36TDFCHHG08ZpN4MUE6Mf4Fbz9F+oOXjMgrtT0oHupV1
         UG48f469qKbZXoxwXHIhVj2F0Y+OxbNqyzbG1voEXvYqcTKOKev9TieRNGFvHYT0pbD4
         N/kprWTK4vmYXgfROhXqgV3zdo4i/2jjJ4K7bpzOm3u2lAMVqu/YomzW4c+0L0PxTLgd
         kyGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761709157; x=1762313957;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/BZncI02+WgKD2vtY17c3GNq2KPB7/BXVKrpLm5xpsw=;
        b=hMoYHIrouIze158SVcO+gAGBvEfF0jHvv7RoGvPHeScgm1Je4T3+vw2c50p5TkXmiI
         TMpf+c/Ekrtu/TS/E6dxZPyprLdf13VOSPHtrb04Gogx+n0uCgr3uWX4sC/eCc1dwVOz
         o5IkFf2S89XjgC73bNr1ZEVB64ISMvdIrjPbElK2bUpP8e+I+w/pqfPCd1sI+OKQXTva
         z3Ge+GECDr5x7vbvL9BLVO5UM3IMT862mDmUNPoFnsw+HCn3LpOCTNXUW2XkKr5rKAZy
         T66USOta3ck60y+BxQXa7i6tojUgg0hABwEEsqXO/uA3GNiud3B/Xe52LiGVPrQE4taK
         sIPw==
X-Forwarded-Encrypted: i=1; AJvYcCWvslsBxovfWGt8pg+9MHa4XCqyZhGkvMZA/kJ5LjGGJMo10okExZgmJ0Icqo7i2onVvFhgZyp465gs@vger.kernel.org
X-Gm-Message-State: AOJu0YzTwxin5bAmyanmmSP13FD43dQ62UfJK6H9+KDdLbDJ09bO3dEU
	zTj1s8CHk1mmscraZjZ2dqyzPMlaAFSoX2CAjcjt3VwRODXgFyfXmF6j
X-Gm-Gg: ASbGnctupOf97x0hyCg4J7fWHu+VIKaGKH04opEQ6yRkUHEwxz7HZCUlFKSEElGa+o3
	UqzH9jYCKmRcYhentQUIzG7OlzXzFZbmte1Dn1qd58h5IpzCIWv4FPdqeT1NLJtZjMsNrW/j5fV
	97gxrH2fOTSc37uyeHgavhSQmgSmHZ2TCxzFil6veQqRhsFBUEwJ3Irvqfv9Pq7WZ0UZDvPesv7
	AXHCoBO4w6KvFnHJaxKNTUzyNcyICX2+9uYE2VkFAZorFVdG4aG1AVnEeaSoIZxQA6aeqEpkk7K
	JSyNXr8k8VLskTsc7Ka6TfKah1MhWhc4Z1VAWODmskC3wJrbsa9RvCI6ssykGFaqF28+xLeH+Cd
	RQsVpqyV+QenUgg01p90M7TI4Cg90faOHIcR3bM+DhZtVVao7DBsnJCRgxq9O1O/B5lSnwVV2Eb
	Ani19by1XYTbp14W3x0Ta+3PP+KAiOe/IGiSn99Po+Fsd+DsLqt1hUgebgi4M=
X-Google-Smtp-Source: AGHT+IEiyDlZP1feO9DTWIe15zckp12teQzAQXHct99PFnGyM2qbgxCl3AMaZwOULwpSxTv5RNJzjQ==
X-Received: by 2002:a17:90b:37cd:b0:338:3156:fc44 with SMTP id 98e67ed59e1d1-3403a283b3dmr1594516a91.18.1761709156729;
        Tue, 28 Oct 2025 20:39:16 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7127a0a2f9sm12286984a12.9.2025.10.28.20.39.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 20:39:16 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <dd97339d-a984-4e74-8043-be99046c5102@roeck-us.net>
Date: Tue, 28 Oct 2025 20:39:14 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] watchdog: loongson1: Rename the prefix from ls1x to
 loongson
To: Binbin Zhou <zhoubinbin@loongson.cn>, Binbin Zhou
 <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Keguang Zhang <keguang.zhang@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>,
 loongarch@lists.linux.dev, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org
References: <20251029020847.1946295-1-zhoubinbin@loongson.cn>
 <20251029020847.1946295-2-zhoubinbin@loongson.cn>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20251029020847.1946295-2-zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/28/25 19:08, Binbin Zhou wrote:
> In order to introduce the watchdog driver of the Loongson-2K0300 SoC,
> which is similar to Loongson-1.
> 
> As preparation, rename all prefixes from ls1x-specific to
> Loongson-generic.
> 
> No functional change intended.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

This is unnecessary. We don't rename drivers or function names because
other chips are added to a driver. Doing so causes unnecessary churn
and other problems, such as (in this case) loongson1_defconfig no longer
enabling this watchdog. Any userspace depending (for whatever reason)
on the driver name would also have problems.

It is ok to make the driver more generic and remove the "1" from
the Kconfig description and from MODULE_DESCRIPTION. However,
please leave function and driver names alone.

Thanks,
Guenter

> ---
>   drivers/watchdog/Kconfig                      |  6 +-
>   drivers/watchdog/Makefile                     |  2 +-
>   .../{loongson1_wdt.c => loongson_wdt.c}       | 86 +++++++++----------
>   3 files changed, 46 insertions(+), 48 deletions(-)
>   rename drivers/watchdog/{loongson1_wdt.c => loongson_wdt.c} (50%)
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 0c25b2ed44eb..74edeb13e95b 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -1963,12 +1963,12 @@ config LANTIQ_WDT
>   	help
>   	  Hardware driver for the Lantiq SoC Watchdog Timer.
>   
> -config LOONGSON1_WDT
> -	tristate "Loongson1 SoC hardware watchdog"
> +config LOONGSON_WDT
> +	tristate "Loongson SoC hardware watchdog"
>   	depends on MACH_LOONGSON32 || COMPILE_TEST
>   	select WATCHDOG_CORE
>   	help
> -	  Hardware driver for the Loongson1 SoC Watchdog Timer.
> +	  Hardware driver for the Loongson SoC Watchdog Timer.
>   
>   config RALINK_WDT
>   	tristate "Ralink SoC watchdog"
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index bbd4d62d2cc3..70be11bf7bbf 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -178,7 +178,7 @@ obj-$(CONFIG_TXX9_WDT) += txx9wdt.o
>   obj-$(CONFIG_OCTEON_WDT) += octeon-wdt.o
>   octeon-wdt-y := octeon-wdt-main.o octeon-wdt-nmi.o
>   obj-$(CONFIG_LANTIQ_WDT) += lantiq_wdt.o
> -obj-$(CONFIG_LOONGSON1_WDT) += loongson1_wdt.o
> +obj-$(CONFIG_LOONGSON_WDT) += loongson_wdt.o
>   obj-$(CONFIG_RALINK_WDT) += rt2880_wdt.o
>   obj-$(CONFIG_IMGPDC_WDT) += imgpdc_wdt.o
>   obj-$(CONFIG_MT7621_WDT) += mt7621_wdt.o
> diff --git a/drivers/watchdog/loongson1_wdt.c b/drivers/watchdog/loongson_wdt.c
> similarity index 50%
> rename from drivers/watchdog/loongson1_wdt.c
> rename to drivers/watchdog/loongson_wdt.c
> index 0587ff44d3a1..19f6a19fc811 100644
> --- a/drivers/watchdog/loongson1_wdt.c
> +++ b/drivers/watchdog/loongson_wdt.c
> @@ -10,7 +10,7 @@
>   #include <linux/platform_device.h>
>   #include <linux/watchdog.h>
>   
> -/* Loongson 1 Watchdog Register Definitions */
> +/* Loongson Watchdog Register Definitions */
>   #define WDT_EN			0x0
>   #define WDT_TIMER		0x4
>   #define WDT_SET			0x8
> @@ -23,26 +23,25 @@ module_param(nowayout, bool, 0444);
>   static unsigned int heartbeat;
>   module_param(heartbeat, uint, 0444);
>   
> -struct ls1x_wdt_drvdata {
> +struct loongson_wdt_drvdata {
>   	void __iomem *base;
>   	struct clk *clk;
>   	unsigned long clk_rate;
>   	struct watchdog_device wdt;
>   };
>   
> -static int ls1x_wdt_ping(struct watchdog_device *wdt_dev)
> +static int loongson_wdt_ping(struct watchdog_device *wdt_dev)
>   {
> -	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
> +	struct loongson_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>   
>   	writel(0x1, drvdata->base + WDT_SET);
>   
>   	return 0;
>   }
>   
> -static int ls1x_wdt_set_timeout(struct watchdog_device *wdt_dev,
> -				unsigned int timeout)
> +static int loongson_wdt_set_timeout(struct watchdog_device *wdt_dev, unsigned int timeout)
>   {
> -	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
> +	struct loongson_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>   	unsigned int max_hw_heartbeat = wdt_dev->max_hw_heartbeat_ms / 1000;
>   	unsigned int counts;
>   
> @@ -54,28 +53,27 @@ static int ls1x_wdt_set_timeout(struct watchdog_device *wdt_dev,
>   	return 0;
>   }
>   
> -static int ls1x_wdt_start(struct watchdog_device *wdt_dev)
> +static int loongson_wdt_start(struct watchdog_device *wdt_dev)
>   {
> -	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
> +	struct loongson_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>   
>   	writel(0x1, drvdata->base + WDT_EN);
>   
>   	return 0;
>   }
>   
> -static int ls1x_wdt_stop(struct watchdog_device *wdt_dev)
> +static int loongson_wdt_stop(struct watchdog_device *wdt_dev)
>   {
> -	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
> +	struct loongson_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>   
>   	writel(0x0, drvdata->base + WDT_EN);
>   
>   	return 0;
>   }
>   
> -static int ls1x_wdt_restart(struct watchdog_device *wdt_dev,
> -			    unsigned long action, void *data)
> +static int loongson_wdt_restart(struct watchdog_device *wdt_dev, unsigned long action, void *data)
>   {
> -	struct ls1x_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
> +	struct loongson_wdt_drvdata *drvdata = watchdog_get_drvdata(wdt_dev);
>   
>   	writel(0x1, drvdata->base + WDT_EN);
>   	writel(0x1, drvdata->base + WDT_TIMER);
> @@ -84,25 +82,25 @@ static int ls1x_wdt_restart(struct watchdog_device *wdt_dev,
>   	return 0;
>   }
>   
> -static const struct watchdog_info ls1x_wdt_info = {
> +static const struct watchdog_info loongson_wdt_info = {
>   	.options = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING | WDIOF_MAGICCLOSE,
> -	.identity = "Loongson1 Watchdog",
> +	.identity = "Loongson Watchdog",
>   };
>   
> -static const struct watchdog_ops ls1x_wdt_ops = {
> +static const struct watchdog_ops loongson_wdt_ops = {
>   	.owner = THIS_MODULE,
> -	.start = ls1x_wdt_start,
> -	.stop = ls1x_wdt_stop,
> -	.ping = ls1x_wdt_ping,
> -	.set_timeout = ls1x_wdt_set_timeout,
> -	.restart = ls1x_wdt_restart,
> +	.start = loongson_wdt_start,
> +	.stop = loongson_wdt_stop,
> +	.ping = loongson_wdt_ping,
> +	.set_timeout = loongson_wdt_set_timeout,
> +	.restart = loongson_wdt_restart,
>   };
>   
> -static int ls1x_wdt_probe(struct platform_device *pdev)
> +static int loongson_wdt_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
> -	struct ls1x_wdt_drvdata *drvdata;
> -	struct watchdog_device *ls1x_wdt;
> +	struct loongson_wdt_drvdata *drvdata;
> +	struct watchdog_device *loongson_wdt;
>   	unsigned long clk_rate;
>   	int err;
>   
> @@ -123,17 +121,17 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>   		return -EINVAL;
>   	drvdata->clk_rate = clk_rate;
>   
> -	ls1x_wdt = &drvdata->wdt;
> -	ls1x_wdt->info = &ls1x_wdt_info;
> -	ls1x_wdt->ops = &ls1x_wdt_ops;
> -	ls1x_wdt->timeout = DEFAULT_HEARTBEAT;
> -	ls1x_wdt->min_timeout = 1;
> -	ls1x_wdt->max_hw_heartbeat_ms = U32_MAX / clk_rate * 1000;
> -	ls1x_wdt->parent = dev;
> +	loongson_wdt = &drvdata->wdt;
> +	loongson_wdt->info = &loongson_wdt_info;
> +	loongson_wdt->ops = &loongson_wdt_ops;
> +	loongson_wdt->timeout = DEFAULT_HEARTBEAT;
> +	loongson_wdt->min_timeout = 1;
> +	loongson_wdt->max_hw_heartbeat_ms = U32_MAX / clk_rate * 1000;
> +	loongson_wdt->parent = dev;
>   
> -	watchdog_init_timeout(ls1x_wdt, heartbeat, dev);
> -	watchdog_set_nowayout(ls1x_wdt, nowayout);
> -	watchdog_set_drvdata(ls1x_wdt, drvdata);
> +	watchdog_init_timeout(loongson_wdt, heartbeat, dev);
> +	watchdog_set_nowayout(loongson_wdt, nowayout);
> +	watchdog_set_drvdata(loongson_wdt, drvdata);
>   
>   	err = devm_watchdog_register_device(dev, &drvdata->wdt);
>   	if (err)
> @@ -141,30 +139,30 @@ static int ls1x_wdt_probe(struct platform_device *pdev)
>   
>   	platform_set_drvdata(pdev, drvdata);
>   
> -	dev_info(dev, "Loongson1 Watchdog driver registered\n");
> +	dev_info(dev, "Loongson Watchdog driver registered\n");
>   
>   	return 0;
>   }
>   
>   #ifdef CONFIG_OF
> -static const struct of_device_id ls1x_wdt_dt_ids[] = {
> +static const struct of_device_id loongson_wdt_dt_ids[] = {
>   	{ .compatible = "loongson,ls1b-wdt", },
>   	{ .compatible = "loongson,ls1c-wdt", },
>   	{ /* sentinel */ }
>   };
> -MODULE_DEVICE_TABLE(of, ls1x_wdt_dt_ids);
> +MODULE_DEVICE_TABLE(of, loongson_wdt_dt_ids);
>   #endif
>   
> -static struct platform_driver ls1x_wdt_driver = {
> -	.probe = ls1x_wdt_probe,
> +static struct platform_driver loongson_wdt_driver = {
> +	.probe = loongson_wdt_probe,
>   	.driver = {
> -		.name = "ls1x-wdt",
> -		.of_match_table = of_match_ptr(ls1x_wdt_dt_ids),
> +		.name = "loongson-wdt",
> +		.of_match_table = of_match_ptr(loongson_wdt_dt_ids),
>   	},
>   };
>   
> -module_platform_driver(ls1x_wdt_driver);
> +module_platform_driver(loongson_wdt_driver);
>   
>   MODULE_AUTHOR("Yang Ling <gnaygnil@gmail.com>");
> -MODULE_DESCRIPTION("Loongson1 Watchdog Driver");
> +MODULE_DESCRIPTION("Loongson Watchdog Driver");
>   MODULE_LICENSE("GPL");


