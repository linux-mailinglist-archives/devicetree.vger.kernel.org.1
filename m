Return-Path: <devicetree+bounces-192442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F2116AF6B3B
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 09:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 220191C25B8D
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 07:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92DCB1F0E4B;
	Thu,  3 Jul 2025 07:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fNzukh+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692D71E492D
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 07:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751527048; cv=none; b=Nzt4aPG+0wHrMfCHWRfHEq+lJiyr2iGXz5X1fejbD1bLVpsp2v7wX774arj+kFTHjhf6fjCr/iRmGrRX9aGozMvu9GMp53/x+MfN3jnQK/ex0Z85d4GI4JetPgzbGnWIaSjYFWh7JrcDBXGCRRpRS5t1dXt3cuJt3LrOBmohUxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751527048; c=relaxed/simple;
	bh=w5S6M49m60hjSJs7bbXRrpTRRAazZ5vTIgpMk34vjwc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OKakBelgrNP7tIzDYFlCUYpoZcpdtl9N75kHr2aprb4GJdkYzZHB2PupA1uZ1neSR1juPFZqxHqdaSzGRYE10SooNYWv1AtxOpgJY4RVwtTISogrFI9NNoqlzIvqh8Xakf55DVm/j8Ke4dRV3gkiEq1UapW8cKdsxrPe0/IqOe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fNzukh+s; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-acb5ec407b1so920867666b.1
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 00:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1751527045; x=1752131845; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0HoS/AjEWAKNGkAqtn2tT2loqaFKZfdMKEbgahHL+u8=;
        b=fNzukh+sx3Ayhdk2TPTpXyZWU6T/ktD1ISn0yA6spMuETsd2kcHQF6ajvH8bMDtJ5W
         ucXXWSGEuS3zOvwj75ypQgiMRUOFoaT8tnqzNy00hwGlgKa3gKY56pAlT6hBv81n5Y22
         uJzwmNdi6GwD2jU2Ne7y0Dc4OdCqaWGdNeAfPu05k83H3BS66ofacDdXt9BSpn710m2y
         ERalxNV4OzJwUBIHj6cEgWh5TzZGHO9aY9pih/MA4UoSShnaExyVCtNQNAtKmH5somgm
         mxMDsdS61IugAlTckfw+wu8ruluzTfdqrjeC6YThs2uAbjBGTKK60YAeLOHimcRDNRvI
         XW6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751527045; x=1752131845;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0HoS/AjEWAKNGkAqtn2tT2loqaFKZfdMKEbgahHL+u8=;
        b=TBrw5UeyOeZ2kOfucxrDSwURd02FXKUCwH4TNY3gUm82zj17Ic0ivB6MC5nA6hAyJt
         y+UO+yypZ0hLU4ljGqCrnygPbBIa09DwEHoKHFAdK+uWxJorrzmdOKTT3xGZ6flRQZtg
         4CLlHhWAC5KzAZQBhL4e3lRd8A8JhDuK6qVdsHUgOjAlhCtOYxNaoiu+iqAFIwnhV0Dw
         wcnM+Mgn01hzf1tnvRO/GlhCq7ici8cv2n0Dc0/Ioikgy+xDfjwao5VcVlJwWNFzFk7T
         TQ4+4suyRn80ux+yB/3Z/XEICNlxKNmNZaK+37EsWU2X7T++pqSfdEk65ooYe2s9Gq/P
         K2Yw==
X-Forwarded-Encrypted: i=1; AJvYcCVSoYtxcMFxxGG5D+9kTQ1zpYV4lUYRWyeiCIWo+uys6bgyrMtMv6owkovvXor6d53UX2etRO7kitxf@vger.kernel.org
X-Gm-Message-State: AOJu0YxazfABw/e01Wz5N6hPewFNESd/G35wWIrM886h3e0/6sCYF6rr
	y3+IRg7nsYbs+C25hhAVsSd+PVOsT2uoh4lskEkwTothdWr8akMVHn4uFpJBzWA8JQk=
X-Gm-Gg: ASbGnctFIbh+a+0l4qfqUGx+dDnWGHfLKbkjw95EQYG4A6z6FsBZQu6LQfO1gcIB9LM
	JxVViMzwi9vks6PoqzfXK3N4fBpm/V/4uDyn1zcnLBUS+bhPpCil56BeZvsan/iCtRNhqxJy5SI
	nor4hYPVLDmf76SXt7NV40D7HHUkt1LIbpKETJ9PFHjo/Ve0/zG3+L2CsIErYuCXnQ3WGcXHZnq
	nbzenBE7ggVhuN1KIzOwOHwae1fF4UnoOM708YO72ycsJ/JTcuebwlSUBM4bNy2rduJnekcz8Fx
	c0EiXjWVUlR4zbs0sKKnnNWtm6DGV42v4ftPnc4wnINTH2eSLNaBZlNRUcW6elaZueymsoRRJ6S
	3xfle
