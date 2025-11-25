Return-Path: <devicetree+bounces-242091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F296C862B7
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 18:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 367664E8C40
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4C432A3C2;
	Tue, 25 Nov 2025 17:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KuoZaYsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2D918FDBE
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764090995; cv=none; b=J3CWbzv5BsBu0KdPsKxf7iWpGZ1TVEH1EQhWV8LzM1mNS9+r8aJCSe8lJX4XgECYYbcbKnaBggjNeSdscNX8jc5BDETRCAT6xIXvXKbT8HspOpI3H9Nh6HXd/n9i+nJ6y5Yv3aa/8WCydMc0o5pT7Xb472vgnNLFvy0vtmrIhpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764090995; c=relaxed/simple;
	bh=w/sfDkRtzu4hJVrbpiOQ/RxM1u70C1+28Ln9IBW7wdg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=b9/ak3+9e2wotg2e1qz07/TjrSCjdPXT9B0HTJUxzAVDjSywVfbDkvL9ogxna53O03e+YepZuxKwB/YunjsjtlqQXKHulRsdVwPqay+trU+WhGkrcJ1Zmab2yDreovGu1fmxjG/e7dDYXqp71A658LUNhh5mHVuuvBW4GijuRsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KuoZaYsz; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so38423265e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764090991; x=1764695791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FK8tpY1vO1WQebcFHT53ELWTdlM+gqsVcXdE0gNSnHI=;
        b=KuoZaYszGRquDzhNZWQ1cxPlumcbkaoseDYFZzKHJBTjM28j2pIhpO/LZHnb9t4uYj
         V5B9D+I1baT+EZPcMeclQXpyizJABXeyg1sKnDhRJ3Hp/CAntys6oQNnfR+ONC+c+PGr
         72Bh9QUGfoHXsjla2yF6PKBJAiNjTdEpDbPMEuF3rk8OdGDjGJ9LTFUdocV9iBZMGnlL
         VtnwP2KFQ2u630QXVFA3duYAVX+PjHXx7EhAA8qi/PZsBy0EM5p7V3j2QIiSIEO6Ak4I
         m5dLflfYCCcH8xBhbNY+NXJneUmiKSes+b1M3auzv7iD2tvHDdGFvZqpyUPCsN5XdtqJ
         wXBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764090991; x=1764695791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FK8tpY1vO1WQebcFHT53ELWTdlM+gqsVcXdE0gNSnHI=;
        b=AzIFLXthi56bXvkqFPfv7FFPeCcoDLp/WD5RqEn3BhDuzoqQ/+vNrB4aaQKuXqOSO6
         hzqfyD0AcSKG0x882ZYok7wabynTOp/nt/KRmTW0GjyjkoGqhsMsusQZ6kO7lLxSK90G
         UFbkB+Xu57q59sbL/3kF8KiiXoCzhiRTt7UAPsgUQ0aJnrJCvOCL5TIjzO+27WJlfxl/
         9GaezuCpax92sivKWzP8/cqZrwWR1ctDnqNOwPEygxERH1hi/TU5S0MQpLDhjlJenQ/w
         UGbJoPdhsCasw3LON0/A56wBQBwVXHhF88xmKgGUajC9v1vVKEaIp3lefr5dH4HPDPn2
         cRXA==
X-Forwarded-Encrypted: i=1; AJvYcCXhk9PSYJLPV6gz61q/+clDLjEBZiIUNZk9Om1CgqtxlsrNOOONQT/s0cE8VIssHzJJG+7lyYIs3FMP@vger.kernel.org
X-Gm-Message-State: AOJu0YyeJply//w9cm3aM2U81QQ7pZZWZSzjrmdaMct2imkYQ2lhWWCH
	cvlaWp2binfmi58Uex4CpDlQrC6qziVNXs6oRbKdTih9B6DkZz4lRoqnizr7MBkrBd8=
X-Gm-Gg: ASbGncsqeEjrrsqhFT0qQHCmjt9oUSufznzLkrzKTJsD8y9FYQ8GbXJKIH9cDR3ZOlp
	9FnYEHk8t16xDGLZsw5l1cUJtZXkF9eq7ulOqA5HUJ1vIA+XtYA+AC3m6uJImTDp+RNQ6I8N7pq
	1De5C6U20x4O2hSy6C7vquBW+7j1feR1q7j7z5gpiilFLL/6p9DtCxc1pPZOMeyfSGCSNEoSxpb
	+puCqfnY7RbhqZFcRn6iJWbrSlbWDLipuc9zLkGzrZ3zi43nI+35Moumv/jmnA3dRHKfYnyFlBg
	zeTtmUU+M5oX9RP1JYyIlnR6apLgiwTuHk6rKz44gi5ji0KFL4WLLrcFYoUoao7UkWYapd2Bdwy
	dmGtFj0qJXjRdEy9OkWI3w07ajIalXzwSqARh6uReVzPA8fCfI9O5JppyMh6banQcB+VP61iSpq
	fnzcTOYxxs7coyrXarOGV63gncKlBo+OtdTnOsreRVl2F+gTZvRHM=
