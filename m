Return-Path: <devicetree+bounces-86118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F289E932714
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 15:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33B5C283659
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC2E19AA7B;
	Tue, 16 Jul 2024 13:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A4efNqqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D994219A87E
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 13:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721135264; cv=none; b=pzWvFNaPg7neQOosbSczP3SJUYs3EoN/V+PqXfM7rTqQxg4bZL5htmomunJiJXo8KwxW0qn//d75usNpuNZi8MErDpJerC1GwXytQ5VZnTFxExE+v+WOjLxDLrS7Ce04rsTunxYZcJ2jD3biD1p1byMF2CKUCZtuWcNTIzXmMT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721135264; c=relaxed/simple;
	bh=/mSMzgnAvU9FogdwEeb+89ILNkuvIAWGgcX6+IqGe+s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K0rW4XqhWeESjxqdniqGUHEcw0SWByo9ajes9inbs9ISQx/Kwucl22DkC7SWxBYfoJQD6UsC5epLgnqpWmZjrEM8EBtNoj6khSnNjjrBQuAYbzML6tjzk7rodrEt3fDItMfeSPu6LwYWKSwDbbJ3m6MqovCL3/opK79sPbce8k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A4efNqqL; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-426636ef8c9so37135325e9.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 06:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721135261; x=1721740061; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HJ8+1Dls9gHXZmTlH8ttAZgOqS31ryuk4YadVHCctP4=;
        b=A4efNqqLoM9EqNRj+FkrTquIXE+8OObLdDMh4ExberxI7GyTkzGusBqX1m4Nqq+jyH
         NldMzaJtoXfMkk6/nrjPFWnHXyU96V7mJssnUJwHxzUejLZDq6KeW/sl6YXCZgd4VQ9v
         PaoUGjwMaakpErVkEzYeL+s5Y7h5WmxS2qzezWkzTJum9Tj9+2I2Gc6mJEDvAv26otoz
         DAy/pCdcOCxx9/h0w6yle9x2TUqV3fjIvEONNvG4sVCf1Vkt19z2TCnnMHH38z/7n2H0
         UXHya1ogX+DIIxxRG1tyo27cu9o22ZcubRI9vCj442PPs+DFgLuyN5qPlEj/5VVM/ePg
         S/oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721135261; x=1721740061;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HJ8+1Dls9gHXZmTlH8ttAZgOqS31ryuk4YadVHCctP4=;
        b=cGEVQnZOEuIUx4oRCnv95Lf77OVmL3ZNq9CjxogN4pRl+fgPb3RjnID4/B8eq7hciN
         FoWkQJ958GAAXtpys35ymALb+kIBMfi30agwYZxWXgdrFdQGt6YIl6Px8atW2zjYF3r4
         kTsrRRrmgbXw+Awr8oKVRfa07Nkm8STXuWf4WLo99a9gVizMZwVpZ7ZcAdcW4ZGO5kDI
         1tsOUE/yzmkNokIjD/TUCzn+7thK/N0qIcdeNaGiZ+jCKjgvwvzyOJvIwolKje/qssdY
         rECqFoOgbtBM1ucCPMdyoj+kPyB/UEDNPo4dP9W9m4r0WbqjNrBY0zxbWbgJa0TNbgXP
         Om6A==
X-Forwarded-Encrypted: i=1; AJvYcCUjGKfC5XuviKWANNMEzdSHFprZQ11MR5me2gZsLETkIeCkYKOv1MjkOZtvwfP6e+SDGK3DossCaFebv+7ho5UstFaBUQFk3W+yOQ==
X-Gm-Message-State: AOJu0Yzjl8xVyvcEwODR586k7LMoqtiTlp3HJNERwD3HfwpMsqxs/7ht
	FDiKRcwL1e0S5hhgZC+G36M1y/s6LCEz0RmI+RRcZUnWz7jq1Eckbf3qLYhZmuo=
X-Google-Smtp-Source: AGHT+IF/mJWDmCM/RTFS4KnpUoj8ACXVsq97TxQdcyfYwcgw8wActI/cmP5PqGmH/ftOaErkRt/3KA==
X-Received: by 2002:a5d:64ab:0:b0:367:9625:bd06 with SMTP id ffacd0b85a97d-3682633a6aamr1634036f8f.42.1721135261033;
        Tue, 16 Jul 2024 06:07:41 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:5abd:5899:c977:d551? ([2a05:6e02:1041:c10:5abd:5899:c977:d551])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-427a5e8144dsm127215135e9.11.2024.07.16.06.07.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 06:07:40 -0700 (PDT)
Message-ID: <046303cd-54d0-42f0-990d-2d18a9de1f3e@linaro.org>
Date: Tue, 16 Jul 2024 15:07:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] thermal: sti: depend on THERMAL_OF subsystem
To: Raphael Gallais-Pou <rgallaispou@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20240714-thermal-v3-0-88f2489ef7d5@gmail.com>
 <20240714-thermal-v3-2-88f2489ef7d5@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240714-thermal-v3-2-88f2489ef7d5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 14/07/2024 13:42, Raphael Gallais-Pou wrote:
