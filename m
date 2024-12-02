Return-Path: <devicetree+bounces-126003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B74F9DFE8A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C7F30B293FD
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 10:12:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AF81FCD09;
	Mon,  2 Dec 2024 10:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="itzXzNIS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209891FCCF4
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 10:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733134272; cv=none; b=USw92yZzRqNCQLKiMxdO9RfwyIT72pf7ARdkDtNH957Gjj6PXpYmqvKfvtUZPe6nWvZNSve/7RYBDLMmwzusfmM3jIevwcY4mmGn3x0uHOJjne5elfIwZnXR5fjVtGKEJn7sO+EypsXjy95KJKpdxR8nlO+XeCUlY01v+3oLeuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733134272; c=relaxed/simple;
	bh=VhG3rq+iTy9Ea+5rk5iSMoBYCrjEGHdVkuGWSFpQ38w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jcsRfU4disWKR918ac/xjX09fFjnUodmFmUgrdXyQyph85IukkbpAZFGF81rMiD0UA36h5Kc/lwhmvyrkdObbouIrg87D+JAWkGafG/yD2DETGOoCIwLc6BaO5fmnd7aZP7mrooPr5RCxkSijOrtASQKrgEWF++2ZxVwU3C9BZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=itzXzNIS; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434a10588f3so24848275e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 02:11:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733134268; x=1733739068; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uALrewd2bf6VCEyNjbilrOuFF8ofT7dZTVrBfsuxsiI=;
        b=itzXzNISgbYOjPSzFg0Gt8afHHqlFeLge8D3lBCW8mtp7QpPJGtRN4DbeAHRutZzsj
         IGn/9hcfed0uKvIYLEH0xwfahU/PCCXyAhSMJtwXJI9D9QiML6YDplME0h0pH2ybChrI
         nkni2avrsu5WtzD+05Tw23tUZgpJWXgqR7PrmeD/M7H1XyZMzCvVTOV0tSrb0PDUmfqq
         wRhIVOl5qIyzJPVssqvPZl+DYnOwG6J3X/xMwYlG1w2b4iQU9WEDMedgtwEQHotb+dhx
         6B/xCyLuPibLxC4073IsOBao6LVMV75zOgI8/S+ACq/9dl4JDsUTb3pCObRf1hMGlYPO
         vs+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733134268; x=1733739068;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uALrewd2bf6VCEyNjbilrOuFF8ofT7dZTVrBfsuxsiI=;
        b=cTfT0fyDc+BN/WSOyAjUd7J/04ic/zkA38TBceMpwcZP1IjoRRCm0MEhyRiZXiReoe
         fMaqXHhbEa2kjvWjBe/aW5UC6HtsE7VcfsUZJkXZ6sPxac15X0/14EQ17Ujd71zvObmL
         Jutj0tysgcdrS4sZVJ286F/EygzA7D4SacXo9e+8l8xsolBTFi/3u+iVpONnCywsLf5R
         ZjEgA4IZyko78d+RZTOgviv+IyZ30nblwijOlSv6QKW6WcoEdUIxhr+DcV9CJeSDaT3h
         fr16o1kL2Pp7k2X7+pehiB1cXpADgkLsDAJj+SzJse/CKah/82qYYveRrLH+Pz6hfK52
         SEYA==
X-Forwarded-Encrypted: i=1; AJvYcCWEtniFlyrVd7XsiC1TLtTngtwE9gsS7bMDTw2Y3ifhe53OqxbnABEBP6gBNuUbvjeG+0AgAQR6a5fi@vger.kernel.org
X-Gm-Message-State: AOJu0YxP+mBC45eg0AezOv07Ba1czmiB7CcRp+B9BxStuIYLWBpcX54F
	Q+xPvr/dpSbEw4PGAdXrJKd6w3WE0mRDqD+zqJpORdY9pq+oZ/uCyS2JbFqh+Kw=
X-Gm-Gg: ASbGncu9N7pnRnVrJupSvhefyxRVTs/4039udQOYTs0N+A9scQ5TDBuGUEjavEg1nDa
	HA8GubDIgnRl/0uMznYecYDhqDv3piqZXAFEk0/6LffNO/R48SDGLAiKzJ3O1g5wb5QrgBXoPK5
	o9x5sI71LFL+26qZVHW/RKWGo62/VASfk7s6sWWlvRX0MHYH9UNTh50Hi7sTVttt/IO7a+wlKRc
	ZFKTJphGqaYr5J8wEw6FT6RO+iwbepyj+lojRZljCuwcJjbhDL33XGhyw==
X-Google-Smtp-Source: AGHT+IErBHQMNcCywMPgGeLil++jgNC3MB2USHxqD4fnoD5fhsRnNjP8lRK2LV8oHmVsxpRvL8auCQ==
X-Received: by 2002:a05:600c:314a:b0:434:9e63:fb15 with SMTP id 5b1f17b1804b1-434a9dbb864mr173023505e9.1.1733134268229;
        Mon, 02 Dec 2024 02:11:08 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa78c202sm177567155e9.26.2024.12.02.02.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 02:11:07 -0800 (PST)
