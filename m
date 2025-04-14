Return-Path: <devicetree+bounces-166498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A15C7A87822
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 08:48:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1BE0170960
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 06:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4061B041E;
	Mon, 14 Apr 2025 06:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Dt+/FOWR"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15F11AF0B6
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:48:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744613285; cv=none; b=Vn6boZnxO1B30mhJN99CYrWsZVsBFURLQNRLLGP5241cbfdSVmzGEFWztMvyfJ/bfgZK5182/qvjNToEx9idS9oNiyo2lvJKNrWqh86a068u/KsfTqgbBxAKLaZ4/hhTUTNDhr0Bo8BN0Qh5KYieaMuARpY54KKxDUmOsnrX+YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744613285; c=relaxed/simple;
	bh=lksO+Vg8abSOPIziWy5VXpHCoLZLZwxzqRRtW1nA3NQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qSxJDZg/gsR8+7pna9kzJQ7Mt1H0LD1NITmunuW2GqXNhFq2j87CKobLKu5de+PslkVxGb4iA4im4sp7uTCYFdjZx/Bl5CN6/UxzJ5zUZMEQR45U42chBik21eDtGhRVrMbFudBCCvq2oPQZRsf4HKnk/UyTp32q+CP3CtKR4GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Dt+/FOWR; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Mon, 14 Apr 2025 12:17:42 +0530
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1744613271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sJTVD7jo/Otn6b9WVWQ6HDZFYqH5A0K7Bz7wq0uQ/wE=;
	b=Dt+/FOWRaugCrElq6wtIZic2VZ5ebwpR6k7EbcBcjuFWW3qFwfhqFHBd0xyEgkK2/LWfUJ
	cOHS5C/Bw6O9yiqqA7BJys06RcE5Vb+AFsMMU8feT8cVN31IjuFrCpXBuUxuWk/3Oa1VLp
	kCa923oDQJtyG2juPvprTiBcRJypTZ4=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jai Luthra <jai.luthra@linux.dev>
To: Yemike Abhilash Chandra <y-abhilashchandra@ti.com>
Cc: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vaishnav.a@ti.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-kernel@vger.kernel.org, u-kumar1@ti.com, stable@vger.kernel.org
Subject: Re: [PATCH v2 3/7] arm64: dts: ti: k3-j721e-sk: Remove clock-names
 property from IMX219 overlay
Message-ID: <gegzfauj2ow4ibilu7bsfr2bj4p4s7mea75vj5gxiifqj5dafc@qmaan4suzxql>
X-PGP-Key: http://jailuthra.in/files/public-key.asc
References: <20250409134128.2098195-1-y-abhilashchandra@ti.com>
 <20250409134128.2098195-4-y-abhilashchandra@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eqifq5opzzp3xw6i"
Content-Disposition: inline
In-Reply-To: <20250409134128.2098195-4-y-abhilashchandra@ti.com>
X-Migadu-Flow: FLOW_OUT


--eqifq5opzzp3xw6i
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 3/7] arm64: dts: ti: k3-j721e-sk: Remove clock-names
 property from IMX219 overlay
MIME-Version: 1.0

Hi Abhilash,

Thanks for the fix.

On Wed, Apr 09, 2025 at 07:11:24PM +0530, Yemike Abhilash Chandra wrote:
> The IMX219 sensor device tree bindings do not include a clock-names
> property. Remove the incorrectly added clock-names entry to avoid
> dtbs_check warnings.
>=20
> Fixes: f767eb918096 ("arm64: dts: ti: k3-j721e-sk: Add overlay for IMX219=
")
> Cc: stable@vger.kernel.org
> Signed-off-by: Yemike Abhilash Chandra <y-abhilashchandra@ti.com>

Reviewed-by: Jai Luthra <jai.luthra@linux.dev>

> ---
>  arch/arm64/boot/dts/ti/k3-j721e-sk-csi2-dual-imx219.dtso | 2 --
>  1 file changed, 2 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-sk-csi2-dual-imx219.dtso b/a=
rch/arm64/boot/dts/ti/k3-j721e-sk-csi2-dual-imx219.dtso
> index 47bb5480b5b0..4a395d1209c8 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-sk-csi2-dual-imx219.dtso
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-sk-csi2-dual-imx219.dtso
> @@ -34,7 +34,6 @@ imx219_0: imx219-0@10 {
>  		reg =3D <0x10>;
> =20
>  		clocks =3D <&clk_imx219_fixed>;
> -		clock-names =3D "xclk";
> =20
>  		port {
>  			csi2_cam0: endpoint {
> @@ -56,7 +55,6 @@ imx219_1: imx219-1@10 {
>  		reg =3D <0x10>;
> =20
>  		clocks =3D <&clk_imx219_fixed>;
> -		clock-names =3D "xclk";
> =20
>  		port {
>  			csi2_cam1: endpoint {
> --=20
> 2.34.1
>=20

--eqifq5opzzp3xw6i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmf8r44ACgkQQ96R+SSa
cUXg+Q//czeJY8KpGxGTyeaS0FCuPmwFgcYuyIq4tAzbvSMCzjsNqfy4b99yP7GK
YehndSrRB+e6HRoxZtrmM9Z73h1nriCF0ZkrrNFasWYwzKlnjLVnzv4E2oWI02P8
FXHG4w6nwYZYPpVasTn+uwzCuDUDFrRTC/z4apYXdIItZJj/vujjBOsdTw5rLXmk
WuB+rdq8C8tXbASekBF42FqR521Ua4t8mE5f+ItiBVcMw5mlnyzaMWh8jMzBloWV
RYFNU4Qu9z32+VpNkyPJp0pHe5/yLUaL3Ku2wRHyBDMVbRWFAF0+vLcTqwfJwaO8
CvSfmRN1uUj7Kg2znLNj8op/Jg/3ewSNmxkIL2+DxvMaFwpIvUR1Fz1uU80R7M9Y
0oW6CTM4oDQMc6AYp+WQRUKnSCAv410gjG3mtlaQUdt1FamPJ/OVJacNpQP0haKx
MUcZwvNbO8wiKREMLsPxF4Uf+rNNAtvGvvfs31oYbcUujMq4XkbE8hMnGzWQGTxF
T27K2Pa3SGjiRSNYhXG6zdBzN5Ilkiu5Vz3Uy45kgcjVaep/dEilo2kJnhCpmgPo
wDYwd3J7So9stf2IwPntbMshvJmvEl8e3D6y0koIz1W+KKaaWVJsY0/tBcJK781C
z3g4UlSxK9UkxmrAtNyR9/1bT4qD8y1Xo2Fp13GdJdgJZs1wJBQ=
=NQGY
-----END PGP SIGNATURE-----

--eqifq5opzzp3xw6i--

