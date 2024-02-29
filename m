Return-Path: <devicetree+bounces-47239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 728F986C87C
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 12:52:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2631E288936
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 11:52:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F3647CF13;
	Thu, 29 Feb 2024 11:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="N3WgZVhb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A9963501
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709207524; cv=none; b=uIm0pQj6V4d3ZZ2EdILCjJX7TZ8wyw76q+T98YJWggjFzLB5j0k/vj0ld6FI/EbA8xKx1pgNUs7Lm/P3zoaWVYFjurq2C62Zym8alQgeGEpAimDpUs4Kk31hl/E3Ppr3Rca3k1dTXLgjNY/F63OGWW6bTAsv1wZ2domekngKs4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709207524; c=relaxed/simple;
	bh=D85HgNvJu1Gzvl020npgZHkDOdsFs37kMKJLoOsvX54=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CtVmrBjVXl6BfUPVqdvGk09Xkb0t9N0imChQ/0ceHXZQlI8YOpbDC82mQbA53CtO78zkCfQ1pbdnhqbdJvyaMVZ1FsnRxL3D7piLjQtNA+Jxwty8zvDb9MU46WwwH3shuVZu36ux+nPAgnX2fDOE+7aN4RG565RbDbcxJvH1hu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=N3WgZVhb; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e57ab846a1so518787b3a.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 03:52:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709207521; x=1709812321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qhmR6t/CulZWvzzb/0EOr6cxXMFcQffpsaxkHKFIuTA=;
        b=N3WgZVhb2jgpApYbEypLHOaKHd6HWdpGixE8U6c1NRD6hAYNrxe7d9IuvrGSHFgByW
         uR4/ptrrBpL8RUuw6pLsiXWe7nBYx80NpjcrjMwO7/U7MmpITGEQ3LS7pOkkjj+EhaXZ
         YcARQr1VqJhM51ve/pZv7dUTtw49/rCLF97gToe86k8UxDUuN+h2uKj2nCd8Xt4Q1/tb
         yOPEb8ppTTmBQps34kZLjYd7sDGDEzqSKNBINO4+crurvU3wlnA7VO6I0JMRBJt7AOkY
         /zCnNPF0yFGACPNsSZTC+wkp/wRx8c1gRCpWiIh1ATuoD38/zH+pkkdCW+mHrfT+kaF3
         nSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709207521; x=1709812321;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qhmR6t/CulZWvzzb/0EOr6cxXMFcQffpsaxkHKFIuTA=;
        b=tmngbLEUL3vH4UwUvcvQyyFFCUfkHHcXo2/+EahZAAkQGjKHP4W7zZOXogtF0ogWnW
         WgaZpmpCna8nbYmX0ytF1aTwTcuL7NOD1gOjyZPQJ8qo2QHGa1KVy3MEHb/D6QudJqKb
         tUs272SBT1rVXaGq3kvw2bjBu8fOPlho2EzeAILU1Nxv07RYY23u0WzUDlyjh3ZmZ6P6
         hfYnx6thg3lChB/F7Rpxu+fjh95lPxBHL7Js320u9Kd7Wx5mx3CnhGVViaChKF/JxwWl
         itu6ihc18FD+X33yTix+0ZFli5razuiLe0W4t+U9A6juxx/jJvViE2iR1XZlF+ZTsHh3
         v99A==
X-Forwarded-Encrypted: i=1; AJvYcCW4u0Knlk2WAvYrNQwRlRLqhSGbF0RkQTIu/vUW/Pl/tKIHkv/n48cyj6Qmv0kRdSmLLrdzgP+6aUwrmufY2WJJpqk1BFBakKXoEg==
X-Gm-Message-State: AOJu0YwhYPxHMujyvIgg3BGKSuiTNc8tsYZSH8SeTXZEqj5Z7uIIB191
	vck0aBOxkVKvJH3DJVuGIMnBNH/SQj0LbXDZB/gP19aVGdvTiInkYoYU0diK66I=
X-Google-Smtp-Source: AGHT+IGp29uOUWn17twBCuCVxLB5YWzr3khAzZeff3T4HNJqrtRTDGQv6AebAdB2GeE+LDlQxvcd5Q==
X-Received: by 2002:aa7:8602:0:b0:6e5:980:361f with SMTP id p2-20020aa78602000000b006e50980361fmr1811761pfn.25.1709207520660;
        Thu, 29 Feb 2024 03:52:00 -0800 (PST)
Received: from [192.168.20.11] ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id r5-20020aa79885000000b006e530aca55asm1086214pfl.123.2024.02.29.03.51.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 03:52:00 -0800 (PST)
Message-ID: <47739cca-db41-4182-9f80-ff138f5b8ec8@tweaklogic.com>
Date: Thu, 29 Feb 2024 22:21:52 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/5] iio: light: Add support for APDS9306 Light Sensor
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marek Vasut <marex@denx.de>, Anshul Dalal <anshulusr@gmail.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240228122408.18619-1-subhajit.ghosh@tweaklogic.com>
 <20240228122408.18619-6-subhajit.ghosh@tweaklogic.com>
 <a828e77c-b3d4-49bb-b0bb-b9fd6cb7d114@gmail.com>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <a828e77c-b3d4-49bb-b0bb-b9fd6cb7d114@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/2/24 23:38, Matti Vaittinen wrote:
