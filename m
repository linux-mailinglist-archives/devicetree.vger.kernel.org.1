Return-Path: <devicetree+bounces-207890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD748B311B6
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 10:25:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DB231C82AF6
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E7F2EAD18;
	Fri, 22 Aug 2025 08:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F7IriSGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7BD274B3D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755850949; cv=none; b=ETQVsIsd8OobTU+zYz0o0YZrgqrFFULwk/VGrmjorKm9f5iY6DR1cYJAMtHBJEizDb20jxocVM2W3jRy90BTMomfllj24ln5KA97OT0QKKtledGF9qR8qEpTQMUIYzmgvPOkzA1lOtf/gQC3MDVsfa+SQTLMHwdCzRMpCgQqFp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755850949; c=relaxed/simple;
	bh=wSFuJQEtqfZ1oytRi29ghlaifGfrK4PFYsjEiiTPgKw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RLqIn/T21Sk0PwFAG9uXhH5tlP+veEXfPbmK/3AjmWlPNPbYB2JihDgVJP8otogIr8ULuY9drGyAyT0RLktD0nd8faPc07PT/v3MKEu1UrnaEd7KdZev/X60WFnjeBaU0ajmPtrMw7wl1b0idc5WENjFEr5bWuLkKCtJyh6ztmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F7IriSGN; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55ce5221f0bso246915e87.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 01:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755850946; x=1756455746; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RXucF9UGdHPxrEiNPI7ijZXyi7uTg15VZKasLKSvsIU=;
        b=F7IriSGNGRQUT2Ox2/oAWQmQQoPmBgXZshDd5HCid0onj1aio1RIPvi2VoLzAE7tXp
         33lZO7/a2gH/66kxoFQspSKbQ69aJhq58pM3wrfmNE6JMUXYbyc81vJPiz5RlNBaa9x8
         Oqm2B8bFJ8p1r+AJN9d124M/8HTsjCQ9GXwlID8InLKcsy790LwGZOdlUn66x4WOQI3q
         +ZRzcgOqVlk9CYjIVPBPj7bbu7/T5vAxIzxssxU2J9lzEF8jRyB3E7ii+/pfQm/fBWTL
         oVKWShjvTjGa0jQhJKBdiI5uKUAULPAmuSJ022HT24/3WQEad5HMwdoyU7dsficHyxCG
         0Mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755850946; x=1756455746;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RXucF9UGdHPxrEiNPI7ijZXyi7uTg15VZKasLKSvsIU=;
        b=Ri+WDH0F520OhO1PZsSVkZdr3ByGZW3cjLz+fDcsuwlazBgjVHdy4mP8er39jzlPfc
         9SqsRm9z4CZwE1jxP/1IatDb9J/blhGbSglQ5NUNnuuhPDjEnZehoHM19/H59UaXWABZ
         tgmzM/Jjz10vqplTMrFDYojwaZuMao3YNDsIIEhRZ/mqYn0icpdXciYb6Z/MVvz0lz/d
         NFatHq5g6eB9uiKKv+VwflEsFGOON47ulSjijKUP/5xI4dTQeuSqxLWWO9h+KyMo+2N2
         PilIYNGqtiA9j0WsVm3/RDNHdL5Wr/WfCjuUjCphzH/G+Mc5dUfxTHUzAPIZHs0+YPO5
         Cm7A==
X-Forwarded-Encrypted: i=1; AJvYcCWTRGa4nOjlFc6TXJ3rA1doupE4iu5V/TR3Z4y3m7FVASE3XZHjf99kiAKE+ynWZ1UYJwols8N5VhdV@vger.kernel.org
X-Gm-Message-State: AOJu0YzlozkCscg3HZC7AAwBX9irK5c8MFsMudRtLrsoE/zr1EfBSQec
	cEvxeAyYF7HQYfXvTcU04yEzMC9vCzKgDbpbiV9u7EcB7hR9XV/KQrbU3o2DgUriG6A=
X-Gm-Gg: ASbGncvM3r3+kWkU9zlliYpB9iNQRHqPnwWGQI+7EE5AR1z3rJIdM2+SOkvguNLKSec
	apgolKMGLVxSqSr5DrE+oEbh0K+owLj06Snzaq+6Wcwf9I3x5kZOvniOJVVeoglAYziqLUUGu+g
	0NKzOta6mGFj92agqCgt1hrqpnnyk62auE4VMx2pyh/QlMHOnMkuenKmid69iBe1yB+RvEpYdT5
	PQSSJgxkHWVHA8mwAp8lrMNSxBfVJh1KVdnGWHDDzOty5IgJZ5uBrmaw4WZR7SoNUjD4T0i6PkZ
	r69Q/oDMjMtELWfNM7GjUrqUfyq3fh6Fr5wAUbAWNB03wtZrtjU4/eeiIuRJ4lYiapbO3SnWC2A
	OxiyWyS1dLM93V3dtv3NfhVSXOVN9moG04Jx+c6XCVEmzWB36TnZWNtLaquUY/8bm6+QHOp0vLW
	4A
