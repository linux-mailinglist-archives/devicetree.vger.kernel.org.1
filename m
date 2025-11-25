Return-Path: <devicetree+bounces-242147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2C1C87362
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:20:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 537054E6A27
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 21:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DA32FBDF5;
	Tue, 25 Nov 2025 21:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="za5VreFB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EF92F7AD6
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764105623; cv=none; b=QmrAxe4HZ4IaDZVIIBELdMl798eZFnNF1/pM7e5ZoiTweqYJDfau0nMnhuKWVhEU0aecJzvR00wgC3rHwHarKf2QDmW3xVlGEVOapL42UUDbYedL5Yx3E4UFMvFFhaPAsZBWixWayzo99WkPG49y/iAvGYhikxQ16epEjJK9n7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764105623; c=relaxed/simple;
	bh=XJW1618AeSh8p0FvIT2L/UOsZV0GPeMhh84mZiz4ecg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=KODrG6YzuIueO/epC8DRNJam7NtKhKNTCUwF//8i43ecwrJh7A9TVbGRkiCz/ehTiD7zc70JlL8Vt33RfopjO5VVMDKeH6d/liT2xSy3Sdt3dlqO0r7V4MjwVKl8w1T+PWuAhQTMu2y9SQalp1FNmaYwyVS6jTXNsga7q7UUIlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=za5VreFB; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so39762405e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764105619; x=1764710419; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lgeyODjjwWGv2LqYAD1M4y/a4gMxr9izn+TjHICf2QA=;
        b=za5VreFBx7A+NbX4bmySWiHkFMr/Wt8BGG8fEda+vmHv+mYkBKmxcEVqvh2ruD3TmW
         ZtI7peF2UKpGSXQGwWKI9RGIpQBbwlgxHTP8Ma9zhknnPZiFGcsZKHoCIOTPVfrGQSFZ
         reX9WXpzyOM6avdYBl6JdWvHSimhr3MXrZ74Hs02uGn+xPU/yP2RzjJWi1PqpZ2jTKEQ
         vVlY8wXjWI08MOJNgeByAfSgE5Dw7XMjXBBLA8aO6PvcEjtt5kQhRwG+uR4oWiKfcFT7
         ti397o+KHceuPRmATwrv4cDMQSLmbGUC6wI8vzDhXtLTsTqxJmTpotG0BnXpxHBEkHmV
         g/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764105619; x=1764710419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lgeyODjjwWGv2LqYAD1M4y/a4gMxr9izn+TjHICf2QA=;
        b=oIm9iw3rmlDQ2mKFDuCd2TEx+1DvxbFFRXpHuOmz8wDbjRTdS4c7PQJtdYUfO9Vpj8
         Zyv15sB1JEOxM44BpbFqcolSjLRuads+j+jqhWTwDbbKR8NWKE71fDKzms6yDniCqkel
         evLE1CGsGzWNnWSZudZ4ThOm1/4T7esCZFaK2ez4OvCw0X9mHEk/uAy8XKVEpmNrApWz
         3cJrVMXpXitsYHbjgv4Qjk52aFI3Qn3AKz3yOfl0uLTXzILDiBKqQm1VOnAYluT/x2zw
         kEwlV/86+dz+b5vnd061kM6Lsz9zVYOpn6WZJ7RKfX0t2Xm7vsS0wXtjEZQjYuSsqsaM
         P0jA==
X-Forwarded-Encrypted: i=1; AJvYcCUEGMaZM1yp/jWcH/DCNG7uvbdoEKEsDce6fB/jZTe/xA+j+HDyEP1usu3QEaWN5ZMyM8q0NHZ+v1i2@vger.kernel.org
X-Gm-Message-State: AOJu0Yws+O7yvMUGu2sHg51f2H3KMviAbfqAa65mYbUmwKt3yAKb+S4M
	/o/5OCfBY79Ad1rpZgN0fj3l4O+Fp3qJwXB0rN3YxuSjJ2NK0GmCj9ZGboB6Lu83bS8=