> On 2/28/24 14:24, Subhajit Ghosh wrote:
>> Driver support for Avago (Broadcom) APDS9306 Ambient Light Sensor.
>> It has two channels - ALS and CLEAR. The ALS (Ambient Light Sensor)
>> channel approximates the response of the human-eye providing direct
>> read out where the output count is proportional to ambient light levels.
>> It is internally temperature compensated and rejects 50Hz and 60Hz flicker
>> caused by artificial light sources. Hardware interrupt configuration is
>> optional. It is a low power device with 20 bit resolution and has
>> configurable adaptive interrupt mode and interrupt persistence mode.
>> The device also features inbuilt hardware gain, multiple integration time
>> selection options and sampling frequency selection options.
>>
>> This driver also uses the IIO GTS (Gain Time Scale) Helpers Namespace for
>> Scales, Gains and Integration time implementation.
>>
>> Signed-off-by: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
>> ---
>> v7 -> v8:
>>   - Renamed APDS9306_INT_CH_CLEAR to APDS9306_INT_SRC_CLEAR macro for higher
>>     readability
>>   - Removed APDS9306_CHANNEL macro for higher readability
>>   - Updated iio_push_event() functions with correct type of events (Light or Intensity)
>>   - Updated variable name "event_ch_is_light" to "int_src" and change as per
>>     review to fix compiler warning
>>   - Used scope for guard() functions
>>   - Other fixes as per reviews
>>     https://lore.kernel.org/all/20240224151340.3f2f51e8@jic23-huawei/
>>     https://lore.kernel.org/all/ZdycR6nr3rtrnuth@smile.fi.intel.com/
>>
...

Hi Matti,
>> ---
> 
> Hi Subhajit,
> 
> I just happened to notice couple of minor things. I see the series is already in a v8 and don't want to cause extra re-spins. So, perhaps consider these points if you need to do v9 but I am sending these only as 'nits'. I don't think any of my findings are very serious.
>Thank for reviewing. I will do as many re-spins as it takes to get things correct if required.
It is best possible source of learning for me.
> ...
> 
>> +static int apds9306_intg_time_set(struct apds9306_data *data, int val2)
>> +{
>> +    struct device *dev = data->dev;
>> +    struct apds9306_regfields *rf = &data->rf;
>> +    int ret, intg_old, gain_old, gain_new, gain_new_closest, intg_time_idx;
>> +    int gain_idx;
>> +    bool ok;
>> +
>> +    if (!iio_gts_valid_time(&data->gts, val2)) {
>> +        dev_err_ratelimited(dev, "Unsupported integration time %u\n", val2);
>> +        return -EINVAL;
>> +    }
>> +
>> +    ret = regmap_field_read(rf->intg_time, &intg_time_idx);
>> +    if (ret)
>> +        return ret;
>> +
>> +    ret = regmap_field_read(rf->gain, &gain_idx);
>> +    if (ret)
>> +        return ret;
>> +
>> +    intg_old = iio_gts_find_int_time_by_sel(&data->gts, intg_time_idx);
>> +    if (ret < 0)
>> +        return ret;
>> +
>> +    if (intg_old == val2)
>> +        return 0;
>> +
>> +    gain_old = iio_gts_find_gain_by_sel(&data->gts, gain_idx);
>> +    if (gain_old < 0)
>> +        return gain_old;
>> +
>> +    ret = iio_gts_find_new_gain_by_old_gain_time(&data->gts, gain_old,
>> +                             intg_old, val2, &gain_new);
> 
> You don't use the 'ret' here, so maybe for the clarity, not assign it.
> Or, maybe you wan't to try to squeeze out few cycles for succesful case and check the ret for '0' - in which case you should be able to omit the check right below as well as the call to iio_find_closest_gain_low(). OTOH, this is likely not a "hot path" so I don't care too much about the extra call if you think code is clearer this way.
I will stick to the first option and remove the unused ret. The code looks linear and clearer
that way. Although it depends upon further reviews.

Regards,
Subhajit Ghosh
> 
>> +    if (gain_new < 0) {
>> +        dev_err_ratelimited(dev, "Unsupported gain with time\n");
>> +        return gain_new;
>> +    }
>> +
>> +    gain_new_closest = iio_find_closest_gain_low(&data->gts, gain_new, &ok);
>> +    if (gain_new_closest < 0) {
>> +        gain_new_closest = iio_gts_get_min_gain(&data->gts);
>> +        if (gain_new_closest < 0)
>> +            return gain_new_closest;
>> +    }
>> +    if (!ok)
>> +        dev_dbg(dev, "Unable to find optimum gain, setting minimum");
>> +
>> +    ret = iio_gts_find_sel_by_int_time(&data->gts, val2);
>> +    if (ret < 0)
>> +        return ret;
>> +
>> +    ret = regmap_field_write(rf->intg_time, ret);
>> +    if (ret)
>> +        return ret;
>> +
>> +    ret = iio_gts_find_sel_by_gain(&data->gts, gain_new_closest);
>> +    if (ret < 0)
>> +        return ret;
>> +
>> +    return regmap_field_write(rf->gain, ret);
>> +}
> 
> 