X-Google-Smtp-Source: AGHT+IGpgXZXed8TIdIcBY5n9kfb6hKzzrVjL/aXpieY0KpoSwWRRcW2tG4FpiZUs4rMd5UYpnMPPw==
X-Received: by 2002:a05:6512:e94:b0:55c:c9d5:d342 with SMTP id 2adb3069b0e04-55f0ccfc3d4mr372602e87.4.1755850945934;
        Fri, 22 Aug 2025 01:22:25 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef459153sm3477792e87.156.2025.08.22.01.22.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Aug 2025 01:22:25 -0700 (PDT)
Message-ID: <9c8a9dd4-416e-4cb1-930d-29e7710b42ad@linaro.org>
Date: Fri, 22 Aug 2025 11:22:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] media: i2c: Add OmniVision OV6211 image sensor
 driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>,
 Tarang Raval <tarang.raval@siliconsignals.io>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250812213024.361267-1-vladimir.zapolskiy@linaro.org>
 <20250812213024.361267-3-vladimir.zapolskiy@linaro.org>
 <aKMXy_L0eBRJRcsn@kekkonen.localdomain>
 <03690367-aff0-4128-86aa-65a6d489b6cb@linaro.org>
 <aKbkcL_j3LsdoMo4@kekkonen.localdomain>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <aKbkcL_j3LsdoMo4@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sakari.

