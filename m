Return-Path: <devicetree+bounces-52896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8822C88A551
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32CFA29289E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:53:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF41E1CAC60;
	Mon, 25 Mar 2024 11:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uq8yMrcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A321B677D
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 11:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711366110; cv=none; b=GA6TeplixKolT+nHwzreSgHtmjZ31NxQrXIXDYIxvQVhFyI/+MalOyKF1kDi/iUsdP+aDHTMXPS4BsU5DcT6HkyDqpBddRCe+Lhphd/awujJH32Ca9egMlOVKGThFhrrhSUVVvLb/YVQxPDe9Icody3W6VNIxi/VzUips1LET+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711366110; c=relaxed/simple;
	bh=Kb0ChK44DNvG0kIt6cuGOk3+3+FQUmQbtSel7T9Eans=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JykuzIQqAQLJwFjdWhr71ZSZ8s9zBKuj48h0hbMoI7FVOgKuhrt8bfqBztIy6CBb4ECxprPZMEpYbQzFVTnT65C6BnF6/GkEZa8Rf1MLltipTwrIrlhAI7iWz/uQmtRPormsEvGbUVV0SslTNKfZPjgGI62buBxBYlqIUkhlfXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uq8yMrcX; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4148a139b1bso3551395e9.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 04:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711366106; x=1711970906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7PkuvMLKJsiJtypoy3shfvrIyPp1wECQoiUOUJHPvWE=;
        b=uq8yMrcXAsZdWtFZa4dc8zRxzAU4iievUZGi/dkfrwvw9fgyr01fY7KXyYYfVenJmr
         xPUp8s+kqrTS3Ya7hJEkNpB4+250LWjJ4zu59ACnlCRrB3wv0HbXLaSJt8cVuWqQ5muu
         8f4Uw7/LO6HmWIm1id1Wl6rVQlQEfPcgvY1jhX3UMvQm83kIwJ9EEA/ZVhtUD9ptm+BV
         +3ZEWgVKJm2LCM2gTPwPwCic3TidF68wF/WBfgQ7umhSBeKt8UmaEIiGyd/azNgtXUZN
         iSMmqBkPmQst0oQeu+2E1aO0k1n+T0EGb1sC9DfQ6M1tPaU5w0MHN9t2l4/cpZSq0xzm
         38Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711366106; x=1711970906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7PkuvMLKJsiJtypoy3shfvrIyPp1wECQoiUOUJHPvWE=;
        b=VXyd8VzlZZEcqMhkQ0+9AwmRYM6DetSWPl5+2a7ifRMiNh3J50dh5njZEwjF7h5PLg
         FMAZTQSqsx0rQCxIauzj5iHH3QuOahUOf4Q0fD2+aT0H82dqy+5mIu6lVruMiNWm1w2f
         xvGYIqaAozH4DvMfq4pgCQrmi1xSS/DZ+R2lXhicRNS0IZatiC5UYjz1mnbWJoJjReW3
         Flnp3we2xoAGvhh4H9rDuS61VahzhIhOmAEieAZHOL3JuAFAfgp29FnHbHSS4L0JH6bd
         a7My56qA9OnwdoGivvYu+T1cgpcePLj9/2izzV+fUjSYlq1ibpNTHySweBzPR8OiqQLn
         HIqA==
X-Forwarded-Encrypted: i=1; AJvYcCX5thCdhpZ8bHIwQ9OhesZSDpWu5i/CxQj5EUxdvkDXx/e1u35NMr3Lro8xYtfo9wf9LFoP1W9/8fiQd/1l9t+EUA+JYFmjeZVpuQ==
X-Gm-Message-State: AOJu0YzZ+5Af5k78MDYB2ETcYdC/5uUaudSSdxls3BzdykhCN5Q0D9E3
	w/rUoLIatw7CZt+NCYg8rrqBhAfCz7Mq6tgO7VkWaSoQvkiMFwTf8/7XW04v4B8=
X-Google-Smtp-Source: AGHT+IGdPOEsKK08n8+zv8VWhqXsgYa4DkSPuzYOZZysyCPuYv1EFKvN2PJp6ZKDBFxCKijxETmBsQ==
X-Received: by 2002:a05:600c:35d2:b0:412:ea4c:dc4b with SMTP id r18-20020a05600c35d200b00412ea4cdc4bmr4589807wmq.6.1711366106448;
        Mon, 25 Mar 2024 04:28:26 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b0041409cabb39sm8112451wmb.18.2024.03.25.04.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 04:28:25 -0700 (PDT)
Date: Mon, 25 Mar 2024 11:28:24 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Patrick Gansterer <paroga@paroga.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 2/2] backlight: Add new lm3509 backlight driver
Message-ID: <20240325112824.GA190706@aspen.lan>
References: <20240310135344.3455294-1-paroga@paroga.com>
 <20240310135344.3455294-2-paroga@paroga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240310135344.3455294-2-paroga@paroga.com>

^^^
Also not copied to LKML...


On Sun, Mar 10, 2024 at 02:52:57PM +0100, Patrick Gansterer wrote:
> This is a general driver for LM3509 backlight chip of TI.
> LM3509 is High Efficiency Boost for White LEDs and/or OLED Displays with
> Dual Current Sinks. This driver supports OLED/White LED select, brightness
> control and sub/main control.
> The datasheet can be found at http://www.ti.com/product/lm3509.
>
> Signed-off-by: Patrick Gansterer <paroga@paroga.com>

Overall looks good but there are some review comments inline below.