X-Gm-Gg: ASbGncujRi7DzY1irrLLP/1pfFZz4ZeGr2ym5VPlb+SKNolxTrACjYCFeT5/BUEX+Jh
	s12YwnAasOCIx90TiIGjLbbXocRlG8GwgefkZ/Pmy2wZRJp1m+653qabVj5SXabZT10/KypfJuJ
	KmJasphSkSLqW7O3Z2sCtGe49V+zNIGssEOI3YSWjZPFIEw/5PeeYW/lPFmRcAORcgBNLH//m+9
	iAGd5WnlnJ+iM1k9jwS+KvVWm1nZpTxfluWoKFWcqg6xYuoJdi/5y3Av4zTL4xCTX9rH5Fz5Nr8
	n/2zOzE7QLZkFGfAXlshFu8XflZ2J69dy3UdxabH833OWV3eCh/FYD2LsLuRQKyi/coiKYZEc+L
	lcmWzCtc2GcOJUtwQnY0IWpkAzXuMMkl22B18360HvJ5vfsU/RQyiYMt3s0mCiDx3q4iCY/xPk1
	FDk0QEAcw0ag4deCstVkfSTVsRzJ8qNuZdrkwctQ/wyq8Nh0P2yYxs0QmUDMoq7ma3rQ==
X-Google-Smtp-Source: AGHT+IFdWHejJYMhzJuTuSVlm6rwhlp+m0ckCKintINuBoyb0kMJ5cumF+USbjfNXBcVyPOJkM1Z+A==
X-Received: by 2002:a05:600c:1f94:b0:471:1765:839c with SMTP id 5b1f17b1804b1-477c1117949mr131150635e9.20.1764105619440;
        Tue, 25 Nov 2025 13:20:19 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:1d9d:2362:4539:c68d? ([2a05:6e02:1041:c10:1d9d:2362:4539:c68d])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4790ab8bb21sm9790865e9.0.2025.11.25.13.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 13:20:18 -0800 (PST)
Message-ID: <ad124b26-7c59-4c31-8e45-7eca0001d6a2@linaro.org>
Date: Tue, 25 Nov 2025 22:20:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] thermal/drivers: airoha: Generalize
 get_thermal_ADC and set_mux function
To: Christian Marangi <ansuelsmth@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251106225929.1778398-1-ansuelsmth@gmail.com>
 <20251106225929.1778398-4-ansuelsmth@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20251106225929.1778398-4-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/6/25 23:59, Christian Marangi wrote:
> In preparation for support of Airoha AN7583, generalize
> get_thermal_ADC() and set_thermal_mux() with the use of reg_field API.
> 
> This is to account the same logic between the current supported SoC and
> the new one but with different register address.
> 
> While at it also further improve some comments and move sleep inside the
> set_thermal_mux function.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>   drivers/thermal/airoha_thermal.c | 54 +++++++++++++++++++++++++-------
>   1 file changed, 42 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_thermal.c
> index 864a01fd8fd8..a062922cb116 100644
> --- a/drivers/thermal/airoha_thermal.c
> +++ b/drivers/thermal/airoha_thermal.c
> @@ -193,9 +193,18 @@
>   
>   #define AIROHA_MAX_SAMPLES			6
>   
> +enum airoha_thermal_chip_scu_field {
> +	AIROHA_THERMAL_DOUT_TADC,
> +	AIROHA_THERMAL_MUX_TADC,
> +
> +	/* keep last */
> +	AIROHA_THERMAL_FIELD_MAX,

nit: if last, no comma :)
nit2: naming is not consistent

