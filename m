Return-Path: <devicetree+bounces-184226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F09E4AD3502
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:33:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA16C3AC51C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E49C51D89E3;
	Tue, 10 Jun 2025 11:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="wd5lub2M"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D13C28B7CE
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749555213; cv=none; b=bqltDWLJevTZuAkYO5EzHAo5x2W1V0KAQniM0Ke6EDxY46QFP25vocq5S7L/yZH3L04OoC+9CLlO2OuaNfmCBfNOKHiQ/Fsm4uR5QrZxFCIis3bXJSxORfj/i+kMkXtokP0FTKGKVu3dhVv311/QWhB48CchiZpbyXjqjFOPbyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749555213; c=relaxed/simple;
	bh=gxj2lTxyAKS8IYgEF6qVsrzb2LtDhx5c0GaJqV/BOHU=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Subject:From:
	 References:In-Reply-To; b=pFXxlxxtKOOvJAXRtqJJEnFx7szby2qrOts/DF55FFoMSdHfBa/qvI0YIuKGx+628uK08p0OVuXMfCa648iw6WId/O3yVkhMIClnosIMaWCr6F/8vfu6MSLbP5yoTOtBzzOfvd51t4tzw8NK/2LJdvGyCUpAeWoD3CK/nlo4J+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=wd5lub2M; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749555209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3BbKiigODEicaiDNzx9aoa4j4mF/NM/KKv41e3U3xBE=;
	b=wd5lub2M4ly/Y+UM69qrQaNtuHzWYZUNWzPhgJ5L+BRHBdHOKaSc0U7f9jrgezU99Ly57K
	Se/7+7htSTy3pxzR/F3XNjBC+6KlQzFyvaS2Hsq2Dwv69glNGtzNs0xgcmv7M5ysEPuLFb
	ReTuWft92EiA/X+iLCNyqfsuxsp6rI3axXtAqaibrzwvUJgSxgd4bvhwdrScGSIH/cvTMW
	Qd7g8i3pL8ln/exU+Cpvrs2+UUwRkmSchAOnhQf/2mAeBea66iafoPzARbtdZBf8He/iUn
	9tGmOJkuffUEr8OBmtrUjJk1ulfkeLlmgRdl5VZ0JyeA9qbGq+JYYwra2YKfqQ==
Content-Type: multipart/signed;
 boundary=784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 10 Jun 2025 13:33:25 +0200
Message-Id: <DAITK5IPG0QA.2EMB23KS83SBE@cknow.org>
To: "Peter Robinson" <pbrobinson@gmail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, "Peter Geis" <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add overlay for RockPro64
 screen
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20250518215944.178582-1-pbrobinson@gmail.com>
 <20250518215944.178582-2-pbrobinson@gmail.com>
In-Reply-To: <20250518215944.178582-2-pbrobinson@gmail.com>
X-Migadu-Flow: FLOW_OUT

--784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Sun May 18, 2025 at 11:59 PM CEST, Peter Robinson wrote:
> The Pine64 touch panel is a panel consisting of the Feiyang fy07024di26a3=
0d
> panel with a Goodix gt911 touch screen. Add a device tree overlay to
> allow the display to be easily used on the device.
>
> This was previously included in the main device tree but left disabled
> by default which still required rebuilding the DT to use the device, now
> overlays can go upstream the overlay is the best way to handle the
> add on devices.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  9 ++
>  .../dts/rockchip/rk3399-rockpro64-screen.dtso | 89 +++++++++++++++++++
>  2 files changed, 98 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.=
dtso
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/=
rockchip/Makefile
> index 3e8771ef69ba1..c7b13bff3ac20 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -77,6 +77,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock960.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-v2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtso

``s/rk3399-rockpro64-screen.dtso/rk3399-rockpro64-screen.dtbo``

Cheers,
  Diederik

>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399pro-rock-pi-n10.dtb
> @@ -209,6 +210,14 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou-=
haikou-video-demo.dtb
>  rk3399-puma-haikou-haikou-video-demo-dtbs :=3D rk3399-puma-haikou.dtb \
>  	rk3399-puma-haikou-video-demo.dtbo
> =20
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
> +rk3399-rockpro64-screen-dtbs :=3D rk3399-rockpro64.dtb \
> +	rk3399-rockpro64-screen.dtbo
> +
> +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rockpro64-screen.dtb
> +rk3399-rockpro64-v2-screen-dtbs :=3D rk3399-rockpro64-v2.dtb \
> +	rk3399-rockpro64-screen.dtbo
> +
>  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-wolfvision-pf5-vz-2-uhd.dtb
>  rk3568-wolfvision-pf5-vz-2-uhd-dtbs :=3D rk3568-wolfvision-pf5.dtb \
>  	rk3568-wolfvision-pf5-display-vz.dtbo \
> <snip>

--784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEgYCQAKCRDXblvOeH7b
bpDlAP42dz1RokCahWYcKFjBZeZ82YRBLCv2WWK9segBBQ42mAD9GwubVa32FumV
yuonJTRt3xHaFfm2Dhc1UTppyeq1Wgo=
=HBM1
-----END PGP SIGNATURE-----

--784e285f5dea8c9600fc349e98833e3e9f44c336efd28cb84210aa5d2a54--

