Return-Path: <devicetree+bounces-181874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA40AC9471
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66B6F165D93
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F8F022F768;
	Fri, 30 May 2025 17:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nN/2+aWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877D176034
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748625204; cv=none; b=no3X+inoGr5y1TxefEzngXtRya0QXOHU/Bvihcb8tt7Ig+D4ztjOxMsiFP96YVvTQOgQpztIbk8uiaEPDoxgN+jGQtjjt5+3WCmszDQkl2M7rKyWtmBEkKs8ont+F03cdp97zZjpAcrDFjOm3PrkpTCQSp6j/duvvuboc2BXRu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748625204; c=relaxed/simple;
	bh=JphQTvb3I10QtM736571WKwUkv4cf1iWTbPNd3rRn88=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n2nafntWyovTaXog1bmXmxo2TMrlqSJpns9RK2Pn5o34kJXeGzvd/5r/P2DhXYq6kFE2OS5mMhhw5Mc44U9+I1hiSoI0/CJLVjWJFhP07W4oMsH5OLx75Ox0609sZMmCsMiBKF5QqNPCugFmHlkswHoJ9ZCdo9oT6FcTOHA5th4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nN/2+aWN; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-6021e3daeabso1148816eaf.3
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748625200; x=1749230000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZL7m4q85jSj/za+Y9tnRe4NNGzdKPfTLBdq6Osao+v0=;
        b=nN/2+aWN20sISMQujl6VEylpjeYf9133z5MR5pjE9/820vk9PEuxkyFaA/yomG6AD3
         5L8JWxuatyLslT5WPGCkiNPNwSTVdcEeoaAlE71E+1OdHkSfz4hQwC704S+ifIHT2ZHV
         XFhvvzxdjOHjfO9JBs2T/dG9/ET0nsSEFdrqZvSdaAfqwHCl+9bEtx/16IL1o0v20u1D
         X1JQ3cRReKW2S/JNNji3zO4Io5ZYOrYms+Vjg3Ocd0/4nGDAk4bcuk/AVarVNyMWFj9y
         NfLt8HmZJ5iROWi+h/Jc5YrlkeHOyt9TyUg/FupR6ljbXABtOFaG4eFk5vfIzLuXMAIE
         e9fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748625200; x=1749230000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZL7m4q85jSj/za+Y9tnRe4NNGzdKPfTLBdq6Osao+v0=;
        b=rI4caFCUQrej4efj/KGMW15Z4PrOoszYvLNXWfNjfKyJasm89t+15Q02vROFw6CnTD
         /weqsJ98yF+jRyeunlYC9HLzq3FVwMUMmKy0zzI5u9jiX4oPLgIpb2KUPvIQdlfzzrBf
         9qgEjzdsPnpNX0/5+X8rpcs2yDrQ/f0w/PMJVssKKolwSKtixWobVE5AQnnvbjtQzCdF
         1Do5VYLPgeTsutTwZeZL+CqOosfi6faA6qX9CVTxDn1hMTd59bSbUt6tNgAxe8fVEJHX
         xxI2LlfuXO8xqx0Smo3eVTYAKoyHJJnZxDHa8bhoZdfGBhrAGs56YIrj808KkmI+MECm
         myuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUA8qxga7e64T6SlNs7du0emBqqLYCn8kR+0KiNP412uzRkqAm1xwTtgfZD6y53+UBuYTZYggrx+qhS@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+hu+SDklv5FHlKSLYd11a976xlv4+tXabdTq2XcT2rBRXL6gZ
	am1yuKhRVSfdSZkWS8MfqmtLcZwNsLA6hrEEsAvWCHu5jsSArs9jelvgmNqxmHuafhA=
X-Gm-Gg: ASbGnctouAARrvEzNfsSpY6MRRZSAEByQ5hK6Gs3RSMmo15yZ/HpG2DRJK/iEHRbczz
	Dxb8kPL92BveXak57N7OdQfTjCCLnSa2he125TA1fjEiFELvM0iGGmzeV0tUOdAdW0n8r1lKuID
	PoBzbKTSgTGRC2Kh+HtfDbxINjDF9qlfBr1s3QjqGSmW0Ci85AMHAk7ZYdLC+vwPtlnbNbgqyu/
	tAY3nUoOlgnWdpK5922GTk0/5SHWa1GEd5caBfQMarWng/KakwHnH/j6W03eYD3bWxUwJTfdldW
	RCzIlFm7NXGmXNHDiGk/tP5fnjoiHEll2gPHhKg/S2wJyGxy7B5DP75duSPA1f5Kd2sOpAdY3D3
	HFXd4JvvtxKfgynjkqj24S3RUjWC1
X-Google-Smtp-Source: AGHT+IF7W6PC+bFQuVbbZoJTqkb0DmlG3Whd0OGS2QBfP/HS2hvOFEnWN4sDjCl3GW7f1+nBzmvCMg==
X-Received: by 2002:a05:6820:2017:b0:60b:ca08:a73c with SMTP id 006d021491bc7-60c4d70d3b6mr2603070eaf.6.1748625200501;
        Fri, 30 May 2025 10:13:20 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:29cb:b1cd:c8f4:2777? ([2600:8803:e7e4:1d00:29cb:b1cd:c8f4:2777])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c42c16sm442474eaf.7.2025.05.30.10.13.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 10:13:20 -0700 (PDT)
Message-ID: <98ccc736-a44f-43a7-acff-ac5a4cc33023@baylibre.com>
Date: Fri, 30 May 2025 12:13:19 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 6/6] iio: adc: ad7606: add gain calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
 <20250526-wip-bl-ad7606-calibration-v7-6-b487022ce199@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250526-wip-bl-ad7606-calibration-v7-6-b487022ce199@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/26/25 5:03 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 
> Add gain calibration support, using resistor values set on devicetree,
> values to be set accordingly with ADC external RFilter, as explained in
> the ad7606c-16 datasheet, rev0, page 37.
> 
> Usage example in the fdt yaml documentation.
> 
> Tested-by: David Lechner <dlechner@baylibre.com>

Testing this with parallel interface today instead of SPI and found a bug.

> Reviewed-by: Nuno Sá <nuno.sa@analog.com>
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---

...

> +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +	unsigned int num_channels = st->chip_info->num_adc_channels;
> +	struct device *dev = st->dev;
> +	int ret;
> +
> +	device_for_each_child_node_scoped(dev, child) {
> +		u32 reg, r_gain;
> +
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return ret;
> +
> +		/* Chan reg is a 1-based index. */
> +		if (reg < 1 || reg > num_channels)
> +			return ret;
> +
> +		r_gain = 0;
> +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
> +					       &r_gain);
> +		if (r_gain > AD7606_CALIB_GAIN_MAX)
> +			return -EINVAL;
> +
> +		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
> +			DIV_ROUND_CLOSEST(r_gain, AD7606_CALIB_GAIN_STEP));

ad7606_chan_calib_gain_setup() is called before ad7606_reset() so any value
written here will be cleared by the reset.

Also, this is called before st->bops->iio_backend_config() so when using
the parallel bus, this causes a segfault.

The simplest thing to do is probably store the r_gain values and then
create a new function to write that data to the registers and call that
near the end of the probe() function.

> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +

