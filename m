Return-Path: <devicetree+bounces-173583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 211F0AA8EA4
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 10:56:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2F80188F3B2
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 08:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C29D61EDA33;
	Mon,  5 May 2025 08:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IKH0kldk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5109376
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 08:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746435401; cv=none; b=kOt6YaZMzoipDe7rZnFw8MmFeRZ28H7Tk2iDb9vewgXrQzHaF83HW60Al7M/+b1yopOY/DvOO4G0XfdA5dPB5BjL2HW8VuW5Hl0SjqL4xPZ/y8YMl3N8naeKWg20LSduc+QLg6r+qA57L+hpNa4CnEjbE1H23FYA/ot50xYDDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746435401; c=relaxed/simple;
	bh=SmMCH697xC8Jvds5eQIi5w8fCsVUUCW9mlghMxxm3kg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pcyv3Gwc0fqKKxRRo0gpM252HgdQ2VU2V9KQHoigNgbdkeZ1GPwnmQ9rA/qErvrq/pD8beTC9MNW9cAcskUB9FceeNC8zwKpXZJN0E4HTeWQgNwaqJaXHaBBoyU7IMz6lzXhvM09iGw4jZDxDe8wnTpwZT7TjlqUm8Q3i/ADLkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IKH0kldk; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso3168519f8f.2
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 01:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746435398; x=1747040198; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sv1fXA/kXVQWR1mgUjAfLmrac7SzbmHKcHFUSyKNyaM=;
        b=IKH0kldkiw8v07nDcr/TjCCgcz7Xu2sbfPrRhwzumT91UcwMsJNgwHnIA/TUICMucP
         BehgQou9jvh5B/77GNKxVO7vP4tOvK/FRIxiTnKPAT3Zn+Ux0e7zJUllNja6PqDmx+kz
         RjllalaoMWwzmOg3p3mVMDablpM1X1mlPxIM7tg5N6zgdj26Hqd3SIElyxERgiJBAnCJ
         GltrGw31BUmiXXLWqQMM3Uk3t+yCcIp1FkxfCAiiaAO9hmvTCsVnz3P6+p0hnpr3tfIC
         83jhyqct2oBRBpWXoJH8FszqfZcQCMbjIj3t6/vQpSQ/9GBjaDilyidcEp701FT+71yx
         fgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746435398; x=1747040198;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sv1fXA/kXVQWR1mgUjAfLmrac7SzbmHKcHFUSyKNyaM=;
        b=mIymu4SXCdgl31CpMdk+Cty9vWadz54OmK+JQqcYNVtwlTexS6ZPeRNjFwa6DKU8uG
         ko8Y/ZjSeJWN+P36yTWdmMGyUdtLj256R5vo5pkkPy7rHLv7TfdOMfPQCtNi/zG0Vjwj
         hTmrZaAcuFtlmvnCoJ2M9gSzY7FVI2URlNvuE9hTTcLjDNWq2sYnCtkP9XHSCpec2uMl
         kk6GgNo5bhE5Vfhaay/wvgWpC9LbVxShHcGLHOJnfNuEwV2yBuN9mTxhGimG2L0U1DEh
         W8BzFzTuGLqca/y3ozxpD8ZwQ2OxxbJpsCaw139cRE7IXxb3Bdb2/Ul8p1n4vmfVqhDn
         Dfvw==
X-Forwarded-Encrypted: i=1; AJvYcCXDiqMmf08/EQatG6jEAu4VBzUOvgYgT0mVF552vqUooOd6dupLGILqd6PHhvgNWdOk8EWaaRdrFKJh@vger.kernel.org
X-Gm-Message-State: AOJu0YxGLRYT+Ayl+JkVaZyl/WNhQzZWn2Do/mkDENnqJJReSD0tvYrS
	sgT6j7KW5jX9ldnfvzckpaFwb8sBfarXOtSTnPZSzFU7pwdNUlMocwGjZvnJd3k=
X-Gm-Gg: ASbGncs9lHi4IfP/mkp4NIxiGo/4Z7rTdb1UOB+g4vjIEwDWUvVALw/jGPOohk2CxXE
	H2+vGZUOY9Gtmvw0+M66mXAOXxOkaVyHSCLS2xfdibCt7DU+HOT9t/pNnn8TS6VF8mQJj933fBt
	FJEAH34mgrW9gEcO03i2vRQHiIvE0d0d89Wq7/GtCXpTOPm85xUOkvtMz+8ygtebORf/4RfGbwQ
	+g7hCY/kprfreEFfiOckbNyycqt7+zcQHmHnavPcaCWJqH37GeTyWzWyXA7lLu+4FBm2+JuM+YK
	UhNJOZ3yYsT75pnP+eY3o7A939A+z6V5B/vrpohouMSuHWemmDUaFF34y86d/goEy1pi/sMhav8
	vjCQ=
