Return-Path: <devicetree+bounces-46567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 466EE86A1CB
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 22:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7751281DFA
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 21:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34D5D14EFF3;
	Tue, 27 Feb 2024 21:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MBNqgmJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DA4522EE0
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 21:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709070018; cv=none; b=bdbEKPtQUrCkqJMydQLWnex819e0fMkmlI4dNI+5bvu4Y1UNSC0FcrK3KHKr9yWyDeSIbN2Tf5VMwYlX+Qko+n4Da9usrFKSGzUujUnexpYG3iIK/sisfXs0S13dD6YR0mABPNYNbLIK/NCIbe45N1+ty+nkgyV/03zIsWKM6OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709070018; c=relaxed/simple;
	bh=tNDUIvOq6BAUo+1Fnc/47jT95I/fjfMb6fNIGDdHixw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IlA2j89mop8u61F5zdyHHwqi8UAKfoms8dZ/mU/s7Iq/mTjHjvTg7ZH0gNvDNaDuOH63lVfBtJ0+ReFQjFX2o/2Vd1DzZCbHtUo3yWi7qSrHozK8b20zCMrQoGJCUxLbf5j1dkMdk686RCtRlFk0kx9Nh0hVte6UXOBO+neCu7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MBNqgmJ3; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709070009;
	bh=tNDUIvOq6BAUo+1Fnc/47jT95I/fjfMb6fNIGDdHixw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MBNqgmJ3vTCayyccmsP4kU34XbRWodQwtQrIqNZ9M/xh3/+5RukYsGaMpH0/278Jk
	 j2jEfU0YWSwbJ+wLmYR6O6rr80BbLyPGPi4pwfh5uk6O3hPuaNTuFEKX6OkNgDo4pT
	 qm8Vr/rWb4EqMW72h0kbKM/z+LI+U/vIO/CxRXGVehu0iySxktIYRQQWhoNIXYQv/V
	 AfGb2sc0lLkPrwS9ukUS9UlS1UO9vD+ohjRKnhVGk1q6oMWgIgVevoQiFv+7OdMgjV
	 y6AXAoDCP4e6GYaHned1Gs4VW4WtPc+uCc/TiIncARJuPWoaCtW/4/GUhMLgFCTtxz
	 8fOZKHzjVVgbg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1751A3782051;
	Tue, 27 Feb 2024 21:40:09 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 846DB10606FC; Tue, 27 Feb 2024 22:40:08 +0100 (CET)
Date: Tue, 27 Feb 2024 22:40:08 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add clock to vo1-grf syscon on
 rk3588
Message-ID: <np7rvqdvyaucomexi2ckmzkrqpgrxc22mvxnjrqhjm3nriybbq@xrvdzkpdkwwq>
References: <20240227210521.724754-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rgkle252hkhd7jgj"
Content-Disposition: inline
In-Reply-To: <20240227210521.724754-1-heiko@sntech.de>


--rgkle252hkhd7jgj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 27, 2024 at 10:05:21PM +0100, Heiko Stuebner wrote:
> The VO*-general-register-files need a clock, so add the correct one.
>=20
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> This goes on top of Sebastian's series [0] cleaning up the some VO clk-
> handling.

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

> [0] https://lore.kernel.org/linux-rockchip/20240126182919.48402-4-sebasti=
an.reichel@collabora.com
>=20
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 36b1b7acfe6a1..7e40958b5174b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -519,6 +519,7 @@ vop_grf: syscon@fd5a4000 {
>  	vo1_grf: syscon@fd5a8000 {
>  		compatible =3D "rockchip,rk3588-vo-grf", "syscon";
>  		reg =3D <0x0 0xfd5a8000 0x0 0x100>;
> +		clocks =3D <&cru PCLK_VO1GRF>;
>  	};
> =20
>  	php_grf: syscon@fd5b0000 {
> --=20
> 2.39.2
>=20

--rgkle252hkhd7jgj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmXeVqwACgkQ2O7X88g7
+prWuA//dl6HoLZaafzCXgndDkiQHVQwpl01dAwXMxA7sJ04/6ODfw+R9SWnoVog
lyTlrJy+9mUcmKAUktm+wJGbP/hncwu4+8TUQmjue14UOEEJ0CPJUAR8m2GJjyfH
WKQJYFTnwtE7zaUz8dEUv5NnLodLre/DByZ81/Z66o7FT//uteD6+6NOojbgBY61
T1BFarkl8F+GiOQLL74t00/i9fu1ZRkTGXAUXV9h2N34ipqW2mrkAtamN3Lv7fCv
16WkelYDQZy/PiS0mJ0yoaFeCcpoX32KnuZypuw8Zjm+mwnlFKJ0MfGezKyo2olX
hrWQd25zueU3DGUIifgW4+6dFWV+o44YNGzgTOnb6US4OwcuUN1sBMDweuW0MGAi
WWLzDJYhnN+rEvIepOjiDXRNbJYzJigKmqZ8EMYM4ZWrgP6Yk0OOz8JNQas/HpCD
nSJATRU4o3Z45sjjn9+mq9R96R1wCNZBxc3z2Pc0OvMu0KCH0dLoBlddmcM2L/up
gCf1W5+Zv6auchzB6hzPnbO+harGqSJ1BWZBywrwWmOFxzxLJD0Tj4u+CooYHjy3
D5NuaQrNKr8tJ5PUOaSx4TWCngmvVje24ILE7R0cQu5Muxz/vy5c6h1XEl1U0MpW
qgquXfYOlT0J9BiHWKMx8MCyA0ao+oIwsSQKoS4kSqkqsF2D8Os=
=6fLz
-----END PGP SIGNATURE-----

--rgkle252hkhd7jgj--