X-Google-Smtp-Source: AGHT+IGgairekF1MJuLNaXid1oGa5EygE8Hk29JHXoMtw3VRdPrHyLASn563oUHVRUEckwECm+Iucw==
X-Received: by 2002:a05:600c:19d4:b0:477:63b5:6f3a with SMTP id 5b1f17b1804b1-477c112635amr147250255e9.27.1764090991246;
        Tue, 25 Nov 2025 09:16:31 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:1d9d:2362:4539:c68d? ([2a05:6e02:1041:c10:1d9d:2362:4539:c68d])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4790ab8bb21sm404395e9.0.2025.11.25.09.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 09:16:30 -0800 (PST)
Message-ID: <23a99187-0ca5-459e-8bf0-b3bf61dd12fe@linaro.org>
Date: Tue, 25 Nov 2025 18:16:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] thermal/drivers: airoha: Generalize probe function
To: Christian Marangi <ansuelsmth@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251106225929.1778398-1-ansuelsmth@gmail.com>
 <20251106225929.1778398-3-ansuelsmth@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251106225929.1778398-3-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/6/25 23:59, Christian Marangi wrote:
> In preparation for support of Airoha AN7583, generalize the probe
> function to address for the 2 SoC differece.
> 
> Implement a match_data struct where it's possible to define a more
> specific probe and post_probe function and specific thermal ops and
> pllrg protect value.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>   drivers/thermal/airoha_thermal.c | 102 +++++++++++++++++++++++--------
>   1 file changed, 75 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_thermal.c
> index 01ed49a4887e..864a01fd8fd8 100644
> --- a/drivers/thermal/airoha_thermal.c
> +++ b/drivers/thermal/airoha_thermal.c
> @@ -198,12 +198,23 @@ struct airoha_thermal_priv {
>   	struct regmap *chip_scu;
>   	struct resource scu_adc_res;
>   
> +	u32 pllrg_protect;
> +
>   	struct thermal_zone_device *tz;
>   	int init_temp;
>   	int default_slope;
>   	int default_offset;
>   };
>   
> +struct airoha_thermal_soc_data {
> +	u32 pllrg_protect;
> +
> +	const struct thermal_zone_device_ops *thdev_ops;
> +	int (*probe)(struct platform_device *pdev,
> +		     struct airoha_thermal_priv *priv);
> +	int (*post_probe)(struct platform_device *pdev);

What the post-probe provides compared to calling the corresponding code 
in the probe function ?

> +};
> +
>   static int airoha_get_thermal_ADC(struct airoha_thermal_priv *priv)
>   {
>   	u32 val;
> @@ -220,7 +231,8 @@ static void airoha_init_thermal_ADC_mode(struct airoha_thermal_priv *priv)
>   	regmap_read(priv->chip_scu, EN7581_PLLRG_PROTECT, &pllrg);
>   
>   	/* Give access to thermal regs */
> -	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT, EN7581_SCU_THERMAL_PROTECT_KEY);
> +	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT,
> +		     priv->pllrg_protect);
>   	adc_mux = FIELD_PREP(EN7581_MUX_TADC, EN7581_SCU_THERMAL_MUX_DIODE1);
>   	regmap_write(priv->chip_scu, EN7581_PWD_TADC, adc_mux);
>   
> @@ -228,7 +240,7 @@ static void airoha_init_thermal_ADC_mode(struct airoha_thermal_priv *priv)
>   	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT, pllrg);
>   }
>   
> -static int airoha_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
> +static int en7581_thermal_get_temp(struct thermal_zone_device *tz, int *temp)

Please provide a separate patch before where s/airoha/en7581/

[ ... ]
> +static int en7581_thermal_post_probe(struct platform_device *pdev)
> +{
> +	struct airoha_thermal_priv *priv = platform_get_drvdata(pdev);
> +
> +	/* Enable LOW and HIGH interrupt (if supported) */

Why "(if supported)" ?

> +	regmap_write(priv->map, EN7581_TEMPMONINT,
> +		     EN7581_HOFSINTEN0 | EN7581_LOFSINTEN0);
> +
> +	return 0;
> +}
> +
> +static int airoha_thermal_probe(struct platform_device *pdev)
> +{
> +	const struct airoha_thermal_soc_data *soc_data;
> +	struct airoha_thermal_priv *priv;
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	soc_data = device_get_match_data(dev);
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->pllrg_protect = soc_data->pllrg_protect;
> +
> +	if (!soc_data->probe)
> +		return -EINVAL;

Shall the driver check its own code ?
> +	ret = soc_data->probe(pdev, priv);
> +	if (ret)

[ ... ]
> +static const struct airoha_thermal_soc_data en7581_data = {
> +	.pllrg_protect = EN7581_SCU_THERMAL_PROTECT_KEY,
> +	.thdev_ops = &en7581_thdev_ops,
> +	.probe = &en7581_thermal_probe,
> +	.post_probe = &en7581_thermal_post_probe,
	.probe = en7581_thermal_probe,
	.post_probe = en7581_thermal_post_probe,

> +};
> +
>   static const struct of_device_id airoha_thermal_match[] = {
> -	{ .compatible = "airoha,en7581-thermal" },
> +	{ .compatible = "airoha,en7581-thermal", .data = &en7581_data },
>   	{},
>   };
>   MODULE_DEVICE_TABLE(of, airoha_thermal_match);


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

