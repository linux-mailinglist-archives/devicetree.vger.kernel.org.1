Return-Path: <devicetree+bounces-76875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6234090C6DC
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:28:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D71B1C21F8C
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D100D14A609;
	Tue, 18 Jun 2024 08:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="XU3hsbcs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C2714884D
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 08:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718698297; cv=none; b=OMB+sSvpArcrqd3N7X7vwjMBGmFXppEfEZH07cH6EDKNhxgn3X2kgasdg3yI6l+zG1b5nwd+t1ZqV4QT6yTFqbe5m79YjZOJiz1l9qDpmUQWjIL06KZ0Ez/LIqdKHVeAeoMxh989tSrxJ3YB6VTe1BPaaZCrIKXxrESShNjRr7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718698297; c=relaxed/simple;
	bh=2KNMmat5vMET2BDI7NUXUz9iV8jjghd0Qaf7pSQvWdY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p4FO94dfqMfYy1/6svK2d/JoZVgUS0vr3m7LjBb6vbs/1wSpdCvqD8QnegQ0DW8bguQjvGils2la9rrAoAihyjqPelwXjifd76lp1RerKCruw+omveTS2w4S2sOLHedMYWd+SOwNlKmfbRuxIp4c6Ttu4hiKhhx8cLst+1g7zek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=XU3hsbcs; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4217dbeb4caso42307195e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 01:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718698293; x=1719303093; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Db/Ttkm8Wt1DAojtG+l5i3VYAIO56vuiF9BvfZCWUE=;
        b=XU3hsbcs6oN4mExeSoAh7KhcLS6krsD89eVRRiZDBOHpP98+i0yBPiudWLfNIexlJC
         ouihp8C99os4Xses4INfKTAib8W/j4WOEWCw/Rv0Bo/32czrzhul0WlocnN2BWqNuCsA
         kvD5gii341WdbDhOgVDoodAuBe7vv1H5QzSgoNLL17py8xgORxnN7hjrT6LIxuVmsGwb
         BMTW00qy31qvRmR6Df/t7pwxiuUkniVtRL0px3It0GacLgjKCKiDppN3PHJ5S8wP0C6h
         d5d74zrnSm9jcksmwBVmPgrhbK1RtqIKOfBvpgo0SV4Mo5HwU7ZuLLBCKVRvCI1QGpRP
         BVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718698293; x=1719303093;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Db/Ttkm8Wt1DAojtG+l5i3VYAIO56vuiF9BvfZCWUE=;
        b=rpv5jlk/H8qaSguWnG9hJEEPypQKRGcNp+E2i0v7+0K1bCJ4zPmkczsCbFxMDXvX1F
         psFFupBDzN97lkUzcEa89iguX2i+1815LprTU3Cf9+lo24+FhPLrxgDaFdcnxWMm1jnz
         0ybZ+c+V7Qg81EofoLCJ6vHASSlM7214DgnWDBegU9ELfMuFqHgK43WWa2VmUKtUZU3h
         ONmCcpQiYGmThNj9d/YNqxwq9CSMTTXdpVeCOELpTNuoZ+w+u3ni9fC46NHHQwY1P8F9
         Zg1X0afDJd4fu7IdBhAVXyydFk1n+Lhn1A6hrpnjzrnR4f9ukSvCQbbHg8E4aN3jpbuH
         BAgA==
X-Forwarded-Encrypted: i=1; AJvYcCVJP2zefPJ/8kvRCeXU78Vbj/PsE7WV9FZ1CDbt1SS2AJFPPN9Kn317U6n7ztRUYYpXvfng5H4eAFrP8xzJSo1G5rjuyUtkD0yzGA==
X-Gm-Message-State: AOJu0YypFeCwOmq5pFNz8sHiBSfAZbEdIcqgyVeAaK0L8K/98zhWYzBv
	iIBYJufZ5gdxEQ/3IKCb+nujEk1PBRoioiwXUvY02OutK2km00GGqETm0D1BVj4=
X-Google-Smtp-Source: AGHT+IEZ4zfien/Ap0pCf2tDyhM1mJ0USifoiBZp4jjoL6ZEetj9nRXUeKMXuBuNxOiTYrJSsTYSkA==
X-Received: by 2002:a05:600c:4fcc:b0:423:4c2:7a80 with SMTP id 5b1f17b1804b1-42304c27cabmr78141565e9.5.1718698292647;
        Tue, 18 Jun 2024 01:11:32 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422f2f30925sm183177995e9.0.2024.06.18.01.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 01:11:32 -0700 (PDT)
