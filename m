Return-Path: <devicetree+bounces-137852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 506B7A0AE30
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 05:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24B8C3A67CB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 04:31:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1121448E0;
	Mon, 13 Jan 2025 04:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="HQMw8pc0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982452F56;
	Mon, 13 Jan 2025 04:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736742663; cv=none; b=mu01YpIS8GZmGhnT8VkoM7Zy98rSVzdse55m/BMhxcyp+TOVPkRDbuV9sbIlp5Ku41htMKp2QkEiHwzWAWVqB5ZdlkHwnNEQnZNJW2AhVB01GNAR4E+9I6gky0PTmZ3FoNfaRTDmH78pDmSAko4w/v88GMslv4cVfQc8mnibwb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736742663; c=relaxed/simple;
	bh=quZ9KRiWywfkBtSwwRp2znsItWyB+yJKnyOvmlDbb8o=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=YfH05NHQgzZ46QlaTVtrej/TGuaQwqyMcipehL14UQ7iivXC5bNn3mQ5tsKTivVMY5dWFbi98z1QXlDxWhy87spaPla75KSjUr2UaWvTAX2a+vHh44wV40oi9pVLjJi0RjKzTkdD+mYh2X9Wg7fxKpwkyCFBLjvbFX0oMHdXc+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=HQMw8pc0; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736742659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07ejYXIKIrcD3/kHRGf9djGVZsaJOUEXa1BtdRMH9Dw=;
	b=HQMw8pc01xVq5qweIoyG+O9dX2sCtsMT7qubGQMankj+ewQmkUqfUteq8KagLgXr7fnQd6
	hX6ey6CdgF+DAzQezUXMy35u0pzDqfb0MjCtblTTnjSYd9WV8MzPN0FpZdekwZpgNNx+bZ
	1bM4jjH7prDU6UYUaOP9R7U3hEWg/4DzLN/UmeM2i6JQraf/kAw7i/3sQnlnf3H6FKV7XR
	NtA1pggxmGSz+I6CqJjnYi1balKCXFERMvNWL3/xbABDtQ3D0IkUxDghMChXL4cWEuiOoA
	U2u+v1od9oU7zB64+kyXInci43aYdfACpWZaGtNQDzm8Ti3glxnOZ3vhmYJAsA==
Date: Mon, 13 Jan 2025 05:30:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/3] Add support for Ariaboard Photonicat RK3568
In-Reply-To: <526e0c19-6495-4dcf-bf6b-b5bd62a7a631@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <c520a0d829bbe26b9802f57f94f3957c@manjaro.org>
 <526e0c19-6495-4dcf-bf6b-b5bd62a7a631@classfun.cn>
Message-ID: <ff16c764821c3d010f49524e4a3a177b@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Junhao,

On 2025-01-12 23:27, Junhao Xie wrote:
> On 2025/1/12 16:50, Dragan Simic wrote:
>> On 2025-01-12 08:33, Junhao Xie wrote:
>>> Add dts for Ariaboard Photonicat RK3568.
>>> 
>>> This series bring support for:
>>> * Debug UART
>>> * SDIO QCA9377 WiFi and Bluetooth
>>> * M.2 E-Key PCIe WiFi and Bluetooth
>>> * M.2 B-Key USB Modem WWAN
>>> * Ethernet WAN Port
>>> * MicroSD Card slot
>>> * eMMC
>>> * HDMI Output
>>> * Mali GPU
>>> * USB Type-A
>>> 
>>> Changed from v1:
>>> - move some general nodes (firmware, ramoops, reboot-mode) to 
>>> rk356x.dtsi
>> 
>> This entry from the changelog caught my attention, so I tried
>> to find out what exactly happened back then.  Though, after going
>> through the mailing list archive, I still don't see where the
>> as-described change took place, so perhaps this changelog entry
>> needs adjusting.
> 
> Chukun Pan suggested moving these nodes to rk356x.dtsi, but I have
> not done that yet and simply deleted them. I will fix the changelog.
> https://lore.kernel.org/lkml/20240905034009.28124-1-amadeus@jmu.edu.cn/
> 
> - remove some general nodes (firmware, ramoops, reboot-mode)

Oh, thanks for the nudge, I just added a TODO to "sprinkle" a few
"syscon-reboot-mode" and "ramoops" nodes onto the relevant SoC dtsi
files.  Those will be highly useful when debugging mysterious crashes
and lockups that happen on various devices in the field.

>>> - gmac1 change to phy-mode rgmii-id
>>> - corrected some regulator to be closer to schematics
>>> - rename rk3568-ariaboard-photonicat.dts to rk3568-photonicat.dts
>>> https://lore.kernel.org/lkml/20240904111456.87089-1-bigfoot@classfun.cn/
>>> 
>>> Changed from v2:
>>> - remove unused headers
>>> - corrected some regulator to be closer to schematics
>>> - remove usb_host1_ohci, usb_host1_ehci, usb2phy1_host that have no 
>>> connection
>>> https://lore.kernel.org/lkml/20240906045706.1004813-1-bigfoot@classfun.cn/
>>> 
>>> Changed from v3:
>>> - corrected some regulator to be closer to schematics
>>> - changed to using clk32k_out1 in xin32k
>>> https://lore.kernel.org/lkml/20240911122809.1789778-2-bigfoot@classfun.cn/
>>> 
>>> Changed from v4:
>>> - corrected some regulator to be closer to schematics
>>> - corrected some label to match node name
>>> - use resets props in phy node instead deprecated snps,reset-gpio
>>> https://lore.kernel.org/lkml/20240914145549.879936-1-bigfoot@classfun.cn/
>>> 
>>> Changed from v5:
>>> - resort regulator nodes
>>> - remove dr_mode from usb_host1_xhci
>>> https://lore.kernel.org/lkml/20241108031847.700606-1-bigfoot@classfun.cn/
>>> 
>>> Junhao Xie (3):
>>>   dt-bindings: vendor-prefixes: Add prefix for Ariaboard
>>>   dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
>>>   arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
>>> 
>>>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>>>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>>  .../boot/dts/rockchip/rk3568-photonicat.dts   | 599 
>>> ++++++++++++++++++
>>>  4 files changed, 607 insertions(+)
>>>  create mode 100644 
>>> arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
> 
> Thanks for your review, I will fix all problems in next version!

Thanks, although it was just a "mile-high" review that covered
only a few things that caught my attention. :)