> +};
> +
>   struct airoha_thermal_priv {
>   	struct regmap *map;
>   	struct regmap *chip_scu;
> +	struct regmap_field *chip_scu_fields[AIROHA_THERMAL_FIELD_MAX];
>   	struct resource scu_adc_res;
>   
>   	u32 pllrg_protect;
> @@ -219,22 +228,29 @@ static int airoha_get_thermal_ADC(struct airoha_thermal_priv *priv)
>   {
>   	u32 val;
>   
> -	regmap_read(priv->chip_scu, EN7581_DOUT_TADC, &val);
> -	return FIELD_GET(EN7581_DOUT_TADC_MASK, val);
> +	regmap_field_read(priv->chip_scu_fields[AIROHA_THERMAL_DOUT_TADC],
> +			  &val);
> +	return val;
>   }
>   
> -static void airoha_init_thermal_ADC_mode(struct airoha_thermal_priv *priv)
> +static void airoha_set_thermal_mux(struct airoha_thermal_priv *priv,
> +				   int tdac_idx)
>   {
> -	u32 adc_mux, pllrg;
> +	u32 pllrg;
>   
>   	/* Save PLLRG current value */
>   	regmap_read(priv->chip_scu, EN7581_PLLRG_PROTECT, &pllrg);
>   
> -	/* Give access to thermal regs */
> +	/* Give access to Thermal regs */
>   	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT,
>   		     priv->pllrg_protect);
> -	adc_mux = FIELD_PREP(EN7581_MUX_TADC, EN7581_SCU_THERMAL_MUX_DIODE1);
> -	regmap_write(priv->chip_scu, EN7581_PWD_TADC, adc_mux);
> +
> +	/* Configure Thermal ADC mux to tdac_idx */
> +	regmap_field_write(priv->chip_scu_fields[AIROHA_THERMAL_MUX_TADC],
> +			   tdac_idx);
> +
> +	/* Sleep 10 ms for Thermal ADC to enable */
> +	usleep_range(10 * USEC_PER_MSEC, 11 * USEC_PER_MSEC);

10ms ? It is a lot no ?
>   	/* Restore PLLRG value on exit */
>   	regmap_write(priv->chip_scu, EN7581_PLLRG_PROTECT, pllrg);
> @@ -343,10 +359,8 @@ static void en7581_thermal_setup_adc_val(struct device *dev,
>   {
>   	u32 efuse_calib_info, cpu_sensor;
>   
> -	/* Setup thermal sensor to ADC mode and setup the mux to DIODE1 */
> -	airoha_init_thermal_ADC_mode(priv);
> -	/* sleep 10 ms for ADC to enable */
> -	usleep_range(10 * USEC_PER_MSEC, 11 * USEC_PER_MSEC);
> +	/* Setup Thermal Sensor to ADC mode and setup the mux to DIODE1 */
> +	airoha_set_thermal_mux(priv, EN7581_SCU_THERMAL_MUX_DIODE1);
>   
>   	regmap_read(priv->map, EN7581_EFUSE_TEMP_OFFSET_REG, &efuse_calib_info);
>   	if (efuse_calib_info) {
> @@ -429,13 +443,18 @@ static const struct regmap_config en7581_thermal_regmap_config = {
>   	.val_bits		= 32,
>   };
>   
> +static const struct reg_field en7581_chip_scu_fields[AIROHA_THERMAL_FIELD_MAX] = {
> +	[AIROHA_THERMAL_DOUT_TADC] = REG_FIELD(EN7581_DOUT_TADC, 0, 15),
> +	[AIROHA_THERMAL_MUX_TADC] = REG_FIELD(EN7581_PWD_TADC, 1, 3),
> +};
> +
>   static int en7581_thermal_probe(struct platform_device *pdev,
>   				struct airoha_thermal_priv *priv)
>   {
>   	struct device_node *chip_scu_np;
>   	struct device *dev = &pdev->dev;
>   	void __iomem *base;
> -	int irq, ret;
> +	int i, irq, ret;
>   
>   	base = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(base))
> @@ -454,6 +473,17 @@ static int en7581_thermal_probe(struct platform_device *pdev,
>   	if (IS_ERR(priv->chip_scu))
>   		return PTR_ERR(priv->chip_scu);
>   
> +	for (i = 0; i < AIROHA_THERMAL_FIELD_MAX; i++) {
> +		struct regmap_field *field;
> +
> +		field = devm_regmap_field_alloc(dev, priv->chip_scu,
> +						en7581_chip_scu_fields[i]);
> +		if (IS_ERR(field))
> +			return PTR_ERR(field);
> +
> +		priv->chip_scu_fields[i] = field;
> +	}
> +
>   	of_address_to_resource(chip_scu_np, 0, &priv->scu_adc_res);
>   	of_node_put(chip_scu_np);
>   


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

