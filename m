Return-Path: <devicetree+bounces-166178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD08A86877
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 23:45:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22BD61B655C9
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0774298CD8;
	Fri, 11 Apr 2025 21:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Bto2CHuv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24444270ED8
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 21:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744407902; cv=none; b=KdW4UQaU5c+QKibrqQamibvtqqRT8sCwEjPv3kYKPJ9DzB3m9/EhsiKOOAgtLMs7C5xvsvov11oKh0tQldMkipseuf49D2PwaLxEo+VBssyKNmSidOHQOKxxRIcUyYPN8S8/IBt7TTe3oIjph4tRzz4oRllHA3ei3rY9R36mfQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744407902; c=relaxed/simple;
	bh=JhEtLQYxJUYf6hS4yrM6mRaFZC5s56CpaPGv53UDIbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fuV6s4fUuinmM05C0uRQs46xAUMp8FDcQ1qI6YGwxOoBFUOEO6V23+4StEjzI5PzACe/8yEpAj7smdy8GF3ZR9Ru///FQcQvcHjoOUlDF5Rls/DXVky5OfQpLOhctn/YdGjyIJAQ7Fv6UXx88SxsOmj7oo28P1lKbyHWAGMOXtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Bto2CHuv; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-603fd257386so594871eaf.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744407898; x=1745012698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5qxKGBsMkMzJ2BNc5R5UbHVjtuUaRbTsxJED20d0p+M=;
        b=Bto2CHuvKd0fx2uKL1m5U1rT9d+ppNeZpZnnvrVgxo1Cxx5TpoTWxstoo3z/WDgRYm
         PRAq5qlhA3vLQDmK0zu3F4cz4LrcyvhicHjd4VLWeb0r9/nBHDzTerJH919aAQGgvfTn
         PugZh8FHrb9rY9vcRGCPmDO/O54FvY6P6yxij6pfdTMQv5k8C00Hpg8VVCA2YdyWNnPi
         13AveBl3pXGtd01jb8fST5eIZpnIskcqrilnxZBOHjCEa9/yg8IEviHZAQk/K90jPHl9
         e5E5EQJIE/han4nrocNdfO7j/QTHKEh9nX5JvWI5ibrCuCZ6+3pgals5xscdFC0Am2GD
         7DDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744407898; x=1745012698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5qxKGBsMkMzJ2BNc5R5UbHVjtuUaRbTsxJED20d0p+M=;
        b=F+r0XbOYjGosYjnqOSSfIHKPL76u1ucL+uL7hyqBa9NiMFcJP/bhUve0m0r2Pb87rC
         8bmwJ6i0mxnKvj1fuwBrfxfvE03t/CZ273+UAHgVk4KTVBAaQtzSMuAIg/rSBfTFTOFh
         vYONheKvd0T0/2k7Thsgc322UI9BTfzjrLgdqj8guTVYptgwP0SSTnBBctKvucEx6nMK
         HYQHQ++v5o/HinkDtac02rNjgnR7hRAnqdy5y6er0mUsjri4GfXyEfzLh97H+1AMHazg
         M9WdAA8mDGUpT8PxISM7DRgNHjI1KDNeDXETZPyho7X5x9v7+rQkoknGxUA2pO10L5xX
         TzDg==
X-Forwarded-Encrypted: i=1; AJvYcCUy2c1xXaJSKuStUApnOiSCtcLX1d+kMwarYCV1coaUmOV1Vnll434+S2inws++CwmJD+GYECmeNXav@vger.kernel.org
X-Gm-Message-State: AOJu0YwFJkfddEujeV5t9Pu9KWiIqOeXg/yWydtLx2J+UbhviJwbul9v
	KOB8GAAy7IWDLTT/mI1qAeKJeNCUnUs17mzn/nAuv141AuN/ekfVKbDdo11FTUw=
X-Gm-Gg: ASbGncvsQBOLpAtwniqZ/rMXYyiXe1UAo2gEVxfqLm0ofcskIV9BZSU4/933ith2N9B
	Zv+RNa/QgPEwFItbfnYESU02DQ0bzN1D0YCyOxbsnE0TT+xHUULJJBjIYxMoq5gohTC1t/C6gVS
	CjiyGuNX3gWrBCMoakAY4eow8rmKoZbc6RH+ldyy8MVUuCBVupLHzU5D/Cxd3NQ5zktq6DJgGzR
	G/KY4wrpu2sWqEYMl/NLii1KCCDSJkBCiBlysvo0vK22nee3bum+/M8AatOU2xeLyG5obPMMslF
	qXtlfmW0H1GMkbWhMNsgN0m6Cp1wra7ZlY+LvRkoIzlWvhPoqjwKR5p5V+w8XzOnXqGI87G1PQP
	kxQ==