Message-ID: <ee58a84c-d0a9-4caf-9b97-40a4eaebae3f@tuxon.dev>
Date: Tue, 18 Jun 2024 11:11:30 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/12] dt-bindings: clock: renesas,rzg3s-vbattb-clk:
 Document the VBATTB clock driver
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Conor Dooley <conor@kernel.org>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 lee@kernel.org, alexandre.belloni@bootlin.com, magnus.damm@gmail.com,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
 <20240614071932.1014067-3-claudiu.beznea.uj@bp.renesas.com>
 <20240615-angler-occupier-6188a3187655@spud>
 <3d9ed0ec-ca9a-45b4-a633-8f7051d13cff@tuxon.dev>
 <20240617-subsoil-creed-04bf5f13d081@spud>
 <0a4ba0e5-3fb1-4ffc-b2d8-a4eb418707eb@tuxon.dev>
 <CAMuHMdXOiuORjLo2nRAFxtXmn5rRm7U-CEHqfX2DoXHmQyfdRQ@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdXOiuORjLo2nRAFxtXmn5rRm7U-CEHqfX2DoXHmQyfdRQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 18.06.2024 10:56, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Jun 18, 2024 at 9:34 AM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 17.06.2024 18:19, Conor Dooley wrote:
>>> On Mon, Jun 17, 2024 at 10:02:47AM +0300, claudiu beznea wrote:
>>>> On 15.06.2024 15:17, Conor Dooley wrote:
>>>>> On Fri, Jun 14, 2024 at 10:19:22AM +0300, Claudiu wrote:
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> The VBATTB IP of the Renesas RZ/G3S SoC controls the clock that feeds
>>>>>> the RTC and the tamper detector. Add documentation for the VBATTB clock
>>>>>> driver.
>>>>>>
>>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>> ---
>>>>>>  .../clock/renesas,rzg3s-vbattb-clk.yaml       | 90 +++++++++++++++++++
>>>>>>  1 file changed, 90 insertions(+)
>>>>>>  create mode 100644 Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml
>>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml b/Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml
>>>>>> new file mode 100644
>>>>>> index 000000000000..ef52a0c0f874
>>>>>> --- /dev/null
>>>>>> +++ b/Documentation/devicetree/bindings/clock/renesas,rzg3s-vbattb-clk.yaml
>>>>>> +  renesas,vbattb-osc-bypass:
>>>>>> +    description: set when external clock is connected to RTXOUT pin
> 
> FTR, this contradicts the explanation below, which states the external
> clock oscillator is connected to RTXIN.

I agree.

> 
>>>>>> +    type: boolean
>>>>>
>>>>> When you say "external clock", is that an input or an output?
>>>>
>>>> I took that statement from the HW manual. As of the HW manual [1], table
>>>> 42.2, that would be an input.
>>>
>>> Forgive me for not wanting to open the zip etc and find the information
>>> in the document, but why do you need an extra property? Is it not
>>> something you can determine from the clocks/clock-names properties?
>>
>> It can't be determined from clocks/clock-names as of my understanding. It
>> depends on the type of the input clock (crystal oscillator or external
>> hardware device generating the clock).
>>
>>> It sounds like an additional clock from your description, is it actually
>>> different way to provide the second clock you mention above?
>>
>> This is the block diagram (see [1], only picture this time) of the module
>> controlling the clock. Please open it, it helps in understanding what I'll
>> explain above.
>>
>> The VBATTB blocks controlling the VBATTBCLK are:
>> - 32KHz-clock oscillator
>> - the mux controlled by BKSCCR.SOSEL
>> - the gate who's input is the mux output and XOSCCR.OUTEN
>>
>> To the 32 KHz-clock oscillator block could be connected:
>> 1/ either a crystal oscillator in which case it will be connected to both
>> RTXIN and RTXOUT pins (the direction of RTXOUT is wrong in this picture for
>> this case)
>> 2/ or a device (like [2]) generating a clock which has a single output and,
>> from my understanding and experience with devices like this, only RTXIN is
>> needed, RTXOUT is connected to the ground; for this case the 32KHz-clock
>> oscillator block from [1] need to be bypassed in which case the newly
>> introduced property will be used; this will select the XBYP on the mux.
> 
> Sounds similar to the RAA215300 PMIC, which includes an ISL1208-derived
> RTC, where this was handled using two different clock names:
> https://elixir.bootlin.com/linux/v6.10-rc1/source/Documentation/devicetree/bindings/regulator/renesas,raa215300.yaml#L49
> https://elixir.bootlin.com/linux/v6.10-rc1/source/drivers/rtc/rtc-isl1208.c#L869

Yes, seem similar. I wasn't aware of this approach. I'll switch to it.

Thank  you,
Claudiu Beznea

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

