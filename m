Return-Path: <devicetree+bounces-256016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DE472D2FBE3
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CFDDF3025E19
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11993612FE;
	Fri, 16 Jan 2026 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0HZf4Oq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409FC35C1BC;
	Fri, 16 Jan 2026 10:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768560153; cv=none; b=L4Wn3sqJtMQ9jDmOTfqJUUTXXaVgKx2glybAF0kmvYNNYkT1NowN+xwmp2DLurweOAg3ba7HPU7vaH82NOBySgpamdff43PoTLAKPToJfJP1yZ3QiPmyf6sCGfkVKntP49pUs9aVdbSyDBt4RkoVappQsmQyJ3ETZZ+U/QJ3my8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768560153; c=relaxed/simple;
	bh=OVzTrPTluD0P1DGjl2SAn3sf1KOeqQ5hzbyZ/i9x+fk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DhjswAX5hsiY0wApM9Q/oYBWiBLFzPcm7EzBNBY4XgHi7ML0OmZTwN8LsoN2qrpcmvhM1uDPV32ztKUImzOGGrTt+20VYQvCoIU6nBfuUNWvnXSCOVa9Canp3hOE0hEsXhd0VLQlhav2xddvqcDrAeKztuxGY3lWz43PiVOniRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0HZf4Oq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C31B5C116C6;
	Fri, 16 Jan 2026 10:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768560151;
	bh=OVzTrPTluD0P1DGjl2SAn3sf1KOeqQ5hzbyZ/i9x+fk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I0HZf4Oqj6JJ0lMHJbiAhft4/2Bd7+QmBcemU5hDlYSfwijTISuyLeedsuwEzpro/
	 Ipcy5YG/zpc0lc8QX6bRLA+zaYho951BQr3cF4kr2s7LjbBamxiJ1Sg5cAKgtPAluZ
	 fAMYAiBhU19KvvvHoy14R2GgqK9Ian46w6FiAk52dZTX3uijMi3YZdYSEob/dTwTyg
	 kOnlyNxKw5Rk3S6QSCBtsm5F7AMXmdYq4OtSruoZQZssv0OhlHYU5UHU4oFS48OE3D
	 rLXH0j/WFvaiqC44Z7VE9SwamzmCWouxrK3a9HP+JOZ8TVcWa1ZpG46uJpbHEBFjpP
	 CXwCPvLcP1gVg==
Message-ID: <eb7acb38-8993-4203-a13d-7e5be4b9c6ec@kernel.org>
Date: Fri, 16 Jan 2026 11:42:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] mux: gpio-mux: add adi,adg2404 support
To: "Miclaus, Antoniu" <Antoniu.Miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Srinivas Kandagatla <srini@kernel.org>,
 Johan Hovold <johan+linaro@kernel.org>,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 David Lechner <dlechner@baylibre.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260115121943.23715-1-antoniu.miclaus@analog.com>
 <20260115121943.23715-5-antoniu.miclaus@analog.com>
 <20260116-lurking-beetle-of-imagination-2a05e6@quoll>
 <CY4PR03MB339943974F603BCB61ECDE609B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CY4PR03MB339943974F603BCB61ECDE609B8DA@CY4PR03MB3399.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/01/2026 10:48, Miclaus, Antoniu wrote:
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzk@kernel.org>
>> Sent: Friday, January 16, 2026 10:33 AM
>> To: Miclaus, Antoniu <Antoniu.Miclaus@analog.com>
>> Cc: Peter Rosin <peda@axentia.se>; Rob Herring <robh@kernel.org>; Krzysztof
>> Kozlowski <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>;
>> Srinivas Kandagatla <srini@kernel.org>; Johan Hovold
>> <johan+linaro@kernel.org>; Bartosz Golaszewski
>> <bartosz.golaszewski@linaro.org>; Linus Walleij <linus.walleij@linaro.org>;
>> David Lechner <dlechner@baylibre.com>; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Subject: Re: [PATCH v3 4/4] mux: gpio-mux: add adi,adg2404 support
>>
>> [External]
>>
>> On Thu, Jan 15, 2026 at 02:18:22PM +0200, Antoniu Miclaus wrote:
>>> Add adi,adg2404 to the compatible list. The ADG2404 is a 4:1 analog
>>> multiplexer that benefits from the enable GPIO support to prevent
>>> glitches during channel transitions.
>>>
>>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>>> ---
>>> changes in v3:
>>>  * integrate with gpio-mux driver instead of standalone adg2404 driver
>>> ---
>>>  drivers/mux/gpio.c | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/mux/gpio.c b/drivers/mux/gpio.c
>>> index 93487483e81f..bd8f0c617dd6 100644
>>> --- a/drivers/mux/gpio.c
>>> +++ b/drivers/mux/gpio.c
>>> @@ -59,6 +59,7 @@ static const struct mux_control_ops mux_gpio_ops = {
>>>
>>>  static const struct of_device_id mux_gpio_dt_ids[] = {
>>>  	{ .compatible = "gpio-mux", },
>>> +	{ .compatible = "adi,adg2404", },
>>
>> Why do you need the compatible? I do not understand this patchset. You
>> are saying you integrate it into gpio-mux, but what you did is to
>> duplicate the compatible and binding.
>>
>> Half of your patches are not necessary, you only needed to add
>> enable-gpios to gpio-mux with argument that ADG2404 can use such binding
>> (in complete/full/proper way).
> 
> I am a bit confused on how can I emphasize to the users explicitly:
> "Hey, you can use adg2404 directly with gpio-mux"
> The same issue I had with adg1712 series which can be used straight away with gpio-mux.
> If there are people/customers looking for adg2404/adg1712 there should be a hint somewhere.


This is a bit different problem. Why would we care about message to
customers? Following such approach this driver and dozen of others might
have soon 1000 entries for every possible device which is supported by it.

IMO the best way is to submit good DTS using this with a comment that it
IS ADG-foobar which also has other benefits - helps reviewing of
bindings and driver. I would accept also a short/concise list of device
names/models in the binding description.

Best regards,
Krzysztof

