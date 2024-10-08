Return-Path: <devicetree+bounces-109202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15026995903
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 23:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1CA7286827
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 21:15:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7766D1791ED;
	Tue,  8 Oct 2024 21:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="JAkaIYYX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8222C859
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 21:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728422154; cv=none; b=e8vfx0z4ZbP2JvaFfgIsVh5ZWlZsSgQ/hurL63Ehp42pBPkL0MzXnVyBeEwdiEQCl3XaKw04264LUrIjr4TF/DhrTOuc0BFXn36D109ZyBc8gTDofQlLVCajjLRvW4rbZ9oqafOOC1+nEEsZMQxQ3Vj8zGjju8h/aseBY1cAG+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728422154; c=relaxed/simple;
	bh=AUlJ6Fiw3jiB4+n/35UAMo2m0x3xpNuUqcTA2GNLq6Q=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=kyez42qaxEyWPjMB2XygpSv3y/MWDZGIMuIYiBRfZeFKoH1sxBz63tkNXLwhEvvvmQ0Suo2PsPkj+8tl6BeecVHWhxfyK1/mKCaBjHJfCZYx7PBqlQXZv+hKAO2504bRv5iVAkCWqz0VtsybmrZ928OWyQp3Ieje9k/vy/PNZn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=JAkaIYYX; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728422150;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wBQ0Fe0lYsN0P+fPg0AtFJZEx3fIyICACUmPRJVhs0Y=;
	b=JAkaIYYXVqkjeq1qXd9wRiKPeTJc8p+jziC9A7pqXPUiQC4VmGpI3+Fb2d/OhWmmdTkTJ4
	YCuH+qJhovoB6+0Hoot/QRtAlR/Y2LlFpFwZGtdhxed0jPF2B7M5ZVtOvyPzjtIWi/oW+4
	EaDgwDDKFRecVWgZ5fuKDP3m1rVL8hctNUz3V3StYQVF0Rp0cD6nYJN9+iYQZ7MZlM1hQi
	DRzK+7aNrDbRz91s35tFLF4isWzEJeEQXay6yQMfEVNSOgBf90JeIBVlFzLvt/XHS+yQJX
	5jm+E+o/5XBsKUI4/ZFnMhOYGgMeKxN3VPleJ8eTL7DXubNMTcEIvmslcuXI2A==
Date: Tue, 08 Oct 2024 23:15:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Manivannan
 Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 04/14] arm64: dts: rockchip: Fix bluetooth properties
 on Rock960 boards
In-Reply-To: <20241008203940.2573684-5-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-5-heiko@sntech.de>
Message-ID: <bc4e9c20924888b0333e2df81fabc436@manjaro.org>
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
> So fix it to match the binding.
> 
> Fixes: c72235c288c8 ("arm64: dts: rockchip: Add on-board WiFi/BT
> support for Rock960 boards")
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  I've got this change
cross-referenced to what's expected in drivers/bluetooth/hci_bcm.c,
and it's fine.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index 8146f870d2bd..ab890e7b6c59 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -576,7 +576,7 @@ &uart0 {
>  	bluetooth {
>  		compatible = "brcm,bcm43438-bt";
>  		clocks = <&rk808 1>;
> -		clock-names = "ext_clock";
> +		clock-names = "txco";
>  		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
>  		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
>  		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;

