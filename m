Return-Path: <devicetree+bounces-246666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A07ADCBEC64
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A05FA300BD92
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C66902ECE92;
	Mon, 15 Dec 2025 15:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N9C5v4Un"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF39423770A
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814135; cv=none; b=R2nvkI/Iv6KD5sEmD3UGZPeLr/X+D1/kBF29mLQrLaaSZWZJUN91gUlnlp3xxAuHRNG8l7azuFPklFsU3+wuRJuZewWKeAUOdxgk46/hhai0MdxfnJpiVcq2nNQ5UuS08ytQLCmfe6PKK6FbTOxZNs+BX38SgHM5lA//rLMjqtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814135; c=relaxed/simple;
	bh=eYjTlLV50P3NLbcrenyo1RAQhHWcfUolf62ESNCRKkM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uXDhciP9htmMqfx9yAzHMwbXumvbuaSjJyVgE+Gqkn8kS8RsrHxh9Siq+yq4BmSZHYEUivHVDZHPCva3SGDtKDVGsJk3wTNRFFgApsREppPyt0XhGJp1S6Uav1howXWSarKNGiRLHPlTt3R23RqT7dEM1RaM0BsXdYeVb/wPs6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N9C5v4Un; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-4507605e19aso2287400b6e.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1765814133; x=1766418933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lLKyaolU4g5zNej91ABfV6uvaaWTd/JtbG1cSZ1C8Vg=;
        b=N9C5v4UnRDsJx7HUaM3AONmYuhaVPYzUl/WwKgV5BdmfVMOxdZMg9/DIq9iPCnW6/7
         4OcPB8nHtD3pmh5GWDZS2c/X5Quu1pV5QMuqo7IATRMHJj2CAfnIMGphldwx4nHD4nPL
         nM655AZ2BZDfRW2HlCzSalejc7PrKn+/wdZ9joRB4cOQ8o63/UJkH54C3lfOrI+3yS5O
         z230IbhBhp5I0XWkocDHrTHfXTHpqmvSLvq1/kYLOnZCS7pSaTHiUKW/uzoFdwx4cPlf
         4RRTP6qal/u4YxJimKeCAfxsOL4/FznzovG6Ip2lAlPtl7DO8huPcqr9ynD7FrISnjsl
         /6cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765814133; x=1766418933;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lLKyaolU4g5zNej91ABfV6uvaaWTd/JtbG1cSZ1C8Vg=;
        b=agwnKjpnbczb+TIGywu77u1di3VOmzhsUwVivCU55sJ2Oua95UrKKYY81OqlG7Dpzr
         55x0ZygGXN95EN6YKDuRDrL+9xDpmMFH+C3MdGMzNEzE1cqM3FJSi7cw2xiOb9U4kvFn
         3PO5fD7bJ9kPwwPjYjxJ2wu4t9gjlertNPfANLW4IRqijZyeBkyAwpIEE8gze+rok5ig
         NN5XoF4BIDjZef7ZKDacg+ymns0ZCwa+koiPRW4zVAciVCQIZBoGZTw046aUnLzCB+4E
         obpTdIvWkOnuT8QV23JWDuQEK4hUDVEsLx/IVABvd8Na0Vul3+BV/xAj3Jy9Z+2ZjYxf
         6XMg==
X-Forwarded-Encrypted: i=1; AJvYcCXnw6pq7NoC+oBoFl49QXGdLssUevt7T0NpmqjUBf4Hu4C5ak0ePAklNx15n9aK1Yij08NkvpFHAdYR@vger.kernel.org
X-Gm-Message-State: AOJu0YyVnEFKZdN3l3rqZ157D1J3nmBcjCD7uT/urBmyLxdv34aMybgB
	BKH4Gzib61zIDUze9GelBROYT4SINv/zFFgt6IKWsgVlPbocnTCzs+bUV9x+WEKC/vQ=
X-Gm-Gg: AY/fxX41M8U15NoaNjIWd92R0IdpYAnB0KmPltE0na/sfJlZuI0OuF79P2+bYpA/ubG
	kO5NNGvby7rzViTZvZvHgpZDr1EriEtg5RjjJ7k7Urzjq5bGtSXA7+bQ10+Y43Kpb6qEvK/g6JP
	d8I62PoBUDWaJYJE29iSeibDmpaqBOCYd3qVF5SW2/xjTWA+KnTCWSS4D9vkYhp/zVxf/p38smV
	AlP9vALhdyODLMeRsCc3jA/OKCSN4wS3sL9ewd71SdiwLIlw9p4rmhbq7Ovh7K/7/X3BmA771Uu
	vvclKdZcSFPDuAv+uDEA/HVyE05Kle5eajQs4S/wHyZhJVMyJi8sPSz1EtkyRTYtVX33BIWRye3
	s7BljwBuUM8w/8I+UwQ6UWtuF800CAvmBdxMTq53K28dBUnlXbKQOTHeHmCp52TBGSopwd2zVgB
	yrk4+NZeZfREJ3Z/qE4lkUD2VRyu3zcFlRlJHv4S/Y+iToAmtnTzOfoOWny5rW
