Return-Path: <devicetree+bounces-204518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33735B25DE0
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7511A5A35FC
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 07:43:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D13285C83;
	Thu, 14 Aug 2025 07:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="O4zOeq9X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810E8277C8E
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755157411; cv=none; b=Or8Klxact9Fp7YRwdv1AvY+Yt9XmyECoyPJpetjbPyfZgnmk83qEZN0Zu/7zVQGw+STno94JO6HCe4IirYUutycGqTYOAbUgktUPBota/fR9ujrOZdjAiYibkEYw8KjQ8np7HoyPtm9NBCqvNhDGn16qKpBvrJgrgitF1bB9QUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755157411; c=relaxed/simple;
	bh=qAgWfAMIF/sZ4uaQqkFCjMJESgODY6hQ+grRgSP7pFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Az0gCWw+/Y2P181Ktan5k5AOaJHmlPSTfi6tVc0pLTE0+3ITP5B3CahWuohN0I6zFfvmaVU9E/QdVjek7/2K0B1XItrqeiZPstdHWm/fLg3ypL7FFdmv5dLaDt9ape1LrM9qHmFtd+hCBhm3pDQL13gsb/QAcMr7R7qqn+DZ5Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=O4zOeq9X; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afca41c7d7fso276409366b.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 00:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1755157408; x=1755762208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPuQF6+pTC/R1aoe0VWkF/cqD5w1tUDK9xrST9p9p6Q=;
        b=O4zOeq9XnnKC/h3ivpGPhEg903kgTqCd0xlMDrs/Af3Erve3gxxnmrii8DSrLOMIXT
         fOcj+uMljMnvBADNYjFC1rr4XogHiOju2LNb9R7tqpVBdD/SPJc2OUcTU5UQ2JmQejen
         sbRuYDFcqpjwG0KLDyrdlnPgY9b6Rh2qn4P0j8QFHFU58DeR2GpAlKLUmYx0KIzICSFb
         U5GXLxJT6gC7a0DyPQL2AFOlM/Bzo9WistErhjBrMpWl/h40chsKbCwgZeD6D3Gn4Du7
         05jOV6CJmTZkviAK5uapJLDUL3mWbfRNWwI8ZODR9XBzfj4FmGVjQdfpsHmO2QXcnBcN
         w2bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755157408; x=1755762208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jPuQF6+pTC/R1aoe0VWkF/cqD5w1tUDK9xrST9p9p6Q=;
        b=DsfKroSnlEMhBaPML+HaSXgYeYpAlMA/cWyqJ2a4kLCdrWjriJlkPucEVUjT3h4CZr
         wvhwaJIMv1hRaDHso3PEXUOgRIG23f7vEBFuCrEThPfj1OnIqZ1GmW97JiaPKKUPyhqk
         6Xz4bywk0bTToyietZlgE6HUQeTmvm/xwBXDDoJfKBI+/6wWKthIinIyYr6/Lu9bWbVd
         PO7p11n9moAb835/ox1r+w4wBbrChg2W44TZEAB8PhwGB7RvgK3WIsZ42nrJxKnqcgz9
         riaaSNekq34ayNDD8nODC87JmZT8BpBI2IGm2rHnGws3mqpZYVpj3bf8r5/H0deFuSQL
         YUIA==
X-Forwarded-Encrypted: i=1; AJvYcCVpkMQYCVTxtHFZlTOhLmKApG5NorU/yPuXJ4fPc+3XczksQZLKhFNNwFv4jTso5BZk79Cgj6DYScPW@vger.kernel.org
X-Gm-Message-State: AOJu0YzAZwR71l5uj5P905nVrLbZDNAItLRqJP7yCgL6sX889mc8Qk5X
	uISfDYpPEWP6mRaOfRWEz0MYcw6+pebY6qaek7LarXOKVv4pG1KS1yYF2b7V1ccSW34=
X-Gm-Gg: ASbGncv+7EtGUZXE/wwIuUjUI7BINWqiRJFcGsaZNiRi5fFwXPDOLpT+WqYEXoxu0n7
	S0eKsuWr4lZNRSpL0Im43RVOkMew0Zt/RcXefSGVpQeu+j6oAHAtofzVhncxM8L6hyYW2QrJJs6
	hLmXPUCT3wumKjnz0/R2Uqfls0zJA7oyp9ajqDCjyUbOyOevf2BPmu4UJbnWzmQr1qFuJAlFoRf
	15CklGsVlU14xk9lRAUmRnwE/ZMFc0/3e3ZR/ANgDxBEfOXx0Ljld3xvv5Pnzt110SL15TFyd+2
	jzkp7Q1NxTkrgua9l4A9WXwn3PbPS/lTP9oNVPUNiWw63cfIn8I3jrT6WXqWk/amTj7PI414UYt
	2KIv2qfkjt0XXc3g8IppSDHeb2ZiBbJ22QDGidOkTqu/mhbGiMLIH1/q9Krhs6bZq9HlVou1YwD
	XFBp/s8AlBdeSTIg==
