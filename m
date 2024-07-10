Return-Path: <devicetree+bounces-84724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6FC92D49A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 16:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9626E285E54
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 14:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B020193060;
	Wed, 10 Jul 2024 14:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ulV+ZbIU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48011DDC5
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 14:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720623369; cv=none; b=raTIziNOD961Vl2W2d78lXvMCkqmJUHaUN5CV0nldpmwCpYiI4Tx/7ZxoguCsdN7FbGmASOxlBHY8GRNgGADSM/cyBrXTHGVSWMfKCatE6RZLCB485idIem6AFRk0T9ma6fT/ANQlyRsPZA2shiiaZl05F+6wu4oKNYFXMARBXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720623369; c=relaxed/simple;
	bh=3FENrDXSnEof3s3+IAKRLiH3KtvokWWvRADQrfq/6iI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=RiKPOufcGAtpJBJQxiYGE2XnNk8g3ixqwcIbWEKxp2gvvMYM2TmiBmvOd6fiHAK5DrpEhacT/jSNIYXIiGcM0VGpGTIrtgIWtgfMKQOKhhpV7IfWcVe6KyVuSIxUzWGThZ87qqViuW9Xbo7A39C3sC0b+IfaS6XvVa+FZXVTcSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ulV+ZbIU; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720623364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1ILBJ+M2fiu9ssMVaf5jfu8iun0ZuvHMpNoVzxZPY1M=;
	b=ulV+ZbIUgH62TG+dgdd+3ndIrh2EpxaezB2H8JWunXbbd9Tz68bxadfi88RZZekGyTr0S6
	D/1a84GpSb7EmOIW6XtHPg4U0Y5sWQbLiJJ7F5CHTMbov47p62FfwGRYNUl6AgBksXYgaI
	E6h4FWl3xboYYC3pqDUio9mXw3nMV6twtdzNyR+2+QNdF2VzTBaO4G8C2a+tOkWOUA4Tea
	UZLeIgXw8yg+0eBcMraKkp/Hd2+Ca6KdCPks6d+hYIUAgANBPrRzPJcpiYUPAPBSZcXpou
	YWrsoJmQIkGtdk79NwLDq+1ufpS8tqi0pL7KoLg1+YNHzLbobBm/gQO4XnKpVA==
Date: Wed, 10 Jul 2024 16:56:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
In-Reply-To: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
Message-ID: <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Philipp,

On 2024-07-10 12:20, Philipp Puschmann wrote:
> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>> DMA names are required by of_dma_request_slave_channel function that 
>>> is
>>> called during uart probe. So to enable DMA for uarts add the names as 
>>> in
>>> the RK3568 TRM.
>> 
>> Setting it on channels without flow control apparently causes issues. 
>> See
>> 
>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/
> 
> Ah is see. The only problem that i have is to enable/disable dmas by
> having or not having
> dma-names properties, where the latter case is followed by kernel
> error messages. That
> is very counterintuitive. Maybe a explicit boolean like dma-broken
> would be better. That
> could be set on dtsi level as default and deleted on board dts if
> wanted. With such
> a boolean we could also prevent the misleading "dma-names property of"
> error message
> and replace it with a hint that dma is disabled on purpose.

 From what I've read in the prior discussions, this seems like a driver
issue, so the driver should be fixed instead.

>> 
>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>> 
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index 
>>> d8543b5557ee..4ae40661ca6a
>>> 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>  		clock-names = "baudclk", "apb_pclk";
>>>  		dmas = <&dmac0 0>, <&dmac0 1>;
>>> +		dma-names = "tx", "rx";
>>>  		pinctrl-0 = <&uart0_xfer>;
>>>  		pinctrl-names = "default";
>>>  		reg-io-width = <4>;
>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>  		clock-names = "baudclk", "apb_pclk";
>>>  		dmas = <&dmac0 2>, <&dmac0 3>;
>>> +		dma-names = "tx", "rx";
>>>  		pinctrl-0 = <&uart1m0_xfer>;
>>>  		pinctrl-names = "default";
>>>  		reg-io-width = <4>;
>>> ...
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

