Return-Path: <devicetree+bounces-211767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D025B408AE
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 17:15:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDAAA3A47FF
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 15:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147C0315761;
	Tue,  2 Sep 2025 15:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="T5j3VJvJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDED30496B
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 15:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756826098; cv=none; b=hHWLSeJh+LSvLSJb7Vuf1nCYD6hCBU3daybd0enyYPHAq7b3YpIGJxYWNe8x4FIUyQOMwO249a1FO/aaUugc/fr61NdkDawONik+7KEnaPyiNFK8Ulc6tN4xAPnfR54Hc5ulAI/wpskPzYKKVr1SrbEwqnCBVX5WuJttMda5HNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756826098; c=relaxed/simple;
	bh=k+/O35OLEaFLE720FQq2xXfg7gWF2UlM2xi61rk76LY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i64CEqkKghyJqMMrbm/22jDKcLoZS7/CQpXKvDzDjyS4cc5tf1GFQdR+OGNLLz7ehQyHwby1I9Dxh0/Ov5TXoB24rb9HYzEVz/MVgY4l/rrnAXKzORK4zrsvjRnIS6Zzjhe9Ug6/35FMtqo9E8witkdwLjVF5/e7h/64lqc5PM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=T5j3VJvJ; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-3197f12d771so1751037fac.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 08:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756826094; x=1757430894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Xgg2pm+dNGmJi2dTat3GmYq1nuu4RhGRKW9DE9wgjY=;
        b=T5j3VJvJIq9vtmRuHplfbLq17cSvaZ8NsM6NXDEyqGZaSYFQoNOrKJT9H+6g2aeWqF
         BDAIJvaqu6Gue/f856kqrhHAVJ8E52RUFuzOb4evK16ovwdgN7PPkcbKj0Z3m7IsjTb/
         QQVCnXvIE0MKckdi7hpz7uWuR4gMcZ7rS2zOVcMNFiERJ5e5QvgDXzPWYIOVNKKBFJVc
         Lb+858XYCrodocSVNPsh68YQwFTaj1xw8S17ru1ObzVrNQGC6W2202jSSeTK1EYdYFQT
         8Zj/lmj+Klitp8db7WBDRs2o6lGVXwyoO3qt526lKM3x6NSC/C371n8N7HGoGVtcLxZ3
         wJ5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756826094; x=1757430894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Xgg2pm+dNGmJi2dTat3GmYq1nuu4RhGRKW9DE9wgjY=;
        b=ZvC+62Jh1f/CAQ8ZT5hj0andD6qVRLfywbxqjVmaqcevRgWLpLUZCL0O3cgCulWfjS
         RM5eol/MNpRICjU52bKureUW3RXhiei7RSBI5KBirjTxqcWEcrwOZ0ZKL2oC6ci+cMRU
         fCJkAmhc1uGXgIEu1YpYzsC/Pea/YyL3zJXyec0Oy4SnSl69T3oYuuq0y+9CQUJbvK8x
         A+4uBnEq3vncfgOfBdArrQuJY+XwF7rYrUhduAWI3JjqwFbloB/W4c8PK5inPtwdICQr
         +SJtDqw5MiZf+7uk7EKt/GFhKiZjQUoowrpLL8fym5Vy05N9Yq8fRRLG21qw6CHmu2WM
         y/FQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwBfWNMjIiW/FLAxufL3YVqN2KuqMjd4f8pkMEPFpOAs67lHU4FpCmNgKyZwOJ0zKt674NftWpcRyp@vger.kernel.org
X-Gm-Message-State: AOJu0YwRLn0iPsGziRSjLbG7aFa19OUPp3QkbL1ZAm71Mj7HiDDKLWBF
	+zRz4boR1kC6amd4ZOQy9j/lo5/I99FUfzonRWunR1GM5Z81V30ZMgbqYOInnvahKDQ=
X-Gm-Gg: ASbGncufxN9bxwpNUkw8JqBXSJ8/ncxO5F50i/IR9YbSrhs0Bvrw1DoUOxi+C9Bj9J8
	86hcEXcBAjXeEMVC93tNB2kyA+8SRQba3wkkMRovvkCxaqwJtYYIePYLyKzPoZNQ+Qq81um8gwx
	xVAk/zepiMRvISwDNTVLPnouofMfFa7rfFMSuRWy5OnlYJCeHdCUE3aykBNEI7hr/1SFo28Gazo
	d+byddlKlqS9SWFlGQLHyd+dDyE/UVr2B/wwgcKst5OjJ25S8noD0Z7ntnfEVtWoyWawgoPpme9
	b3dNdz/2UigXAeahZd5je8iiRPPh3IN8iLu3UstepPSCetgNbeKsKDLhdjApsy1UY4Zydx4V/IU
	z2cXLuQXG5h6mvx7J2hQ8Wx3RPcl1iZesmwSpACiI51e5OQmV4YKXZiUNvZ/SBwlWO3PZx7iFHq
	qOXBp7IiufctoJNWpY7Q==