X-Google-Smtp-Source: AGHT+IGCzaOzIDJ94jFmyMeyUg84rKzPilT3aLYjT6q7n+bcrWWTqiKm+8lDogVs/9Xr3+ze0xv6lg==
X-Received: by 2002:a17:907:781:b0:af9:8d61:b78e with SMTP id a640c23a62f3a-afcbd9334a5mr149784766b.30.1755157406894;
        Thu, 14 Aug 2025 00:43:26 -0700 (PDT)
Received: from [172.16.220.71] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f26cc6sm23651682a12.23.2025.08.14.00.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 00:43:26 -0700 (PDT)
Message-ID: <d87eedaf-e239-4809-b4cf-61308d5b3a2e@fairphone.com>
Date: Thu, 14 Aug 2025 09:43:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] Input: aw86927 - add driver for Awinic AW86927
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Luca Weiss
 <luca.weiss@fairphone.com>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20250811-aw86927-v2-0-64be8f3da560@fairphone.com>
 <20250811-aw86927-v2-2-64be8f3da560@fairphone.com>
 <vuv26omdn4a5jniv6znepcxel65buzymu6te2ys2dgtkttk6sg@edqm6xpddudn>
Content-Language: en-US
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
In-Reply-To: <vuv26omdn4a5jniv6znepcxel65buzymu6te2ys2dgtkttk6sg@edqm6xpddudn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Dmitry!

On 8/11/25 18:35, Dmitry Torokhov wrote:
> Hi Griffin,
> 
> On Mon, Aug 11, 2025 at 01:12:02PM +0200, Griffin Kroah-Hartman wrote:
(..)
>> +struct aw86927_sram_waveform_header {
>> +	uint8_t version;
>> +	struct {
>> +		__be16 start_address;
>> +		__be16 end_address;
>> +	} __packed waveform_address[1];
> 
> Why does this need to be an array? 

Great question, during development this was used to include multiple 
wave-forms, but it was decided that the feature was unnecessary as of 
now. I will remove the array for simplicity.

>> +static int aw86927_haptics_play(struct input_dev *dev, void *data, struct ff_effect *effect)
>> +{
>> +	struct aw86927_data *haptics = input_get_drvdata(dev);
>> +	int level;
>> +
>> +	level = effect->u.rumble.strong_magnitude;
>> +	if (!level)
>> +		level = effect->u.rumble.weak_magnitude;
>> +
>> +	/* If already running, don't restart playback */
> 
> Why not if effect parameters are changing? Also what if someone is
> issuing stop for already stopped effect?

It it's current state, the driver only has one level of vibration, 
therefore adjusting the effect does not matter as it is either vibrating 
or off.
For your second question I don't think I understand what you are asking. 
If someone gives magnitude 0 to a vibration that has ceased playback, 
the vibration has already stopped, so we don't need to stop it again.

>> +
>> +	haptics->regmap = devm_regmap_init_i2c(client, &aw86927_regmap_config);
>> +	if (IS_ERR(haptics->regmap))
>> +		return dev_err_probe(haptics->dev, PTR_ERR(haptics->regmap),
>> +					"Failed to allocate register map\n");
>> +
>> +	haptics->input_dev = devm_input_allocate_device(haptics->dev);
>> +	if (!haptics->input_dev)
>> +		return -ENOMEM;
>> +
>> +	haptics->reset_gpio = devm_gpiod_get(haptics->dev, "reset", GPIOD_OUT_HIGH);
>> +	if (IS_ERR(haptics->reset_gpio))
>> +		return dev_err_probe(haptics->dev, PTR_ERR(haptics->reset_gpio),
>> +				     "Failed to get reset gpio\n");
> 
> Is it mandatory to wire the reset pin? I see the chip supports software
> reset so maybe this can be optional?

In the datasheet, it is never explicitly mentioned that the pin is 
optional, and in the downstream driver it is mandatory.
If the reset pin is not found the probe will fail.

If somebody has a board with that use-case they can modify this driver 
easily.

>> +
>> +	/* Hardware reset */
>> +	aw86927_hw_reset(haptics);
>> +
>> +	/* Software reset */
>> +	err = regmap_write(haptics->regmap, AW86927_RSTCFG, AW86927_RSTCFG_SOFTRST);
>> +	if (err)
>> +		return dev_err_probe(haptics->dev, PTR_ERR(haptics->regmap),
>> +					"Failed Software reset\n");
> 
> Do you need to issue software reset together with hardware reset? Is
> one or the other not enough?

The datasheet does not mention whether one is enough, the downstream 
driver does it with both so I have assumed that this would be best 
practice with this chip.

>> +	err = devm_request_threaded_irq(haptics->dev, client->irq, NULL,
>> +					aw86927_irq, IRQF_ONESHOT, NULL, haptics);
> 
> Error handling? Also it looks like here it is safe to register the
> interrupt handler early since it does not actually do anything, but
> better to move it after the bulk of initialization in case it will get
> expanded.

I will fix the error handling :). If someone were to implement FIFO mode 
then this would be the correct placement of the initialization, so I 
think for now it would make sense to keep it here.

> 
> Thanks.
> 

Thank you for your comments!

