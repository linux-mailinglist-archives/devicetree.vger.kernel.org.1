Return-Path: <devicetree+bounces-48021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B837B86FBC9
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC3091C21C44
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C7A171A9;
	Mon,  4 Mar 2024 08:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uT30ynfr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A301774E
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 08:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709540639; cv=none; b=sd/BpzB3Bw5YiFMTEme1DwzO9WQOku2H1gZPb1AWrerqYju0J4xGLQfiKBw+s1HfV6/Q4QtD/GTz9ELSfxtvKeksS5m8SVnvDWTLNiY8e75itJ9884U9QX5Rq8zvRehnEt//GJXgixrPUiR0V/TrMbkSQBjwAQeu4kpk8KaCajk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709540639; c=relaxed/simple;
	bh=/+UpRT9/HVv3vuYe3iygwifcXAxGjap/NFSZl6kMRjY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6KKoctiohIDf17iswA3RonEQeLnQWWp7EmH06QJbC6RSYKJz4iD4213YHEOwDgBXArQVjmJCNsXVfvjbg5ba9VH/yOIZnVtMSzpDUmZYRkgn+OMwzY8TW76O+1O57opD/daMLjifAslP5BwQm7YUpSiuNzAVws2DTSCB81vpQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uT30ynfr; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-412e784060cso830725e9.1
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 00:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709540635; x=1710145435; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0B/S92iop6tJSt6y19xw6lMDPscfK5eWpa1jA+Mi6B0=;
        b=uT30ynfrCGaV57KxIlECqsmh2ATrMsBq5HIvVD9OCxxEg1Abfqlp6+qyVBzS0j6iE8
         0mshh1c9xcH6DEF2+L0VaSon9SGRa/X4AibxLO7IkB5kovQZiiGU4ZyIPiDkzo3o4WFU
         3tXcJB88nIFvZgBSMCDvxAh4IVJpUNgjTtqjpqRegtVQGQhS2uH+q9JcFk+Q6Mlm883S
         0iDDnBtF9FCLdMApaqhEhIHOxvjksLjdBz+7cOAMjAyTrNEyJniJ67kCFtf8KZmK5vJ4
         8wHEpL0BmzSqh2n8oFtuOJUjhLUmtKvNYZn5B4TC1FKAtJonjTtoVYatJvkpTT2ra6pX
         7QMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709540635; x=1710145435;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0B/S92iop6tJSt6y19xw6lMDPscfK5eWpa1jA+Mi6B0=;
        b=PIeTJIEp3Gg9Btnrsw4hIQsC1984ZTWJ45tTGZkHcGeJNlJM1arNu3HGxGdQuWqoT4
         13X/ofTA+50B2g1D1jDHHXZmeTRkAdM5ic2LmU4KbSKY8yowx8+nOgOrI9qbhRz2l4zX
         TlRDtvwNb4qInkztS0WYOQG1J7LC+s1WfRqBXnZDZrt9i623M61kGqychjBzKIWEbkHL
         UYzl5AOv07XN5Yy/MyStNn64KAmLqnY9n8u/ejXjVJhsrDd6EvLjWwX/u6cjM4nKKf9p
         9opdVrEBKHInCEIhnJGWZk9zyVhr98hm58hRIIg2CCyD8jXqrpm2h5Fq/YpSydUB23/b
         3/+g==
X-Forwarded-Encrypted: i=1; AJvYcCWON+95AEiPjKcLBW/qtA5YrvwjKE6RcHGsXjHhKsKu6ZpVD1EhDQsfD00svZKqm2HY3c8SMME2oOjowAIFwaMX8QJxnvyNrnSckg==
X-Gm-Message-State: AOJu0YxCm/3QwM5tvoqZpzuaYpPVAWM4Na8X76K9xd08Z6SWIDAiHH8m
	qEohYh1jQxhFV5pQbWRKPqAjxG1HT9kv2ckfnf79iyQsTs8lraj96mCRGC5eWlc=
X-Google-Smtp-Source: AGHT+IHijnSBhCDeBF70yGIkkN4tLJTnCmSqTGDVLLG3DYKpSUid276mLfLgsuKKOwvUcro3lcDgBA==
X-Received: by 2002:a05:600c:4447:b0:412:dcf4:143c with SMTP id v7-20020a05600c444700b00412dcf4143cmr2953328wmn.13.1709540635586;
        Mon, 04 Mar 2024 00:23:55 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id v12-20020a05600c444c00b00412b9e4af05sm14018908wmn.0.2024.03.04.00.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Mar 2024 00:23:55 -0800 (PST)
Message-ID: <c758d0b2-d46f-43ce-bfc2-c7ede4c3a945@linaro.org>
Date: Mon, 4 Mar 2024 09:23:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] backlight: Add new lm3509 backlight driver
Content-Language: en-US
To: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240302212757.1871164-1-paroga@paroga.com>
 <20240302212757.1871164-2-paroga@paroga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240302212757.1871164-2-paroga@paroga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/03/2024 22:27, Patrick Gansterer wrote:
> This is a general driver for LM3509 backlight chip of TI.
> LM3509 is High Efficiency Boost for White LEDs and/or OLED Displays with
> Dual Current Sinks. This driver supports OLED/White LED select, brightness
> control and sub/main control.
> The datasheet can be found at http://www.ti.com/product/lm3509.
> 
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>
> ---


...

> +
> +static int lm3509_probe(struct i2c_client *client)
> +{
> +	struct lm3509_bl *data;
> +	struct device *dev = &client->dev;
> +	int ret;
> +	bool unison_mode = false;
> +	bool oled_mode = false;
> +	unsigned int reg_gp_val = 0;
> +	u32 rate_of_change = 0;
> +	u32 brightness = LM3509_DEF_BRIGHTNESS;
> +	u32 max_brightness = LM3509_MAX_BRIGHTNESS;
> +
> +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
> +		dev_err(dev, "fail : i2c functionality check\n");

Drop the "fail : " everywhere and instead write something useful.


> +		return -EOPNOTSUPP;
> +	}
> +
> +	data = devm_kzalloc(dev, sizeof(struct lm3509_bl), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->regmap = devm_regmap_init_i2c(client, &lm3509_regmap);
> +	if (IS_ERR(data->regmap)) {
> +		dev_err(dev, "fail : allocate register map\n");

This message can be dropped entirely.

> +		return PTR_ERR(data->regmap);
> +	}
> +	i2c_set_clientdata(client, data);
> +
> +	data->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(data->reset_gpio)) {
> +		ret = PTR_ERR(data->reset_gpio);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(dev, "fail : get reset GPIO: %d\n", ret);

No, don't upstream old vendor code directly but instead choose existing
mainline driver and customize it. The syntax is `return dev_err_probe()`.

> +		return ret;
> +	}
> +
> +	lm3509_reset(data);
> +
> +	of_property_read_u32(dev->of_node, "default-brightness", &brightness);
> +	of_property_read_u32(dev->of_node, "max-brightness", &max_brightness);
> +	unison_mode = of_property_read_bool(dev->of_node, "ti,unison-mode");
> +	oled_mode = of_property_read_bool(dev->of_node, "ti,oled-mode");
> +

Best regards,
Krzysztof


