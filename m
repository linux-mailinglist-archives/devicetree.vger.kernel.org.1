Return-Path: <devicetree+bounces-109200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF3D9958FA
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:13:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 67D081C20F7E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53069213ED6;
	Tue,  8 Oct 2024 21:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="tAtgChPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6161DF99B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728422024; cv=none; b=uCa8mAbrY7Y0r6PXbIwbLk1fLaCRCJO64RKf8mtthh8ZLb+MQXzADHvUosDk6yh5uKNeTM24rXUeGkKTcc7xdG9HdfcfMCAyj2xhbYMnugLmpwRFyD91kEybY6NK10FJjMX53p+Q9pEg+d2Q6vQzGIu53p4xFbPBF0CpSvBHfA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728422024; c=relaxed/simple;
	bh=I/nA3vIet0HF7qJ9O4+8FZwx3ArbQluNObgQpEx003E=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=uqPiHtBChF25QyusykLwMz8K+v0rf1TUEzD2dqovbMvK/07EBusN0eVYNMGUyq3R0PeSqU1vHp/R1SfcarUTWxm4pD2QOE4OmoZ9aYgGc+P3AIVVcTMneg5LAeNrU6x+bMWX3L+fBb6m0SwSoJzRI/mBU9w3N6FWJmNe0ZguYPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=tAtgChPP; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728422019;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7d0nybW1X+KciqYLdainH4mq7ma/xpQb0IcAN4MDxxo=;
	b=tAtgChPP70XUm1r3gDGjhzfBRg5UcvLMnw7hdhnnflvvYuza3drRZO2EXoI8Z3877nYAye
	JhSNnaGhxXHx/SuZeIdVf9VaeKD0f90QoSLpItBdl6AFgb8w7aRkRy2Bi6/cvVkEDdDesd
	sDcDhFl2UU1VMo00p+2XmEiyWo910LRsV7p3bSRZv4ICYfAcNw/EoyRlDufLb3XFl9Ijb2
	a+05pbGVDrbji+FPkwP3uwkgNmYQtRVvCdLA+DqhBcTOvxdtv1j8CWEnf4Ky3SjWWgdbN7
	Xdso1eL6FCEXMaV3KNxl/w0WJ1Fu5qcOe3V7GyFaIWbRyALzfdX6XqzjN6MZKw==
Date: Tue, 08 Oct 2024 23:13:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Andy Yan
 <andyshrk@163.com>
Subject: Re: [PATCH v2 03/14] arm64: dts: rockchip: Fix bluetooth properties
 on rk3566 box demo
In-Reply-To: <20241008203940.2573684-4-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-4-heiko@sntech.de>
Message-ID: <5ac9929d1d00183619606e38be5ec64a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> The expected clock-name is different, and extclk also is deprecated
> in favor of txco for clocks that are not crystals.
> 
> The wakeup gpio properties are named differently too, when changing
> from vendor-tree to mainline. So fix those to match the binding.
> 
> Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip
> rk3566 box demo board")
> Cc: Andy Yan <andyshrk@163.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  I've got these changes
cross-referenced to what's expected in drivers/bluetooth/hci_bcm.c,
and it's all fine.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> index 0c18406e4c59..7d4680933823 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> @@ -449,9 +449,9 @@ &uart1 {
>  	bluetooth {
>  		compatible = "brcm,bcm43438-bt";
>  		clocks = <&pmucru CLK_RTC_32K>;
> -		clock-names = "ext_clock";
> -		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> -		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
> +		clock-names = "txco";
> +		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;

