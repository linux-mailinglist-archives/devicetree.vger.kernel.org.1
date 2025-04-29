Return-Path: <devicetree+bounces-172123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A84BAA3BB6
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 00:46:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BACE21B6427A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 22:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C58C268C73;
	Tue, 29 Apr 2025 22:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AuQ9wj33"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B8724BBE4
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 22:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745966803; cv=none; b=a6abo0YnH1A7vkaLIWhRrWVVw1WxClqtTiOCh2VKfW9vKIBaAtrVZG49Ba5I/IE+bclSqiRfT9CQoef5DdTS9RCz3w4n1K9OB4IxHg7hISKApSk2rC/cYViLXa3HY/JTXE6P6icJTzffhz5d/ffTBSBcAe5zaLd8YFMJ5ID6+WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745966803; c=relaxed/simple;
	bh=EMiJ/dxywsGmUp0dA3BYacymFWhlXTOhMsOz3prXtgg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pL1HhhoSm/x0wtBXGH8yj1ArxfYBzBKX4EkmpDGVB+ofMITxpdm5PklS1OtQZsdOt+THYGXn9DhyMrxAfB3AyjQHMaMHVUqRdz0V6Wwn70SiPipLIFoVsOYRQCZ6v00U+BPks4izem22kx6DEI8wMzZJ5lAojkqXXtxm0HVqu40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AuQ9wj33; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2c769da02b0so5585711fac.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 15:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745966800; x=1746571600; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jxON1Bozl2aLfPwU6gx/eCpiRYdqSVgYx9l/nuultOg=;
        b=AuQ9wj33uSjqv4M4NUuMU2lNLo4gB7+jmR45JJ3q9dvQHotvW65bXv0A7dUurIwmVe
         5DVi/ZE7cyeuvC9sLHRma+6Q1dP3mSekSHFbfJXyEeR5nPbuVZc59yOOXPygqIvAQd2u
         db597FD1uyN7GwPJKhxSsvB/TIs/Bzw6lv3ybrezl71VDc34YBBUS9V7RtjxW2tA3hmc
         2j3xUCkvI4g2DtXQtjh0CyZ5n+NxNFyfZWk90jE+aUR3tiTLvGshp2bswhiYAZ57i/+j
         4+BKlodSLdVgxwCMHduwbLnwFaSzejt0OGx3/7uItJeSRwpZ/ATCorrsI+xXRYv7EC3z
         EcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745966800; x=1746571600;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jxON1Bozl2aLfPwU6gx/eCpiRYdqSVgYx9l/nuultOg=;
        b=Te0nUMScNFq0VUqSAtYEm3BwCZboQ3JZTYnjsuQX9HHDXERAAQTPdU7ZHS1CHTDfOd
         U74L7xagd6iVOrp38uhacVj6Mxhcd+Ao9pmN8RoE+4DX9/EQinnbX+ZhIq+xfRFQeUUC
         U7NeaG774rL9MvMB+oYXRzxfnjXJdll3dY55n3a+MRca1c5SOAAJ60V6zjaXO455w1Xo
         Q/unbhGAsvYlyKDrr/VQIRbsXPxzPw9E5CkC5FbToCcxkE2NCVsl1i9njtjP7/5doURf
         gWurw5HDzRX71cQF43NUBDsEkYNXkUKUwO8osfU7mS0Wu2wCF8BTozL1LRnxyBhGBav7
         Htfw==
X-Forwarded-Encrypted: i=1; AJvYcCVUmEoFLu7pC43TdOQTCgJVmQ7x+qPJY5w//QcDfuptATGTa1JthnNpKb87fW3IUN8esEQUTWC92Wuh@vger.kernel.org
X-Gm-Message-State: AOJu0YyPFRbuLPRo3q/hfOAhXEqAN1Lgd3m33LR5ntAKPP1NIIFwJLKS
	whlqV5gjOMbhmzbUZnUkn91OXp2tCcfe2OScjGxoj1ODAlXLPV1pFd68/ywpU+k=
