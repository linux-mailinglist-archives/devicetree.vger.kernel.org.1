Return-Path: <devicetree+bounces-261485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJLgOrdxfmlSZAIAu9opvQ
	(envelope-from <devicetree+bounces-261485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 22:18:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 915E6C3FA9
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 22:18:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 649FC3024108
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C81A3783C4;
	Sat, 31 Jan 2026 21:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="CUriWvT6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE47D7082F
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 21:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769894316; cv=none; b=p7n1deM9CoC9+FC00bxFx2SWGFjCC+HttlCV+KtEOHmnlsRnnaKbaZE7EFORhAzFCznial675FZd8ZINa+XNIRIlfDF4ugOwtdkbhPvOytsB3lW+A9IASbmeJphJFQxxsp1SUtxu4Ri6WMJBEJxIRqIicw6uzXzgg6NKRHg+ucs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769894316; c=relaxed/simple;
	bh=zu+n85j+G83eAQCWmPL9oOqo2/Q3K1hlLhMsew2Mab4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cR0qTcsOKacK5RzbV2Q8AlVx32gtFISfqP1u2/uZE0dBznCrsAn/zTqsGmsBzs8hgc/bjogOj2EmgbLfH8/QRn92ETswjn3ekKejQ/JC3UXw8VFC4TqA9TF/1tR2tdkeVP9BJDRPZoJRngCtNC/yCy9nmh2P46ka2tAK3gSUJOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=CUriWvT6; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7cfdf7e7d19so3043963a34.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769894312; x=1770499112; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7JxKT5Zjw5f+SPV6ec9cF5yWAENyIARJ1jQtuYPFd+c=;
        b=CUriWvT67hK2I0Mopm98Q4nEi1ayKYiT+oluf1ZakLiH82MioOw2GPW0/UxTg59bv4
         AtsJtFM+TYbYHRXZw2xR+JRcgz6Yzt3CqmnRebBhfwIn4VODBcb9q0DWdqGjGSRE+uhT
         6SDXs1wDKOLc3sN5gpX7lYlzaZKj8wKlz1nteuGAYJpYyF/wd+okORphV4E0SlnsqceI
         cpW4pPihbkhCMZeSxft0c+8fecorWTUHZA/9/qk/yPDt4SIzD1DWW0A+vXR+jdE86+iJ
         HLp07Xg4JGWrMmRTT1xIF7Cddk4Lymd3l0I9tnhecmH+nopNxQfDoW9xaO/dfRlEBoE8
         hckA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769894312; x=1770499112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7JxKT5Zjw5f+SPV6ec9cF5yWAENyIARJ1jQtuYPFd+c=;
        b=wMcjj7WBOQfUFQYnQZMcUCPgBNd1PNo7KhzNmdBj5SwwyKsM8OGDsyZ7s609QHMZ+1
         Oe6Gdi5u1zBVH4xvO1t9jNccJK8FBNB22NBVWfpN/EmaWnzyXQigNDHZr58jdh6BzknR
         XbQJLY/m9E3R64eEogy3QgjULUfq7iGncBM68qA1x83lOzWES0d+9lEM0E7LfZ58w4x+
         qnprFVBPjneQZoACLQfFAB3bGmrAxJrHEbuxaWUOrl4Xx6YjEH0i208+wruGfeHEBSDc
         9MCf6VRuURxEXtzLQkjrpD5Y3Ev73SqtZoELyhEbQ7QjCT/hjdcm0g8vLMXvPpPGILLG
         M6kg==
X-Forwarded-Encrypted: i=1; AJvYcCWQCrkdgXNhfcU1hh2YLgmI0GCgQVhVLDncLQYv6YfX0IwjGrCoi970XTRgItPEQ3pEj8sSr4Yb8LfK@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc8LaYfvRgsB4YOTOCnLl2H2kuor7MA1AWN4Wu3AS3uLChYktz
	YOUs/N/GB1sgvKOVsVKoiEGbLDP2FCl0Ewjqonfv9/6en7k6PHxKTK86+bX22+xmFaU=
X-Gm-Gg: AZuq6aJfUa3hb815Gc8BHK36ptP/ApXVFO+4hanx5YvwWECwjf2Eau2Clq3MsMXC+zS
	8ZkGT+gA8bvlFx0sSDSEIYW95k0QdK6NngV2TcQzodSpFBNSClyoECpLbdENNpTPBfH8dCfjOVT
	jxiurDDw/ppq12a658vfab6XoagqYBF481FGbdyp3xCeH7cTal39xlQtHV+ilm/2Hg862+zctfs
	tPdMVo3GNMu19/+jijX4mlGxjsbuBMO/625qWHiSSd6UlTt3xs5yYydbgueE3LWZkfgfJkd7Cqi
	MPQiJhbJAO/HhlqJuGJs515x28akxcQJYTPbccUGefhDzGL/XMLK3MKHdOh2BN+GegcB6kKK1XH
	fQ4469Dn26h0o6A0F1HUOEKOfl/lZVNWrlP3G/6uBdqPAKxleaQffXhbg7vs6b7QWyeDvyulsY6
	K5TPAwhOdWlmw8AwHzuyxlXmOd9IpaMeHYkSLYyiw9gAx7wZKlJ7Vc3GYaRi43
X-Received: by 2002:a05:6830:83a4:b0:743:8af2:1af7 with SMTP id 46e09a7af769-7d1a5398758mr4642926a34.23.1769894311799;
        Sat, 31 Jan 2026 13:18:31 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d18c825bfdsm7764440a34.29.2026.01.31.13.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 13:18:31 -0800 (PST)
Message-ID: <0e2c7eea-76d9-4e54-af08-0affcbbe0333@baylibre.com>
Date: Sat, 31 Jan 2026 15:18:30 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] iio: amplifiers: ad8366: add device tree support
To: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-4-c9a4d31aeb01@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260126-iio-ad8366-update-v2-4-c9a4d31aeb01@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-261485-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 915E6C3FA9
X-Rspamd-Action: no action

