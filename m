Return-Path: <devicetree+bounces-159079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE5CA6994C
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 20:29:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E4923AD118
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 19:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5CE7211A21;
	Wed, 19 Mar 2025 19:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4nl5dZV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980AB1AF0D7;
	Wed, 19 Mar 2025 19:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742412492; cv=none; b=dZYniQ7MeEx6Sf5eECkwLaUc+mbJE/sjNyzBpWGdtAzaH+FTUl1+9zTi8fEWPixl9GNc4C0ls0lbYQzxA5lL3lSF/8Oy/18RG0uyR97cUB1cotRYmruPulrgVtfxD8hAuhutjOCg9pJBxlgw4eSTdWj6YP0KeqVjuJM+lRL0VuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742412492; c=relaxed/simple;
	bh=xVpheGEMSdvufAyA000NnxguGemRFVyG24RA4OWDHBo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QNu9GdV9hApZlRwAOa9b7blhILDgznV55PhArXenxBJby1LAEo5LbaMwDkCGu8ByqvnWCp6lxK+YsMDqEUyNHr2rBVRoJrjzSP5Rm9sPqyWtj1BTeNC+dr1kd2WQA38vT8mq1B8dSUlf8eB2oYHnbJoP7f+EMgQR0Jr1ii69zzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4nl5dZV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 919ABC4CEE4;
	Wed, 19 Mar 2025 19:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742412492;
	bh=xVpheGEMSdvufAyA000NnxguGemRFVyG24RA4OWDHBo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b4nl5dZV887CaDJswTbT6ngspDFBwC65oJ8cHOO5Bc1ehoUoyaPBY/Y+m6OeMLaMa
	 9oqITyqpZs6oRMEZXT9ouL2YLzHyBt5h+EVAI+VKH9b1wIJhBSsg2+Vh7D34pJjRCM
	 95WcHcA2Esprmkb6UX2CdgCzR6kSnqgTaxg2cAjQEnh0uoB5ek50QOJfKLv/393TpE
	 llqixryAVzFNrXF/B8OTSAUzVirPLjBN6SVQCGbbDO739igp7abfmbWZKjGHwfDmq/
	 wAbVNs7Ds8IyhMYr1C7pzoNzRrl4FpxpPzlU8GN/iSLN34DQzM8VIXGMFnbUkMYQ86
	 omZfYBLPVwo0Q==
Message-ID: <92d8d240-5156-414f-b58b-a957e27eb30c@kernel.org>
Date: Wed, 19 Mar 2025 20:28:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] leds: tps6131x: add support for Texas Instruments
 TPS6131X flash LED driver
To: Matthias Fend <matthias.fend@emfend.at>
Cc: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 bsp-development.geo@leica-geosystems.com
References: <20250318-leds-tps6131x-v2-0-bc09c7a50b2e@emfend.at>
 <20250318-leds-tps6131x-v2-2-bc09c7a50b2e@emfend.at>
 <20250319-tall-ruddy-flamingo-a12fcc@krzk-bin>
 <9a470dfd-8d7b-4529-b54b-289754b9eed6@emfend.at>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <9a470dfd-8d7b-4529-b54b-289754b9eed6@emfend.at>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/03/2025 17:25, Matthias Fend wrote:
>>> +
>>> +	if (reg3 & TPS6131X_REG_3_HPFL)
>>> +		*fault |= LED_FAULT_SHORT_CIRCUIT;
>>> +
>>> +	if (reg3 & TPS6131X_REG_3_SELSTIM_TO)
>>> +		*fault |= LED_FAULT_TIMEOUT;
>>> +
>>> +	if (reg4 & TPS6131X_REG_4_HOTDIE_HI)
>>> +		*fault |= LED_FAULT_OVER_TEMPERATURE;
>>> +
>>> +	if (reg6 & (TPS6131X_REG_6_LEDHOT | TPS6131X_REG_6_LEDWARN))
>>> +		*fault |= LED_FAULT_LED_OVER_TEMPERATURE;
>>> +
>>> +	if (!(reg6 & TPS6131X_REG_6_LEDHDR))
>>> +		*fault |= LED_FAULT_UNDER_VOLTAGE;
>>> +
>>> +	if (reg6 & TPS6131X_REG_6_LEDHOT) {
>>> +		ret = regmap_update_bits_base(tps6131x->regmap, TPS6131X_REG_6,
>>> +					      TPS6131X_REG_6_LEDHOT, 0, NULL, false, true);
>>
>> And this is not locked?
> 
> The read modify write operation is protected by regmap. Since this 
> operation does not interact with any other functions, no lock is needed 
> here.


Following that logic no lock is needed in the first place. Define what
is the purpose of this lock, not just "hardware access". I assumed you
want to keep consistent hardware state between multiple updates. If
that's correct, how did you prevent returning value from reads happening
in the middle of concurrent update? Or how this update_bits_base is
prevented from happening while you are in the middle of earlier calls
which are protected by your lock?

That's confusing lock, considering also too short comment explaining its
purpose.

> 
>>
>>> +		if (ret < 0)
>>> +			return ret;
>>> +	}
>>> +
>>
>> ...
>>
>>> +
>>> +static int tps6131x_flash_external_strobe_set(struct v4l2_flash *v4l2_flash, bool enable)
>>> +{
>>> +	struct led_classdev_flash *fled_cdev = v4l2_flash->fled_cdev;
>>> +	struct tps6131x *tps6131x = fled_cdev_to_tps6131x(fled_cdev);
>>> +
>>> +	guard(mutex)(&tps6131x->lock);
>>> +
>>> +	return tps6131x_set_mode(tps6131x, enable ? TPS6131X_MODE_FLASH : TPS6131X_MODE_SHUTDOWN,
>>> +				 false);
>>> +}
>>> +
>>> +static const struct v4l2_flash_ops tps6131x_v4l2_flash_ops = {
>>> +	.external_strobe_set = tps6131x_flash_external_strobe_set,
>>> +};
>>> +
>>> +static int tps6131x_v4l2_setup(struct tps6131x *tps6131x)
>>> +{
>>> +	struct v4l2_flash_config v4l2_cfg = { 0 };
>>> +	struct led_flash_setting *intensity = &v4l2_cfg.intensity;
>>> +
>>> +	if (!IS_BUILTIN(CONFIG_V4L2_FLASH_LED_CLASS))
>>
>> Why builtin? That's a tristate, so I don't get why driver and v4l flash
>> cannot be modules. You wanted REACHABLE probably... but then it is
>> anyway discouraged practice leading to runtime debugging. So actually
>> you want CONFIG_V4L2_FLASH_LED_CLASS || !CONFIG_V4L2_FLASH_LED_CLASS
>> dependency.
> 
> Okay, I'll add 'depends on V4L2_FLASH_LED_CLASS || 
> !V4L2_FLASH_LED_CLASS' to the Kconfig entry and do the check in the 
> driver like this:

Only this

>    if (!IS_ENABLED(CONFIG_V4L2_FLASH_LED_CLASS))
>      return 0;
> 
> Is this solution okay for you?

This should should not be needed, because there are v4l2 stubs.

Best regards,
Krzysztof

