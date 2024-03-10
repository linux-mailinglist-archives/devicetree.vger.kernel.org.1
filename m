Return-Path: <devicetree+bounces-49737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD70E877885
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 21:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CDA228146B
	for <lists+devicetree@lfdr.de>; Sun, 10 Mar 2024 20:53:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0162B3A1DA;
	Sun, 10 Mar 2024 20:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="Nidc7Dnj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9B639846
	for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 20:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710103988; cv=none; b=GyXqgJBztoKJ0K4hOy5UAGwi6/wc5/zqTAwiYz1SqOsd1rYdnNdFvSNNfsP8MrkBz5JxC5LMhqlZ3Y0bKPsDmY1COAbcf7pG5I9dX8Nsdo/n89ledkmKT89m9HC4QviAoGM6CVMAAj3yWZpKbtHpdJ1kAaJfI+Onh7WB0Ry5Lfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710103988; c=relaxed/simple;
	bh=frxuvVcUFE3n0LsEt2HQl02eTQPGunwmknVSe8KFctQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NkrfhYMwTZDh+wooQlOjAsuxip6jhm3Jz2LeY8asjjCOg+eQ+NUW3oC//iVFDZQYJGyeQ3heYC/YK5KOoCQBKuMvdGVTCJGyoY4B0XC1WYgIB6dN4jnJsex7/AwmXkK344qpLPROQoUkaAxXi5vww4BzQQnGiTSogy1XNCn87MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=Nidc7Dnj; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1dd611d5645so20963455ad.1
        for <devicetree@vger.kernel.org>; Sun, 10 Mar 2024 13:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1710103986; x=1710708786; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9eh/L4jnp3P9JkldJjrWGMupxrpCciyDkMmG2Xv6fIY=;
        b=Nidc7DnjkYIQGQDmOdHjFdybO4d/tALcw5YKuzRRxmktd1UQriEAnHHGQP0TlPN7TO
         7NYofk+gR0/1BZzwXmUXl/YoJh/8FABqLcFx+fxJi44/Z8KyihJR0H5roubiaWkte+iX
         BI8f4ByApfz8SduC7WKMF57eiQgBzPyt20itbOIlE/tidazUU4wFY0QdmAEO0Zni7dgR
         74MtICoGqFRmqq5aGdPFkauORaztmaZqG4Wa8dMOxpOM1THFceuxeOn6aYoa3rwdbPhk
         /Sgjv22bemKO7jH1c5UhU5/qYnPTvTVS2P30AWsEMfFKLOVFMVGs5xQ2Ai0EHPTPRCCW
         aLMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710103986; x=1710708786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9eh/L4jnp3P9JkldJjrWGMupxrpCciyDkMmG2Xv6fIY=;
        b=pVhBnA9jzu5HlVOUmpcQfyOT8VqUzTsCjsv/28TAFX/geJ9COD2w3R94hmWt50Kuio
         yi971Fp0RY+i9nweCLHafTGvREmy5AkYIqu7rat4ZHtK3wSofCFGaC/EyNGBsDkVXKsC
         u95iXCnthDLrnj0vwL5MOfYcAKeyJVplivQlJW0rDaAXaDxW9L14IMaaJDVk3ZmAbNvu
         QJE9ttSFw602lcpM59zZocN/R3bUAyvysq/rEJsTZalSCus2+C/ZOjYjnp5I6Zf+n5+4
         Tke++Ah5NFk11UfHTG6DbGZBGyOJWs4XEtwKoz2sAFaNYUQW1Z4xm7C0TFfNwfskQgbU
         hiLA==
X-Forwarded-Encrypted: i=1; AJvYcCUDkmr9I+5fqUlgenYa0lGy6EFx5mQJpM2nC9NB0NnJpndtechrje1Aprd0MYMdnFhOBTRhTtAP8U9ygxe1BwnpReLYaYn4ilgeug==
X-Gm-Message-State: AOJu0Yy2RxTH60Bc3PpG1dACtmRLtZEpm9g0eYmirac3SFSfXwr4SFfl
	1HFXMClBzx+PzvFY+HeFQq9Y3dS/Cx4CzT1pRtATlKJ4L3GndL5LmYeu/8+eSTg=
X-Google-Smtp-Source: AGHT+IG8+eAJ1v1PdTnMZSx6KVr2Kimd2P/DvL1NRB9VDSL2T+mhTMgPo+Gibtu01PBp7SDUQ8fjBw==
X-Received: by 2002:a17:903:32d2:b0:1dd:619e:aeaf with SMTP id i18-20020a17090332d200b001dd619eaeafmr5571936plr.22.1710103986567;
        Sun, 10 Mar 2024 13:53:06 -0700 (PDT)
