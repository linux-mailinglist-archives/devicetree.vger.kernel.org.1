Return-Path: <devicetree+bounces-221346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2BBB9EB99
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:39:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA20E2A5F71
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2607C2F3C30;
	Thu, 25 Sep 2025 10:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CLQeG1uM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147D12EB5C1
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758796468; cv=none; b=VFIbGLoNdq49xBwPIKaJ4uulxfdVhDbXNQXtNpwu1UXTykr4V1oQ7CsIBJ3Ic/Y0OJHraX4hjWAkpaHtIFeKYIFTaoZJZt1jM0bBM6Q05sx3HlUUWmypO6IKG40Rvk0zcx/csfGu9mwmRbGM5cPHyV2usWvwlsenRhLoNcmPnQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758796468; c=relaxed/simple;
	bh=Mbnu80dfRVpMKfvh5p/F+tEjYaZ2s4cTxrkqTl/tyzo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XUTBrCSImAtM6XS/gOV6gi8nsv9XfCWJ4jC9v6GHNQPnusnnXyFDzKjGK+Ob+PTGrV3P5i/CCodfwHTVaSmxoCkni3rfc4NZ9Xgk2TCunO97akUkTExdYhc9fu9ZBI/3pBp+K39Dyk7bln+X+ppANs+5yHLYJCO3cyxOCT+/RwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CLQeG1uM; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e23a6617dso7873275e9.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758796464; x=1759401264; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w6O7qVDtzfZYudiZbhlwQy20O4vsTVxUZu4CV773opw=;
        b=CLQeG1uMVkTSM2gDWODtjnNrO+FaYvrhjG89nv1l+8Kzq7fBglu3QABVQTpjKRCzst
         9e8b6Z6PaZnt1kVpuDQE2SOtuNd8F5hFg9QogpgCYyy5y1K6mefmCySxuZqKHojSzGWe
         jopOB7z4MuFi+zBIz+lw/aaWasJVFD1rUs8UHu3GMd38REJPfN4UPtc6PQZ8M+ME/bUn
         FDZ+QVVQuKNJH52V5x1ei0VVtLcwvgSUXPtKPkEj2tbGjrrIaLVuQPTx/Wffgql5FdF0
         vZWYh0o2wWC/8VVRuFOB8Db1BPaew0Wb43vuUQ0JaJQAj03EaGzUuMenNYQK4IVvDAhP
         P7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758796464; x=1759401264;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w6O7qVDtzfZYudiZbhlwQy20O4vsTVxUZu4CV773opw=;
        b=tyrHBaCRGuE2Mb+6tNW/dUYnxSuQSgGr2HR0Dv2FvzPFC+kSRNfPlBqmnhR+rqU3Fe
         D7MHofS2gZv3MUbsBpKGkPQDW9AiCjtITduc6dXHDMJ5/VCWMhLJFmEERs7JpsSE0i4M
         aSGLHWGkvcU5pqCdxcWGnQafG1lCiAhYpyYsC8iMbACZubQ4W9WYt7OdtRhXW8cQtywU
         yNTAAKrRuKNcoKFbE3guVihpvxw6DLbiO5l7PKEYS9laBJwy4iEkhP3ZS2zJachWBJNd
         acv8Lv5jlHYls5MXIVmiH3JwAAci6DdcvSvO2XTGbfjAungqwrSyomRa215wtAxwdlAq
         Ksjw==
X-Forwarded-Encrypted: i=1; AJvYcCUWcH34zijCBuobXnRwQRp8mrgr5ONOPOwjdo5d3jMtRF+i7YvB0sg9+/fqgMwRlFxXmQr3rRH12Ea1@vger.kernel.org
X-Gm-Message-State: AOJu0YxDS5SmyYYkWGQNNl5r0Rwqr9Cbl8KVsWNW48bXE9XbsTmV1L90
	mu5jMO5NGje7wy7NH91V7XY8wJNQvwUjLlhg9SMH8XdeK4f6Qqf6HgDmkiD5Rz7seLc=
X-Gm-Gg: ASbGncuQbfSRYVY7I4ZpvSJIHou5WfrpmGtHcckhtopwA8zs3cU1uW2MSfKKdpFirGk
	N46r3g+6eAUqIfLCPy47zbPAPnb97SB3EUsItRgwwEZbR3A4+ghw+bv87zRKQ99VHq2Lv1ojUaj
	71HRxs5UA+u4eohxq7Y0ePkM4DHw0r/1xtxEZmqBsNIhJu+U/9hyXRJxQR3JCi4BW7MUBVS2pEb
	wIollOlo0Vat9k2eGr6Uqo/kIH3OEDEMZG0WVKZzxoK+DPDORQe8ad25mTdzEGK2ERxpixzV7cX
	akKQXs+E0Noz+89v4EZsIOTfNtmX+0rkSkN03qSdaGnFfYHnt1FgDtUQk00cT5pQyQngKSgGpNX
	vM4pOo4Oh+CJhi5HdOq7Px7Rh5peMWfA=
X-Google-Smtp-Source: AGHT+IHau4F6UO3kNe9td6PkKcUo9vv5NbrrryC/ZcyZh3kAbvyhB2r315j1KCNpYtCjGa/wqGEyxg==
X-Received: by 2002:a05:600c:35ce:b0:46e:1ae7:dc11 with SMTP id 5b1f17b1804b1-46e32a2f926mr32643705e9.20.1758796464415;
        Thu, 25 Sep 2025 03:34:24 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e33bede39sm29988955e9.18.2025.09.25.03.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:34:23 -0700 (PDT)
Message-ID: <accea131-8735-4b67-ac21-06b7950a0417@tuxon.dev>
Date: Thu, 25 Sep 2025 13:34:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdXWMwkEbfjHvuijWzh6CTdHKbceMmE8Y7LPdAMey9gavQ@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdXWMwkEbfjHvuijWzh6CTdHKbceMmE8Y7LPdAMey9gavQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 9/25/25 13:15, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, 25 Sept 2025 at 12:04, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> On the Renesas RZ/G3S SoC, the USB PHY block has an input signal called
>> PWRRDY. This signal is managed by the system controller and must be
>> de-asserted after powering on the area where USB PHY resides and asserted
>> before powering it off.
>>
>> On power-on the USB PWRRDY signal need to be de-asserted before enabling
>> clock and switching the module to normal state (through MSTOP support). The
>> power-on configuration sequence must be:
>>
>> 1/ PWRRDY=0
>> 2/ CLK_ON=1
>> 3/ MSTOP=0
>>
>> On power-off the configuration sequence should be:
>>
>> 1/ MSTOP=1
>> 2/ CLK_ON=0
>> 3/ PWRRDY=1
>>
>> The CLK_ON and MSTOP functionalities are controlled by clock drivers.
>>
>> After long discussions with the internal HW team, it has been confirmed
>> that the HW connection b/w USB PHY block, the USB channels, the system
>> controller, clock, MSTOP, PWRRDY signal is as follows:
>>
>>                                ┌──────────────────────────────┐
>>                                │                              │◄── CPG_CLKON_USB.CLK0_ON
>>                                │     USB CH0                  │
>> ┌──────────────────────────┐   │┌───────────────────────────┐ │◄── CPG_CLKON_USB.CLK2_ON
>> │                 ┌────────┐   ││host controller registers  │ │
>> │                 │        │   ││function controller registers│
>> │                 │ PHY0   │◄──┤└───────────────────────────┘ │
>> │     USB PHY     │        │   └────────────▲─────────────────┘
>> │                 └────────┘                │
>> │                          │    CPG_BUS_PERI_COM_MSTOP.MSTOP{6, 5}_ON
>> │┌──────────────┐ ┌────────┐
>> ││USHPHY control│ │        │
>> ││  registers   │ │ PHY1   │   ┌──────────────────────────────┐
>> │└──────────────┘ │        │◄──┤     USB CH1                  │
>> │                 └────────┘   │┌───────────────────────────┐ │◄── CPG_CLKON_USB.CLK1_ON
>> └─▲───────▲─────────▲──────┘   ││ host controller registers │ │
>>   │       │         │          │└───────────────────────────┘ │
>>   │       │         │          └────────────▲─────────────────┘
>>   │       │         │                       │
>>   │       │         │           CPG_BUS_PERI_COM_MSTOP.MSTOP7_ON
>>   │PWRRDY │         │
>>   │       │   CPG_CLK_ON_USB.CLK3_ON
>>   │       │
>>   │  CPG_BUS_PERI_COM_MSTOP.MSTOP4_ON
>>   │
>> ┌────┐
>> │SYSC│
>> └────┘
>>
>> where:
>> - CPG_CLKON_USB.CLK.CLKX_ON is the register bit controlling the clock X
>>   of different USB blocks, X in {0, 1, 2, 3}
>> - CPG_BUS_PERI_COM_MSTOP.MSTOPX_ON is the register bit controlling the
>>   MSTOP of different USB blocks, X in {4, 5, 6, 7}
>> - USB PHY is the USB PHY block exposing 2 ports, port0 and port1, used
>>   by the USB CH0, USB CH1
>> - SYSC is the system controller block controlling the PWRRDY signal
>> - USB CHx are individual USB block with host and function capabilities
>>   (USB CH0 have both host and function capabilities, USB CH1 has only
>>   host capabilities)
>>
>> The USBPHY control registers are controlled though the
>> reset-rzg2l-usbphy-ctrl driver. The USB PHY ports are controlled by
>> phy_rcar_gen3_usb2 (drivers/phy/renesas/phy-rcar-gen3-usb2.c file). The
>> USB PHY ports request resets from the reset-rzg2l-usbphy-ctrl driver.
>>
>> The connection b/w the system controller and the USB PHY CTRL driver is
>> implemented through the renesas,sysc-pwrrdy device tree property
>> proposed in this patch. This property specifies the register offset and the
>> bitmask required to control the PWRRDY signal.
>>
>> Since the USB PHY CTRL driver needs to be probed before any other
>> USB-specific driver on RZ/G3S, control of PWRRDY is passed exclusively
>> to it. This guarantees the correct configuration sequence between clocks,
>> MSTOP bits, and the PWRRDY bit. At the same time, changes are kept minimal
>> by avoiding modifications to the USB PHY driver to also handle the PWRRDY
>> itself.
>>
>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v7:
>> - used proper regmap update value on rzg2l_usbphy_ctrl_set_pwrrdy()
> 
> Thanks for the update!
> 
>> --- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> +++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
> 
>> @@ -110,6 +125,49 @@ static const struct regmap_config rzg2l_usb_regconf = {
>>         .max_register = 1,
>>  };
>>
>> +static void rzg2l_usbphy_ctrl_set_pwrrdy(struct rzg2l_usbphy_ctrl_pwrrdy *pwrrdy,
>> +                                        bool power_on)
>> +{
>> +       u32 val = (!power_on << (ffs(pwrrdy->mask) - 1)) & pwrrdy->mask;
> 
> ffs(x) - 1 == __ffs(x)

OK, thank you! I'm going to wait for more feedback before updating it in a
new version.

Thank you for your review,
Claudiu

> 
>> +
>> +       regmap_update_bits(pwrrdy->regmap, pwrrdy->offset, pwrrdy->mask, val);
>> +}
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


