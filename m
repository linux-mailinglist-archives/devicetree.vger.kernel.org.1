Return-Path: <devicetree+bounces-267191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +kTyBP1mm2nEzAMAu9opvQ
	(envelope-from <devicetree+bounces-267191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:28:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F11704C6
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B90DB3009E15
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 20:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CAAD3563E0;
	Sun, 22 Feb 2026 20:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ut66ecMT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E88C350299
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 20:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771792118; cv=none; b=nfsFo1HVn1pNezmYqqpEEeiCT2MOE7sqQk0a59NjjAgxchiuXqdY23TZxq4A25oMYJazHRYQT5I2LVEFE1nczTjlmWqGPIJlRG+e/iB3tFNtBcrIK8Si4uyGiT5R4oV/f+sufFCDHp8COk7VWrwV90CHgPkTIwzFc0+Vu+biCpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771792118; c=relaxed/simple;
	bh=tZLhzoSHsqs8xJFs2cspdn+a2qH/X6DJfEZuxlO+wZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BJxGXB4ntHPAzrjMQ0IVln6MXjk72ee2sVrCuIkHOwPmQA+DOKSquAFldXUAyS8kc/MtC6lPPnNMchnhyK4+igobryC/cAIgynQ20Wels5TPldV82NkX8VJ1eFGn3hj9kzydL4Bz860l7IWR2aAGY1KVlmCLgHbVohCijccpHgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ut66ecMT; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-408778a8ec4so3231330fac.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 12:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1771792115; x=1772396915; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C6rzqH4sIpBgnv6sfYLRrzmdlVb7TXc+VnCcqC4LM0s=;
        b=Ut66ecMTOHygv/dPnqMYIXOWW2fJI1iFgY2zQpa5/BeKYwVtgKR2qm9DIpstaK+uqL
         Qdfdz8dUaHlLowzMq/kyP3b1nyZFSDV2FGkzmh/NYhXRfR8fHemZHvjn1JQJyw++SE4G
         XPeD81811S8ytK3q/omU8Fp8GI91SdMTlrflkqeZklK6txxSgfmqgPrkUZguN+Bx6wz1
         DsKt1vhbJ43BpdQjSPPNJpU66RffkOIHsbdC4Epi+gxBzez8VUCBhNE0FIWyBJGNcS3Z
         a/7ZEZPxQkUuvCKI9KF/vECSSf6unwZlo9Rr9WTxPgN68mZvoP4/Qux4fnNywZyKdu2m
         fywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771792115; x=1772396915;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6rzqH4sIpBgnv6sfYLRrzmdlVb7TXc+VnCcqC4LM0s=;
        b=ReeLHKyaImYovcGnvWd1ywSi5kGJPIpgAPD1wbV4tesLGKS/4aZH+TUh6ioWmHV2CU
         Sl6Wa7z8VZrNSaVrD9LzfR/Yd9zSddzZ7e+RzidnAoXeCOrnMECvCi6wKKbKQsQH7ECl
         +5N4IZ+7U0aYWRK/+KmJixOkEeoqfZGgL9CvJSWVzn+VGklUXzcfeVdj3+0KU9stnint
         B1EVzT54jyns0Nfgv+jbOhXjwSjaFwJcLryxXetQk6Fowqgs2OXNQgntHSvL2FQcTya1
         x9Izj3zO3J6rTPa8DgHDVwRMmMc+koN+vMz4GVXZhu6TnKfNmQGXv0YQye70cPq/vI0H
         IG5w==
X-Forwarded-Encrypted: i=1; AJvYcCU1CUFWy1/tIjJPcTxZFYsS0urNM8K+wq17KBJuaZADTY11idCuY840oKAaUCeYxnyGzNOdhFPMD0Eh@vger.kernel.org
X-Gm-Message-State: AOJu0YyIbPxLvlJ+yJiapH2MilmWCLmQGSN8MoAhElnrxsTYkJSoONgr
	jxi/M0vOBcDf8Fsq3tKUuspGTir4dv8RXW9LKi2GKrYdkS3+In3xrUzcy4ean5lF/Qo=
X-Gm-Gg: AZuq6aLxjvwLFhlIe9xEsBWMV4LPSoLf6IJRv4fSX3vLSLaero1OipjhPKfBObwlqCL
	NIV7pGVVu98FAmXq4dTSPr0lEltkLjP5zOQGzjkZCd71w1D3R4co/6CyDrZXTZs9uupN0r+rQSV
	jT0QxCrPywjalbdkaDWeqkIyjWgw3i1nClMZhrNTD6pvlBvzOlkT4JQmY7fKdZTRgh7XwtLTmMA
	jTMBRMWpWpGU2t5hkfw25Ez7mxrw2Tcju3f3I4evg2s+KcY9RYGJczDYQaKnX3XM952gwYTr7qW
	4V/n1ZJG8iycfwkqKhuq4GPhuu1xC5NAdHLuaaGR1++wpAI96l8GPazI+bU7wXnmDCkiyE688uF
	VNKwBzIfg0EM0Iu1s898rMyAJPQGaFRMnicCrWZBc4sh3tUpWHEwlZyYwMDVF9Sx0UXBLKs/uZa
	u0w328axUSHlGk6caGcVtrs1lM21qi5X/c3rzyAvWO9oQpby8vjHdlKc0EaNOeBX8UZWO1L1uEf
	A==
X-Received: by 2002:a05:6871:c8e8:b0:40e:f9c9:ad40 with SMTP id 586e51a60fabf-4157ac1f5fcmr4322073fac.10.1771792115205;
        Sun, 22 Feb 2026 12:28:35 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:810f:2680:3e30:5a87? ([2600:8803:e7e4:500:810f:2680:3e30:5a87])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4157d3a9121sm5652627fac.19.2026.02.22.12.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Feb 2026 12:28:33 -0800 (PST)
Message-ID: <381ec0e0-491b-40e0-92b7-b6c249ba2ea9@baylibre.com>
Date: Sun, 22 Feb 2026 14:28:31 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 1/8] dt-bindings: iio: frequency: add ad9910
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>,
 rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-1-3b264aa48a10@analog.com>
 <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
 <n5oxnxatgdqpomuijz6avvautkndg7r52kmobakemcgggdkjh2@q7m6h2ndjx7w>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <n5oxnxatgdqpomuijz6avvautkndg7r52kmobakemcgggdkjh2@q7m6h2ndjx7w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267191-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:mid,analog.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 2C6F11704C6
