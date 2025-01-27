Return-Path: <devicetree+bounces-141245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D6795A201C3
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 00:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAFFA18856D9
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:35:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 459F11DD886;
	Mon, 27 Jan 2025 23:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iPiR2eUM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF981DC046
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 23:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738020902; cv=none; b=V+iPD9RE0J9728Anfp5ZbzQkVHaZibCA4awnhpxYOgt4MSnSJafgzhyzwdM5Drur34+TgmJDFHhToq1Os15ImoQeN1qgud4m86a8aJHOhxVy9mMImlTxM/glRxSMzSwSMkZLygeRUJU6P+QDyPBPmrSznYNxr6TzAoSa0DSd8fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738020902; c=relaxed/simple;
	bh=TEKLERqMSAPxqIY7oTlgAAdLDQbYtaQFm9CPt3GUFaU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LYZtqOh3BNDf3G3jFJQgx9wRcTflaTCFUlD/meBotzN05eaUiZPFMVsaTpwATJ6+akPGJGh0vf5da6SKOFuFUZT30H8IlJs/WJ7bNSS20Mvrmsaq4F/9ObFwI/d9/IKUcCV2W/NbkFdRkQnIbvnSQZgojeZXJnS05vnSY9Tt3mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iPiR2eUM; arc=none smtp.client-ip=209.85.167.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3ebb1652729so2666061b6e.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738020898; x=1738625698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V+QL1qOU7A+4dqKvXFFwxp1Aj2x3uAvltSGPeyEHEJ4=;
        b=iPiR2eUMaPAufoHxbnFoJDFTDd/YZl11HRafkghUF8tyB8G3Dbu6lVxf6ak1JP2Do6
         afFCKBG5A/qaLV46NZ/pNUnrBVA8RFkoaOb4IBpeB+xrjMkJMY+M5E7g4QCNyuI+fFOa
         KlVKNMk9Smdko0n0QM0c5nXDyontRCvEglKPsESwhQNKM5rSlcizNaLvcoYl0HoZhIiG
         5vH5L9Ry4awmhKqEUwYwE+biks1WE40bJsi3SeVxtUelLj1A3EgxyyokvJ2OdsDnsiNq
         Pg2YXrN/2RwezhlFdqbghQVUtgHhLQbI4pZxczNA/v1obwHnG94DlTBKXXnylcO8ySaq
         fSBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738020898; x=1738625698;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V+QL1qOU7A+4dqKvXFFwxp1Aj2x3uAvltSGPeyEHEJ4=;
        b=Mr6WYWpdLMGCcMGaIz9+aohve2fgH2yym/GwLGZiGhDOSo/yrTVFKMLPb4vR46HV+z
         sxu4OqGiONHzlx+ce6nOEB8aKVEpW0iQJYBu8cU1XgNLkIJZpwUcc5jPx1U+exnQIg5U
         rCLVsF834BcnBndL5o4a5go1Umu8uzsRe0iqObekEpfKeYHpfOJYXnrZvKaSznwsfTzf
         NVBdQ6q1CA/PxRJEbadjZbObf0IitiWr4FEBzs8CYGjD8RKSu+lEVK23w9tZqyvoRHz/
         Ni1aw40iCvKGfxzbNq4llQburPstyE7K5Wk+Szw21QB4VoXyfvhDEsC/3QK364sGcSAw
         UvOw==
X-Forwarded-Encrypted: i=1; AJvYcCV/pjKjd6WuZ0zvL24W+HFdwdH9w5C67ya5N5qISWlN8oxr1QSEA00uke1LjKR5GGjrUbChvJZ++clx@vger.kernel.org
X-Gm-Message-State: AOJu0YwB728Z4wrxF7BFcqxPXQ2vWfXAYRVpBbCOX8kPLBn8NqjAZ/7A
	/rSRLmJIaDWv53nPr8EbQoV3fyhnuLklcXEKYfK1u/dOKbncydpIf72T28KQcu0=
