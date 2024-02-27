Return-Path: <devicetree+bounces-46395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA7A869175
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 14:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33912B2AF36
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 13:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E5A13B293;
	Tue, 27 Feb 2024 13:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="ImQ4DNw3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDEB1EB25
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 13:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709039580; cv=none; b=r8RW5yr1uPq2tknbn2O4HBqN9mo3hJVcLLSB42Vx7+Q17ZXenKsesgvP7abXFyl5nCjUwwADnmx7dM6DV9ZbXkX6oQQL1PGMrlWvYWoeNHJ73M+bEOfBIDGKDAKvihteWbB6c3Qud/PRqA0we4YauWKbL29EBEYdcBfCmkneU5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709039580; c=relaxed/simple;
	bh=r/94iCN20Fk2NhI03wn/nZawp0Hom6G4UHrshYpmT20=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hTqyFoDgnMgFq8aoJvoPAYjlWsqev8a8pwhTrAsGu6EcX/jjIanrcyjC7U7owILwsg0a7Kr3QzVTEAxDUmecBq71wTF1KLablqiXOWMp9r95Qg58UcCm4lSSjNpsFwU4xBsPy+6bbw/frD5Evy9FLnUkyJZcnvyIVTj2f18G/b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=ImQ4DNw3; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6e55101cc56so199913b3a.2
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 05:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1709039578; x=1709644378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jCk7kBUbkEDCNNZZvLnoeTcO/DOClexbrTDxgBd3Qvk=;
        b=ImQ4DNw3IgF7FYTNz8ieFU4J3racq6Wg3KLhmFvh1qWLyOSAEf2G3hBKGr7gvzPW6m
         ApXSF5r7CgtdUzmICdIFAjbtVXs0ZR2tKhhXUvJgUkxEvgFm0XN/9ljJoaB1lwwnGCgu
         16b2LVFPyo5wTGi/Y1qk1OUSrGo4kM5lM5o+lnt74U7Wv8Q2e3vT3lFT7Pl+DgyuRlDd
         wP9+x6fuuK3BFV8vhZp905mD1UkNbLNH0cVp0i4SMvHxNVweqQridBhrtbBU1kM/vxje
         RsG2kAWv3FbVbQdaAaxGfTCh6kmL6908QfXbxrWbMz75kNpIVXNx0bCDo2SehpxVAKrr
         Bh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709039578; x=1709644378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jCk7kBUbkEDCNNZZvLnoeTcO/DOClexbrTDxgBd3Qvk=;
        b=WTygjU8tbWcXQURXCVvxX/oKiOycwKrP0CVbvcRGhH6gh+eVHZf6wx4X/qq8jxV7yZ
         Th2prg1p2Tt4caruJCnkhckCgea5lLATUIGYW+wqFrc+UCxsig0wOW+SBxeREBt/9Oe+
         YEW/Y94AwYU7HBnnZG30FiVQ9Cr/HPGQFJb8WXljw0v8ZngKePXEPwePHJnjr6TXzUrz
         i6f8s7zSbeS7G4Tyi/TxXRSCBDmw3Xhr6Xs+Tws7iDn3s6EL2W0IJgaONiKvg+Nu9KRr
         p423v0Skg8xepxZrUImw69OGFHnHn7eneVoLg46iPTJ7PaL8+XpcaUhSwV3oBf4FBfbu
         RnwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdLiC+ZSFImF9mpUQaLdL1TCc1s4umrCEIHIgHZGqRUpirsmJGIcswc8U3l1+HB+KIMsAc/k1X5hZHMK5JVBB3hZJWyAZoH5EgbQ==
X-Gm-Message-State: AOJu0Yz113c8ihMcJ5FoPJ7ZbxeKPNo/a3xnOAfbQPNS0Nimn/q8qMYL
	qACc2TaKvsB6asxl6fszfw7u+Tpi2o7iVNW2ORhdhM5MLpjEVqgvd0bYXJzK/ME=
X-Google-Smtp-Source: AGHT+IElVotDjmybxm6A/bANYneip6rEcVYA8BZjYqYHCjXxGr1LIAXaukd9DC+7GRyLF3yr1NzIBA==
X-Received: by 2002:a05:6a21:350f:b0:1a0:f096:5022 with SMTP id zc15-20020a056a21350f00b001a0f0965022mr2427341pzb.46.1709039577571;
        Tue, 27 Feb 2024 05:12:57 -0800 (PST)
Received: from [192.168.20.11] ([180.150.112.31])
        by smtp.gmail.com with ESMTPSA id i4-20020a632204000000b005dc26144d96sm5723883pgi.75.2024.02.27.05.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Feb 2024 05:12:57 -0800 (PST)