X-Rspamd-Action: no action

On 2/22/26 4:47 AM, Rodrigo Alencar wrote:
> On 26/02/21 02:43PM, David Lechner wrote:
>> On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:
>>> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 

...

>>> +
>>> +  reset-gpios:
>>> +    maxItems: 2
>>> +    description:
>>> +      GPIOs controlling the device reset and the I/O_RESET pins. This is only
>>> +      used if resets property is not defined.
>>> +
>>> +  powerdown-gpios:
>>> +    maxItems: 1
>>> +    description:
>>> +      GPIO controlling the EXT_PWR_DWN pin.
>>> +
>>> +  update-gpios:
>>> +    maxItems: 1
>>> +    description:
>>> +      GPIO controlling the I/O_UPDATE pin.
>>> +
>>> +  profile-gpios:
>>> +    minItems: 3
>>> +    maxItems: 3
>>> +    description:
>>> +      GPIOs controlling the PROFILE[2:0] pins for profile selection.
>>> +
>>
>> Looks like possibly some interrupts as well: RAM_SWP_OVR and SYNC_SMP_ERR
> 
> Interrupts are not handled by the driver at this point, so they were not added
> here. The device is meant to have some features exposed through SPI, but to
> extract the most of it needs to interface with an FPGA. For that, an IIO
> backend is in the works.


DT bindings should aim to be complete. It doesn't matter what the driver
implements or not.

We make exceptions for things that haven't been seen before where the
bindings might not be obvious, but output pins like this (at least the
error one) are pretty much always connected to interrupts.

Also, the interrupt properties should not be required. So if the output
line is connected to an io-backend instead of an interrupt, that is fine.
The bindings should cover all ways this could possibly be wired up.



>>> +
>>> +  adi,sync-clk-disable:
>>> +    type: boolean
>>> +    description:
>>> +      Disable the SYNC_CLK output pin. SYNC_CLK runs at one quarter
>>> +      of the system clock frequency.
>>
>> Clock outputs should be described as clock-controller and #clock-cells.
>> The actual enabling/disabling can be done at runtime.
> 
> I thought of that, but when interfacing with an FPGA, the clock consumer
> will be the IIO backend itself, which this device driver would depend on.
> It would create a cyclic dependency during the probe of the drivers:
> - This device being a clock provider and an IIO backend consumer
> - The FPGA IP being a IIO backend provider and a clock consumer.

As above, the binding should not depend on what the driver does. There is
a standard binding for this, so we should use it. I'm sure we could find
a way to make it work in the driver even if it is just manually parsing the
properties instead of going through the clock framework. I.e. if the
clock-controller property is present, turn on the clock output, otherwise
turn off the clock output.

> 
> This would be just save some power when not interfacing with an FPGA,
> there would not be a clock consumer to get the clock disabled.
> Normally, clock consumers would want to have clock enabled, which is
> already the case by default.
> 
> I would add the FPGA/IIO backend support in a separate patch series,
> as it would bring more stuff here.
> 