X-Gm-Gg: ASbGnct5YBa7RpgYVqETTRL+EP25X8oaT4YGCqSW2jXJlc3n3CsNu0XY9asYbE31Yzp
	NjS5TS59zD/+Ob8sqbl6UmlUyS16jyqi/0Bp55z1UtqsLvBGRrS1g+5vz53I8dRRolWGICeh+e0
	rrgQyOwtD4S+YNVc1lKJ45TRC9ysqQef01g5vLszWnKOR4r1+5Lt9dVtFXhwn5xdWv1GwaBhAAa
	WHw5dbdnkQQg3WY6AeuF+mzXyLwKGbF1+4qrYhCtxQsNI6ubcvsH1u+fzQbrVNimesCI3U/f5cj
	uSFrKlca8nX61wEkDe+DlmFOSPmUSYmjHlyrnl23aw==
X-Google-Smtp-Source: AGHT+IEs3sNWagG6eHA+nlF8rlclQIex7wRrfCAI6RprQRticQYNyzsa4zEFLR7JCuetpdSJzNkgvg==
X-Received: by 2002:a05:6808:330a:b0:3f1:d489:3d95 with SMTP id 5614622812f47-3f1d4894c56mr17531046b6e.17.1738020897189;
        Mon, 27 Jan 2025 15:34:57 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fa8b55598asm2589357eaf.23.2025.01.27.15.34.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 15:34:55 -0800 (PST)
