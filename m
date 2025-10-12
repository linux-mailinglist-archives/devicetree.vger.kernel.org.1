Return-Path: <devicetree+bounces-225692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 240A3BD01A8
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 14:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C9E344E177E
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 12:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF9122332E;
	Sun, 12 Oct 2025 12:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="mjkEg+LU"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460EB2AD3E
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 12:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760270570; cv=none; b=sfruNkGSCOs+Sfqo1WQrrW2PEMDQSMlSik8mqP+zhJ34YTjE0ECgsXDJgovnJ4SFfhLnOmrNr9+14NVpBzNg7UWw46WDkex+f7I51nVM6HPyNnau7bUY4IKFNVTtmzj13ynCoFa1XbErWooMNQfr8cXb7wIRzweehmXGjCl0b7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760270570; c=relaxed/simple;
	bh=hkYrFmtHwgnnl4OTox8J46ZdqDsO4To4bVLV2Cxwsag=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QW2PutcEobvYH9X31hjyv8ZPBSrZD8R/2vYBOqgJhrh7M7fCL6m9vARgUE3HNyamZI0jzfisCjb6/9oQ9YMNvWdob3AmUWG5/jrcTnAGG9blOuOEfap6Jq6j2D8jOQo/v6UqRtOCzeV8tQviMru8o+m4DZ9NnZlmExszQyaTOto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=mjkEg+LU; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=aA9seg1fpxaQELGrSnSu4+Jx/cuciZJA886149/ITZE=; b=mjkEg+LUVGD6UvMWXmsyec6jkd
	BhThjFqW6VIJTzrPqKA+UJqUuBojkOfhtxNaIuK4Se20xmvnXYSYbCzfTgtZuFgovphlA609Q+zGo
	foE2pPuwgPqW0AMuHt4u9dkY+3dFuUway0kwiCHeazgvJfdph9rUdi52F/B9QP4PUSo2vpgfe0Qd+
	HhQVMp5aaUCcecFVXicrP9868hkAOGUnMX0qqDm6JtqRKk2IGnjMeyX36S7oVG0WkBv/4R+AMhnCt
	B4UwR1mHogFP6cZ5QiscHyMzGv4x+x3LrgwRT/AEGKGsNXL9lyc38LOWwq2Tf/ZeSemRw1fPFVVbR
	pQmNyZJg==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v7umc-0005Mi-Fg; Sun, 12 Oct 2025 14:02:38 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Andrey Leonchikov <andreil499@gmail.com>
Cc: Andrey Leonchikov <andreil499@gmail.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Subject:
 Re: [PATCH] dt-bindings: arm: rockchip: Fix PCIe power enable pin for BTT CB2
 and Pi2
Date: Sun, 12 Oct 2025 14:02:37 +0200
Message-ID: <2674033.Lt9SDvczpP@diego>
In-Reply-To: <20251012093135.80395-1-andreil499@gmail.com>
References: <20251012093135.80395-1-andreil499@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hey Andrey,

Am Sonntag, 12. Oktober 2025, 11:31:26 Mitteleurop=C3=A4ische Sommerzeit sc=
hrieb Andrey Leonchikov:
> Fix typo into regulator GPIO definition. With current
> definition - PCIe don't up. Valid definition have on
> "pinctrl" section, "pcie_drv" (gpio4, RK_PB1).
>=20
> Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi | 2 +-

How did you decide on the patch subject?

I.e. "dt-binding: ..." denotes changes for the binding as the name implies,
while you change to a Rockchip specific Devicetree should have started with
"arm64: dts: rockchip: Fix PCIe ..."

Also, please provide a Fixes tag in the commit message.


Thanks
Heiko

>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/a=
rch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
> index 7f578c50b4ad..f74590af7e33 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
> @@ -120,7 +120,7 @@ vcc3v3_pcie: regulator-vcc3v3-pcie {
>  		compatible =3D "regulator-fixed";
>  		regulator-name =3D "vcc3v3_pcie";
>  		enable-active-high;
> -		gpios =3D <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
> +		gpios =3D <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&pcie_drv>;
>  		regulator-always-on;
>=20