On 8/21/25 12:18, Sakari Ailus wrote:
> Hi Vladimir,
> 
> On Wed, Aug 20, 2025 at 01:57:52AM +0300, Vladimir Zapolskiy wrote:
>> Hi Sakari,
>>
>> thank you so much for review. Please find a few comments below.
>>
>> On 8/18/25 15:08, Sakari Ailus wrote:
>>> Hi Vladimir,
>>>
>>> Thanks for the update.
>>>
>>> On Wed, Aug 13, 2025 at 12:30:24AM +0300, Vladimir Zapolskiy wrote:
>>>> OmniVision OV6211 is a monochrome image sensor, which produces frames in
>>>> 8/10-bit raw output format and supports 400x400, 200x200 and 100x100
>>>> output image resolution modes.
>>>>
>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>
>> <snip>
>>
>>>> +static int ov6211_set_ctrl(struct v4l2_ctrl *ctrl)
>>>> +{
>>>> +	struct ov6211 *ov6211 = container_of(ctrl->handler, struct ov6211,
>>>> +					     ctrl_handler);
>>>> +	int ret;
>>>> +
>>>> +	/* V4L2 controls values will be applied only when power is already up */
>>>> +	if (!pm_runtime_get_if_in_use(ov6211->dev))
>>>
>>> I think this should be pm_runtime_get_if_active() as no writes will now
>>> take place even if the sensor is powered on.
>>
>> Ack.
>>
>>>> +		return 0;
>>>> +
>>>> +	switch (ctrl->id) {
>>>> +	case V4L2_CID_ANALOGUE_GAIN:
>>>> +		ret = cci_write(ov6211->regmap, OV6211_REG_ANALOGUE_GAIN,
>>>> +				ctrl->val, NULL);
>>>> +		break;
>>>> +	case V4L2_CID_EXPOSURE:
>>>> +		ret = cci_write(ov6211->regmap, OV6211_REG_EXPOSURE,
>>>> +				ctrl->val << 4, NULL);
>>>> +		break;
>>>> +	default:
>>>> +		ret = -EINVAL;
>>>> +		break;
>>>> +	}
>>>> +
>>>> +	pm_runtime_put(ov6211->dev);
>>>> +
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static const struct v4l2_ctrl_ops ov6211_ctrl_ops = {
>>>> +	.s_ctrl = ov6211_set_ctrl,
>>>> +};
>>>> +
>>>> +static int ov6211_init_controls(struct ov6211 *ov6211)
>>>> +{
>>>> +	struct v4l2_ctrl_handler *ctrl_hdlr = &ov6211->ctrl_handler;
>>>> +	const struct ov6211_mode *mode = &supported_modes[0];
>>>> +	struct v4l2_fwnode_device_properties props;
>>>> +	s64 exposure_max, pixel_rate, h_blank;
>>>> +	struct v4l2_ctrl *ctrl;
>>>> +	int ret;
>>>> +
>>>> +	ret = v4l2_ctrl_handler_init(ctrl_hdlr, 8);
>>>> +	if (ret)
>>>> +		return ret;
>>>
>>> This check can be omitted. Up to you.
>>
>> This check I would prefer to keep, otherwise I have a feeling that under
>> ENOMEM the following code would make an attempt to insert the controls
>> data over an NULL pointer...
>>
>> I'll mock it to check it explicitly though, but I'm inclined to keep it.
> 
> The control framework will handle that internally.
> 

Right, I've tested a mocked version before sending v4, and it worked
expectedly with no issues, the check for a return value has been removed.

>>
>> <snip>
>>
>>>> +
>>>> +	ret = cci_write(ov6211->regmap, OV6211_REG_MODE_SELECT,
>>>> +			OV6211_MODE_STREAMING, NULL);
>>>> +	if (ret) {
>>>> +		dev_err(ov6211->dev, "failed to start streaming: %d\n", ret);
>>>> +		goto error;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +
>>>> +error:
>>>> +	pm_runtime_mark_last_busy(ov6211->dev);
>>>
>>> Please omit direct calls to pm_runtime_mark_last_busy(); this is now called
>>> via the runtime PM put autosuspend etc. functions.
>>>
>>
>> Ack.
>>
>> <snip>
>>
>>>> +	if (bus_cfg.nr_of_link_frequencies != 1 ||
>>>> +	    bus_cfg.link_frequencies[0] != link_freq_menu_items[0]) {
>>>
>>> Could you use v4l2_link_freq_to_bitmap()? I think it'd simplify the
>>> function and possibly error handling, too.
>>>
>>
>> Ack, let it be so.
>>
>>>> +		dev_err(ov6211->dev, "Unsupported MIPI CSI2 link frequency\n");
>>>> +		ret = -EINVAL;
>>>> +		goto error;
>>>> +	}
>>>> +
>>>> +error:
>>>> +	v4l2_fwnode_endpoint_free(&bus_cfg);
>>>> +
>>>> +	return ret;
>>>> +}
>>>> +
>>>> +static int ov6211_power_on(struct device *dev)
>>>> +{
>>>> +	struct v4l2_subdev *sd = dev_get_drvdata(dev);
>>>> +	struct ov6211 *ov6211 = to_ov6211(sd);
>>>> +	int ret;
>>>> +
>>>> +	if (ov6211->avdd) {
>>>> +		ret = regulator_enable(ov6211->avdd);
>>>> +		if (ret)
>>>> +			return ret;
>>>> +	}
>>>> +
>>>> +	if (ov6211->dovdd) {
>>>> +		ret = regulator_enable(ov6211->dovdd);
>>>> +		if (ret)
>>>> +			goto avdd_disable;
>>>> +	}
>>>> +
>>>> +	if (ov6211->dvdd) {
>>>> +		ret = regulator_enable(ov6211->dvdd);
>>>> +		if (ret)
>>>> +			goto dovdd_disable;
>>>> +	}
>>>
>>> Can you use the regulator bulk functions? Or if the order is required, add
>>> a comment about it? Otherwise someone will provide a "fix" soon afterwards.
>>> :-)
>>
>> I've already responded to a similar review comment from Krzysztof on v1,
>> here the rationale is to follow a deliberately selected model of having
>> some of regulators as optional. Moreover the "digital core" DVDD regulator
>> is truly optional, there is a working sensor configuration to omit it.
>>
>> Unfortunately so far there is no bulk regulator helper, which deals properly
>> with optional regulators, so I would prefer to keep it registered this way.
> 
> Won't the regulator framework provide you a dummy regulator if a given
> regulator isn't assigned to the device in DT?
> 
> E.g. the CCS driver unconditionally requests regulators and fails on error.
> It still works on ACPI platforms without any regulators (as in terms of the
> regulator framework).
> 

You are right here, bulk version of regulator API falls back to a dummy
regulator usage, I've tested that it works totally fine, and therefore I'll
change to it in the next version of the driver.

>>>> +	gpiod_set_value_cansleep(ov6211->reset_gpio, 0);
>>>> +	usleep_range(10 * USEC_PER_MSEC, 15 * USEC_PER_MSEC);
>>>> +
>>>> +	ret = clk_prepare_enable(ov6211->xvclk);
>>>
>>> Is the clock really supposed to be enabled here, and not e.g. before
>>> lifting reset?
>>>
>>
>> The so called "gated" mode of XVCLK clock says that is should be enabled
>> after releasing XSHUTDOWN pin, so I don't see a mistake here.
>>
>> Please note, it's basically a common part with other OmniVision sensors,
>> for instance you may get a reference from OG01A1B product specification etc.
>>
>> Thank you for review. Shortly I'll send another new but very similar
>> image sensor driver acknowledging your given comments.
> 

-- 
Best wishes,
Vladimir