X-Google-Smtp-Source: AGHT+IEDAkbNtGv/u/7sin1YRBENjC0kfm30ZrMPGqDezmRnQ+niEVtIzqnLeqFwlQ5HFsMDYOb0ag==
X-Received: by 2002:a05:6808:17a7:b0:450:d590:50d with SMTP id 5614622812f47-455ac9556e8mr5462083b6e.46.1765814132733;
        Mon, 15 Dec 2025 07:55:32 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:1635:b560:bfdd:f758? ([2600:8803:e7e4:500:1635:b560:bfdd:f758])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45598b46c12sm6664427b6e.3.2025.12.15.07.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 07:55:31 -0800 (PST)
Message-ID: <064e059b-5c86-4c41-8de8-b6a728361fd3@baylibre.com>
Date: Mon, 15 Dec 2025 09:55:30 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] iio: adc: Add ti-ads1018 driver
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Tobias Sperling <tobias.sperling@softing.com>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <20251211-ads1x18-v8-2-5cd12ac556da@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251211-ads1x18-v8-2-5cd12ac556da@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/11/25 10:25 PM, Kurt Borja wrote:
> Add ti-ads1018 driver for Texas Instruments ADS1018 and ADS1118 SPI
> analog-to-digital converters.
> 

...

> +/**
> + * ads1018_spi_read_exclusive - Reads a conversion value from the device
> + * @ads1018: Device data
> + * @cnv: ADC Conversion value (optional)
> + * @hold_cs: Keep CS line asserted after the SPI transfer
> + *
> + * Reads the most recent ADC conversion value, without updating the
> + * device's configuration.
> + *
> + * Context: Expects iio_device_claim_buffer_mode() is held and SPI bus
> + *	    *exclusive* use.

I guess "exclusive" is supposed to mean that the SPI bus lock is held?
Would have been more clear to just say "SPI bus lock is held".

> + *
> + * Return: 0 on success, negative errno on error.
> + */
> +static int ads1018_spi_read_exclusive(struct ads1018 *ads1018, __be16 *cnv,
> +				      bool hold_cs)
> +{
> +	int ret;
> +
> +	ads1018->xfer.cs_change = hold_cs;
> +
> +	ret = spi_sync_locked(ads1018->spi, &ads1018->msg_read);
> +	if (ret)
> +		return ret;
> +
> +	if (cnv)
> +		*cnv = ads1018->rx_buf[0];
> +
> +	return 0;
> +}
> +

...

> +static int ads1018_buffer_postdisable(struct iio_dev *indio_dev)
> +{
> +	struct ads1018 *ads1018 = iio_priv(indio_dev);
> +	u16 cfg;
> +
> +	cfg = ADS1018_CFG_VALID;
> +	cfg |= FIELD_PREP(ADS1018_CFG_MODE_MASK, ADS1018_MODE_ONESHOT);
> +
> +	ads1018->tx_buf[0] = cpu_to_be16(cfg);
> +	ads1018->tx_buf[1] = 0;
> +
> +	return spi_write(ads1018->spi, ads1018->tx_buf, sizeof(ads1018->tx_buf));
> +}
> +
> +static const struct iio_buffer_setup_ops ads1018_buffer_ops = {
> +	.preenable = ads1018_buffer_preenable,
> +	.postdisable = ads1018_buffer_postdisable,
> +	.validate_scan_mask = iio_validate_scan_mask_onehot,

Why do we only allow one channel to be selected at a time?
I guess we can remove that restriction later. I just didn't
notice this in previous reviews.

> +};
> +
> +static irqreturn_t ads1018_irq_handler(int irq, void *dev_id)
> +{
> +	struct ads1018 *ads1018 = dev_id;
> +
> +	/*
> +	 * We need to check if the "drdy" pin is actually active or if it's a
> +	 * pending interrupt triggered by the SPI transfer.
> +	 */
> +	if (!gpiod_get_value(ads1018->drdy_gpiod))
> +		return IRQ_HANDLED;
> +
> +	iio_trigger_poll(ads1018->indio_trig);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t ads1018_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct ads1018 *ads1018 = iio_priv(indio_dev);
> +	struct {
> +		__be16 conv;
> +		aligned_s64 ts;
> +	} scan = {};
> +	int ret;
> +


> +	if (iio_device_claim_buffer_mode(indio_dev))
> +		goto out_notify_done;

This should not be needed. It should not be possible to
exit buffer mode without triggers being stopped first.
(No other driver is doing this.)

> +
> +	if (iio_trigger_using_own(indio_dev)) {
> +		disable_irq(ads1018->drdy_irq);
> +		ret = ads1018_spi_read_exclusive(ads1018, &scan.conv, true);
> +		enable_irq(ads1018->drdy_irq);
> +	} else {
> +		ret = spi_read(ads1018->spi, ads1018->rx_buf, sizeof(ads1018->rx_buf));
> +		scan.conv = ads1018->rx_buf[0];
> +	}
> +	if (ret)
> +		goto out_release_buffer;
> +
> +	iio_push_to_buffers_with_ts(indio_dev, &scan, sizeof(scan), pf->timestamp);
> +
> +out_release_buffer:
> +	iio_device_release_buffer_mode(indio_dev);
> +out_notify_done:
> +	iio_trigger_notify_done(indio_dev->trig);
> +
> +	return IRQ_HANDLED;
> +}
> +

