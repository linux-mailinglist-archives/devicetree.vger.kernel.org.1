Return-Path: <devicetree+bounces-88020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2002893BD9F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 10:04:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43D011C21927
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 08:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7E5172BDB;
	Thu, 25 Jul 2024 08:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GCiMRjIl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2F216F850
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 08:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721894614; cv=none; b=n8fer+7pKfsgSZrVwykpWq8U28aqN+z23EI6ZMzY5Q39w6JpP+o6C8M1qbtxbvieKVzhvHwKLvmI115AiDFFRtubjSsUvTCbYINrfonOtEAegU7o3dTNMIrA/yguOtMEpJ4UiueTXK9qboKPaMdV4v8Aws3u+pWmz+o6ItonZr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721894614; c=relaxed/simple;
	bh=J/CGJBbi1jkFnNRlXCaG1UL4a56IsCyG6bmRKRvOgxY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kcm0gR1VF1KWfT/21RnWQJ2rP6FhuvT8N+N33lJdhOxFFPj9r2Ogf0Wuq07V2uNf/VrQaftnN0eoo1Ceg4GQpRgrON5rsCkvP/YxQs0C1Q490aTUw73yvIof7oaDIsGijroTfapvIMIKhSHB9MrqNUGbLwhBgB/MzkIhx7TXAN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GCiMRjIl; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-369cb9f086aso371050f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 01:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1721894610; x=1722499410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4z2Uc1+f5cX84JLz/1h0gVqAuZCumfNxe++nghYRv/0=;
        b=GCiMRjIlO8yY/T7cyn7WssPwPPKPzo2AOQcWcCy41docFHRxTXuzIdsZyVQGcbcKZM
         SMVJUrZ94FIx5DcR4ZOBoHs2cqdZjv4zSvg6tZobuL7mEbSMeG6nF/OXJRCl5Amxqy3f
         WJ5OQMFGIaVs4csDlyTSrURKHRtyBjMPqjUU9AieQWq91Oso/0OK7N2y4KGjaLC1cuP+
         2k23tcYVQeaYXJs1/c+bIa+GBxT5JGE7unIqkgotvkTT4bsuqKYdaP7mReVaHSfVW9qn
         EFrLJeL1gEzgAK8tII2HQzfI92wSGzNowVg0DeN+LwaJIbV2Sa2KX58fWWU00sYvfF6w
         g7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721894610; x=1722499410;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4z2Uc1+f5cX84JLz/1h0gVqAuZCumfNxe++nghYRv/0=;
        b=QQ06Ti27w38Qykh48aNhqIIGy1tlJH0AcrTrvDCZLlMqhawPitPpyysAJ9X6NoevXk
         7wf3EG7ncpnD6GSmv0Vy8RMo+AYeErUQXNZXYrOCu8JqGAl3snaajpPbaSR/OVAeWirr
         n7GWgEkI/kLHFlhp6zD8lpgR/O/oX8kHT35P25/X2+m6UAt+RniowLt55SZ960/BXlTK
         BOj3M10bqaFZvvV81ayWsfhZy7n/buULwf+r89D21ry8CLzIaLrGR6T9NLKKvBW8hG0O
         7n2PQk5TcE0bWGIMo3o6EwLzFgRh/OD9vQEOMVxMrHWKw61t1/7Mt/a8RRHE3K4L9zfo
         YT9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmEg9o9gXf0GuniL+uG/1MQNWOkAJOU99rlKRzeWM3Td65e183qzUhtd3voB85qfWjYQQE7r8nvDsVVAt5m01gySVUJgQybNRh9A==
X-Gm-Message-State: AOJu0Yy+1/uBFiS0DDvl6V2frWsX8D88/iH0xut6PqOGnvEjOmh5M2+M
	59KSAy4VdaxV1pLeZZQG4bc8dNg6Wm4FS4pUcyDFgKJ48cqR1RHHsy4ZKGmk2lcAyaPv+nqAdSJ
	A