> diff --git a/drivers/video/backlight/lm3509_bl.c b/drivers/video/backlight/lm3509_bl.c
> new file mode 100644
> index 000000000000..696ec8aab6aa
> --- /dev/null
> +++ b/drivers/video/backlight/lm3509_bl.c
> @@ -0,0 +1,338 @@
> <snip>
> +struct lm3509_bl {
> +	struct regmap *regmap;
> +	struct backlight_device *bl_main;
> +	struct backlight_device *bl_sub;
> +	struct gpio_desc *reset_gpio;
> +};
> +
> +struct lm3509_bl_led_pdata {

What does the p stand for here?

(only asking because pdata was the idiomatic form for platform data and
this driver only uses DT-only so I'm finding pdata values everywhere
really confusing)


> +	const char *label;
> +	int led_sources;
> +	u32 brightness;
> +	u32 max_brightness;
> +};
> +
> +static void lm3509_reset(struct lm3509_bl *data)
> +{
> +	if (data->reset_gpio) {
> +		gpiod_set_value(data->reset_gpio, 1);
> +		udelay(1);
> +		gpiod_set_value(data->reset_gpio, 0);
> +		udelay(10);
> +	}
> +}
> +
> <snip>
> +
> +static struct backlight_device *
> +lm3509_backlight_register(struct device *dev, const char *name_suffix,
> +			  struct lm3509_bl *data,
> +			  const struct backlight_ops *ops,
> +			  const struct lm3509_bl_led_pdata *pdata)
> +
> +{
> +	struct backlight_device *bd;
> +	struct backlight_properties props;
> +	const char *label = pdata->label;
> +	char name[64];
> +
> +	memset(&props, 0, sizeof(props));
> +	props.type = BACKLIGHT_RAW;
> +	props.brightness = pdata->brightness;
> +	props.max_brightness = pdata->max_brightness;

Please set props.scale appropriately for this device (given it only has
32 brightness levels I assume it is non-linear?).


> +
> +	if (!label) {
> +		snprintf(name, sizeof(name), "lm3509-%s-%s", dev_name(dev),
> +			 name_suffix);
> +		label = name;
> +	}
> +
> +	bd = devm_backlight_device_register(dev, label, dev, data, ops, &props);
> +	if (bd)
> +		backlight_update_status(bd);
> +
> +	return bd;
> +}
> +
> <snip>
> +
> +static int lm3509_probe(struct i2c_client *client)
> +{
> +	struct lm3509_bl *data;
> +	struct device *dev = &client->dev;
> +	int ret;
> +	bool oled_mode = false;
> +	unsigned int reg_gp_val = 0;
> +	struct lm3509_bl_led_pdata pdata[LM3509_NUM_SINKS];
> +	u32 rate_of_change = 0;
> +
> +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
> +		dev_err(dev, "i2c functionality check failed\n");
> +		return -EOPNOTSUPP;
> +	}
> +
> +	data = devm_kzalloc(dev, sizeof(struct lm3509_bl), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->regmap = devm_regmap_init_i2c(client, &lm3509_regmap);
> +	if (IS_ERR(data->regmap))
> +		return PTR_ERR(data->regmap);
> +	i2c_set_clientdata(client, data);
> +
> +	data->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> +	if (IS_ERR(data->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(data->reset_gpio),
> +				     "Failed to get 'reset' gpio\n");
> +
> +	lm3509_reset(data);
> +
> +	memset(pdata, 0, sizeof(pdata));
> +	ret = lm3509_parse_dt_node(dev, pdata);
> +	if (ret)
> +		return ret;
> +
> +	oled_mode = of_property_read_bool(dev->of_node, "ti,oled-mode");
> +
> +	if (!of_property_read_u32(dev->of_node,
> +				  "ti,brightness-rate-of-change-us",
> +				  &rate_of_change)) {
> +		switch (rate_of_change) {
> +		case 51:
> +			reg_gp_val = 0;
> +			break;
> +		case 13000:
> +			reg_gp_val = BIT(REG_GP_RMP1_BIT);
> +			break;
> +		case 26000:
> +			reg_gp_val = BIT(REG_GP_RMP0_BIT);
> +			break;
> +		case 52000:
> +			reg_gp_val = BIT(REG_GP_RMP0_BIT) |
> +				     BIT(REG_GP_RMP1_BIT);
> +			break;
> +		default:
> +			dev_warn(dev, "invalid rate of change %u\n",
> +				 rate_of_change);
> +			break;
> +		}
> +	}
> +
> +	if (pdata[0].led_sources ==
> +	    (BIT(LM3509_SINK_MAIN) | BIT(LM3509_SINK_SUB)))
> +		reg_gp_val |= BIT(REG_GP_UNI_BIT);
> +	if (oled_mode)
> +		reg_gp_val |= BIT(REG_GP_OLED_BIT);
> +
> +	ret = regmap_write(data->regmap, REG_GP, reg_gp_val);
> +	if (ret < 0)
> +		return ret;

Is this the first time we write to the peripheral? If so the error path
is probably worth a dev_err_probe() (I don't think regmap_write() logs
anything on failure to write).


> +	if (pdata[0].led_sources) {
> +		data->bl_main = lm3509_backlight_register(
> +			dev, "main", data, &lm3509_main_ops, &pdata[0]);
> +		if (IS_ERR(data->bl_main)) {
> +			dev_err(dev, "failed to register main backlight\n");
> +			return PTR_ERR(data->bl_main);

This should use dev_err_probe().


> +		}
> +	}
> +
> +	if (pdata[1].led_sources) {
> +		data->bl_sub = lm3509_backlight_register(
> +			dev, "sub", data, &lm3509_sub_ops, &pdata[1]);
> +		if (IS_ERR(data->bl_sub)) {
> +			dev_err(dev,
> +				"failed to register secondary backlight\n");
> +			return PTR_ERR(data->bl_sub);

Another good place for dev_err_probe().


Daniel.

