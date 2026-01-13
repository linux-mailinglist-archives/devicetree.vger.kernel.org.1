Return-Path: <devicetree+bounces-254411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E539D17FE7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 149F5300385B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC043806DD;
	Tue, 13 Jan 2026 10:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="f+oe9TAe"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180CA2C3268;
	Tue, 13 Jan 2026 10:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768299989; cv=none; b=pMMCQqiuYUiP3sDnSfA/px8zF2eiEkzhfDF2ODD4EQ6Jwkq9mCh9G8gaUjlqAIzTBOuCoILEGtkN+ROWUEC+t4Jw6cdSDvaarnzQKPQADlaT6OksgV7MXYbRaTzPpGOTlxd1wCRlptOkfoaPoaVQrsUcFM4zR8lsaEW5Or5U2U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768299989; c=relaxed/simple;
	bh=bMP9gwkJ9RFalxLWCuFxEaJmnL/Xdhk2hxK/uI2bjFw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hClTAsEaniLTVXkB63VeBpe5ndx0XVhVdu79Q/Zf7GIJ5ZMhckJZJHXNab38QtfLS81q6lkvCWw03/3h5iKs1/i1Zo4pCfo2dbk/lEs3cRmM55ZDvq2RPMB1PrKq0/6k4vojZXKMaBkTq5fLBeCRrAzuJyos6YFyNU8R8XLRkE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=f+oe9TAe; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5H/hNTgciu6FD3AcTNuZC1um8OdojwIPslmchvUjaNU=; b=f+oe9TAeVNeRg5dxijtlcbewz/
	8NqL4OlUILWM3MaE4inNGMQXs/GqUCwYjwoj6kn5QKowFEPZR5vIjTVEGRLHYS17UyO0KSxRI/y+Y
	mVg0qLOAAUPQL4YuGsCGYUtHx429wavsvYetCsCfZ6khZ0Wk9O8NaDL9SBogjxfPXi0DPI3QVJBbg
	ud+/E4Ebaoik4+Iu4zRvEycPKg3I4XWW02JtvojWYnB5QPBmusI5OZTaoKa4ffwjx+6NT7v6z3yZj
	Q0XqYllxcHVJ05dYNNgsqwbgZ7Mnc/Jrk9m9KOc/0McOMtf5N6geNPuNCFbQVXbKgdrC4ot9JCjt4
	TpaIqXUA==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfbbR-0025PF-Ey; Tue, 13 Jan 2026 11:26:22 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 guptarud@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>
Subject:
 Re: [PATCH 3/3] arm64: dts: rockchip: Remove interrupt GPIO for WiFi for the
 Pinephone Pro
Date: Tue, 13 Jan 2026 11:26:21 +0100
Message-ID: <14738774.lVVuGzaMjS@diego>
In-Reply-To: <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
References:
 <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Dienstag, 13. Januar 2026, 07:42:26 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Rudraksha Gupta via B4 Relay:
> From: Ondrej Jirman <megi@xff.cz>
>=20
> Wifi is currently unusable if interrupts are defined. Let's remove them
> so that Wifi networks are actually discoverable.

Please don't describe not what you're doing but why.

The interrupt seems to the one that is connected to wifi, so I'd expect
a description why that causes problems first, instead of going
"doesn't work for me" - "just remove it" .

As the below just looks like a temporary hack until the real cause is
found.

> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Co-developed-by: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
> Signed-off-by: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch=
/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 97d0bf455258..69bb9de4ce55 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -834,9 +834,6 @@ &sdio0 {
>  	brcmf: wifi@1 {
>  		compatible =3D "brcm,bcm4329-fmac";
>  		reg =3D <1>;
> -		interrupt-parent =3D <&gpio4>;
> -		interrupts =3D <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names =3D "host-wake";
>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&wifi_host_wake_l>;
>  	};
>=20
>=20

Thanks
Heiko



