Return-Path: <devicetree+bounces-88480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B72C93DCDB
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 03:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBE8D28432B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 01:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A431631;
	Sat, 27 Jul 2024 01:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="ALNuJ2fS"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA5B3FC7;
	Sat, 27 Jul 2024 01:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722042620; cv=none; b=khAR5wRvMmOytLu4oIrBZmkZeQAfAKMeV/KpV7YlqEgbGjdEFy+vx11BFqGahGAf+zqOUE0b7DizDECtqMmqyru59idO3Sydlc08Q0il6qZRBhI78Qgu5a4pEQvW+flMMzYWpTOJIzfa9wBTDATe/7rpd3ELRlQ1rb6xlg0ooPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722042620; c=relaxed/simple;
	bh=Ci+4rr9QZI0ld75Fty9ApL64ATgr4EhnG5b2V01bEE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZbJbRqOrEKoJTyR04gMK36bFtJcQUNfYp106luH8aFh9A3FXlsz7ZUewIOyzHtJsabESCa2fr58fdHkVxsePp/ssOzkRNRev0uSrIEySTJQRK2kWoE8J3BVi8YE/lBgnDyJWbzyq24nNsvqaITLaKcqzPg8VKkTwQ/3BeCw37v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=ALNuJ2fS; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2E4CE720;
	Sat, 27 Jul 2024 03:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1722042572;
	bh=Ci+4rr9QZI0ld75Fty9ApL64ATgr4EhnG5b2V01bEE8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ALNuJ2fSYwlIqzOW9auMS3umpkmiPls84dDvZAuD9Ebk5BBGsbXt3R/+XkxLD5gnj
	 ptNgiFlRHzTyS1R2aAYvV52pA/i3Kwj9iNX7DiS3/m1zvCdtCsTlZ6/HkZwuiJBwa9
	 wugpdHLlM6vYxNFBTsd+pv1JzjUx4SNasZKVqMsI=
Date: Sat, 27 Jul 2024 04:09:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: Re: [PATCH v2 7/9] arm64: dts: renesas: r9a07g043u: Add fcpvd node
Message-ID: <20240727010958.GI300@pendragon.ideasonboard.com>
References: <20240709135152.185042-1-biju.das.jz@bp.renesas.com>
 <20240709135152.185042-8-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240709135152.185042-8-biju.das.jz@bp.renesas.com>

Hi Biju,

Thank you for the patch.

On Tue, Jul 09, 2024 at 02:51:45PM +0100, Biju Das wrote:
> Add fcpvd node to RZ/G2UL SoC DTSI.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> ---
> v1->v2:
>  * No change.
> ---
>  arch/arm64/boot/dts/renesas/r9a07g043u.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r9a07g043u.dtsi b/arch/arm64/boot/dts/renesas/r9a07g043u.dtsi
> index 15e84a5428ef..d88bf23b0782 100644
> --- a/arch/arm64/boot/dts/renesas/r9a07g043u.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a07g043u.dtsi
> @@ -142,6 +142,17 @@ vspd: vsp@10870000 {
>  		renesas,fcp = <&fcpvd>;
>  	};
>  
> +	fcpvd: fcp@10880000 {
> +		compatible = "renesas,r9a07g043u-fcpvd", "renesas,fcpv";
> +		reg = <0 0x10880000 0 0x10000>;
> +		clocks = <&cpg CPG_MOD R9A07G043_LCDC_CLK_A>,
> +			 <&cpg CPG_MOD R9A07G043_LCDC_CLK_P>,
> +			 <&cpg CPG_MOD R9A07G043_LCDC_CLK_D>;
> +		clock-names = "aclk", "pclk", "vclk";
> +		power-domains = <&cpg>;
> +		resets = <&cpg R9A07G043_LCDC_RESET_N>;
> +	};
> +
>  	irqc: interrupt-controller@110a0000 {
>  		compatible = "renesas,r9a07g043u-irqc",
>  			     "renesas,rzg2l-irqc";

-- 
Regards,

Laurent Pinchart