X-Google-Smtp-Source: AGHT+IHu9ad7jn5aRdIYj1LhzznHSg+3gNWD0VD4qNGker/OFvxNVNYSGwKe3LEJOn0WHfiGEGVVDw==
X-Received: by 2002:a05:687c:54:10b0:319:be1e:9dce with SMTP id 586e51a60fabf-319be1edb78mr949993fac.5.1756826094264;
        Tue, 02 Sep 2025 08:14:54 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:8d95:114e:b6f:bf5b? ([2600:8803:e7e4:1d00:8d95:114e:b6f:bf5b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-319b60b8f38sm532195fac.30.2025.09.02.08.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 08:14:53 -0700 (PDT)
Message-ID: <a6ae372e-e0c9-4874-8be1-8070ee3e880f@baylibre.com>
Date: Tue, 2 Sep 2025 10:14:52 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>, Esteban Blanc <eblanc@baylibre.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Hans de Goede <hansg@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <cover.1756813980.git.mazziesaccount@gmail.com>
 <08929460fe11dd0b749c50a72a634423f13f4104.1756813980.git.mazziesaccount@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <08929460fe11dd0b749c50a72a634423f13f4104.1756813980.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/2/25 7:24 AM, Matti Vaittinen wrote:
> The ROHM BD79112 is an ADC/GPIO with 32 channels. The channel inputs can
> be used as ADC or GPIO. Using the GPIOs as IRQ sources isn't supported.
> 
> The ADC is 12-bit, supporting input voltages up to 5.7V, and separate I/O
> voltage supply. Maximum SPI clock rate is 20 MHz (10 MHz with
> daisy-chain configuration) and maximum sampling rate is 1MSPS.
> 
> The IC does also support CRC but it is not implemented in the driver.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> ---
>  drivers/iio/adc/Kconfig        |  10 +
>  drivers/iio/adc/Makefile       |   1 +
>  drivers/iio/adc/rohm-bd79112.c | 542 +++++++++++++++++++++++++++++++++
>  3 files changed, 553 insertions(+)
>  create mode 100644 drivers/iio/adc/rohm-bd79112.c
> 
> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index e3d3826c3357..4b78929bb257 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
> @@ -1309,6 +1309,16 @@ config RN5T618_ADC
>  	  This driver can also be built as a module. If so, the module
>  	  will be called rn5t618-adc.
>  
> +config ROHM_BD79112
> +	tristate "Rohm BD79112 ADC driver"
> +	depends on I2C && GPIOLIB
> +	select REGMAP_I2C

I think you want SPI rather than I2C. :-)

> +	select IIO_ADC_HELPER
> +	help
> +	  Say yes here to build support for the ROHM BD79112 ADC. The
> +	  ROHM BD79112 is a 12-bit, 32-channel, SAR ADC, which analog
> +	  inputs can also be used for GPIO.
> +



> +struct bd79112_data {
> +	struct spi_device *spi;
> +	struct regmap *map;
> +	struct device *dev;
> +	struct gpio_chip gc;
> +	unsigned long gpio_valid_mask;
> +	unsigned int vref_mv;
> +	struct spi_transfer read_xfer[2];
> +	struct spi_transfer write_xfer;
> +	struct spi_message read_msg;
> +	struct spi_message write_msg;
> +	/* 16-bit TX, valid data in high byte */
> +	u8 read_tx[2] __aligned(IIO_DMA_MINALIGN);
> +	/* 8-bit address followed by 8-bit data */
> +	u8 reg_write_tx[2] __aligned(IIO_DMA_MINALIGN);
> +	/* 12-bit of ADC data or 8 bit of reg data */
> +	__be16 read_rx __aligned(IIO_DMA_MINALIGN);

Usually, we only need one __aligned(IIO_DMA_MINALIGN) (on the first
field). Since these are only used for SPI messages and we can only
send one message at a time, there isn't a way for there to be a
problem that would require them to each need to be in their own
cache line.

> +};
> +



> +static int bd79112_probe(struct spi_device *spi)
> +{

...

> +	iio_dev->channels = cs;
> +	iio_dev->num_channels = ret;

This is quite far from where it is assigned. Better to have a dedicated
local variable for this.

> +	iio_dev->info = &bd79112_info;
> +	iio_dev->name = "bd79112";
> +	iio_dev->modes = INDIO_DIRECT_MODE;
> +