Message-ID: <014a8db6-adcc-4755-8ab5-a15afa1d3f44@tuxon.dev>
Date: Mon, 2 Dec 2024 12:11:05 +0200
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
 <0bb9f461-c7a2-4db0-9492-c04cc298504d@tuxon.dev>
 <CAMuHMdUuRSJu1c2zJvOc8EGrZy1uYcN0aiUG6T7WShawPmCNJg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdUuRSJu1c2zJvOc8EGrZy1uYcN0aiUG6T7WShawPmCNJg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 29.11.2024 10:38, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, Nov 29, 2024 at 9:21 AM Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 28.11.2024 17:46, Geert Uytterhoeven wrote:
>>> On Tue, Nov 26, 2024 at 10:21 AM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The RZ/G3S system controller (SYSC) has registers to control signals that
>>>> are routed to various IPs. These signals must be controlled during
>>>> configuration of the respective IPs. One such signal is the USB PWRRDY,
>>>> which connects the SYSC and the USB PHY. This signal must to be controlled
>>>> before and after the power to the USB PHY is turned off/on.
>>>>
>>>> Other similar signals include the following (according to the RZ/G3S
>>>> hardware manual):
>>>>
>>>> * PCIe:
>>>> - ALLOW_ENTER_L1 signal controlled through the SYS_PCIE_CFG register
>>>> - PCIE_RST_RSM_B signal controlled through the SYS_PCIE_RST_RSM_B
>>>>   register
>>>> - MODE_RXTERMINATION signal controlled through SYS_PCIE_PHY register
>>>>
>>>> * SPI:
>>>> - SEL_SPI_OCTA signal controlled through SYS_IPCONT_SEL_SPI_OCTA
>>>>   register
>>>>
>>>> * I2C/I3C:
>>>> - af_bypass I2C signals controlled through SYS_I2Cx_CFG registers
>>>>   (x=0..3)
>>>> - af_bypass I3C signal controlled through SYS_I3C_CFG register
>>>>
>>>> * Ethernet:
>>>> - FEC_GIGA_ENABLE Ethernet signals controlled through SYS_GETHx_CFG
>>>>   registers (x=0..1)
>>>>
>>>> Add #renesas,sysc-signal-cells DT property to allow different SYSC signals
>>>> consumers to manage these signals.
>>>>
>>>> The goal is to enable consumers to specify the required access data for
>>>> these signals (through device tree) and let their respective drivers
>>>> control these signals via the syscon regmap provided by the system
>>>> controller driver. For example, the USB PHY will describe this relation
>>>> using the following DT property:
>>>>
>>>> usb2_phy1: usb-phy@11e30200 {
>>>>         // ...
>>>>         renesas,sysc-signal = <&sysc 0xd70 0x1>;
>>>>         // ...
>>>> };
>>>
>>> IIUIC, the consumer driver will  appear to control the SYSC bits
>>> directly, but due to the use of custom validating regmap accessors
>>> and reference counting in the SYSC driver, this is safe?
>>
>> I'm not sure I fully understand the safety concern.
> 
> Sorry for my bad expression, this was more like a rhetorical question.
> I meant that it is safe because:
>   1. Consumers cannot perform arbitrary register accesses,
>   2. The reference counting guarantees correct operation, despite
>       both usb-phy nodes using the same renesas,sysc-signal.
> 
> So everything is fine.
> 
>>> The extra safety requires duplicating the register bits in both DT
>>> and the SYSC driver.
>>
>> One other option I saw was to have common defines for registers that could
>> have been shared b/w driver and DTSes. But it looked better to me the way
>> it has been presented in this series.
>>
>>> Both usb-phy nodes on RZG3S use the same renesas,sysc-signal, so the
>>> reference counting is indeed needed.  They are in different power
>>> domains, could that be an issue w.r.t. ordering?
>>
>> In chapter "32.4.2.1 USB/PHY related pins", section "When either Port1 or
>> Port2 is unused" of the RZ/G3S HW manual it is mentioned "Since USB_VDD18 /
>> USB_VDD33 are common to 2 Port PHY, it is necessary to supply power even
>> when one of the
>>  ports is not in use".
> 
> Does that mean you have to power the other PHY on through the
> CPG_BUS_PERI_COM_MSTOP register, too?

I don't know at the moment if there is hard requirement b/w USB PWRRDY and
the USB PHY CPG MSTOP bit. I'll have to ask further internally.

Thank you,
Claudiu

> (I know you haven't added R9A08G045_PD_USBx to the USB nodes yet,
>  as #power-domain-cells is still 0).
> 
>> (From the discussions w/ the internal HW team) The PWRRDY is an (software
>> controlled) indicator to the USB PHY that power supply is ready.
>>
>> From that and [1] I get that both PHYs are powered by the same regulators
>> (USB_VDD18/USB_VDD33) and the USB PWRRDY signal need to be set before/after
>> the USB PHY power off/on. Because of this I consider the order doesn't matter.
>>
>> [1] https://gcdnb.pbrd.co/images/0a1zYBFZXZVb.png
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

