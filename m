Return-Path: <devicetree+bounces-77454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8239490EB28
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 14:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C5D928186F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 12:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29F314262C;
	Wed, 19 Jun 2024 12:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="WGi1SVSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B829313B290
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 12:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718800382; cv=none; b=p8+UuBhRsbBeuqH5etImV1QB57Eu3WxD/HJEE4GbohxRi8EgTAcV3vDKg9aYNKa0I1UBdCLowZfhnOJVvNrLIrEFwOXoFCsyF5rYhyGFsaiu0Jqb0JENdzFtRKtBrUGeDt+g/UXIJ3h0/qD8LQvkjZb9c38ckozIpY/OKKTQeOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718800382; c=relaxed/simple;
	bh=9MfK5JCzVy9muyv60i/Dq/PoCgYHqXL1S2M278tRP38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GCz0fUQWv2EEML+9T3mmMXiDjRcImDNQEc12iqSZ52NBVt96njJI11mrGIGk4fWae/7+seh3o/YP2auc6TaTFvXj2sbI6seq23C/B/0vQCP3FmJVwX72z0oezvKMABoqal6szZs9qs3aKh5xHmyTuI8wgDlmpYT6FMBQVr1OykA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=WGi1SVSJ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a63359aaaa6so1014352366b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 05:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718800379; x=1719405179; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gPcch8UnfrSSFHDIQLuQcp/b1QOh8j/WeWlt4NepfSQ=;
        b=WGi1SVSJQnW1e4047zGqI71JDArZz91ZGz1HisvBwKaZbfLVypQHN/GxlTHEJF4ERz
         OGvVe996/KqTHqtOCxcz3TJeKBE3HrTwMfqRIJIRsn3/qCUSdl6o3AhSmaAFd9aPjjBM
         rPSVH7umzRM+2pE9GVBC9AIpavmAD1XMcLLVPsBYjIvqzhhO2tdIKtpTke/EY/lgK8iT
         4NF0Jz0dqyAWcxoJgLAhL41Izl3qfLhZo1TXzgc/2HuXBw5tGOwNnwrSB/qCJYlupgkS
         SPppmkCEkdAa/h+YYNxG4V1rNL4eeI+OluR1VzxgseRHxC+IBOtqq1XFHPStcVDQQ17b
         aR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718800379; x=1719405179;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gPcch8UnfrSSFHDIQLuQcp/b1QOh8j/WeWlt4NepfSQ=;
        b=rH1xrxaZMNLEYWDZewH/0O9cz9t/vimdafmmHzFTF+DGHCoI/Ac8z/QeUAPREsWnil
         RbpnFLq+Ct2ax9gSHrI1kVmw4ShaMj64ko+I+gY6u61gviFF7mjaae17+vfyKf0mcRjC
         9Z9F8JPArPlHdZ+Uv9uKDCwGA4qxvjl5lJUlN8kq8Qb9XBwgLBL3CttR4sL45KgghJRq
         WH8fgJn1R8gFHKqEG3IiIL9En+99N4BJLpQPjHjl54v/S89TSFrwIPXmlWsiiRCRbL/o
         vy0X8tD7VLs8KMrwzGsV5AhObXeMloXHn/ty47zc4FOqsOKGizrebZ1fv0pI4UBoqWXl
         dzvg==
X-Forwarded-Encrypted: i=1; AJvYcCXhzb2TsnufgJgihMk6g5EzU8KiYhEpJ6qIpVtKKcOHhmroCh8vW+ZqlQVYd1XCtI4Fs2fPKl9+2b7j3Z+MU519RgskJDkQoE2Yrw==
X-Gm-Message-State: AOJu0Yx9B/2rlKNOueH/T8ggpmiZknRh20XqP7FneUy5LZFpz3/Ilwgt
	Uap8B2tw090KWyrd/rcYiU3GRjbEqpMMDpyLyQbIQuFy6ZRdGj65JJaV5ewPn7A=
X-Google-Smtp-Source: AGHT+IFRjgJVp1zJ8zfpBwVcV/FFEeI10J9dSpVOnvtKNRXuJ7Ws6+TAY9PJj4ON70ordi3pi8UlKg==
X-Received: by 2002:a17:906:a849:b0:a6f:1b:8e99 with SMTP id a640c23a62f3a-a6fab7d7ce0mr120181866b.74.1718800377986;
        Wed, 19 Jun 2024 05:32:57 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56ecdd1fsm656805666b.102.2024.06.19.05.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jun 2024 05:32:57 -0700 (PDT)
