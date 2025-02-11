Return-Path: <devicetree+bounces-145080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0DDA304AD
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 08:40:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7332B188AAF2
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 07:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B17A1EDA0A;
	Tue, 11 Feb 2025 07:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="sKWuHyJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93561EDA11
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739259630; cv=none; b=tkt3fIYkvQ/Zesh8IH0E1m387UJstj8geAAO4XwpyZ1LaureEFp40k+g5qDLLJge7jOTWxg+Id5bHeLOD9qY5MLkF5ylKSYsfpp472/SGrq22cfAcsPRbIn/kUQWGru9O7JFMikJ4gkavDoZF9hgAXtXMVOfc/RhGpKhNQYj0YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739259630; c=relaxed/simple;
	bh=pMKZzyLqyvyVwdTTyqskih+fyo3UOxvs1YXcoWoOCZQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pLcQy+9EK2VVrGa/tHK3SW6TyaRjrqQiEDutgvMJoBYtESIIFO3Yj4MkLmE8WDGIEDE2ZQFialmeGpkc77vTr9RSJt7V8pfi9/irkIA2vMQIYC8N2sQI2Iq6Dla7oxlNzpF9AFU/i9EfOkobuRI9aziX68Mot6PTQ1zW57kQ4bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=sKWuHyJ8; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rn0RBFJfAEAIgoAzu1BVM5JXCwZahw0WpRnDyoZDBpI=; b=sKWuHyJ89/93wgixZY/dwdkmQP
	C5fovYVoa3m9R9Y2jPo0IXzqqoIqECpXNbX2CxDICc6Crn3qA/mYjooJA9w0Q2evqMLqFad/FEjCO
	Hd60hrjyTX+kMaxEeTzO/zsrPPSRw51+c4b/hdl8K+DpI0Ec25K4FKMEjbyc92OtDmzuEymBX7+VD
	OHKGHEKRD41bdWaFWyANI44k2mAFcqHwdhyxfVTxy9gcEwtIWF4uZ+FBsVqKf8MZpD473Q/3SFhhQ
	N1vb6xQVNfpSpjsNpcZrtPXubBiZshKji3AcoWYxBlddRjLfCnA21MMhKbN/6eSjvoXE5oqu1tLa1
	QFneMPQQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thksc-0004qb-2X; Tue, 11 Feb 2025 08:40:26 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Patrick Wildt <patrick@blueri.se>,
 Niklas Cassel <cassel@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 robin.murphy@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
Date: Tue, 11 Feb 2025 08:40:25 +0100
Message-ID: <25203566.ouqheUzb2q@diego>
In-Reply-To: <Z6pxme2Chmf3d3uK@windev.fritz.box>
References: <Z6pxme2Chmf3d3uK@windev.fritz.box>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

Am Montag, 10. Februar 2025, 22:37:29 MEZ schrieb Patrick Wildt:
> The SMMU architecture requires wired interrupts to be edge triggered,
> which does not align with the DT description for the RK3588.  This leads
> to interrupt storms, as the SMMU continues to hold the pin high and only
> pulls it down for a short amount when issuing an IRQ.  Update the DT
> description to be in line with the spec and perceived reality.
> 

Cc'ed Niklas

This should probably also get a

Fixes: cd81d3a0695c ("arm64: dts: rockchip: add rk3588 pcie and php IOMMUs")

> Signed-off-by: Patrick Wildt <patrick@blueri.se>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> index 8cfa30837ce7..520d0814a4de 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -549,10 +549,10 @@ usb_host2_xhci: usb@fcd00000 {
>  	mmu600_pcie: iommu@fc900000 {
>  		compatible = "arm,smmu-v3";
>  		reg = <0x0 0xfc900000 0x0 0x200000>;
> -		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
> -			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
> -			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
> -			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupts = <GIC_SPI 369 IRQ_TYPE_EDGE_RISING 0>,
> +			     <GIC_SPI 371 IRQ_TYPE_EDGE_RISING 0>,
> +			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
> +			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
>  		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
>  		#iommu-cells = <1>;
>  	};
> @@ -560,10 +560,10 @@ mmu600_pcie: iommu@fc900000 {
>  	mmu600_php: iommu@fcb00000 {
>  		compatible = "arm,smmu-v3";
>  		reg = <0x0 0xfcb00000 0x0 0x200000>;
> -		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
> -			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
> -			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
> -			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupts = <GIC_SPI 381 IRQ_TYPE_EDGE_RISING 0>,
> +			     <GIC_SPI 383 IRQ_TYPE_EDGE_RISING 0>,
> +			     <GIC_SPI 386 IRQ_TYPE_EDGE_RISING 0>,
> +			     <GIC_SPI 379 IRQ_TYPE_EDGE_RISING 0>;
>  		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
>  		#iommu-cells = <1>;
>  		status = "disabled";
> 