Received: from [192.168.20.11] ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id b10-20020a170902650a00b001db6da30331sm3159582plk.86.2024.03.10.13.53.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Mar 2024 13:53:06 -0700 (PDT)
Message-ID: <e61c6117-e03e-4d1d-8a3a-d4c56918169b@tweaklogic.com>
Date: Mon, 11 Mar 2024 07:22:58 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/5] iio: light: Add support for APDS9306 Light Sensor
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marek Vasut <marex@denx.de>, Anshul Dalal <anshulusr@gmail.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240309105031.10313-1-subhajit.ghosh@tweaklogic.com>
 <20240309105031.10313-6-subhajit.ghosh@tweaklogic.com>
 <20240310124237.52fa8a56@jic23-huawei>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20240310124237.52fa8a56@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

> 
>> +
>> +static int apds9306_write_event_config(struct iio_dev *indio_dev,
>> +				       const struct iio_chan_spec *chan,
>> +				       enum iio_event_type type,
>> +				       enum iio_event_direction dir,
>> +				       int state)
>> +{
>> +	struct apds9306_data *data = iio_priv(indio_dev);
>> +	struct apds9306_regfields *rf = &data->rf;
>> +	int ret, val;
>> +
>> +	state = !!state;
>> +
>> +	switch (type) {
>> +	case IIO_EV_TYPE_THRESH: {
>> +		guard(mutex)(&data->mutex);
>> +
>> +		/*
>> +		 * If interrupt is enabled, the channel is set before enabling
>> +		 * the interrupt. In case of disable, no need to switch
>> +		 * channels. In case of different channel is selected while
>> +		 * interrupt in on, just change the channel.
>> +		 */
>> +		if (state) {
>> +			if (chan->type == IIO_LIGHT)
>> +				val = 1;
>> +			else if (chan->type == IIO_INTENSITY)
>> +				val = 0;
>> +			else
>> +				return -EINVAL;
>> +
>> +			ret = regmap_field_write(rf->int_src, val);
>> +			if (ret)
>> +				return ret;
>> +		}
>> +
>> +		ret = regmap_field_read(rf->int_en, &val);
>> +		if (ret)
>> +			return ret;
>> +
>> +		if (val == state)
>> +			return 0;
>> +
>> +		ret = regmap_field_write(rf->int_en, state);
>> +		if (ret)
>> +			return ret;
>> +
>> +		if (state)
>> +			return pm_runtime_resume_and_get(data->dev);
>> +
>> +		pm_runtime_mark_last_busy(data->dev);
>> +		pm_runtime_put_autosuspend(data->dev);
> Note this isn't a reason to do a v10, just a possible suggestion for
> what I think is more readable code.
> 
> Flow here is complex, maybe we'd have been better with skipping the
> state = !!state, rename val to more explicit enabled
> above and something like..
> 
> 		ret = regmap_field_read(rf->int_en, &enabled);
> 		if (ret)
> 			return ret;
> 
> 		if (state) {
> 			if (chan->type == IIO_LIGHT)
> 				ret = regmap_field_write(rf->int_src, 1);
> 			else if (chan->type == IIO_INTENSITY)
> 				ret = regmap_field_write(rf->int_src, 0);
> 			else
> 				return -EINVAL;
> 
> 			if (ret)
> 				return ret;
> 			if (enabled) /* Already enabled */
> 				return 0;		
> 			
> 			ret = regmap_field_write(rf->int_en, 1);
> 			if (ret)
> 				return ret;
> 
> 			return pm_runtime_resume_and_get(data->dev);
> 		} else {  // Could drop this else but I think it's useful to show the either or flow.
> 			if (!enabled)
> 				return 0;		
> 
> 			ret = regmap_field_write(rf->int_en, 0);
> 			if (ret)
> 				return ret;
> 			pm_runtime_mark_last_busy(data->dev);
> 			pm_runtime_put_autosuspend(data->dev);
> 
> 			return 0;
> 		}
> 	}	
Yes, this is much simpler and readable. I will prepare a follow up patch for this.

Thank you for reviewing and applying the series.

Regards,
Subhajit Ghosh
>> +
>> +		return 0;
>> +	}
>> +	case IIO_EV_TYPE_THRESH_ADAPTIVE:
>> +		return regmap_field_write(rf->int_thresh_var_en, state);
>> +	default:
>> +		return -EINVAL;
>> +	}
>> +}
> 
>> +
>> +static void apds9306_powerdown(void *ptr)
>> +{
>> +	struct apds9306_data *data = (struct apds9306_data *)ptr;
>> +	struct apds9306_regfields *rf = &data->rf;
>> +	int ret;
>> +
>> +	ret = regmap_field_write(rf->int_thresh_var_en, 0);
>> +	if (ret)
>> +		return;
>> +
>> +	ret = regmap_field_write(rf->int_en, 0);
>> +	if (ret)
>> +		return;
>> +
>> +	apds9306_power_state(data, false);
>> +}
> 
> ...
> 


