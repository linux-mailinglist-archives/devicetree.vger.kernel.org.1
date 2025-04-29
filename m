Return-Path: <devicetree+bounces-172058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4FEAA1198
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 18:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41F41924ECD
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:32:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B090244675;
	Tue, 29 Apr 2025 16:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ELlwHHls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207FD22539D
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 16:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745944345; cv=none; b=nIQLmepU0Ba3nzQewoUPwJYOzA+lWVSU0rOHkpUNvxZaXZVVNKf1HZEj0HqGyCcblKVcgghDl5Jc8vHzkPr5xPi+cD2RqRqZlSMHf8EVVoHWHpMOAQ1wvcRbkDjg0XJ+qEA5fe7A57ebtTORbqhJu1Gy9JLHBa4CDvG2EpqSO8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745944345; c=relaxed/simple;
	bh=kxJijwJOOpyMIXcfCls3QqWyToNqydz2DXvZT0qcO1I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E6Tv1TlCTgD/iRoWuaYkKgdhAes5pI4EvNQVew5owkq7fI5it5TNs3SRaCvuSQ6gKNxv9lePr/6u8i0yYFY41yeiSc29+d+ca2VEe1nvB635dpYTidbdBVvZQYFUrIfuINdUNoq62T3VfQVcfr+T6MqM5bMsxc4YK8mwbAbTQnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ELlwHHls; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72bceb93f2fso16656a34.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745944342; x=1746549142; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VlzV3aC3Ajcd4WwT0NS/l9ibLgDyq3ihO7Tsirhk0II=;
        b=ELlwHHlsrW4x6siALslx2SQSxA7l8//pnnn/r1cacg4Kp8Q0AQNXaXrbSf3ZBBtZ/3
         3L4dHQ5n40xTkPUBXHg1/eBR9k9ZvcPm6rkqk8xY/utc/aUw/JA/7wEQ3k0QgT5MGeTI
         6V2d9iZNAnfZLOWkumB35RahyHKZHYWfuws+Ml/rsrrtVSduWe4YjUn2kiCo4GnqEIEu
         QzbtP8TJkDFUa7cU1kCZevOyOFBB++REcnfhAaTVIjn/FoVVuYflKgBCUMY1hDrkH9Ek
         V+zpPoBAr43pC9qnJa9xkuXyJja30QtwgDo6c27ACc4ToMl5dGZv69nFXgdE5FH7zC1R
         AAiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745944342; x=1746549142;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VlzV3aC3Ajcd4WwT0NS/l9ibLgDyq3ihO7Tsirhk0II=;
        b=ou9AkDR6onmZpyZIsViKLFXxwKSMxTamTxfK2J68fQjq/Vd6/J43wtl47y0XyWJtty
         QQOsH/xKWLeA0JkbdCjhoUjDoNIvgFSq54Q3KvSGCOvB2uIDxGh1oBJGrTcL2HChMwkR
         ExvRebtH+dwPKaE1dTbatIAwKlpV1NKFqt/tZaVaTCxCi/QaYio6mk4Oq+fwuwnu0Im2
         Q9AeNyw34EOYAl+yFunGKNHfGIcjEmZ0fMfxkkNdhWpXBqWAnz9LE+pElEk0MXxrjGEI
         PADsJ4lvxF57BwPo2ohF7a7Mbv3DxOlPAWsEPINJXwnxsvjs80OQUofLJ/VM/nhTzZXp
         J3qw==
X-Forwarded-Encrypted: i=1; AJvYcCW6MIUXEgiw/6/JA9xkwpaQ9ITHTcdR40UdBzTFEMHEH2Ley0RzrER4ucM5WrHb3Gc5MO7VC6aKfI7a@vger.kernel.org
X-Gm-Message-State: AOJu0Yypv+PIRkca3u9O2kMiNtNRJkk5NrR7m+7e4bAo03sAIRxoMeYe
	h6kwB8OZzYin54YswERj1yiaL2bqrMhgzGQZPpV6McjcNXzMGq/W9XaKrXJBI1U=