X-Google-Smtp-Source: AGHT+IEdIMU7gNsMkl9HIcug6VPT3zrOREmSFi2MwfJIgxqpUobBXyo8Rbm7rnDHLGFwE6AXmCrkRQ==
X-Received: by 2002:a5d:534b:0:b0:367:89fd:1e06 with SMTP id ffacd0b85a97d-36b31b08411mr1369965f8f.36.1721894610460;
        Thu, 25 Jul 2024 01:03:30 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b367d9a2fsm1257331f8f.32.2024.07.25.01.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jul 2024 01:03:30 -0700 (PDT)
Message-ID: <80bbdca4-7f01-48d0-ab91-8847ef8ef1df@tuxon.dev>
Date: Thu, 25 Jul 2024 11:03:27 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/11] mfd: renesas-vbattb: Add a MFD driver for the
 Renesas VBATTB IP
Content-Language: en-US
To: Lee Jones <lee@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alexandre.belloni@bootlin.com, geert+renesas@glider.be,
 magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240716103025.1198495-1-claudiu.beznea.uj@bp.renesas.com>
 <20240716103025.1198495-3-claudiu.beznea.uj@bp.renesas.com>
 <20240724145340.GZ501857@google.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240724145340.GZ501857@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Lee,

On 24.07.2024 17:53, Lee Jones wrote:
> On Tue, 16 Jul 2024, Claudiu wrote:
> 
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Renesas VBATTB IP has logic to control the RTC clock, tamper detection
>> and a small 128B memory. Add a MFD driver to do the basic initialization
>> of the VBATTB IP for the inner components to work.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v2:
>> - none; this driver is new
>>
>>  drivers/mfd/Kconfig          |  8 ++++
>>  drivers/mfd/Makefile         |  1 +
>>  drivers/mfd/renesas-vbattb.c | 78 ++++++++++++++++++++++++++++++++++++
>>  3 files changed, 87 insertions(+)
>>  create mode 100644 drivers/mfd/renesas-vbattb.c
>>
>> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
>> index bc8be2e593b6..df93e8b05065 100644
>> --- a/drivers/mfd/Kconfig
>> +++ b/drivers/mfd/Kconfig
>> @@ -1383,6 +1383,14 @@ config MFD_SC27XX_PMIC
>>  	  This driver provides common support for accessing the SC27xx PMICs,
>>  	  and it also adds the irq_chip parts for handling the PMIC chip events.
>>  
>> +config MFD_RENESAS_VBATTB
>> +	tristate "Renesas VBATTB driver"
>> +	depends on (ARCH_RZG2L && OF) || COMPILE_TEST
>> +	select MFD_CORE
>> +	help
>> +	  Select this option to enable Renesas RZ/G3S VBATTB driver which
>> +	  provides support for the RTC clock, tamper detector and 128B SRAM.
>> +
>>  config RZ_MTU3
>>  	tristate "Renesas RZ/G2L MTU3a core driver"
>>  	depends on (ARCH_RZG2L && OF) || COMPILE_TEST
>> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
>> index 02b651cd7535..cd2f27492df2 100644
>> --- a/drivers/mfd/Makefile
>> +++ b/drivers/mfd/Makefile
>> @@ -186,6 +186,7 @@ pcf50633-objs			:= pcf50633-core.o pcf50633-irq.o
>>  obj-$(CONFIG_MFD_PCF50633)	+= pcf50633.o
>>  obj-$(CONFIG_PCF50633_ADC)	+= pcf50633-adc.o
>>  obj-$(CONFIG_PCF50633_GPIO)	+= pcf50633-gpio.o
>> +obj-$(CONFIG_MFD_RENESAS_VBATTB)	+= renesas-vbattb.o
>>  obj-$(CONFIG_RZ_MTU3)		+= rz-mtu3.o
>>  obj-$(CONFIG_ABX500_CORE)	+= abx500-core.o
>>  obj-$(CONFIG_MFD_DB8500_PRCMU)	+= db8500-prcmu.o
>> diff --git a/drivers/mfd/renesas-vbattb.c b/drivers/mfd/renesas-vbattb.c
>> new file mode 100644
>> index 000000000000..5d71565b8cbf
>> --- /dev/null
>> +++ b/drivers/mfd/renesas-vbattb.c
>> @@ -0,0 +1,78 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * VBATTB driver
>> + *
>> + * Copyright (C) 2024 Renesas Electronics Corp.
>> + */
>> +
>> +#include <linux/mod_devicetable.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/pm_runtime.h>
>> +#include <linux/reset.h>
>> +
>> +static int vbattb_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct reset_control *rstc;
>> +	int ret;
>> +
>> +	rstc = devm_reset_control_array_get_exclusive(dev);
>> +	if (IS_ERR(rstc))
>> +		return PTR_ERR(rstc);
>> +
>> +	ret = devm_pm_runtime_enable(dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = pm_runtime_resume_and_get(dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = reset_control_deassert(rstc);
>> +	if (ret)
>> +		goto rpm_put;
>> +
>> +	platform_set_drvdata(pdev, rstc);
> 
> Where is this consumed?

In vbattb_remove().

> 
>> +	ret = devm_of_platform_populate(dev);
> 
> 
> Which devices will this probe?

In this version it is used by clock logic from VBATTB IP, modeled as
individual device. A schema of the blocks controlled in the VBATTB IP can
be found at [1] (please note that there is also the RTC mentioned there but
because it is on the PD_VBATT always-on power domain (backed by battery);
in fact, it is an individual device mapped at it's own address). Here:
- the 32KHz-clock oscillator, mux (with XC, XBYP inputs), CGC are used in
  the cock driver (introduced in this series)
- tamper detector module with gate controlled by TAMPICR1 being part of
  tamper detection logic (no driver for this ATM)
- backup registers being the SRAM (tried locally with mmio-sram driver
  (drives/misc/sram.c)), subnode described with (for internal development):

vbattb: vbattb@1005c000 {

	// ...

	backup_sram: sram@80 {
		compatible = "mmio-sram";
		reg = <0 0x80 0 0x80>;
		clocks = <&cpg CPG_MOD R9A08G045_VBAT_BCLK>;
		clock-names = "bclk";
		power-domains = <&cpg>;
		resets = <&cpg R9A08G045_VBAT_BRESETN>;
		no-memory-wc;

		#address-cells = <2>;
		#size-cells = <2>;
		ranges = <0 0 0 0x80 0 0x80>;

		pool@0 {
			reg = <0 0 0 0x80>;
			label = "sram-test";
			export;
		};
	};
};

My initial idea was to have logic blocks of the VBATTB IP grouped as
devices (clock for the moment and for future, at least the small SRAM, if
needed at some point). After the discussion with Stephen on clock driver I
tend to give up this model.

Please let me know if you have any hints on how to go forward.

Thank you for  your review,
Claudiu Beznea

[1] https://i2.paste.pics/RFKJ0.png?rand=Xq8w1RLDvZ

> 
>> +	if (ret)
>> +		goto reset_assert;
>> +
>> +	return 0;
>> +
>> +reset_assert:
>> +	reset_control_assert(rstc);
>> +rpm_put:
>> +	pm_runtime_put(dev);
>> +	return ret;
>> +}
>> +
>> +static void vbattb_remove(struct platform_device *pdev)
>> +{
>> +	struct reset_control *rstc = platform_get_drvdata(pdev);
>> +
>> +	reset_control_assert(rstc);
>> +	pm_runtime_put(&pdev->dev);
>> +}
>> +
>> +static const struct of_device_id vbattb_match[] = {
>> +	{ .compatible = "renesas,r9a08g045-vbattb" },
>> +	{ /* sentinel */ },
>> +};
>> +MODULE_DEVICE_TABLE(of, vbattb_match);
>> +
>> +static struct platform_driver vbattb_driver = {
>> +	.probe = vbattb_probe,
>> +	.remove_new = vbattb_remove,
>> +	.driver = {
>> +		.name = "renesas-vbattb",
>> +		.of_match_table = vbattb_match,
>> +	},
>> +};
>> +module_platform_driver(vbattb_driver);
>> +
>> +MODULE_ALIAS("platform:renesas-vbattb");
>> +MODULE_AUTHOR("Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>");
>> +MODULE_DESCRIPTION("Renesas VBATTB driver");
>> +MODULE_LICENSE("GPL");
>> -- 
>> 2.39.2
>>
> 

