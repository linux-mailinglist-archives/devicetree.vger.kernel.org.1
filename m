Return-Path: <devicetree+bounces-82845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DA4926197
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 15:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 600211F213C0
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 13:15:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2563117A5AC;
	Wed,  3 Jul 2024 13:14:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928F71741F4
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 13:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720012487; cv=none; b=iYO32pnhVxkZErTTp2iyHljOTW+pX3ak/6i9HCsacOtVFHzfhWCBCvapnA1JQlIsyKjgitf7IYXKnZWcmHfZu8G0aEtsidzCnuWawPgrJid9da9xQ6TTjv7Xo/F95MXUzie0xhmrAcMDLvBoIloiygpSE/7Xv0sPOs9SuODiC+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720012487; c=relaxed/simple;
	bh=W6ErXN9oQzI6lFEoAP7TALElM1k1z6ReQEHuIIKhs64=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ka0mAGr26tneI2xtozM0muqsk+QOVKANzRBjKRIRl8A+y1TnR+KDGrMR6R0RV84CiuMS4sCL8z6JkYhcNzDE+QuXSXERmQP6xtRKmOXomA/4FSMt+CF10G5aDqGq2cJXSNDeF4NqM+5kODIUFuyYa5Qrq/Ev+p9OLbcLAPUBfew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B801367;
	Wed,  3 Jul 2024 06:15:08 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D9DB3F762;
	Wed,  3 Jul 2024 06:14:41 -0700 (PDT)
Date: Wed, 3 Jul 2024 14:14:39 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org, ryan@testtoast.com, samuel@sholland.org,
 jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/4] arm64: dts: allwinner: h616: Add r_i2c pinctrl
 nodes
Message-ID: <20240703141439.1807b865@donnerap.manchester.arm.com>
In-Reply-To: <20240702193414.57461-3-macroalpha82@gmail.com>
References: <20240702193414.57461-1-macroalpha82@gmail.com>
	<20240702193414.57461-3-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Tue,  2 Jul 2024 14:34:12 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add pinctrl nodes for the r_i2c node. Without the pinmux defined the
> r_i2c bus may fail to work, possibly if the bootloader uses rsb mode
> for the PMIC.

Yes, those are the only pins available, checked against the manual.

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> index 921d5f61d8d6..e31945c3895e 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -837,6 +837,8 @@ r_i2c: i2c@7081400 {
>  			dmas = <&dma 48>, <&dma 48>;
>  			dma-names = "rx", "tx";
>  			resets = <&r_ccu RST_R_APB2_I2C>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&r_i2c_pins>;
>  			status = "disabled";
>  			#address-cells = <1>;
>  			#size-cells = <0>;