> Switch to thermal_of_zone to handle thermal-zones. Replace
> thermal_zone_device_register() by devm_thermal_of_zone_register() and
> remove ops st_thermal_get_trip_type, st_thermal_get_trip_temp.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---
> Changes in v3:
> - Fix unmet dependency when building with ARM64 compiler
>    https://lore.kernel.org/lkml/202406270605.qodaWd4n-lkp@intel.com/
> - Remove no more used polling_delay variable detected by kernel robot
>    https://lore.kernel.org/lkml/202406270530.kN5wIswi-lkp@intel.com/
> Changes in v2:
> - Remove unused struct thermal_trip trip
> ---
>   drivers/thermal/st/Kconfig      |  2 ++
>   drivers/thermal/st/st_thermal.c | 28 ++++++++++------------------
>   2 files changed, 12 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/thermal/st/Kconfig b/drivers/thermal/st/Kconfig
> index ecbdf4ef00f4..95a634709a99 100644
> --- a/drivers/thermal/st/Kconfig
> +++ b/drivers/thermal/st/Kconfig
> @@ -5,12 +5,14 @@
>   
>   config ST_THERMAL
>   	tristate "Thermal sensors on STMicroelectronics STi series of SoCs"
> +	depends on THERMAL_OF
>   	help
>   	  Support for thermal sensors on STMicroelectronics STi series of SoCs.
>   
>   config ST_THERMAL_MEMMAP
>   	select ST_THERMAL
>   	tristate "STi series memory mapped access based thermal sensors"
> +	depends on THERMAL_OF

Given the changes below it is possible to move this dependency in the 
upper Kconfig AFAICS:

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index ed16897584b4..b6b916e7e294 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -429,7 +429,7 @@ source "drivers/thermal/samsung/Kconfig"
  endmenu

  menu "STMicroelectronics thermal drivers"
-depends on (ARCH_STI || ARCH_STM32) && OF
+depends on (ARCH_STI || ARCH_STM32) && THERMAL_OF
  source "drivers/thermal/st/Kconfig"
  endmenu

THERMAL_OF depends on OF

>   config STM32_THERMAL
>   	tristate "Thermal framework support on STMicroelectronics STM32 series of SoCs"
> diff --git a/drivers/thermal/st/st_thermal.c b/drivers/thermal/st/st_thermal.c
> index 5f33543a3a54..23597819ce84 100644
> --- a/drivers/thermal/st/st_thermal.c
> +++ b/drivers/thermal/st/st_thermal.c
> @@ -12,6 +12,7 @@
>   #include <linux/of_device.h>
>   
>   #include "st_thermal.h"
> +#include "../thermal_hwmon.h"
>   
>   /* The Thermal Framework expects millidegrees */
>   #define mcelsius(temp)			((temp) * 1000)
> @@ -135,8 +136,6 @@ static struct thermal_zone_device_ops st_tz_ops = {
>   	.get_temp	= st_thermal_get_temp,
>   };
>   
> -static struct thermal_trip trip;
> -
>   int st_thermal_register(struct platform_device *pdev,
>   			const struct of_device_id *st_thermal_of_match)
>   {
> @@ -145,7 +144,6 @@ int st_thermal_register(struct platform_device *pdev,
>   	struct device_node *np = dev->of_node;
>   	const struct of_device_id *match;
>   
> -	int polling_delay;
>   	int ret;
>   
>   	if (!np) {
> @@ -197,29 +195,22 @@ int st_thermal_register(struct platform_device *pdev,
>   	if (ret)
>   		goto sensor_off;
>   
> -	polling_delay = sensor->ops->register_enable_irq ? 0 : 1000;
> -
> -	trip.temperature = sensor->cdata->crit_temp;
> -	trip.type = THERMAL_TRIP_CRITICAL;
> -
>   	sensor->thermal_dev =
> -		thermal_zone_device_register_with_trips(dev_name(dev), &trip, 1, sensor,
> -							&st_tz_ops, NULL, 0, polling_delay);
> +		devm_thermal_of_zone_register(dev, 0, sensor, &st_tz_ops);
>   	if (IS_ERR(sensor->thermal_dev)) {
> -		dev_err(dev, "failed to register thermal zone device\n");
> +		dev_err(dev, "failed to register thermal of zone\n");
>   		ret = PTR_ERR(sensor->thermal_dev);
>   		goto sensor_off;
>   	}
> -	ret = thermal_zone_device_enable(sensor->thermal_dev);
> -	if (ret)
> -		goto tzd_unregister;
>   
>   	platform_set_drvdata(pdev, sensor);
>   
> -	return 0;
> +	/*
> +	 * devm_thermal_of_zone_register() doesn't enable hwmon by default
> +	 * Enable it here
> +	 */
> +	return devm_thermal_add_hwmon_sysfs(dev, sensor->thermal_dev);

Other drivers ignore the return code or just print a message in case it 
is not zero. Otherwise, that makes the thermal driver to fail because of 
hwmon.

> -tzd_unregister:
> -	thermal_zone_device_unregister(sensor->thermal_dev);
>   sensor_off:
>   	st_thermal_sensor_off(sensor);
>   
> @@ -232,7 +223,8 @@ void st_thermal_unregister(struct platform_device *pdev)
>   	struct st_thermal_sensor *sensor = platform_get_drvdata(pdev);
>   
>   	st_thermal_sensor_off(sensor);
> -	thermal_zone_device_unregister(sensor->thermal_dev);
> +	thermal_remove_hwmon_sysfs(sensor->thermal_dev);
> +	devm_thermal_of_zone_unregister(sensor->dev, sensor->thermal_dev);
>   }
>   EXPORT_SYMBOL_GPL(st_thermal_unregister);
>   
> 

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
"