X-Google-Smtp-Source: AGHT+IGfImCYDlojSB1Sb4V6Dn940fvmK1LybNwwBa7WbdE2kVT+4CXyDuAT8T7krErERsIUODmGCw==
X-Received: by 2002:a5d:64e8:0:b0:38f:2766:759f with SMTP id ffacd0b85a97d-3a09fdbf30cmr4610206f8f.41.1746435398100;
        Mon, 05 May 2025 01:56:38 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b172a8sm9880997f8f.91.2025.05.05.01.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:56:37 -0700 (PDT)
Date: Mon, 5 May 2025 10:56:35 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Jonathan Cameron <jic23@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/1] thermal: thermal-generic-adc: add temperature
 sensor channel
Message-ID: <aBh9Q8zr2MtfVJtq@mai.linaro.org>
References: <20250430055807.11805-1-clamor95@gmail.com>
 <20250430055807.11805-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250430055807.11805-2-clamor95@gmail.com>

On Wed, Apr 30, 2025 at 08:58:07AM +0300, Svyatoslav Ryhel wrote:
> To avoid duplicating sensor functionality and conversion tables, this
> design allows converting an ADC IIO channel's output directly into a
> temperature IIO channel. This is particularly useful for devices where
> hwmon isn't suitable or where temperature data must be accessible through
> IIO.
> 
> One such device is, for example, the MAX17040 fuel gauge.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  drivers/thermal/thermal-generic-adc.c | 55 ++++++++++++++++++++++++++-
>  1 file changed, 54 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/thermal-generic-adc.c b/drivers/thermal/thermal-generic-adc.c
> index ee3d0aa31406..7c844589b153 100644
> --- a/drivers/thermal/thermal-generic-adc.c
> +++ b/drivers/thermal/thermal-generic-adc.c
> @@ -7,6 +7,7 @@
>   * Author: Laxman Dewangan <ldewangan@nvidia.com>
>   */
>  #include <linux/iio/consumer.h>
> +#include <linux/iio/iio.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
> @@ -73,6 +74,58 @@ static const struct thermal_zone_device_ops gadc_thermal_ops = {
>  	.get_temp = gadc_thermal_get_temp,
>  };
>  
> +static const struct iio_chan_spec gadc_thermal_iio_channels[] = {
> +	{
> +		.type = IIO_TEMP,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_PROCESSED),
> +	}
> +};
> +
> +static int gadc_thermal_read_raw(struct iio_dev *indio_dev,
> +				 struct iio_chan_spec const *chan,
> +				 int *val, int *val2, long mask)
> +{
> +	struct gadc_thermal_info *gtinfo = iio_priv(indio_dev);
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_PROCESSED:
> +		ret = gadc_thermal_get_temp(gtinfo->tz_dev, val);
> +		if (ret)
> +			return ret;
> +
> +		return IIO_VAL_INT;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static const struct iio_info gadc_thermal_iio_info = {
> +	.read_raw = gadc_thermal_read_raw,
> +};
> +
> +static int gadc_iio_register(struct device *dev, struct gadc_thermal_info *gti)
> +{
> +	struct gadc_thermal_info *gtinfo;
> +	struct iio_dev *indio_dev;
> +
> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*gtinfo));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	gtinfo = iio_priv(indio_dev);
> +	memcpy(gtinfo, gti, sizeof(*gtinfo));

Why copy the structure ?

Copying the thermal zone device pointer should be enough, no ?

> +	indio_dev->name = dev_name(dev);
> +	indio_dev->info = &gadc_thermal_iio_info;
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +	indio_dev->channels = gadc_thermal_iio_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(gadc_thermal_iio_channels);
> +
> +	return devm_iio_device_register(dev, indio_dev);
> +}
> +
>  static int gadc_thermal_read_linear_lookup_table(struct device *dev,
>  						 struct gadc_thermal_info *gti)
>  {
> @@ -153,7 +206,7 @@ static int gadc_thermal_probe(struct platform_device *pdev)
>  
>  	devm_thermal_add_hwmon_sysfs(dev, gti->tz_dev);
>  
> -	return 0;
> +	return gadc_iio_register(&pdev->dev, gti);
>  }
>  
>  static const struct of_device_id of_adc_thermal_match[] = {
> -- 
> 2.48.1
> 

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

