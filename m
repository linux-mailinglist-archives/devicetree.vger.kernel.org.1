Return-Path: <devicetree+bounces-260941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNSyBjyNe2nnFwIAu9opvQ
	(envelope-from <devicetree+bounces-260941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:39:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6A3B24A1
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:39:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25B603008D3E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2444B316904;
	Thu, 29 Jan 2026 16:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yFw5h4ql"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C3B428934F
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 16:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769704761; cv=none; b=gPvr8cQaQdq7uiTCV6nd5k1v8qXNeDFBJpfR+yQqEvOCicUMP/g/2o4XKiSVwybm7apSOQEebyxe0BPUavGjacqeYyEw8TyztdTEwtGOcBW7vA1nWiN/7+g9Y4sp4N3PtiIi/TEsz6Gx7UYgLv5Tj+475zOlFy0jSok7l2a7PxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769704761; c=relaxed/simple;
	bh=rbRL4Edrc7zizbHI5AYLxT5kKdGzTDHBU67MLf7yos4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=KZ9h9c1TPqslXokMPWACEFH6KRSXVETYHSTWg+eWScRTKAx0wqMrAIRg4Ed8hv8bcEOJSISy7H3cDbiuHGLS6hkpHwJgdFtoeCqZyXH0PNvCMGvDUnkMemT5nLJcrDlNkCpCITacmv9RUyi4XAFWamRtjbiGjEnp+npLL3ZVyZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yFw5h4ql; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-45eabce608dso846237b6e.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 08:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769704757; x=1770309557; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h+MtO/a7hGYDkcIcwRBj6WWrsou7vps2yYW0Fk+bD78=;
        b=yFw5h4ql4F+kOuo362W+Zc2x/FreInqdq0cYGPfPuY5d/DEvNqohHCXF5WX5/0bTyT
         Tvwt4jvWvg3gXZO7eaeyDl736/eyU/cYrNsLp8RQBqxsOO96b9TcQ8MjiZLMz/2FC1eh
         RlHjlPinNp65IZcrELrLox7ANl8tNkvrfHPtYjnlihrFG36PJofxV7ss27r23Xul/Vtg
         RpbDNNsv/m0o/HpLgwZpA2OQb3UBuML1wNRC1+Xrmsk4mNhaY7LazNdNbRcPIOCsQeWF
         hzQ2q66ZXxweBOZcLEscxC3n+0NHb22eprXx+xYfOWTg+QrO4izNcFYytNepJyNxkLXE
         jxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769704757; x=1770309557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h+MtO/a7hGYDkcIcwRBj6WWrsou7vps2yYW0Fk+bD78=;
        b=ts2F3XMng4x7Q+7EkaqMxw4C0UTeLiQnDEQfv885iVxcaBVWv9fK/rkc9ctTzsdPfR
         CSLrP4scUXgtJYn8ZCELhk22G9viaEmFvmmpmFasMalSFIfBDkLW/H4vyLR5hln0jjOh
         Pki4GjayKTzJu9m6UqmNpk+933SL1BInpI90ojk3AW9xq+l0jXJ0HUzuj8DcDBcKhOJo
         v8bHxul0UVz9MA6UxFTtXXTMPPhEsirXH1rey7kAE9rjx0cq4s2vF+IbY6XhABn9c5Gf
         dKifqmZLlTaNzSJ13/7AomI4R3Z7whP1BoAcjNvJl43Ms4hSFCv9WEk5mX8g7NLBjHto
         ztVg==
X-Forwarded-Encrypted: i=1; AJvYcCUCwS0uNF1k2pNO7ExMNUfz8Tp7rLLXMjTqjHGZgOtEYmwAFzVqvPML9tZ+2lSz1mVEsj78u7gOMftT@vger.kernel.org
X-Gm-Message-State: AOJu0YweBI1D5+pXmy/Te07sq/1nLxT26+Z4wuzCNLDKtJ15lClmkDNV
	E5v6zw5FStvg0pYGR7+Y7RLtnKng5sS5WoKJBEVTFzj/JWd8D0D8FGop2+uHQYHwNQc=
X-Gm-Gg: AZuq6aKXfP0mYsYAmkIld9E71TwikDazc0cjwNk92ZHkqVbduqtA9uRfAhB9DJ2IlOn
	B7clsRTBAb5x4yPfMp7BdZbYxaCB0N4Hc3RsoUQREG5BKq2PTo0sm5PsUilv+8sk40kWuQSsGZR
	xy8riSfCtf/726b2at3SNd4i8qnFh4YHqAgRPjdiT86Y+8VuiHexmB7lapzxQP87iP2PXbg1syp
	d7Th2sL1LrcsW6n7WuMB0/K5/BPWm476PPZVUotOOsjonm7jNNHVi4EUPRBKzidlwgZSGxCr/vn
	3U80bTWAxrQn1k0zfyeMPSV9nS01ng/z8sSHEt2dxbuvSwgsqGW3BznOO/stvl86SwU3ZP/POP3
	9WUKUlnPi1FYq9SM0KUyrTNaETKyrkiiq64O8nXGMpl7LkF9GlQpHB2QMw7/T6s7L2OjWKA8lUP
	wBadhWRfLi3pgRBO2EcaEQRrn17NuSB9eUsWhB9QzAE9Xn1SmxxwZSGji1PR50UB5tt4oCR5U=
X-Received: by 2002:a05:6808:3020:b0:45a:6cf0:68c1 with SMTP id 5614622812f47-45f34d26f75mr86743b6e.58.1769704757347;
        Thu, 29 Jan 2026 08:39:17 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:eca6:912e:45a4:4837? ([2600:8803:e7e4:500:eca6:912e:45a4:4837])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45f18d5ee3bsm1977744b6e.7.2026.01.29.08.39.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 08:39:16 -0800 (PST)
Message-ID: <68855a28-02f9-4241-ad1c-d523a9e55928@baylibre.com>
Date: Thu, 29 Jan 2026 10:39:16 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: ad4080: add support for AD4880 dual-channel
 ADC
To: Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260129152731.154368-1-antoniu.miclaus@analog.com>
 <20260129152731.154368-3-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260129152731.154368-3-antoniu.miclaus@analog.com>
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
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-260941-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 6A6A3B24A1
X-Rspamd-Action: no action

On 1/29/26 9:27 AM, Antoniu Miclaus wrote:
> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC with
> integrated fully differential amplifiers (FDA).
> 
> The AD4880 has two independent ADC channels, each with its own SPI
> configuration interface. The driver uses spi_new_ancillary_device() to
> create an additional SPI device for the second channel, allowing both
> channels to share the same SPI bus with different chip selects.
> 

...

> +static int ad4080_update_scan_mode(struct iio_dev *indio_dev,
> +				   const unsigned long *scan_mask)
> +{
> +	struct ad4080_state *st = iio_priv(indio_dev);
> +	unsigned int ch;
> +	int ret;
> +
> +	for (ch = 0; ch < st->info->num_channels; ch++) {
> +		/*
> +		 * Each backend has a single channel (channel 0 from the
> +		 * backend's perspective), so always use channel index 0.
> +		 */
> +		if (test_bit(ch, scan_mask))
> +			ret = iio_backend_chan_enable(st->back[ch], 0);
> +		else
> +			ret = iio_backend_chan_disable(st->back[ch], 0);
> +		if (ret)
> +			return ret;

Previously, the single-channel chips didn't call backend channel 
enable/disable. It this going to cause problems for that? I.e. the
function isn't implemented in the backend?

> +	}
> +
> +	return 0;
> +}
> +
>  static const struct iio_info ad4080_iio_info = {
>  	.debugfs_reg_access = ad4080_reg_access,
>  	.read_raw = ad4080_read_raw,
>  	.write_raw = ad4080_write_raw,
>  	.read_avail = ad4080_read_avail,
> +	.update_scan_mode = ad4080_update_scan_mode,
>  };
>  
>  static const struct iio_enum ad4080_filter_type_enum = {
> @@ -414,23 +451,23 @@ static const struct iio_enum ad4080_filter_type_enum = {
>  };
>  
>  static struct iio_chan_spec_ext_info ad4080_ext_info[] = {
> -	IIO_ENUM("filter_type", IIO_SHARED_BY_ALL, &ad4080_filter_type_enum),
> -	IIO_ENUM_AVAILABLE("filter_type", IIO_SHARED_BY_ALL,
> +	IIO_ENUM("filter_type", IIO_SEPARATE, &ad4080_filter_type_enum),
> +	IIO_ENUM_AVAILABLE("filter_type", IIO_SEPARATE,
>  			   &ad4080_filter_type_enum),

This is a breaking ABI change, so could be problamatic. We probably need to
keep the old info[] for the single channle chips and make a new info[] for
the multi-channels chips to avoid breaking things.

>  	{ }
>  };
>  

...

> @@ -617,13 +694,35 @@ static int ad4080_probe(struct spi_device *spi)
>  		return dev_err_probe(dev, ret,
>  				     "failed to get and enable supplies\n");
>  
> -	st->regmap = devm_regmap_init_spi(spi, &ad4080_regmap_config);
> -	if (IS_ERR(st->regmap))
> -		return PTR_ERR(st->regmap);
> +	/* Setup primary SPI device (channel 0) */
> +	st->spi[0] = spi;
> +	st->regmap[0] = devm_regmap_init_spi(spi, &ad4080_regmap_config);
> +	if (IS_ERR(st->regmap[0]))
> +		return PTR_ERR(st->regmap[0]);
>  
> -	st->info = spi_get_device_match_data(spi);
> -	if (!st->info)
> -		return -ENODEV;
> +	/* Setup ancillary SPI device for additional channel (AD4880) */
> +	if (st->info->num_channels > 1) {
> +		u32 aux_cs;
> +
> +		ret = device_property_read_u32(dev, "adi,aux-spi-cs", &aux_cs);

As in the DT bindings comment, this sould be looking up the value at index 1
of the reg property rather than a custom property.

> +		if (ret)
> +			return dev_err_probe(dev, ret,
> +					     "missing adi,aux-spi-cs for multi-channel device\n");
> +
> +		st->spi[1] = spi_new_ancillary_device(spi, aux_cs);
> +		if (IS_ERR(st->spi[1]))
> +			return PTR_ERR(st->spi[1]);
> +
> +		ret = devm_add_action_or_reset(dev, ad4080_unregister_ancillary,
> +					       st->spi[1]);
> +		if (ret)
> +			return ret;
> +
> +		st->regmap[1] = devm_regmap_init_spi(st->spi[1],
> +						     &ad4080_regmap_config);
> +		if (IS_ERR(st->regmap[1]))
> +			return PTR_ERR(st->regmap[1]);
> +	}
>  
>  	ret = devm_mutex_init(dev, &st->lock);
>  	if (ret)
> @@ -644,15 +743,22 @@ static int ad4080_probe(struct spi_device *spi)
>  
>  	st->clk_rate = clk_get_rate(clk);
>  
> -	st->back = devm_iio_backend_get(dev, NULL);
> -	if (IS_ERR(st->back))
> -		return PTR_ERR(st->back);
> +	/* Get backends for all channels */
> +	for (ch = 0; ch < st->info->num_channels; ch++) {
> +		if (st->info->num_channels > 1)
> +			st->back[ch] = devm_iio_backend_get(dev, backend_names[ch]);

It looks like we missed io-backend-names from the DT bindings. In this case
though, going by index instead of name would make more sense. So we could add
a devm_iio_backend_get_by_index() function instead of modifying the DT bindings.
Then we wouldn't need the if statement here.

> +		else
> +			st->back[ch] = devm_iio_backend_get(dev, NULL);
>  
> -	ret = devm_iio_backend_request_buffer(dev, st->back, indio_dev);
> -	if (ret)
> -		return ret;
> +		if (IS_ERR(st->back[ch]))
> +			return PTR_ERR(st->back[ch]);
> +
> +		ret = devm_iio_backend_enable(dev, st->back[ch]);
> +		if (ret)
> +			return ret;
> +	}
>  
> -	ret = devm_iio_backend_enable(dev, st->back);
> +	ret = devm_iio_backend_request_buffer(dev, st->back[0], indio_dev);

If this is correct, it could use a comment explaining why only one
backend has the buffer even if there are two backends.

>  	if (ret)
>  		return ret;
>  
> @@ -670,6 +776,7 @@ static const struct spi_device_id ad4080_id[] = {
>  	{ "ad4084", (kernel_ulong_t)&ad4084_chip_info },
>  	{ "ad4086", (kernel_ulong_t)&ad4086_chip_info },
>  	{ "ad4087", (kernel_ulong_t)&ad4087_chip_info },
> +	{ "ad4880", (kernel_ulong_t)&ad4880_chip_info },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(spi, ad4080_id);
> @@ -681,6 +788,7 @@ static const struct of_device_id ad4080_of_match[] = {
>  	{ .compatible = "adi,ad4084", &ad4084_chip_info },
>  	{ .compatible = "adi,ad4086", &ad4086_chip_info },
>  	{ .compatible = "adi,ad4087", &ad4087_chip_info },
> +	{ .compatible = "adi,ad4880", &ad4880_chip_info },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, ad4080_of_match);