Message-ID: <a94b86fe-0896-47ba-a597-0cd59a0665a2@tweaklogic.com>
Date: Tue, 27 Feb 2024 23:42:48 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] iio: light: Add support for APDS9306 Light Sensor
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
References: <20240218054826.2881-1-subhajit.ghosh@tweaklogic.com>
 <20240218054826.2881-6-subhajit.ghosh@tweaklogic.com>
 <20240224151340.3f2f51e8@jic23-huawei>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20240224151340.3f2f51e8@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/2/24 01:43, Jonathan Cameron wrote:
> On Sun, 18 Feb 2024 16:18:26 +1030
> Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:
> 
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
> I applied this but then got some build warnings that made me look
> more closely at the int_src handling.
> 
> This is confusing because of the less than helpful datasheet defintion
> of a 2 bit register that takes values 0 and 1 only.
> 
> I thought about trying to fix this up whilst applying but the event code
> issue is too significant to do without a means to test it.
> 
> Jonathan
> 

>> +static int apds9306_read_data(struct apds9306_data *data, int *val, int reg)
>> +{
>> +	struct device *dev = data->dev;
>> +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
>> +	struct apds9306_regfields *rf = &data->rf;
>> +	int ret, delay, intg_time, intg_time_idx, repeat_rate_idx, int_src;
>> +	int status = 0;
>> +	u8 buff[3];
>> +
>> +	ret = pm_runtime_resume_and_get(data->dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = regmap_field_read(rf->intg_time, &intg_time_idx);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = regmap_field_read(rf->repeat_rate, &repeat_rate_idx);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = regmap_field_read(rf->int_src, &int_src);
>> +	if (ret)
>> +		return ret;
>> +
>> +	intg_time = iio_gts_find_int_time_by_sel(&data->gts, intg_time_idx);
>> +	if (intg_time < 0)
>> +		return intg_time;
>> +
>> +	/* Whichever is greater - integration time period or sampling period. */
>> +	delay = max(intg_time, apds9306_repeat_rate_period[repeat_rate_idx]);
>> +
>> +	/*
>> +	 * Clear stale data flag that might have been set by the interrupt
>> +	 * handler if it got data available flag set in the status reg.
>> +	 */
>> +	data->read_data_available = 0;
>> +
>> +	/*
>> +	 * If this function runs parallel with the interrupt handler, either
>> +	 * this reads and clears the status registers or the interrupt handler
>> +	 * does. The interrupt handler sets a flag for read data available
>> +	 * in our private structure which we read here.
>> +	 */
>> +	ret = regmap_read_poll_timeout(data->regmap, APDS9306_MAIN_STATUS_REG,
>> +				       status, data->read_data_available ||
>> +				       (status & (APDS9306_ALS_DATA_STAT_MASK |
>> +						  APDS9306_ALS_INT_STAT_MASK)),
>> +				       APDS9306_ALS_READ_DATA_DELAY_US, delay * 2);
>> +
>> +	if (ret)
>> +		return ret;
>> +
>> +	/* If we reach here before the interrupt handler we push an event */
>> +	if ((status & APDS9306_ALS_INT_STAT_MASK))
>> +		iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
>> +			       int_src, IIO_EV_TYPE_THRESH, IIO_EV_DIR_EITHER),
> 
> You are pushing an event on channel 0 or 1 (which is non obvious as that
> int_src is a 2 bit value again).  However you don't use indexed channels
> so this is wrong.
> It's also pushing IIO_LIGHT for both channels which makes no sense as you
> only have one IIO_LIGHT channel.
Hi Jonathan,

For the above fix I am supplying the second parameter to IIO_UNMOD_EVENT_CODE()
as "0" which gives me the below output from userspace:
./iio_event_monitor /dev/iio:device0
Event: time: xx, type: illuminance, channel: 0, evtype: thresh, direction: either
Event: time: yy, type: intensity, channel: 0, evtype: thresh, direction: either

As I do not have indexed channels, I have used zero for both Light and Intensity
channel numbers. Should I make the intensity type as channel one for the output
to look like this?
Event: time: xx, type: illuminance, channel: 0, evtype: thresh, direction: either
Event: time: yy, type: intensity, channel: 1, evtype: thresh, direction: either

What do you think?

Regards,
Subhajit Ghosh
> 
> 
>> +			       iio_get_time_ns(indio_dev));
>> +
>> +	ret = regmap_bulk_read(data->regmap, reg, buff, sizeof(buff));
>> +	if (ret) {
>> +		dev_err_ratelimited(dev, "read data failed\n");
>> +		return ret;
>> +	}
>> +
>> +	*val = get_unaligned_le24(&buff);
>> +
>> +	pm_runtime_mark_last_busy(data->dev);
>> +	pm_runtime_put_autosuspend(data->dev);
>> +
>> +	return 0;
>> +}
>> +
> 
> ...