X-Gm-Gg: ASbGncvFg0g2g2ukCDcd/EQ68VeW4Qf+Wa835vqgKj0BO37Tx/C0Bd2wIob8MjDCYPc
	1MQr3OafWFroHcCXngxEXYbGiADD7pZ1yAYotqSU5nWqA++//odvdvgSJETtKH7aQ4xXI3NidxJ
	tEZ9/nuR25OSXmDxNves7WN1/lONAB0tKiEyfTAOn0ryVpKbF/sd3BISUG3UFEf23ZCKHYBQps6
	Ey+SaUX5mc5A0FqmGjnL+pG8hL9xOebPqzWni+PZSd8KMT5Gqoq1t8cxQGPWYPykV29QPgMckwZ
	leNO7HcjtvXwdmSMAc+KBFt+MMIW2I9mpIiRGVSiQyNx5a3oxvgJIKALhrFrhc1HOBcjDAapuDE
	3hNutnBQ/y+m97Ff+jg==
X-Google-Smtp-Source: AGHT+IFuVVoGKVmn1rmBPbb+UXnQybHQ7N3kb98326v2W/tSAiNfoTR5IXLxMEWxRISYzAB0Cl37eQ==
X-Received: by 2002:a05:6870:1c9:b0:29e:4ba5:4ddc with SMTP id 586e51a60fabf-2da6a345f37mr457236fac.24.1745966799750;
        Tue, 29 Apr 2025 15:46:39 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6? ([2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2da6e5934dfsm54103fac.45.2025.04.29.15.46.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 15:46:39 -0700 (PDT)
Message-ID: <0677db3c-9c36-4f34-93c0-5c53d702c4bd@baylibre.com>
Date: Tue, 29 Apr 2025 17:46:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] iio: adc: ad7606: add gain calibration support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
 <20250429-wip-bl-ad7606-calibration-v1-5-eb4d4821b172@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250429-wip-bl-ad7606-calibration-v1-5-eb4d4821b172@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/29/25 8:06 AM, Angelo Dureghello wrote:
> From: Angelo Dureghello <adureghello@baylibre.com>
> 

...

> +static int ad7606_chan_calib_gain_setup(struct iio_dev *indio_dev,
> +					struct iio_chan_spec *chan)
> +{
> +	struct ad7606_state *st = iio_priv(indio_dev);
> +	unsigned int num_channels = st->chip_info->num_adc_channels;
> +	struct device *dev = st->dev;
> +	int ret;
> +
> +	device_for_each_child_node_scoped(dev, child) {
> +		int reg, r_gain;
> +
> +		ret = fwnode_property_read_u32(child, "reg", &reg);
> +		if (ret)
> +			return ret;
> +
> +		/* channel number (here) is from 1 to num_channels */
> +		if (reg < 1 || reg > num_channels) {
> +			dev_warn(dev, "invalid ch number (ignoring): %d\n", reg);
> +			continue;
> +		}
> +
> +		ret = fwnode_property_read_u32(child, "adi,rfilter-ohms",
> +					       &r_gain);

Instead of...

> +		if (ret)
> +			return ret;

... we need:

		if (ret == -EINVAL)
			r_gain = 0;
		else if (ret)
			return ret;

Otherwise driver fails to probe if adi,rfilter-ohms is missing.

> +
> +		if (r_gain < AD7606_CALIB_GAIN_MIN ||
> +		    r_gain > AD7606_CALIB_GAIN_MAX)
> +			return -EINVAL;
> +

Also, return dev_err_probe() on the returns above would have made debugging
easier.

> +		/* Chan reg is 1-based index. */
> +		ret = st->bops->reg_write(st, AD7606_CALIB_GAIN(reg - 1),
> +					  r_gain / AD7606_CALIB_GAIN_STEP);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +

