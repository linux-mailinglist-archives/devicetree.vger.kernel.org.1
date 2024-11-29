Return-Path: <devicetree+bounces-125448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB59DC067
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 09:22:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CF23281E4F
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 08:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B12D15B99E;
	Fri, 29 Nov 2024 08:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="X/9NX6cI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C67A15A84E
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 08:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732868518; cv=none; b=d7UjIMMlW9xaZ140So///Y04MAnfNsubSt+NHwh6MdQjfLidMdjzW0jK0Bnhibsmu+D+QuQI/1oFo6J8+rEuI10URQB/y2h8k7Uz8DWkeu1RD4d+F2EsDEMbBoOpYXxWbZzShZOhRHGW0jBNNDt50OXbXhsNeMtalhs+5wr4KmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732868518; c=relaxed/simple;
	bh=8x9Kh+cZWUrWlnSkWaTCpm5ku0xz9dhIg3QhOlVxXuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mDucwZ+X237mKTI05auAoKeWthiN46D89RGcWbgkaa7NWNGE0/Sy3kh7QeH1Vjv+jaA377im5Fydjz2A8OYKD6MWkSNJqMoKl6F8MZ5/Q82h0mgIcqKZ3VW30ZDMQWjWdioChxpGDUrAC5eEed5Fr5DG3Ul1Zyb7E9TKSpENqRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=X/9NX6cI; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434a1833367so9308255e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 00:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732868513; x=1733473313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E2oOz52GRWsp3a1EBMDsE5PXCndawDHZAsuExiF65WQ=;
        b=X/9NX6cIEBtf/AQ6OfgTQjyaSFaAPXT1oYAhK11VClcUg4oTJEwW/fMiaVrGvt6nDK
         HdujgYqp0WIWbj0OrCE25PdyEmseCvZWdnWwWyTRIWsvRxCw47y4+vBCkEC7CTK6IPlt
         4yO3pO+Rt0W4egHCd/lo69z7sg68hr5H1Ny4FNuPUY/v9iSZo3hZ/x+zOH5aTfi07ToR
         YD5JciB6Hk/CCuSSz/YMuHJKQU6dGjHDPYzL0XWNocsiL5fF/zWys9cSI82in0EAd4DN
         QQWcO9vntQ1Ir4omfdu0P6+zeQUDOHniPqwCl/EUIQZWCmGKWkVXo4sqyRtBkUrXhzjy
         26pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732868513; x=1733473313;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E2oOz52GRWsp3a1EBMDsE5PXCndawDHZAsuExiF65WQ=;
        b=JeYrNVDzDbe5g5QpTXq9i39Xhf97tI1p+KKT8UfHQBDLvb9xK1aR2sd8u38b6CiOlo
         mEBqE1+CzeDn5ZSoctdIkFkEXQgoR6vug/1EJqUHXaiOQgbd/RnSD7fSTHo6P1YzRnrs
         RxDj+AbhDv1uhSpWg1dZbJcA/27HRghsyVbVffAF21JkKCuh/IbWijBgWD+0LfgSy6PD
         DI4+VNFNPHXE7/ST+b8oovD5h/fzwv6EaNRlS/MbnQkB39iRjWZNZeaCQBF21cb52uC3
         zPUSgnOpdnUsnIpYnhSLPtBtQuSpD3j5yh1Kr8JMdMZIRrud23sR9ME7l28+anVbJqAD
         g/1A==
X-Forwarded-Encrypted: i=1; AJvYcCVSxIkAKbIGEypZ/PcFuvlnYl7voQvbLpZ0nbn9sTiV9DFVN7ADy5gX3IcpBllpYljizRYJ7cHzV0fz@vger.kernel.org
X-Gm-Message-State: AOJu0YykQEiROuo7qDaYHrOrXGRSS5oHyRTO3+cfcnyM121KgJ22fuFk
	DmNKijqobzvgyE5lSLAUXKrDwCHSBwxTY34J0UpkO4RI0L5AetcHeJ+w2RriEh8=
X-Gm-Gg: ASbGncvTRy4WVxBdnqmZrKlm7e5FyjQfSuwj9bwSSLkVJpgQG5qvSXtf14IielaB8gz
	QwPUTEBjmhi7OjEBUD3lsc+IMHZTbmvlDMu4EETSbIXGZIOQ1CIxnkXL8yChj0GbqWNls2yoNl6
	bdZ6Bdnlay7pfG/eQ5zD01CQOC0fu2kl07buGB0OntFRCRRa1J8ppb7oogrJGR+YGUS3dZ9/aoe
	na3blTB+dtPMnrlRLs7PmrocEme8QTscKD/qFWOexVqFFkrtw0QVOVQsg==
X-Google-Smtp-Source: AGHT+IHPjkSVuExv6ChzcQIL1kJ3xfTqnGBTSThOnNcT1tNDPayzcwSyl+9WJecuplBzRyFAZebpLg==
X-Received: by 2002:a05:600c:4fc9:b0:431:5226:1633 with SMTP id 5b1f17b1804b1-434afba0023mr53549255e9.6.1732868513186;
        Fri, 29 Nov 2024 00:21:53 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434b0f7150esm44698395e9.42.2024.11.29.00.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Nov 2024 00:21:52 -0800 (PST)
Message-ID: <0bb9f461-c7a2-4db0-9492-c04cc298504d@tuxon.dev>
Date: Fri, 29 Nov 2024 10:21:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/15] dt-bindings: soc: renesas: renesas,rzg2l-sysc:
 Add #renesas,sysc-signal-cells
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com,
 christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
 <20241126092050.1825607-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWjzR6vgbr_CfR7r-h1FqWxs1nY0hm274kxFmoHjCtRAA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 28.11.2024 17:46, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> CC Ulf
> 
> Thanks for your patch!
> 
> On Tue, Nov 26, 2024 at 10:21 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The RZ/G3S system controller (SYSC) has registers to control signals that
>> are routed to various IPs. These signals must be controlled during
>> configuration of the respective IPs. One such signal is the USB PWRRDY,
>> which connects the SYSC and the USB PHY. This signal must to be controlled
>> before and after the power to the USB PHY is turned off/on.
>>
>> Other similar signals include the following (according to the RZ/G3S
>> hardware manual):
>>
>> * PCIe:
>> - ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
>> - PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
>>   register
>> - MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register
>>
>> * SPI:
>> - SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
>>   register
>>
>> * I2C/I3C:
>> - af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
>>   (x=0..3)
>> - af_bypass I3C signal controlled through SYS_I3C_CFG register
>>
>> * Ethernet:
>> - FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
>>   registers (x=0..1)
>>
>> Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
>> consumers to manage these signals.
>>
>> The goal is to enable consumers to specify the required access data for
>> these signals (through device tree) and let their respective drivers
>> control these signals via the syscon regmap provided by the system
>> controller driver. For example, the USB PHY will describe this relation
>> using the following DT property:
>>
>> usb2_phy1: usb-phy@11e30200 {
>>         // ...
>>         renesas,sysc-signal = <&sysc 0xd70 0x1>;
>>         // ...
>> };
> 
> IIUIC, the consumer driver will  appear to control the SYSC bits
> directly, but due to the use of custom validating regmap accessors
> and reference counting in the SYSC driver, this is safe?

I'm not sure I fully understand the safety concern.

> The extra safety requires duplicating the register bits in both DT
> and the SYSC driver.

One other option I saw was to have common defines for registers that could
have been shared b/w driver and DTSes. But it looked better to me the way
it has been presented in this series.

> Both usb-phy nodes on RZG3S use the same renesas,sysc-signal, so the
> reference counting is indeed needed.  They are in different power
> domains, could that be an issue w.r.t. ordering?

In chapter "32.4.2.1 USB/PHY related pins", section "When either Port1 or
Port2 is unused" of the RZ/G3S HW manual it is mentioned "Since USB_VDD18 /
USB_VDD33 are common to 2 Port PHY, it is necessary to supply power even
when one of the
 ports is not in use".

(From the discussions w/ the internal HW team) The PWRRDY is an (software
controlled) indicator to the USB PHY that power supply is ready.

From that and [1] I get that both PHYs are powered by the same regulators
(USB_VDD18/USB_VDD33) and the USB PWRRDY signal need to be set before/after
the USB PHY power off/on. Because of this I consider the order doesn't matter.

[1] https://gcdnb.pbrd.co/images/0a1zYBFZXZVb.png

> 
> I am not a big fan of describing register bits in DT,

+1

> but for the other
> SYSC users you list above, syscon+regmap seems to be a valid solution.
> For USB and PCIe control, the situation is different. I more liked the
> approach with "reset IDs" you had in v1, as it abstracts the DT
> description from the register bits,

+1

> and the USB and PCIe reset bits use
> a different polarity (on RZ/G3S). If future SoC integration changes
> the polarity, you have to handle that in the consumer (USB or PCIe)
> driver, too.

That's true. The idea of this implementation was that the consumer would
know what they need to set for themselves on the SYSC side.

> Unfortunately such "reset IDs" are only suitable for
> use with the reset or pmdomain frameworks, which didn't survive the
> earlier discussions.
> 
> One other option would be to let SYSC expose regulators?

We can try, but we can hit the wall again, as the PWRRDY signal is not a
regulator either. From the internal HW discussion is an indicator (software
controlled) that the power to the USB PHY is ready.

> While that would work for USB and PCIe control, we would still need
> syscon+regmap for the other bits.

That is true.

> 
> So the more I think about it, the more I like your (clever) solution...
> 
>> Along with it, add the syscon to the compatible list as it will be
>> requested by the consumer drivers. The syscon was added to the rest of
>> system controller variants as these are similar with RZ/G3S and can
>> benefit from the implementation proposed in this series.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