Message-ID: <a86797d6-e262-483c-92de-cfab5dfaff69@tuxon.dev>
Date: Wed, 19 Jun 2024 15:32:54 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] watchdog: Add Watchdog Timer driver for RZ/V2H(P)
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240618222403.464872-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240618222403.464872-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240618222403.464872-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Prabhakar,

On 19.06.2024 01:24, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add Watchdog Timer driver for RZ/V2H(P) SoC.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/watchdog/Kconfig     |   8 ++
>  drivers/watchdog/Makefile    |   1 +
>  drivers/watchdog/rzv2h_wdt.c | 248 +++++++++++++++++++++++++++++++++++
>  3 files changed, 257 insertions(+)
>  create mode 100644 drivers/watchdog/rzv2h_wdt.c
> 
> diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
> index 85eea38dbdf4..3f7bcc10ccc2 100644
> --- a/drivers/watchdog/Kconfig
> +++ b/drivers/watchdog/Kconfig
> @@ -938,6 +938,14 @@ config RENESAS_RZG2LWDT
>  	  This driver adds watchdog support for the integrated watchdogs in the
>  	  Renesas RZ/G2L SoCs. These watchdogs can be used to reset a system.
>  
> +config RENESAS_RZV2HWDT
> +	tristate "Renesas RZ/V2H(P) WDT Watchdog"
> +	depends on ARCH_RENESAS || COMPILE_TEST
> +	select WATCHDOG_CORE
> +	help
> +	  This driver adds watchdog support for the integrated watchdogs in the
> +	  Renesas RZ/V2H(P) SoCs. These watchdogs can be used to reset a system.
> +
>  config ASPEED_WATCHDOG
>  	tristate "Aspeed BMC watchdog support"
>  	depends on ARCH_ASPEED || COMPILE_TEST
> diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
> index 2d1117564f5b..295909a1b3b9 100644
> --- a/drivers/watchdog/Makefile
> +++ b/drivers/watchdog/Makefile
> @@ -86,6 +86,7 @@ obj-$(CONFIG_RENESAS_WDT) += renesas_wdt.o
>  obj-$(CONFIG_RENESAS_RZAWDT) += rza_wdt.o
>  obj-$(CONFIG_RENESAS_RZN1WDT) += rzn1_wdt.o
>  obj-$(CONFIG_RENESAS_RZG2LWDT) += rzg2l_wdt.o
> +obj-$(CONFIG_RENESAS_RZV2HWDT) += rzv2h_wdt.o
>  obj-$(CONFIG_ASPEED_WATCHDOG) += aspeed_wdt.o
>  obj-$(CONFIG_STM32_WATCHDOG) += stm32_iwdg.o
>  obj-$(CONFIG_UNIPHIER_WATCHDOG) += uniphier_wdt.o
> diff --git a/drivers/watchdog/rzv2h_wdt.c b/drivers/watchdog/rzv2h_wdt.c
> new file mode 100644
> index 000000000000..08f97b4bab7f
> --- /dev/null
> +++ b/drivers/watchdog/rzv2h_wdt.c
> @@ -0,0 +1,248 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Renesas RZ/V2H(P) WDT Watchdog Driver
> + *
> + * Copyright (C) 2024 Renesas Electronics Corporation.
> + */
> +#include <linux/bitops.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +#include <linux/units.h>
> +#include <linux/watchdog.h>
> +
> +#define WDTRR			0x00	/* RW, 8  */
> +#define WDTCR			0x02	/* RW, 16 */
> +#define WDTRCR			0x06	/* RW, 8  */
> +
> +#define WDTCR_TOPS_1024		0x00
> +#define WDTCR_TOPS_16384	0x03
> +
> +#define WDTCR_CKS_CLK_1		0x00
> +#define WDTCR_CKS_CLK_256	0x50
> +
> +#define WDTCR_RPES_0		0x300
> +#define WDTCR_RPES_75		0x000
> +
> +#define WDTCR_RPSS_25		0x00
> +#define WDTCR_RPSS_100		0x3000
> +
> +#define WDTRCR_RSTIRQS         BIT(7)
> +
> +#define CLOCK_DIV_BY_256	256
> +
> +#define WDT_DEFAULT_TIMEOUT	60U
> +
> +static bool nowayout = WATCHDOG_NOWAYOUT;
> +module_param(nowayout, bool, 0);
> +MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
> +		 __MODULE_STRING(WATCHDOG_NOWAYOUT) ")");
> +
> +struct rzv2h_wdt_priv {
> +	void __iomem *base;
> +	struct watchdog_device wdev;
> +	struct reset_control *rstc;

You can keep the pointers first to save some padding, if any.

> +	unsigned long oscclk_rate;
> +};
> +
> +static u32 rzv2h_wdt_get_cycle_usec(struct rzv2h_wdt_priv *priv,
> +				    unsigned long cycle,
> +				    u16 wdttime)
> +{
> +	int clock_division_ratio;
> +	u64 timer_cycle_us;
> +
> +	clock_division_ratio = CLOCK_DIV_BY_256;
> +
> +	timer_cycle_us = clock_division_ratio * (wdttime + 1) * MICRO;
> +
> +	return div64_ul(timer_cycle_us, cycle);
> +}
> +
> +static int rzv2h_wdt_ping(struct watchdog_device *wdev)
> +{
> +	struct rzv2h_wdt_priv *priv = watchdog_get_drvdata(wdev);
> +	unsigned long delay;
> +
> +	writeb(0x0, priv->base + WDTRR);
> +	writeb(0xFF, priv->base + WDTRR);
> +
> +	/*
> +	 * Refreshing the down-counter requires up to 4 cycles
> +	 * of the signal for counting
> +	 */
> +	delay = 4 * rzv2h_wdt_get_cycle_usec(priv, priv->oscclk_rate, 0);
> +	udelay(delay);
> +
> +	return 0;
> +}
> +
> +static void rzv2h_wdt_setup(struct watchdog_device *wdev, u16 wdtcr)
> +{
> +	struct rzv2h_wdt_priv *priv = watchdog_get_drvdata(wdev);
> +
> +	writew(wdtcr, priv->base + WDTCR);
> +
> +	/* LSI needs RSTIRQS to be cleared */
> +	writeb(readb(priv->base + WDTRCR) & ~WDTRCR_RSTIRQS, priv->base + WDTRCR);
> +}
> +
> +static int rzv2h_wdt_start(struct watchdog_device *wdev)
> +{
> +	pm_runtime_get_sync(wdev->parent);

You may consider using pm_runtime_resume_and_get() which takes care of
failures from __pm_runtime_resume(), if any.

> +
> +	/*
> +	 * WDTCR
> +	 * - CKS[7:4] - Clock Division Ratio Select - 0101b: oscclk/256
> +	 * - RPSS[13:12] - Window Start Position Select - 11b: 100%
> +	 * - RPES[9:8] - Window End Position Select - 11b: 0%
> +	 * - TOPS[1:0] - Timeout Period Select - 11b: 16384 cycles (3FFFh)
> +	 */
> +	rzv2h_wdt_setup(wdev, WDTCR_CKS_CLK_256 | WDTCR_RPSS_100 |
> +			WDTCR_RPES_0 | WDTCR_TOPS_16384);
> +
> +	rzv2h_wdt_ping(wdev);
> +
> +	return 0;
> +}
> +
> +static int rzv2h_wdt_stop(struct watchdog_device *wdev)
> +{
> +	struct rzv2h_wdt_priv *priv = watchdog_get_drvdata(wdev);
> +
> +	pm_runtime_put(wdev->parent);
> +	reset_control_reset(priv->rstc);
> +
> +	return 0;
> +}
> +
> +static const struct watchdog_info rzv2h_wdt_ident = {
> +	.options = WDIOF_MAGICCLOSE | WDIOF_KEEPALIVEPING | WDIOF_SETTIMEOUT,
> +	.identity = "Renesas RZ/V2H WDT Watchdog",
> +};
> +
> +static int rzv2h_wdt_restart(struct watchdog_device *wdev,
> +			     unsigned long action, void *data)
> +{
> +	rzv2h_wdt_stop(wdev);

Calling pm_runtime_put() though this function may lead to unbalanced
runtime PM counter if the device is not used at this moment. I may be wrong
though, I'm just reading the code, anyway (see below).

> +
> +	pm_runtime_get_sync(wdev->parent);

If compiled with LOCKDEP this should trigger an invalid wait context
(see commit e4cf89596c1f ("watchdog: rzg2l_wdt: Fix 'BUG: Invalid wait
context'") and maybe [2] for a possible fix (if it's considered ok).

[2]
https://lore.kernel.org/all/20240619120920.2703605-3-claudiu.beznea.uj@bp.renesas.com/


> +
> +	/*
> +	 * WDTCR
> +	 * - CKS[7:4] - Clock Division Ratio Select - 0000b: oscclk/1
> +	 * - RPSS[13:12] - Window Start Position Select - 00b: 25%
> +	 * - RPES[9:8] - Window End Position Select - 00b: 75%
> +	 * - TOPS[1:0] - Timeout Period Select - 00b: 1024 cycles (03FFh)
> +	 */
> +	rzv2h_wdt_setup(wdev, WDTCR_CKS_CLK_1 | WDTCR_RPSS_25 |
> +			WDTCR_RPES_75 | WDTCR_TOPS_1024);
> +
> +	rzv2h_wdt_ping(wdev);
> +
> +	return 0;
> +}
> +
> +static const struct watchdog_ops rzv2h_wdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = rzv2h_wdt_start,
> +	.stop = rzv2h_wdt_stop,
> +	.ping = rzv2h_wdt_ping,
> +	.restart = rzv2h_wdt_restart,
> +};
> +
> +static void rzv2h_wdt_reset_assert(void *data)
> +{
> +	struct reset_control *rstc = data;
> +
> +	reset_control_assert(rstc);
> +}
> +
> +static int rzv2h_wdt_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rzv2h_wdt_priv *priv;
> +	struct clk *oscclk;
> +	unsigned long rate;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(priv->base))
> +		return PTR_ERR(priv->base);
> +
> +	/* Get watchdog oscclk clock */
> +	oscclk = clk_get(&pdev->dev, "oscclk");
> +	if (IS_ERR(oscclk))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(oscclk),
> +				     "no oscclk");
> +
> +	priv->oscclk_rate = clk_get_rate(oscclk);
> +	clk_put(oscclk);
> +	if (!priv->oscclk_rate)
> +		return dev_err_probe(&pdev->dev, -EINVAL, "oscclk rate is 0");
> +
> +	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +	if (IS_ERR(priv->rstc))
> +		return dev_err_probe(&pdev->dev, PTR_ERR(priv->rstc),
> +					"failed to get cpg reset");
> +
> +	ret = reset_control_deassert(priv->rstc);