Message-ID: <be495c92-6e6f-47dc-baee-9524055f4f53@baylibre.com>
Date: Mon, 27 Jan 2025 17:34:54 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/16] iio: adc: ad7768-1: Add GPIO controller support
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonath4nns@gmail.com, marcelo.schmitt1@gmail.com
References: <cover.1737985435.git.Jonathan.Santos@analog.com>
 <4067fc67ef617edbaea0de21241d59d6ff8eaf98.1737985435.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <4067fc67ef617edbaea0de21241d59d6ff8eaf98.1737985435.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/27/25 9:13 AM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> The AD7768-1 has the ability to control other local hardware (such as gain
> stages),to power down other blocks in the signal chain, or read local
> status signals over the SPI interface.
> 
> This change exports the AD7768-1's four gpios and makes them accessible
> at an upper layer.
> 
> Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> ---
> v2 Changes:
> * Replaced mutex for iio_device_claim_direct_mode().
> * Use gpio-controller property to conditionally enable the
>   GPIO support.
> * OBS: when the GPIO is configured as output, we should read 
>   the current state value from AD7768_REG_GPIO_WRITE.
> ---
>  drivers/iio/adc/ad7768-1.c | 148 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 146 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index c540583808c2..e3ea078e6ec4 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -9,6 +9,8 @@
>  #include <linux/delay.h>
>  #include <linux/device.h>
>  #include <linux/err.h>
> +#include <linux/gpio.h>
> +#include <linux/gpio/driver.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
> @@ -79,6 +81,19 @@
>  #define AD7768_CONV_MODE_MSK		GENMASK(2, 0)
>  #define AD7768_CONV_MODE(x)		FIELD_PREP(AD7768_CONV_MODE_MSK, x)
>  
> +/* AD7768_REG_GPIO_CONTROL */
> +#define AD7768_GPIO_UNIVERSAL_EN	BIT(7)
> +#define AD7768_GPIO_CONTROL_MSK		GENMASK(3, 0)
> +
> +/* AD7768_REG_GPIO_WRITE */
> +#define AD7768_GPIO_WRITE_MSK		GENMASK(3, 0)
> +
> +/* AD7768_REG_GPIO_READ */
> +#define AD7768_GPIO_READ_MSK		GENMASK(3, 0)
> +
> +#define AD7768_GPIO_INPUT(x)		0x00
> +#define AD7768_GPIO_OUTPUT(x)		BIT(x)
> +
>  #define AD7768_RD_FLAG_MSK(x)		(BIT(6) | ((x) & 0x3F))
>  #define AD7768_WR_FLAG_MSK(x)		((x) & 0x3F)
>  
> @@ -160,6 +175,8 @@ struct ad7768_state {
>  	struct regulator *vref;
>  	struct mutex lock;
>  	struct clk *mclk;
> +	struct gpio_chip gpiochip;
> +	unsigned int gpio_avail_map;
>  	unsigned int mclk_freq;
>  	unsigned int samp_freq;
>  	struct completion completion;
> @@ -309,6 +326,125 @@ static int ad7768_set_dig_fil(struct ad7768_state *st,
>  	return 0;
>  }
>  
> +static int ad7768_gpio_direction_input(struct gpio_chip *chip, unsigned int offset)
> +{
> +	struct iio_dev *indio_dev = gpiochip_get_data(chip);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	ret = iio_device_claim_direct_mode(indio_dev);
> +	if (ret)
> +		return ret;

Missing iio_device_release_direct_mode() here and in other functions.

(And we are in the process of removing iio_device_claim_direct_scoped(), so
don't use that.)

> +
> +	return regmap_update_bits(st->regmap,
> +				  AD7768_REG_GPIO_CONTROL,
> +				  BIT(offset),
> +				  AD7768_GPIO_INPUT(offset));

Can be simplified to regmap_clear_bits(), then we can get rid of the odd
AD7768_GPIO_INPUT macro that ignores the argument.

> +}
> +
> +static int ad7768_gpio_direction_output(struct gpio_chip *chip,
> +					unsigned int offset, int value)
> +{
> +	struct iio_dev *indio_dev = gpiochip_get_data(chip);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	ret = iio_device_claim_direct_mode(indio_dev);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->regmap,
> +				  AD7768_REG_GPIO_CONTROL,
> +				  BIT(offset),
> +				  AD7768_GPIO_OUTPUT(offset));

And regmap_set_bits() here.

> +}
> +
> +static int ad7768_gpio_get(struct gpio_chip *chip, unsigned int offset)
> +{
> +	struct iio_dev *indio_dev = gpiochip_get_data(chip);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = iio_device_claim_direct_mode(indio_dev);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(st->regmap, AD7768_REG_GPIO_CONTROL, &val);
> +	if (ret < 0)
> +		return ret;
> +
> +	if (val & BIT(offset))
> +		ret = regmap_read(st->regmap, AD7768_REG_GPIO_WRITE, &val);
> +	else
> +		ret = regmap_read(st->regmap, AD7768_REG_GPIO_READ, &val);

Can we get a comment explaining why GPIO_READ doesn't work in output mode?

Or if it does work, we can simplify this function.


> +	if (ret < 0)
> +		return ret;
> +
> +	return !!(val & BIT(offset));
> +}
> +
> +static void ad7768_gpio_set(struct gpio_chip *chip, unsigned int offset, int value)
> +{
> +	struct iio_dev *indio_dev = gpiochip_get_data(chip);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = iio_device_claim_direct_mode(indio_dev);
> +	if (ret)
> +		return;
> +
> +	ret = regmap_read(st->regmap, AD7768_REG_GPIO_CONTROL, &val);
> +	if (ret < 0)
> +		return;
> +
> +	if (val & BIT(offset))
> +		regmap_update_bits(st->regmap,
> +				   AD7768_REG_GPIO_WRITE,
> +				   BIT(offset),
> +				   (value << offset));

Can remove extra ().

> +}
> +
> +static int ad7768_gpio_request(struct gpio_chip *chip, unsigned int offset)
> +{
> +	struct iio_dev *indio_dev = gpiochip_get_data(chip);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +
> +	if (!(st->gpio_avail_map & BIT(offset)))
> +		return -ENODEV;
> +
> +	st->gpio_avail_map &= ~BIT(offset);

Is this really needed? It seems like GPIO core would be keeping track already.

Also would need a .free callback to undo this action.

It seems like most ADC's with GPIO controllers don't implement .request though.

> +
> +	return 0;
> +}
> +

