Return-Path: <devicetree+bounces-84734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E9392D526
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:37:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7F7D1C208C8
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43B9194A7C;
	Wed, 10 Jul 2024 15:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ZLZqfZlC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1A31946C8
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720625832; cv=none; b=h+4YGM4+RCzWfjs/Z5dkMi9NUBEO+gjuyrw5ajZxCmjGNF2ZoVJj2FFREMNHOIIkDD64BH6XtwUm/0F3kXQgcKZpyckp4MxfQAltYUvyffYECmjgKP3wTjImCXSiyOemW60bumNwGv4H8XYgMlFxDMke5kujgvSZoOHDo9JNB/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720625832; c=relaxed/simple;
	bh=l+IjfJbiptWF288dI0Nr2G4yDhESgXFSBZwA0yeEByQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Dgeoy2e4OTl3igswMx07wNjg0VILsk1mDTtg/FCgIFde1MSI6H2z7LLBaW0E3uDhp+s78czV7PhnVZVAFSgeDV0qfQVwl+W2gRLuoDoSW23+lvnX9Ya/Ak8W2judvGNAe7r0Y8qvqrlRZHi3KkDyJ77yu2cTr+yuO7Xq7pkvJys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ZLZqfZlC; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720625827;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o5YO3vDsKii1RIWSK3o403YfJhyfiHeTw4kZwp3Y5Qo=;
	b=ZLZqfZlC02eYLNF66XHatbEQe0l1dBLEn57xRtf7jPbU9UTrjLi+2me7BI5YIXidRQ/7SR
	AHfQZe6uP3uzrVTYYp9ygrUC0SDm6xs6vTjnMkIT62dRoYrgxq/cuZ7+kOW4cRS7lbujDv
	nMaQBFoeZsKCNasTfQooOXCXM02D//ThsiraJhRgkvMMwTT8z4mZdunbBx61Yb2WojsL1Z
	fePbjW6exjUTujOJDIxkmxts6xxS/YTrEg/XkO0MP+x68VLRrEeIzmpjnDsUrTHmS2G/5w
	F2D1JWyKHAvYlYXbHm+m2AYQq2ux3RNdi2LjpeqSi9G/hrwZN8BJkicmA4hspg==
Date: Wed, 10 Jul 2024 17:37:06 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
In-Reply-To: <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
 <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
Message-ID: <184e5fef15492d43d1e56cc2f7f6a735@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-07-10 17:14, Philipp Puschmann wrote:
> Am 10.07.24 um 16:56 schrieb Dragan Simic:
>> On 2024-07-10 12:20, Philipp Puschmann wrote:
>>> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>>>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>>>> DMA names are required by of_dma_request_slave_channel function 
>>>>> that is
>>>>> called during uart probe. So to enable DMA for uarts add the names 
>>>>> as in
>>>>> the RK3568 TRM.
>>>> 
>>>> Setting it on channels without flow control apparently causes 
>>>> issues. See
>>>> 
>>>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/
>>> 
>>> Ah is see. The only problem that i have is to enable/disable dmas by
>>> having or not having
>>> dma-names properties, where the latter case is followed by kernel
>>> error messages. That
>>> is very counterintuitive. Maybe a explicit boolean like dma-broken
>>> would be better. That
>>> could be set on dtsi level as default and deleted on board dts if
>>> wanted. With such
>>> a boolean we could also prevent the misleading "dma-names property 
>>> of"
>>> error message
>>> and replace it with a hint that dma is disabled on purpose.
>> 
>> From what I've read in the prior discussions, this seems like a driver
>> issue, so the driver should be fixed instead.
> 
> I would tend to disagree. The serial driver just uses the generic dma
> API. The error
> message comes from of_dma_request_slave_channel() in 
> drivers/dma/of-dma.c
> and is called from dma_request_chan() inn drivers/dma/dmaengine.c.
> 
> The first function expects a device tree node and "dmas" and
> "dma-names" properties.
> And "dma-names" is misused as "enable" switch and if not present (aka
> disabled) it
> dumps "dma-names property of node X missing or empty". For me it's 
> clear that
> a clean way to disable or enable using dma via dts would be better to 
> tell the
> of_dma_request_slave_channel function that dma is disabled on purpose, 
> so it
> could return ENODEV but without printing a misleading error level 
> message.

Hmm, please give me some time to investigate it further.

>>>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>>>  1 file changed, 10 insertions(+)
>>>>> 
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index 
>>>>> d8543b5557ee..4ae40661ca6a
>>>>> 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>>>          clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>>>          clock-names = "baudclk", "apb_pclk";
>>>>>          dmas = <&dmac0 0>, <&dmac0 1>;
>>>>> +        dma-names = "tx", "rx";
>>>>>          pinctrl-0 = <&uart0_xfer>;
>>>>>          pinctrl-names = "default";
>>>>>          reg-io-width = <4>;
>>>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>>>          clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>>>          clock-names = "baudclk", "apb_pclk";
>>>>>          dmas = <&dmac0 2>, <&dmac0 3>;
>>>>> +        dma-names = "tx", "rx";
>>>>>          pinctrl-0 = <&uart1m0_xfer>;
>>>>>          pinctrl-names = "default";
>>>>>          reg-io-width = <4>;
>>>>> ...
>>> 
>>> _______________________________________________
>>> Linux-rockchip mailing list
>>> Linux-rockchip@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