X-Google-Smtp-Source: AGHT+IHXy3+92TRvDVV1gjmxCyi/zce38/vLVqmGl0gMcBYh4Q0YmYalGIFle2vzEHSzGH1qCGI38A==
X-Received: by 2002:a05:6820:1514:b0:604:117:1a5d with SMTP id 006d021491bc7-6046f5c8a59mr2387896eaf.7.1744407898203;
        Fri, 11 Apr 2025 14:44:58 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6045f5b28dfsm1015069eaf.37.2025.04.11.14.44.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 14:44:56 -0700 (PDT)
Message-ID: <bbdbf4ff-662e-459b-a31f-bc58e738a51f@baylibre.com>
Date: Fri, 11 Apr 2025 16:44:55 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 08/14] iio: adc: ad7768-1: add regulator to control VCM
 output
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com
References: <cover.1744325346.git.Jonathan.Santos@analog.com>
 <7753dcd690f07f855100fc28e7b8ae746082de1c.1744325346.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <7753dcd690f07f855100fc28e7b8ae746082de1c.1744325346.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/11/25 10:57 AM, Jonathan Santos wrote:
> The VCM output voltage can be used as a common-mode voltage within the
> amplifier preconditioning circuits external to the AD7768-1.
> 
> This change allows the user to configure VCM output using the regulator
> framework.
> 
> Acked-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

...

> +static int ad7768_vcm_is_enabled(struct regulator_dev *rdev)
> +{
> +	struct iio_dev *indio_dev = rdev_get_drvdata(rdev);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	int ret, val;
> +
> +	if (!indio_dev)
> +		return -EINVAL;
> +
> +	if (!iio_device_claim_direct(indio_dev))
> +		return -EBUSY;
> +
> +	ret = regmap_read(st->regmap, AD7768_REG_ANALOG2, &val);

If we put iio_device_release_direct(indio_dev); here, we can avoid
the goto.

> +	if (ret)
> +		goto err_release;
> +
> +	ret = FIELD_GET(AD7768_REG_ANALOG2_VCM_MSK, val) != AD7768_VCM_OFF;
> +err_release:
> +	iio_device_release_direct(indio_dev);
> +
> +	return ret;
> +}
> +
> +static int ad7768_set_voltage_sel(struct regulator_dev *rdev,
> +				  unsigned int selector)
> +{
> +	unsigned int regval = AD7768_REG_ANALOG2_VCM(selector + 1);
> +	struct iio_dev *indio_dev = rdev_get_drvdata(rdev);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	if (!indio_dev)
> +		return -EINVAL;
> +
> +	if (!iio_device_claim_direct(indio_dev))
> +		return -EBUSY;
> +
> +	ret = regmap_update_bits(st->regmap, AD7768_REG_ANALOG2,
> +				 AD7768_REG_ANALOG2_VCM_MSK, regval);
> +	iio_device_release_direct(indio_dev);
> +	st->vcm_output_sel = selector;

Do we still want to make this assignment if there is an error?

> +
> +	return ret;
> +}
> +
> +static int ad7768_get_voltage_sel(struct regulator_dev *rdev)
> +{
> +	struct iio_dev *indio_dev = rdev_get_drvdata(rdev);
> +	struct ad7768_state *st = iio_priv(indio_dev);
> +	int ret, val;
> +
> +	if (!indio_dev)
> +		return -EINVAL;
> +
> +	if (!iio_device_claim_direct(indio_dev))
> +		return -EBUSY;
> +
> +	ret = regmap_read(st->regmap, AD7768_REG_ANALOG2, &val);
> +	if (ret)
> +		goto err_release;

Can rearrange to avoid goto here too.

> +
> +	val = FIELD_GET(AD7768_REG_ANALOG2_VCM_MSK, val);
> +	ret = clamp(val, 1, (int)rdev->desc->n_voltages) - 1;
> +err_release:
> +	iio_device_release_direct(indio_dev);
> +
> +	return ret;
> +}
> +

...

> +static int ad7768_register_regulators(struct device *dev, struct ad7768_state *st,
> +				      struct iio_dev *indio_dev)
> +{
> +	struct regulator_config config = {
> +		.dev = dev,
> +		.driver_data = indio_dev,
> +	};
> +	int ret;
> +
> +	/* Disable the regulator before registering it */
> +	ret = regmap_update_bits(st->regmap, AD7768_REG_ANALOG2,
> +				 AD7768_REG_ANALOG2_VCM_MSK, AD7768_VCM_OFF);
> +	if (ret)
> +		return -EINVAL;

Why not return ret; ?

> +
> +	st->vcm_rdev = devm_regulator_register(dev, &vcm_desc, &config);
> +	if (IS_ERR(st->vcm_rdev))
> +		return dev_err_probe(dev, PTR_ERR(st->vcm_rdev),
> +				     "failed to register VCM regulator\n");
> +
> +	return 0;
> +}
> +