On 1/26/26 7:51 AM, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add device-tree support by dropping the enum ID in favor of extended
> chip info table, containing:
> - gain_step, indicating with sign the start of the code range;
> - num_channels, to indicate the number IIO channels;
> - pack_code() function to describe how SPI buffer is populated;
> 
> With this, switch cases on the device type were dropped:
> - probe() function adjusted accordingly;
> - Simplified read_raw() and write_raw() callbacks;
> - mutex_lock()/mutex_unlock() replaced for guard(mutex)() to allow
>   moving to early returns;
> 

...

> +static size_t simple_pack_code(struct ad8366_state *st)

This name is a bit generic. I would call it e.g. hmc792_pack_code()
so that it clearly belongs to this driver.

Or drop this function and make the logic elsewhere:

	if (info->pack_code)
		return info->pack_code(st);

	st->data[0] = st->ch[0];
	return 1;

Then the info struct definitions would be less verbose.

> +{
> +	st->data[0] = st->ch[0];
> +	return 1;
> +}
> +

...

>  static int ad8366_probe(struct spi_device *spi)
>  {
>  	struct device *dev = &spi->dev;
> @@ -264,35 +221,22 @@ static int ad8366_probe(struct spi_device *spi)
>  		return ret;
>  
>  	st->spi = spi;
> -	st->type = spi_get_device_id(spi)->driver_data;
> +	st->info = spi_get_device_match_data(spi);
> +	if (!st->info)
> +		return dev_err_probe(dev, -EINVAL, "Invalid device info\n");
>  
> -	switch (st->type) {
> -	case ID_AD8366:
> -		indio_dev->channels = ad8366_channels;
> -		indio_dev->num_channels = ARRAY_SIZE(ad8366_channels);
> -		break;
> -	case ID_ADA4961:
> -	case ID_ADL5240:
> -	case ID_HMC792:
> -	case ID_HMC1119:
> -		st->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> -		if (IS_ERR(st->reset_gpio))
> -			return dev_err_probe(dev, PTR_ERR(st->reset_gpio),
> -					     "Failed to get reset GPIO\n");

As a precursor cleanup, st->reset_gpio can be removed and turned into a
local variable. It isn't used anywhere else.

Also, this could use a comment to explain that previously the driver
specifically had the reset gpio for some chips that don't actually
have a reset pin. It could have been wired up to the power/enable pin
instead, so some users might be relying on this to turn the chip on
rather than reset it.

> +	st->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(st->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(st->reset_gpio),
> +				     "Failed to get reset GPIO\n");
>  
> -		indio_dev->channels = ada4961_channels;
> -		indio_dev->num_channels = ARRAY_SIZE(ada4961_channels);
> -		break;
> -	default:
> -		return dev_err_probe(dev, -EINVAL, "Invalid device ID\n");
> -	}
> -
> -	st->info = &ad8366_infos[st->type];
>  	indio_dev->name = spi_get_device_id(spi)->name;
>  	indio_dev->info = &ad8366_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
> +	indio_dev->channels = ad8366_channels;
> +	indio_dev->num_channels = st->info->num_channels;
>  
> -	ret = ad8366_write(indio_dev, 0, 0);
> +	ret = ad8366_write_code(st);
>  	if (ret < 0)
>  		return dev_err_probe(dev, ret, "failed to write initial gain\n");
>  