X-Gm-Gg: ASbGncvtP6gHQdHn7HvYNg16KbpZStNSCK9VoYGCy3M+AM5K6MmYSMscZZCAqEWpDmz
	LYl8xB++OLwKHRDj7r4gPbduHh/EQGdnDyKcwBEjnMaV0x8sQCqrtYnL9IxLhBwu8gD9tEyX6wJ
	mmTwEJ8LQ6i4Mzd4K01Wu0+0x3h0t+XdD4zMM+EEdakUfVRI+Ptnf6so7Jj7M/PP87ViBfNrB3c
	Nr1yXLR+s02jnrnzbgqlIWlESvBPNR+Xe4CnxSgLaGsv8gJHs4LlWKz6F/7cuxq0peBKqOqyhtv
	3KzwtIHZnX9j29su6JPvMkS+Thhuvt2RgMPFF3IRDJLKrwySIdtjhnd8N+FAwSS7qjMbCshyNJq
	rXPbhczjYKzvOomY6Sw==
X-Google-Smtp-Source: AGHT+IECXLQfMw4IHoT8sY1k3B5PGYoLM8POTBaiM9WXU5IhYjgdUCA4tjARzeoztfzPvG3hb3MlHw==
X-Received: by 2002:a05:6808:22a9:b0:3f4:11b3:206b with SMTP id 5614622812f47-4021103ccb9mr2215175b6e.17.1745944342109;
        Tue, 29 Apr 2025 09:32:22 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6? ([2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40212c4dbe6sm315201b6e.49.2025.04.29.09.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 09:32:20 -0700 (PDT)
Message-ID: <ad489cc7-8c89-44fa-bcec-5c4b9cbcab74@baylibre.com>
Date: Tue, 29 Apr 2025 11:32:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] iio: adc: add support for Nuvoton NCT7201
To: Eason Yang <j2anfernee@gmail.com>, jic23@kernel.org, lars@metafoo.de,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 nuno.sa@analog.com, javier.carrasco.cruz@gmail.com, tgamblin@baylibre.com,
 olivier.moysan@foss.st.com, alisadariana@gmail.com, gstols@baylibre.com,
 antoniu.miclaus@analog.com, eblanc@baylibre.com,
 andriy.shevchenko@linux.intel.com, matteomartelli3@gmail.com,
 marcelo.schmitt@analog.com, chanh@os.amperecomputing.com, KWLIU@nuvoton.com,
 yhyang2@nuvoton.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250429025505.3278016-1-j2anfernee@gmail.com>
 <20250429025505.3278016-3-j2anfernee@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250429025505.3278016-3-j2anfernee@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/28/25 9:55 PM, Eason Yang wrote:
> Add Nuvoton NCT7201/NCT7202 system voltage monitor 12-bit ADC driver
> 

...

> +static int nct7201_init_chip(struct nct7201_chip_info *chip)
> +{
> +	struct device *dev = regmap_get_device(chip->regmap);
> +	__le16 data = cpu_to_le16(GENMASK(chip->num_vin_channels - 1, 0));
> +	unsigned int value;
> +	int err;
> +
> +	err = regmap_write(chip->regmap, NCT7201_REG_CONFIGURATION,
> +			   NCT7201_BIT_CONFIGURATION_RESET);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to reset chip\n");
> +
> +	/*
> +	 * After about 25 msecs, the device should be ready and then the power-up
> +	 * bit will be set to 1. If not, wait for it.
> +	 */
> +	fsleep(25 * USEC_PER_MSEC);
> +
> +	err = regmap_read(chip->regmap, NCT7201_REG_BUSY_STATUS, &value);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to read busy status\n");
> +	if (!(value & NCT7201_BIT_PWR_UP))
> +		return dev_err_probe(dev, -EIO, "Failed to power up after reset\n");
> +
> +	/* Enable Channel */
> +	if (chip->num_vin_channels <= 8)
> +		err = regmap_write(chip->regmap, NCT7201_REG_CHANNEL_ENABLE,
> +				   GENMASK(chip->num_vin_channels - 1, 0));
> +	else
> +		err = regmap_bulk_write(chip->regmap, NCT7201_REG_CHANNEL_ENABLE,
> +					&data, sizeof(data));

Why does this use little-endian format for data but the later bulk_read of the
same register uses CPU-endian?

> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to enable channel\n");
> +
> +	err = regmap_bulk_read(chip->regmap, NCT7201_REG_CHANNEL_ENABLE,
> +			       &chip->vin_mask, sizeof(chip->vin_mask));
> +	if (err)
> +		return dev_err_probe(dev, err,
> +				     "Failed to read channel enable register\n");
> +
> +	/* Start monitoring if needed */
> +	err = regmap_set_bits(chip->regmap, NCT7201_REG_CONFIGURATION,
> +			      NCT7201_BIT_CONFIGURATION_START);
> +	if (err)
> +		return dev_err_probe(dev, err, "Failed to start monitoring\n");
> +
> +	return 0;
> +}
> +

