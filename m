Return-Path: <devicetree+bounces-256178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B485FD33634
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E3AF3001FFB
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D39033D6D5;
	Fri, 16 Jan 2026 16:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po8l0oDk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF5333ADA8;
	Fri, 16 Jan 2026 16:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768579573; cv=none; b=npmDYwN3rsMMB17O0JnE7tqcAoiyI/xTuv6JDjiGyC5jpbqDbL6shdRJ5KPYXzIjPrN5VNYpo7fiWVUdN6iTdb7pinI+JB9PXguHE3EUQb72Bk4p1DUEE7EEVmaLxHJ2PVLtwtNz1OEqy/9FsPoV6aHxVfdIF0HuO1wa6kuboSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768579573; c=relaxed/simple;
	bh=zWvlUIp0ON5GX+O8f9HjXb1O1MSlgCVuSR5ZfrNc6i8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VDgxVL9DnyBM7kE7noLhxXmqXUlAYJR13mznKUoUQH3b5Yt1m805DEE4BNA1F/+bkBqlLrqeF1IS9qh8DUzE8FxNXjOuHQ7mkQGhZgUl0Yevg0x/8P4qFUqgDSvtQX3nkVX0yAH4A7Bfy7oVUfJF7MkzKUDJdxAMEwOWn/P/cDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po8l0oDk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46052C116C6;
	Fri, 16 Jan 2026 16:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768579572;
	bh=zWvlUIp0ON5GX+O8f9HjXb1O1MSlgCVuSR5ZfrNc6i8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Po8l0oDkTo1mzgGvO/4eIECl/5zq7YrgTudQx5U7KQu8xUvpAHUkNOXj+NDgZ4qx8
	 OWZHduQsCrmjWln/yXFVdCVCsJWJCa+KdqwRVugXn8QLXJg3Xd1qXF9QAROmeKKzO3
	 YOyt9ei4pdun99tydiZUfRK1NaWsyRtXcFYazWi8UFKW1M2khlPAE6ys+ZdcLoUMJ+
	 qtn/wzmAKi+aOCZIVh/igqpTdh/BpmhVPM1JHPAgYhgthyVZu+mCxARsKEVi9SPfPL
	 GTb1ndsQGDNyt7gotkQOREu9tDjwL9Y6ve/rf0c5DSf2dciSTBsZFT0aoClr4y0bCr
	 QEfotOSrkl5ag==
Message-ID: <17a9dd9f-d744-4f87-a732-3f4eaf8cadbf@kernel.org>
Date: Fri, 16 Jan 2026 17:06:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and ADG2404
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>,
 Johan Hovold <johan@kernel.org>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Srinivas Kandagatla <srini@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>, David Lechner
 <dlechner@baylibre.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260116-jumping-premium-crow-693a1c@quoll>
 <aWn-R7O_wZkpC1NC@hovoldconsulting.com>
 <CY4PR03MB3399D140FF51521F67AEF8599B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
 <ace6ef5e-d636-4886-8f8b-c318a81522aa@kernel.org>
 <CY4PR03MB3399926330D164F88A7A1F339B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CY4PR03MB3399926330D164F88A7A1F339B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 16/01/2026 16:26, Miclaus, Antoniu wrote:
