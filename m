Return-Path: <devicetree+bounces-59200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5E98A462C
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 01:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C0231C20B70
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 23:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F371C13698F;
	Sun, 14 Apr 2024 23:37:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE4A1E504
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 23:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713137870; cv=none; b=NYfwGNUZtCOKjSMCNTkuaNh/Gm7MAtl2kM7dt2dqEIY5egG72vpfA+gsHe0x2ykm1JUopsMP++IlwGJ1B4LpfrWu9Up3MNTmC+sG0/juQR46vAw1LYYmqcrBE/4sYCPvUVnmX1ZMdVukbbRd8g1AybaX/9PKEJufV9XvmVmrhZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713137870; c=relaxed/simple;
	bh=N8PN0i9XFgCzv+tjanM5VtnZi/j1SkM2FUcJrDgpBRQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BoAtHEgVIJC6Jr92y24eMmmWb3sBCrLPWH3lqkTeopQP3juH0WE4c2Dej7gEv+u/UKfzzngnl+O2IwwMwM8ZlejcpyT0UkgLx95rETT2yb1dqTybMJz3DWdrHUJZFQTEXx9pNFnTG0P9Gv0XMq1oWwF6kR2EbFXA1pzW1MflxNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73049339;
	Sun, 14 Apr 2024 16:38:16 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 557D13F64C;
	Sun, 14 Apr 2024 16:37:46 -0700 (PDT)
Date: Mon, 15 Apr 2024 00:37:40 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org, samuel@sholland.org, jernej.skrabec@gmail.com,
 wens@csie.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh@kernel.org, ryan@testtoast.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h616: Add NMI device node
Message-ID: <20240415003740.666759d0@minigeek.lan>
In-Reply-To: <20240414170424.614921-3-macroalpha82@gmail.com>
References: <20240414170424.614921-1-macroalpha82@gmail.com>
	<20240414170424.614921-3-macroalpha82@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 14 Apr 2024 12:04:24 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi Chris,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add device node for the H616 Non Maskable Interrupt (NMI) controller.

You might want to mention that the NMI pad is not exposed on the H616 variants, but on
the T507 and H700 packages.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> index b2e85e52d1a1..1e066f3057be 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
> @@ -775,6 +775,15 @@ r_ccu: clock@7010000 {
>  			#reset-cells = <1>;
>  		};
>  
> +		nmi_intc: interrupt-controller@7010320 {
> +			compatible = "allwinner,sun50i-h616-nmi",
> +				     "allwinner,sun9i-a80-nmi";
> +			reg = <0x07010320 0xc>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +

I can confirm that this matches the manual, and the registers behave as
described in the A80 manual. I don't have access to a chip with the NMI
pad exposed or used, so I cannot test this fully, but Chris'
experiments with the AXP717 PMIC connected to that pin on on H700
board seem to confirm that it indeed works.

So with that small amendment to the commit message please take my:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

>  		r_pio: pinctrl@7022000 {
>  			compatible = "allwinner,sun50i-h616-r-pinctrl";
>  			reg = <0x07022000 0x400>;


