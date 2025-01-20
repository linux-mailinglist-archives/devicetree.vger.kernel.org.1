Return-Path: <devicetree+bounces-139862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47045A17371
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 21:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05CA91883E16
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 20:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE241EE00F;
	Mon, 20 Jan 2025 20:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="BEEbpAmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6F9188A0E;
	Mon, 20 Jan 2025 20:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737403740; cv=none; b=JI1iZ6uMrSXpqG3ss8L9C6M0grH0QVGg9LqqTX6PzsfC2Dx3lwF3EtGSTMGxyZysgKZg5TtcBL6UMww5sDs97b2NCmu0brmDFcy14iBg/mH9AEu/ojtFSfp6QbID7dN8o9auAZbrb14RATLJRyXHOjz2lceQULZlVJi6F6EgJsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737403740; c=relaxed/simple;
	bh=hrqlTFojpS50yCUvoRx8wklma8cV6ETvnT29p8LlS3s=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Y8/W+Y9kdFJyCMXEg7P01YSxtHkuVBh1q0jYpXdrkEu+2w3R0UA2KTFAII7AlaUviMBo/tTG/OG9UlFP566PZ/5ruhAibHdPDHTe64hwxv7daQezyGNyIkfHPI6ZZ4jcnBrZbpBw136/wigjFS+10dlUjvFFACsLLYzIbuqr2EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=BEEbpAmB; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737403729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B5LWDDl4PPvpx+DyyaGnR82rDJrKyrO2HYvJ/Dnc9Vg=;
	b=BEEbpAmBNhrMLzjqxTQacisW+dgpo9N4pv0eow9Q5VAAlkfnChxlYyvcCnhktLK+S6PFHJ
	MoaZx2s8G3Hj9Hh/A91BTi/XwxnYR4NmhnCB2/bnYSp4am8IOn+B+PUbseK2SLHCiNgQzP
	dnkyQxGz1qscyExWgImDMEWUui2rpx/VDWJ4JlUJlKh1zUsaQH3EitrJp5dgoXHdKQciCo
	e/8PO2alpHNuwpt7WEXpfRG5cR1Mx/C4Zj75nGZQ/p/Wtv/X/7VGhmF60+uteBfTTbVjzl
	/EzofxCcemaJWy0hWKqSjeAyCo4Ezo5Tbc1wERume3U5P0bxioPKz4n9PJN3DA==
Date: Mon, 20 Jan 2025 21:08:49 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add finer-grained PWM states
 for the fan on Rock 5C
In-Reply-To: <20250120-rock-5c-fan-v1-1-5fb8446c981b@gmail.com>
References: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
 <20250120-rock-5c-fan-v1-1-5fb8446c981b@gmail.com>
Message-ID: <f9c97005f74f906bc724ae8cda5f7ead@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexey,

On 2025-01-20 20:22, Alexey Charkov wrote:
> Radxa Heatsink 6540B, which is the official cooling accessory for the
> Rock 5C board, includes a small 5V fan, which in my testing spins up
> reliably at a PWM setting of 24 (out of 255). It is also quite loud
> at the current minimum setting of 64, and noticeably less so at 24.
> 
> Introduce two intermediate PWM states at the lower end of the fan's
> operating range to enable better balance between noise and cooling.
> 
> Note further that, in my testing, having the fan run at 44 is enough
> to keep the system from thermal throttling with sustained 100% load
> on its 8 CPU cores (in 22C ambient temperature and no case)
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>

Thanks for the patch, it's looking good to me and the explanations
are fine.  Please, feel free to include

Acked-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index
> 9b14d5383cdc16947c955b1c6e2a32a50c5df3e6..1b66a69cf0f8795d7305852fa7fef3d0672ada7f
> 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -71,7 +71,7 @@ led-1 {
>  	fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
> -		cooling-levels = <0 64 128 192 255>;
> +		cooling-levels = <0 24 44 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
>  		pwms = <&pwm3 0 10000 0>;
>  	};