> 
> 
> --
> Antoniu Miclăuş
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>> Sent: Friday, January 16, 2026 12:32 PM
>> To: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>; Johan Hovold
>> <johan@kernel.org>
>> Cc: Peter Rosin <peda@axentia.se>; Rob Herring <robh@kernel.org>; Krzysztof
>> Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
>> Srinivas Kandagatla <srini@kernel.org>; Johan Hovold
>> <johan+linaro@kernel.org>; David Lechner <dlechner@baylibre.com>;
>> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and
>> ADG2404
>>
>> [External]
>>
>> On 16/01/2026 10:39, Miclaus, Antoniu wrote:
>>>> -----Original Message-----
>>>> From: Johan Hovold <johan@kernel.org>
>>>> Sent: Friday, January 16, 2026 11:01 AM
>>>> To: Krzysztof Kozlowski <krzk@kernel.org>
>>>> Cc: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>; Peter Rosin
>>>> <peda@axentia.se>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
>>>> <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Srinivas
>>>> Kandagatla <srini@kernel.org>; Johan Hovold <johan+linaro@kernel.org>;
>>>> David Lechner <dlechner@baylibre.com>; devicetree@vger.kernel.org;
>> linux-
>>>> kernel@vger.kernel.org
>>>> Subject: Re: [PATCH v3 0/4] mux: gpio-mux: add enable GPIO support and
>>>> ADG2404
>>>>
>>>> [External]
>>>>
>>>> On Fri, Jan 16, 2026 at 09:37:36AM +0100, Krzysztof Kozlowski wrote:
>>>>> On Thu, Jan 15, 2026 at 02:18:18PM +0200, Antoniu Miclaus wrote:
>>>>>> This series extends the gpio-mux driver with optional enable GPIO
>> support
>>>>>> to prevent glitches during channel transitions, then adds support for the
>>>>>> Analog Devices ADG2404 multiplexer as the first user of this feature.
>>>>>>
>>>>>> The enable GPIO allows the multiplexer to be disabled before changing
>>>>>> address lines and re-enabled after, preventing brief activation of
>>>>>> unintended channels during transitions. This is particularly important
>>>>>> for precision analog applications.
>>>>>>
>>>>>> The ADG2404 is a 4:1 analog multiplexer with low 0.62Ω on-resistance
>>>>>> that requires this enable GPIO functionality for glitch-free operation.
>>>>>>
>>>>>> Changes in v3:
>>>>>>  * Extend gpio-mux driver instead of creating standalone adg2404 driver
>>>>>>  * Make enable GPIO optional for backward compatibility
>>>>>>  * Add MUX_IDLE_DISCONNECT support via enable GPIO
>>>>>
>>>>> You are developing on some old kernel. You got stale Cc list of at least
>>>>> three people! How could you for example get "johan+linaro@kernel.org" -
>>>>> from which maintainer entry - but that at least is not bouncing like two
>>>>> others.
>>>>
>>>> Probably from using get_maintainer.pl --git:
>>>>
>>>> 	$ scripts/get_maintainer.pl --git drivers/mux/gpio.c
>>>> 	Peter Rosin <peda@axentia.se> (maintainer:MULTIPLEXER
>>>> SUBSYSTEM)
>>>> 	Srinivas Kandagatla <srini@kernel.org>
>>>> (commit_signer:1/2=50%,authored:1/2=50%,added_lines:5/6=83%)
>>>> 	Krzysztof Kozlowski <krzk@kernel.org> (commit_signer:1/2=50%)
>>>> 	Bartosz Golaszewski <brgl@kernel.org> (commit_signer:1/2=50%)
>>>> 	David Lechner <dlechner@baylibre.com>
>>>>
>> (commit_signer:1/2=50%,authored:1/2=50%,added_lines:1/6=17%,removed
>>>> _lines:3/3=100%)
>>>> 	Johan Hovold <johan+linaro@kernel.org> (commit_signer:1/2=50%)
>>>> 	linux-kernel@vger.kernel.org (open list)
>>>> 	MULTIPLEXER SUBSYSTEM status: Odd Fixes
>>>>
>>>> A recent mailmap is indeed needed to remap Bartosz's old address,
>>>> though.
>>>>
>>>
>>> Yes, I've used "--to-cmd='./scripts/get_maintainer.pl --norolestats" when
>> sending the patches.
>>
>> Then how did you get non-working Bartosz and Linus' emails?
> 
> I am on torvalds/linux latest master branch now. Here is the output of ./scripts/get_maintainer.pl --norolestats: 
> Peter Rosin <peda@axentia.se>
> Rob Herring <robh@kernel.org>
> Krzysztof Kozlowski <krzk+dt@kernel.org>
> Conor Dooley <conor+dt@kernel.org>
> Antoniu Miclaus <antoniu.miclaus@analog.com>
> Srinivas Kandagatla <srini@kernel.org>
> Bartosz Golaszewski <brgl@kernel.org>

Exactly. So why did you send it to:
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
and
Linus Walleij <linus.walleij@linaro.org>

I mean, this is the third time I am asking but you keep deflecting the
question with some sort of other data...
Best regards,
Krzysztof

