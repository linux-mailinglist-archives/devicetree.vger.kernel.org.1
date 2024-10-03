Return-Path: <devicetree+bounces-107574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EC498F0A8
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 15:41:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B1ACB2350D
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 13:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70E3519CC3A;
	Thu,  3 Oct 2024 13:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XBl0p+c1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AB74C70
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 13:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727962801; cv=none; b=uVhg0wwR4H+Em9OMrUEMU2UAIuUTh+yELG4M+ONGpODkJ+Pp5WsinfWYloyM4fX6xMoV2c6fuoN81XejtltOTn+3w/PltZGItfuv3Hpw0qxuKnNJVWkLlpK+FaJ8QK2REvA4Eq7MWhaVc4wVEIUykAGfLuxgYPKLgCs4qTcjnrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727962801; c=relaxed/simple;
	bh=ImQWi8bDG3NrV5BoM1m0/vC7/PTgqm0dE4tVrwGjJe8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MLf4BEblrkr4c9n2QL3KsVzHmjAkElB0P9nWBXA5aCxQgHOY40PbGYMHnKX8A8A9S3wykEjFzzrxtulj8gyT3VL/MUbBfWMuDoFD/HHz83/ThgqGZ8/7LMjIjMXYw8W7FHkGbhuIryq3p4HOih6eW6vuUfWIlRUK5ms2SlfF4Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XBl0p+c1; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-286f304f504so480440fac.1
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 06:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727962798; x=1728567598; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g3eGOVQW6LyZhzgIoNdSlaLLYNUqeTgHsLVhuM5ZBgE=;
        b=XBl0p+c1V3VLrNQqgJ/hH2874gSiYUY4Kt3crlLrvW4PCwKtz6WILu+d0Nbon29DwR
         BHpNgTwt6VQzYJ5pkd3wXtpbNw5NApfOCETJYjKMqWOOGRv5PP4Y6QRs9/iO1tzTBp/e
         q/7GN1Yvr0SLn3DefpBusjoKsga7sodoa8qDNq0Q2tDhA1RzYA+ypS70Uo4ZmWIuU/UU
         XR7xZEhCLe0qOC06Lw8jw9VL1We1u5YR5tTXMqEy9Lx9yXmUXGh9z5ECIRzJB1qTAW4N
         K8jwWNrTUf1NXTJA2lhLEzf1IX2MPRtM7Db/ac+1G+obiVZ+ayCGCFgL7yYXEMS5b4nK
         pvqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727962798; x=1728567598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g3eGOVQW6LyZhzgIoNdSlaLLYNUqeTgHsLVhuM5ZBgE=;
        b=gZ6xoCbWZDDRdXBxPovxjeD1qSfU2aK1L5vmj/RUlLmWlZ5r+fKrDgWOszPugl/09G
         bpplVlfd18fvJhEkbtQ4KeLGPQ1Jfx4LiDByDWWJS3eTo+QBJVQ9ScPxhLFDvW2IY2t3
         WdFDybZC1Ot2O/ZeelEHacDNlQ42IgKndxGv6RoMWyQ7tzGdHroJeIwqAZr5ZkNuD7hR
         aGDfxx4fP+x+i9REnGJ7KUYnVSARy8IGYexegDhCm3DYRsqG80T8pcgYoD5GlzBu483A
         IMTwGcZCotR342Cpd/EmxE0gyOGP2rLsyYJY+KBV92EHhQuWp7+osFbtW5D6UcUb8j89
         ByUA==
X-Forwarded-Encrypted: i=1; AJvYcCXJSrpJ48YJUKbcbGrdiDqcpdGkc7MR0noWsTaP0npwU0ssi+vthXk7vnPbzZ1Wkm7pMSxeBjxUWatw@vger.kernel.org
X-Gm-Message-State: AOJu0YwYMA0petgqcLilQNirQrHl20TeYgOiw8NtFPhOi/h/U/oK0/IF
	i1Ji9UGJEYT9KA5qx4Y3zIpMi+YuS11IflzplAax5bmDhnAwGnv5kxPdBIqLSIcqyl1ToJcJbZV
	7
X-Google-Smtp-Source: AGHT+IGZuvs26FhH3bjDKJGfAMoutPN5LFT9w/usT9UzEvNftVGxVwVPZ4OarD2He65+ZwQwDEu6Wg==
X-Received: by 2002:a05:6870:7182:b0:268:282b:bdec with SMTP id 586e51a60fabf-287a3e35caamr1589871fac.8.1727962797866;
        Thu, 03 Oct 2024 06:39:57 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-287abbc6f53sm445891fac.36.2024.10.03.06.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 06:39:56 -0700 (PDT)
Message-ID: <cdc27a53-281d-41d7-a9b5-196f2650c468@baylibre.com>
Date: Thu, 3 Oct 2024 08:39:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] iio: adc: Add support for the GE HealthCare PMC
 ADC
To: Herve Codina <herve.codina@bootlin.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Ian Ray <ian.ray@gehealthcare.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20241003114641.672086-1-herve.codina@bootlin.com>
 <20241003114641.672086-4-herve.codina@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241003114641.672086-4-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/3/24 6:46 AM, Herve Codina wrote:
> The GE HealthCare PMC Analog to Digital Converter (ADC) is a 16-Channel
> (voltage and current), 16-Bit ADC with an I2C Interface.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---

...


> +
> +static int pmc_adc_probe(struct i2c_client *client)
> +{
> +	struct iio_dev *indio_dev;
> +	struct pmc_adc *pmc_adc;
> +	struct clk *clk;
> +	s32 val;
> +	int ret;
> +
> +	ret = devm_regulator_bulk_get_enable(&client->dev, ARRAY_SIZE(pmc_adc_regulator_names),
> +					     pmc_adc_regulator_names);
> +	if (ret)
> +		return dev_err_probe(&client->dev, ret, "Failed to get regulators\n");
> +
> +	clk = devm_clk_get_optional_enabled(&client->dev, "osc");
> +	if (IS_ERR(clk))
> +		return dev_err_probe(&client->dev, PTR_ERR(clk), "Failed to get osc clock\n");
> +
> +	indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*pmc_adc));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	pmc_adc = iio_priv(indio_dev);
> +	pmc_adc->client = client;
> +
> +	val = i2c_smbus_read_byte_data(pmc_adc->client, PMC_ADC_CMD_REQUEST_PROTOCOL_VERSION);
> +	if (val < 0)
> +		return dev_err_probe(&client->dev, val, "Failed to get protocol version\n");
> +
> +	if (val != 0x01)
> +		return dev_err_probe(&client->dev, -EINVAL,
> +				     "Unsupported protocol version 0x%02x\n", val);
> +
> +	indio_dev->name = "pmc_adc";
> +	indio_dev->info = &pmc_adc_info;
> +	indio_dev->channels = pmc_adc_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(pmc_adc_channels);

I don't think the core code actually checks this, but for
correctness we should add:

	indio_dev->modes = INDIO_DIRECT_MODE;

> +
> +	return devm_iio_device_register(&client->dev, indio_dev);
> +}
> +

With that...

Reviewed-by: David Lechner <dlechner@baylibre.com>