X-Google-Smtp-Source: AGHT+IHQ0ths50w6/RyRtuRA2JhYMmgHNAUdE2kYjVaVZHBm7vIJx7cAGzpSqzEoWqdAGpd3BW43yQ==
X-Received: by 2002:a17:907:7fa7:b0:ad8:8efe:3205 with SMTP id a640c23a62f3a-ae3d8b956a0mr185852766b.55.1751527044472;
        Thu, 03 Jul 2025 00:17:24 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.83])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353639c07sm1219430366b.18.2025.07.03.00.17.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jul 2025 00:17:23 -0700 (PDT)
Message-ID: <25a4e9bc-4c96-4c9c-880f-e67223662f56@tuxon.dev>
Date: Thu, 3 Jul 2025 10:17:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: renesas: r9a09g047e57-smarc: Add gpio keys
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "biju.das.au" <biju.das.au@gmail.com>
References: <20250414153818.214811-1-biju.das.jz@bp.renesas.com>
 <CAMuHMdUjtG-EcrpbDO2y8M=GQeV=5i4qODp=VZqymipeCneXhQ@mail.gmail.com>
 <TY3PR01MB11346205BCA481EA7B740A3028641A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <CAMuHMdVNCRGMmgBT2Ow4Af0CTf1iiS=AwhsLnZMFFy40tLYS0Q@mail.gmail.com>
 <TY3PR01MB113462A4490760D5C6C59FF968641A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <TY3PR01MB113462A4490760D5C6C59FF968641A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 01.07.2025 17:38, Biju Das wrote:
> Hi Geert,
> 
>> -----Original Message-----
>> From: Geert Uytterhoeven <geert@linux-m68k.org>
>> Sent: 01 July 2025 12:50
>> Subject: Re: [PATCH] arm64: dts: renesas: r9a09g047e57-smarc: Add gpio keys
>>
>> Hi Biju,
>>
>> On Tue, 1 Jul 2025 at 13:40, Biju Das <biju.das.jz@bp.renesas.com> wrote:
>>>> From: Geert Uytterhoeven <geert@linux-m68k.org> On Mon, 14 Apr 2025
>>>> at 17:38, Biju Das <biju.das.jz@bp.renesas.com> wrote:
>>>>> RZ/G3E SMARC EVK  has 3 user buttons called USER_SW1, USER_SW2 and
>>>>> USER_SW3. Add a DT node in device tree to instantiate the
>>>>> gpio-keys driver for these buttons.
>>>>>
>>>>> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>>
>>>>> --- a/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
>>>>> +++ b/arch/arm64/boot/dts/renesas/renesas-smarc2.dtsi
>>>>> @@ -12,8 +12,13 @@
>>>>>   * SW_SDIO_M2E:
>>>>>   *     0 - SMARC SDIO signal is connected to uSD1
>>>>>   *     1 - SMARC SDIO signal is connected to M.2 Key E connector
>>>>> + *
>>>>> + * GPIO keys are enabled by default. Use PMOD_GPIO macros to
>>>>> + disable them
>>>>> + * if needed.
>>>>>   */
>>>>>
>>>>> +#include <dt-bindings/input/input.h>
>>>>> +
>>>>>  / {
>>>>>         model = "Renesas RZ SMARC Carrier-II Board";
>>>>>         compatible = "renesas,smarc2-evk"; @@ -27,6 +32,31 @@
>>>>> aliases {
>>>>>                 serial3 = &scif0;
>>>>>                 mmc1 = &sdhi1;
>>>>>         };
>>>>> +
>>>>> +       keys: keys {
>>>>> +               compatible = "gpio-keys";
>>>>> +
>>>>> +               key-1 {
>>>>> +                       interrupts-extended = <&pinctrl KEY_1_GPIO
>>>>> + IRQ_TYPE_EDGE_FALLING>;
>>>>
>>>> So you are using them as interrupts. Don't you need to configure pin
>>>> control for that (function 15 = IRQ14)?
>>>
>>> The same pin can be configured as TINT or IRQ15, currently it is configured as TINT IRQ.
>>> Is it ok?
>>
>> OK.
>>
>>>> Alternatively, can't you use them as gpios with interrupt facilities?
>>>
>>> interrupts-extended = <&pinctrl KEY_1_GPIO IRQ_TYPE_EDGE_FALLING>;
>>>
>>> The TINT IRQ will provide the same right? Am I missing anything here?
>>
>> When you use interrupts directly, the system will detect only key presses, and fake (timer-based) key
>> releases.
>> When you use GPIOs with interrupt-capability, the system can detect both key presses and releases.
>>
>> See also commit cab3511ea7a0b1fc ("ARM: dts: marzen: Add slide switches").
> 
> As per [1], for GPIOs with interrupt-capability, IRQ controller needs to support both edges.
> But TINT supports Rising or Falling edge, but not both. So, we cannot use this.

If I clearly understand it, this has been solved on RZ/G3S SMARC Carrier-II
by defining these pins as gpio hogs:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi#n141

Thank you,
Claudiu

> 
> That is the reason using interrupt directly.
> 
> [1]
> https://elixir.bootlin.com/linux/v6.16-rc4/source/drivers/input/keyboard/gpio_keys.c#L980
> 
> 
> Cheers,
> Biju


