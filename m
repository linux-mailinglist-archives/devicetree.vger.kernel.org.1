Return-Path: <devicetree+bounces-98436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1402796622A
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 14:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B26C01F25642
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 12:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F11E1A2871;
	Fri, 30 Aug 2024 12:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="mC6N3ul7"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF13619995B
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 12:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725022695; cv=none; b=SEqHoaz6vtc41GXnZXMbF6y+UnuX9OZKLlYgpKcsauGPpwk/bfGpN9JW11mVxmynPpRqko9UOse1Ywp3VPvwHpiyh4xnzxyJJWD5rqvuJcZK6gacAjm7AELywfTeMD+nDhTOPpoR80jiZADwloc3ffFWCfw+B2D/y7N7fepGzVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725022695; c=relaxed/simple;
	bh=sINeCk+cgv+R6t/A85aV2cAAX4XeEXeO9CSBMz2RlSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zyc+mfXRI6NMrEt3UazxoTGKLoWW6/79dClWzfefy6mKHYBGwFMfu/2J/RFeyVofrgt4qHe1IN1uPwXw9y56YRO+VRS2OrHmpV2H1fWkyQm+75/CyTNozq88Rp4M6pt/BZ3MxNvL0KL4fO5SIYFeBqRLImoQD+kjSYxwfgE8G88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=mC6N3ul7; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 212C388BCF;
	Fri, 30 Aug 2024 14:58:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1725022685;
	bh=ldaBCijM7jpy64WBglfsb4+/lYq4Vb5VPPiRz9MS/oQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mC6N3ul7JXrXa3gns4aCIK7e11WQQJkuw2ODtGZ/yAGHDLUeGUwJg4C2wgJerzvSs
	 91Ab/kn4YMPxoXJywAKv2Ij+alplvKGnBBN8hP6ENiFK7AMqnMM639kGLLSj3Iqk7S
	 09M+iYp4nER0SVm0IZOoDnDeDhyeQDP2jY2J8NauPEFYKQCm/VHp+PFMON37wLH/jR
	 8nYOak+AsGLqky92sxIZwOtKkO4m1feV0H+jBOABwtefvtExv7A2onkqaGP+AsETgL
	 8fC9XyTE9ALRffCgXpnMYI+OwSRtIRezxsnhWu9DJBcUfZ2/FWompMvgXvQy7mqheb
	 qWCQGwXSN5b5g==
Message-ID: <b2bb5061-01e0-4f47-877b-edccedcf1aef@denx.de>
Date: Fri, 30 Aug 2024 14:57:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: Describe PHY LEDs in DH STM32MP13xx
 DHCOR DHSBC board DT
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
 linux-arm-kernel@lists.infradead.org
Cc: kernel@dh-electronics.com,
 Christophe Roullier <christophe.roullier@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20240705215402.257070-1-marex@denx.de>
 <e38b8da5-349d-4ee2-97d4-9c46c116120c@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <e38b8da5-349d-4ee2-97d4-9c46c116120c@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

On 8/30/24 2:47 PM, Alexandre TORGUE wrote:
> Hi Marek

Hi,

> I have a yaml validation issue applying this patch.
> 
>    DTC_CHK arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb
> /local/home/frq08678/STLINUX/kernel/my-kernel/stm32/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet-phy@1: Unevaluated properties are not allowed ('interrupt-parent', 'interrupts', 'reg', 'reset-assert-us', 'reset-deassert-us', 'reset-gpios' were unexpected)
>      from schema $id: 
> http://devicetree.org/schemas/net/realtek,rtl82xx.yaml#
> /local/home/frq08678/STLINUX/kernel/my-kernel/stm32/arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: ethernet-phy@1: leds:led@0:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
>      'netdev' is not one of ['backlight', 'default-on', 'heartbeat', 
> 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 
> 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 
> 'kbd-capslock', 'mtd', 'nand-disk', 'none', 'torch', 'usb-gadget', 
> 'usb-host', 'usbport']
>      'netdev' does not match '^cpu[0-9]*$'
>      'netdev' does not match '^hci[0-9]+-p
> 
> Can you have a look please ?

See this commit in linux-next, with that the validation should pass:

616dbed65485 ("dt-bindings: leds: Document "netdev" trigger")

