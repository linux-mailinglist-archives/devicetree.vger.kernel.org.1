Return-Path: <devicetree+bounces-75157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FED8905A73
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 20:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8F28284A32
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 18:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3D118307F;
	Wed, 12 Jun 2024 18:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="tQXH8/Xq"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B32B183067
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 18:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718215849; cv=none; b=S6WJOZ1xoyrvuebdqV6AFwbWzqw8dE8wVE+wmo2Qy4iQT8kazN25ezt8kM5AkHy+EtWP1KW6GTP+8UflLB7tfYB27NE9Hv/NUG3McuTbP6GClhaDAjThVhixtPj/4VBpHUoR1oMjkyReShl5FUbQf+cggFVenYtk7RL9t6FdY4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718215849; c=relaxed/simple;
	bh=+XnHRTnS9LdzjAnCfXLi+O0dR/LBhekA4iksGxNsJfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oQ4xvpSQAtuw2Uf7nWi/vwYBW7Tx607DoUpjj6EIXvNyqyzD0FOGfSXA88pZVZiRMpCYeiVmefljmFaIN9uTt073dw3Dlsg3ONmTz0Wpf2tbKutyqYK1xm1lLm90GkRys3TGxwabYpdOSGOy6HF0E7nK62qz/qc2jYHr8jU+plk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=tQXH8/Xq; arc=none smtp.client-ip=95.215.58.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: ezequiel@vanguardiasur.com.ar
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718215845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7Wwh90v24Qe0BQdwYakUsPolSiapUti7KGb/PL1W8ms=;
	b=tQXH8/Xq1QwVd4wMRAzNCmzYZzKLwohN/fYu1HQM4kXHE6+bf2CX1BhmaEvz3S/Hg3SPKy
	87DEEJ6ISuSnNmwLRBcaqGex7Bxy0nahTAxNfXA/B+VJ87tJWcgbu97vRj6gpo5TchKCPY
	mjpYLhImN/fkkrTqDuctfIyl/PIQxHa+WHB5fM3NFGtWxKQ+zBbN3kPV6sxOu4N3ZGIXC+
	8mrczhGNnlxVPOGPvff1s/5YuwwE2bOL1PfB7wITly/t5jnO/0Fq3dNP+pU/wBsczUIhVi
	26rDjcJfWZyO7caBLM/8sBaFKy6JEUViMJOwrqA5MyvSwrqRkK6+c8EHUvx1iw==
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: frattaroli.nicolas@gmail.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: liujianfeng1994@gmail.com
X-Envelope-To: linkmauve@linkmauve.fr
X-Envelope-To: nicolas.dufresne@collabora.com
X-Envelope-To: linux-media@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: kernel@collabora.com
X-Envelope-To: sigmaris@gmail.com
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: sebastian.reichel@collabora.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>,
 Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Hugh Cole-Baker <sigmaris@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject:
 Re: [PATCH v5 5/5] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Wed, 12 Jun 2024 20:10:30 +0200
Message-ID: <4207056.GSNtieVc0Q@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240612173213.42827-6-sebastian.reichel@collabora.com>
References:
 <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-6-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5992854.hoJakhlImG";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Migadu-Flow: FLOW_OUT

--nextPart5992854.hoJakhlImG
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Wed, 12 Jun 2024 20:10:30 +0200
Message-ID: <4207056.GSNtieVc0Q@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240612173213.42827-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0

Hi,

On Wednesday, 12 June 2024 19:15:45 CEST Sebastian Reichel wrote:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi index
> 9edbcfe778ca..e7e1b456b9b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1239,6 +1239,27 @@ jpeg_enc3_mmu: iommu@fdbac800 {
>                 #iommu-cells = <0>;
>         };
> 
> +       vpu: video-codec@fdb50000 {
> +               compatible = "rockchip,rk3588-vpu121",
> "rockchip,rk3568-vpu"; +               reg = <0x0 0xfdb50000 0x0 0x800>;
> +               interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> +               interrupt-names = "vdpu";
> +               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +               clock-names = "aclk", "hclk";
> +               iommus = <&vpu_mmu>;
> +               power-domains = <&power RK3588_PD_VDPU>;
> +       };
> +
> +       vpu_mmu: iommu@fdb50800 {
> +               compatible = "rockchip,rk3588-iommu",
> "rockchip,rk3568-iommu"; +               reg = <0x0 0xfdb50800 0x0 0x40>;
> +               interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> +               clock-names = "aclk", "iface";
> +               clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> +               power-domains = <&power RK3588_PD_VDPU>;
> +               #iommu-cells = <0>;
> +       };
> +
>         av1d: video-codec@fdc70000 {

Shouldn't these nodes come *before* 
jpeg_enc0: video-codec@fdba0000 
As fdb50000 is lower then fdba0000?

Cheers,
  Diederik
--nextPart5992854.hoJakhlImG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZmnklgAKCRDXblvOeH7b
bjdlAQD4lJfAZ+uWdf2M0bt3TgJkdY9aeTap7nRn/OtdhFmyLwD+KKaiUZBld2Py
aS3zD6719QKISeO69bc5PwdusH9GXAA=
=RLxZ
-----END PGP SIGNATURE-----

--nextPart5992854.hoJakhlImG--




