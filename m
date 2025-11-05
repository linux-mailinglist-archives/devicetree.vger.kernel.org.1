Return-Path: <devicetree+bounces-235420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76853C38550
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 00:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1094B18961FA
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 23:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79FB726ED3F;
	Wed,  5 Nov 2025 23:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="S10OBdYa"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3A522D9ED
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 23:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762384746; cv=none; b=btLOloj4ULx4HfbyLQe55pbhxFv696g8P9tWE685V/x8u/VYawb0oDJOw1vgKJHLZ57WdtHNM/QpKTNp2NM4XEUlg3KuAdl/bZ6z+BDg1FcCOCrVXjvXFhF2m1dp1/dDS+B2kBsC5kMb36z2+waeyA0+y02l62SaxdrM+Hwf7wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762384746; c=relaxed/simple;
	bh=bal1pm0MBHW5CVxN9rxC/2Jag2FEa4gaFfEjB8A+0UM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Gs6W/8Mwt1qekJeQogMMmdK5nTfA31jf+g2Alq9WP/C6ShE1RqofAnleJC42UT+MztT9NVRrRcwkwwL/QC4/DJwndkZfoxdxUAn3YvahZ5KAc3noXjWGCA8u4QxK9eZSKEwg+lGmbIn38zNq3s0dTLQpihunVqqojpm0Ekcd6Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=S10OBdYa; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Mo3Jh0qgHnKE+W0ZE0CQCiRi83Cv3SN4TvlOGOO9etk=; b=S10OBdYaBKmpmCEL+9+EPKNuc4
	xPCJjtCzUsi4xBVeWmppP5DhhTgeLLrmmd8ShKYFNmmgBB/77b78788erVAUe/YZurkGvnQ+AoRwS
	RftlgHnkEvBD6ZfGM3GxDxLkEPncmMLyZ8138AyVyONb3J6USSn/vgQAZIYmj4th0jTi5eGie7nNx
	VkzqyzHSHo/2yOYxfk8kg6+OwccYLSXmcRe6UzT28xZ0zj6O048L8hC+oVtLk24b88aGgx+n0NL9J
	rFB4bt9JUB8rI9bCG64nud157k1yPo70Ii6vEJK+/uhchQ3k4q/p8XZjmMg44SRAsgGm1ZsQt5WFm
	vgWtvonQ==;
Received: from i53875bde.versanet.de ([83.135.91.222] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vGmmD-0001CL-9o; Thu, 06 Nov 2025 00:18:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 damon.ding@rock-chips.com, jbx6244@gmail.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject:
 Re: [PATCH 4/5] arm64: dts: rockchip: Enable HS400 for Indiedroid Nova
Date: Thu, 06 Nov 2025 00:18:51 +0100
Message-ID: <2864346.mvXUDI8C0e@phil>
In-Reply-To: <20251105205708.732125-5-macroalpha82@gmail.com>
References:
 <20251105205708.732125-1-macroalpha82@gmail.com>
 <20251105205708.732125-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Mittwoch, 5. November 2025, 21:57:07 Mitteleurop=C3=A4ische Normalzeit s=
chrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Once the DLL_STRBIN_TAPNUM_DEFAULT is set to the correct value [1], the
> workaround to ensure stable eMMC operation is no longer needed. I
> have observed testing this that hdparm went from:
> "Timing buffered disk reads: 502 MB in  3.00 seconds =3D 167.14 MB/sec"
> to the following:
> "Timing buffered disk reads: 832 MB in  3.00 seconds =3D 277.32 MB/sec"
>=20
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/drivers/mmc/host/sdhci-of-dwcmshc.c?id=3Da28352cf2d2f8380e7aca8cb6168=
2396dca7a991
>=20
> Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")

This needs the patch you linked to, to actually work, so I'll drop
the fixes tag when applying, because this should likely not be
backported to older kernels.

Same reasoning for patch 5.


Heiko

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/a=
rch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> index 62c8c8f68713..0796ba6d2504 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> @@ -561,10 +561,10 @@ &saradc {
>  	status =3D "okay";
>  };
> =20
> -/* HS400 modes seemed to cause io errors. */
>  &sdhci {
>  	bus-width =3D <8>;
> -	no-mmc-hs400;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
>  	no-sd;
>  	no-sdio;
>  	non-removable;
>=20





