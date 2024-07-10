Return-Path: <devicetree+bounces-84772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E14D392D82C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 20:22:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10DDB1C2110A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 18:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE208195FEC;
	Wed, 10 Jul 2024 18:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="pO6kYaEY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352343BBED
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 18:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720635723; cv=none; b=T9ZO/9CBLuU4DjWA4+uUPxIfuFEBhTZETx6Y74b/ykNAa9xTAR3KmvJBRiAXNo58UdKUjsNxPQULmYBTxu7JSQW3q84VA27rN8OtBs4XMv18JF3/uZGhqSIK82lVSa6BJqCDzxcEwUf3whEMoOFdLgyYdYlvZFzs61aeAeKxpjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720635723; c=relaxed/simple;
	bh=XU+aQiOEm9xz9rvn411Q8IyDGP/+ExRQPMMwGgD3bbE=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=ZNyHRu8S/NOeaMP1ymk4g/i+eBEtgrULUoUX9IFUkrBJap20zkx8N33eKTkCM6ArE2JiCeJD8jVNEcLWhWg+cG3za5o60GIA+wyVN9WSINll9weUK0QQjw84IXOsOlRlkZbFESRrD39G8HxyIvNhqM2pPFZIx6YpxnpGnAGFSGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=pO6kYaEY; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720635704;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vSx3o5MuJuUVjj8tSSnKV6T0b1jDF8pMDfIllIWeUjI=;
	b=pO6kYaEYnqpIKkV+83vy5RGRV6s58xsSZOJqlLLS+Gcuva4blOcK+VmRyCanyssNKYM6nD
	mUjEbKKu8WmuX9RUJ1NhB0FqqFxTuiVejb7u+ANJg47o+nR6UbdYKLuWsc34NXoby5q/Sm
	Nr7av9hI6t7mrVLWk8e9wmhBpJdyGcsIMRRY63+fjditTvawMehnkNZkchcc1jHEXh+beV
	xJkg5Lrse8nvCPZfZvSVUgj6YMCa/fypZKoFZSCnFBp0tU7MMmdI3XHn7oiSlg1CG7zqNF
	LAKalkpvqoDP1kupKzRgrrqATXVo+Yc0BUFEyc7RgWOfwPh6c/baG5s1OO3WAQ==
Date: Wed, 10 Jul 2024 20:21:43 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Philipp Puschmann <p.puschmann@pironex.com>, Diederik de Haas
 <didi.debian@cknow.org>, linux-rockchip@lists.infradead.org,
 robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
In-Reply-To: <cebcc2e7-27e2-4414-91f1-b83bd42876a7@gmail.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
 <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
 <cebcc2e7-27e2-4414-91f1-b83bd42876a7@gmail.com>
Message-ID: <cfc99aaebd6aaa7f7a4c2eb4f5bdf13d@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alex,

On 2024-07-10 20:05, Alex Bee wrote:
> Am 10.07.24 um 17:14 schrieb Philipp Puschmann:
>> Am 10.07.24 um 16:56 schrieb Dragan Simic:
>>> On 2024-07-10 12:20, Philipp Puschmann wrote:
>>>> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>>>>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>>>>> DMA names are required by of_dma_request_slave_channel function 
>>>>>> that is
>>>>>> called during uart probe. So to enable DMA for uarts add the names 
>>>>>> as in
>>>>>> the RK3568 TRM.
>>>>> 
>>>>> Setting it on channels without flow control apparently causes 
>>>>> issues. See
>>>>> 
>>>>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/
>>>> 
>>>> Ah is see. The only problem that i have is to enable/disable dmas by
>>>> having or not having
>>>> dma-names properties, where the latter case is followed by kernel
>>>> error messages. That
>>>> is very counterintuitive. Maybe a explicit boolean like dma-broken
>>>> would be better. That
>>>> could be set on dtsi level as default and deleted on board dts if
>>>> wanted. With such
>>>> a boolean we could also prevent the misleading "dma-names property 
>>>> of"
>>>> error message
>>>> and replace it with a hint that dma is disabled on purpose.
>>> 
>>>  From what I've read in the prior discussions, this seems like a 
>>> driver
>>> issue, so the driver should be fixed instead.
>> 
>> I would tend to disagree. The serial driver just uses the generic dma 
>> API. The error
>> message comes from of_dma_request_slave_channel() in 
>> drivers/dma/of-dma.c
>> and is called from dma_request_chan() inn drivers/dma/dmaengine.c.
>> 
>> The first function expects a device tree node and "dmas" and 
>> "dma-names" properties.
>> And "dma-names" is misused as "enable" switch and if not present (aka 
>> disabled) it
>> dumps "dma-names property of node X missing or empty". For me it's 
>> clear that
>> a clean way to disable or enable using dma via dts would be better to 
>> tell the
>> of_dma_request_slave_channel function that dma is disabled on purpose, 
>> so it
>> could return ENODEV but without printing a misleading error level 
>> message.
> 
> I'm with Philipp here. Topmost because DT should have to do nothing 
> with a
> (speculative) driver issue, it represents hardware.

I agree that, ideally, it should actually be seen and treated as a SoC
feature, i.e. DMA should be described and enabled at the SoC dtsi level.

> I would go further and
> say boards using a (non-kernel console) uart, which can't use dma for
> whatever reason should disable it. It will never be an issue for the 
> kernel
> console (i.e. "stdout-path = "serialX..." in DT or "console=ttySX" in
> cmdline) as the kernel will not use dma for this console. It's by the 
> way
> even worse for RK3399 Soc DT, which just doesn't expose the dma 
> channels
> for the uarts and for RK3368 which does not a expose a single dma 
> channel
> of the peripheral dmac (I tent to speculate for the very same reason).

I also agree about the specific boards disabling DMA if they cannot use
it for whatever reason, simply because DMA would (or should) be enabled
at the SoC dtsi level.

Though, I'd like to have some time for researching it further, in an 
attempt
to figure out what's actually going on.

>>>>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>>>>> ---
>>>>>>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>>>>   1 file changed, 10 insertions(+)
>>>>>> 
>>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index 
>>>>>> d8543b5557ee..4ae40661ca6a
>>>>>> 100644
>>>>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>>>>           clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>>>>           clock-names = "baudclk", "apb_pclk";
>>>>>>           dmas = <&dmac0 0>, <&dmac0 1>;
>>>>>> +        dma-names = "tx", "rx";
>>>>>>           pinctrl-0 = <&uart0_xfer>;
>>>>>>           pinctrl-names = "default";
>>>>>>           reg-io-width = <4>;
>>>>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>>>>           clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>>>>           clock-names = "baudclk", "apb_pclk";
>>>>>>           dmas = <&dmac0 2>, <&dmac0 3>;
>>>>>> +        dma-names = "tx", "rx";
>>>>>>           pinctrl-0 = <&uart1m0_xfer>;
>>>>>>           pinctrl-names = "default";
>>>>>>           reg-io-width = <4>;
>>>>>> ...
>>>> 
>>>> _______________________________________________
>>>> Linux-rockchip mailing list
>>>> Linux-rockchip@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>> 
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