I don't see any reason why this signal is deasserted here and then
assert->deassert in stop. This may leak some power when device is not used.
Is this hardware limitation ? FYI, a similar approach was implemented in
rzg2l_wdt and it has been proposed for changes in [1].

[1]
https://lore.kernel.org/all/20240410134044.2138310-6-claudiu.beznea.uj@bp.renesas.com/

Thank you,
Claudiu Beznea

> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to deassert");
> +	ret = devm_add_action_or_reset(&pdev->dev,
> +				       rzv2h_wdt_reset_assert,
> +				       priv->rstc);
> +	if (ret < 0)
> +		return ret;
> +
> +	rate = priv->oscclk_rate / 256;
> +	priv->wdev.max_hw_heartbeat_ms = (1000 * 16383) / rate;
> +	dev_dbg(dev, "max hw timeout of %dms\n",
> +		priv->wdev.max_hw_heartbeat_ms);
> +
> +	priv->wdev.min_timeout = 1;
> +	priv->wdev.timeout = WDT_DEFAULT_TIMEOUT;
> +	priv->wdev.info = &rzv2h_wdt_ident;
> +	priv->wdev.ops = &rzv2h_wdt_ops;
> +	priv->wdev.parent = dev;
> +	watchdog_set_drvdata(&priv->wdev, priv);
> +	watchdog_set_nowayout(&priv->wdev, nowayout);
> +	watchdog_stop_on_unregister(&priv->wdev);
> +
> +	ret = watchdog_init_timeout(&priv->wdev, 0, dev);
> +	if (ret)
> +		dev_warn(dev, "Specified timeout invalid, using default");
> +
> +	ret = devm_pm_runtime_enable(&pdev->dev);
> +	if (ret)
> +		return ret;
> +
> +	return devm_watchdog_register_device(&pdev->dev, &priv->wdev);
> +}
> +
> +static const struct of_device_id rzv2h_wdt_ids[] = {
> +	{ .compatible = "renesas,r9a09g057-wdt", },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, rzv2h_wdt_ids);
> +
> +static struct platform_driver rzv2h_wdt_driver = {
> +	.driver = {
> +		.name = "rzv2h_wdt",
> +		.of_match_table = rzv2h_wdt_ids,
> +	},
> +	.probe = rzv2h_wdt_probe,
> +};
> +module_platform_driver(rzv2h_wdt_driver);
> +MODULE_AUTHOR("Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>");
> +MODULE_DESCRIPTION("Renesas RZ/V2H(P) WDT Watchdog Driver");

