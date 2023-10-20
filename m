Return-Path: <devicetree+bounces-10490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 825447D1831
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 23:33:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21AB628268A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 21:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C59F71DDC8;
	Fri, 20 Oct 2023 21:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aRYnVEf+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD3A2B744
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 21:33:52 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DD68D76
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:33:20 -0700 (PDT)
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E0686607355;
	Fri, 20 Oct 2023 22:23:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697837039;
	bh=goZNVYh6UmPXSsJrK53v6Sb9UofggPdaHe/tB51xQBc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aRYnVEf+126bMMouJdBZhKhJDJzivlM6VGCQUsggE6OGSBjldZrlEKC7IhEhkk2iP
	 fWfo2TNxVe0IRA4UDsrmHZRCeX0hPJG+cMO8GWrqN+Zscq+AQ3RvGeZF2ZX+KKq66c
	 VVDZWWzCtFTCJwhOYK3fwTNotzEesTqeajoIBV+o5gmSUvzXxsV/9V44nbWDwqHBja
	 GNImDSOkGzHZNNjE/cS1LGMEr1fP8h4563kxY456rMR78HO+aKusSrEfde8inFY/eg
	 2yw1YfTN6vJEZf59OBDa6oCwREreQwrqr/sYmRn8YDsgQGGgwPRB+CzkyMeebxZPir
	 9lnDP/biHZ7kw==
Received: by mercury (Postfix, from userid 1000)
	id 39672106061E; Fri, 20 Oct 2023 23:23:57 +0200 (CEST)
Date: Fri, 20 Oct 2023 23:23:57 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Niklas Cassel <nks@flawful.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>, Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <niklas.cassel@wdc.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add missing mandatory rk3588 PCIe
 atu property
Message-ID: <20231020212357.xwyvsncv5y5ib5gz@mercury.elektranox.org>
References: <20231020125221.3564951-1-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h42cdtflgr537sr7"
Content-Disposition: inline
In-Reply-To: <20231020125221.3564951-1-nks@flawful.org>


--h42cdtflgr537sr7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Niklas,

On Fri, Oct 20, 2023 at 02:52:20PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
>=20
> From the snps,dw-pcie.yaml devicetree binding:
> "At least DBI reg-space and peripheral devices CFG-space outbound window
> are required for the normal controller work. iATU memory IO region is
> also required if the space is unrolled (IP-core version >=3D 4.80a)."
>=20
> All the PCIe controllers in rk3588 are using the iATU unroll feature,
> and thus have to supply the atu property in the device tree node.
>=20
> The size of the iATU region equals to:
> MAX(num inbound ATU regions, num outbound ATU regions) * 0x200.
>=20
> Where for each 0x200 region, the registers controlling the
> IATU_REGION_OUTBOUND starts at offset 0x0, and the registers controlling
> IATU_REGION_INBOUND starts at offset 0x100.
>=20
> pcie3x4 and pcie3x2 have 16 ATU inbound regions, 16 ATU outbound regions,
> so they have size: max(16, 16) * 0x200 =3D 0x2000
>=20
> pcie2x1l0, pcie2x1l1, and pcie2x1l2 have 8 ATU inbound regions, 8 ATU
> outbound regions, so they have size: max(8, 8) * 0x200 =3D 0x1000
>=20
> On the rk3588 based rock-5b board:
> Before this patch, dw_pcie_iatu_detect() fails to detect all iATUs:
> rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, l=
imit 8G
> rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, l=
imit 8G
> rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, l=
imit 8G
>=20
> After this patch, dw_pcie_iatu_detect() succeeds to detect all iATUs:
> rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K,=
 limit 8G
> rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, l=
imit 8G
> rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, l=
imit 8G
>=20
> Fixes: 8d81b77f4c49 ("arm64: dts: rockchip: add rk3588 PCIe2 support")
> Fixes: 0acf4fa7f187 ("arm64: dts: rockchip: add PCIe3 support for rk3588")
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> ---

Thanks for your patch. This looks sensible, but I have two comments:

1. You need to update the Rockchip DT binding. It currently enforces that r=
egnames
must be "dbi", "apb", "config". Thus 'make CHECK_DTBS=3Dy rockchip/rk3588-r=
ock-5b.dtb'
will introduce new errors after this patch is applied.

2. You calculated the exact ATU size and used that, but the binding specifi=
es,
"iATU/eDMA registers common for all device functions. [...] Note iATU is no=
rmally
mapped to the 0x0 address of this region, while eDMA is available at 0x8000=
0 base
address.". So the size should be big enough to include the DMA section. So =
I would
expect it to be 0x100000 for all controllers.

Greetings,

-- Sebastian

>  arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 21 ++++++++++++---------
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++------
>  2 files changed, 20 insertions(+), 15 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3588.dtsi
> index 5519c1430cb7..d7998a9c0c43 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -119,10 +119,11 @@ pcie3x4: pcie@fe150000 {
>  		ranges =3D <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
>  			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x00e00000>,
>  			 <0x03000000 0x0 0x40000000 0x9 0x00000000 0x0 0x40000000>;
> -		reg =3D <0xa 0x40000000 0x0 0x00400000>,
> +		reg =3D <0xa 0x40000000 0x0 0x00300000>,
>  		      <0x0 0xfe150000 0x0 0x00010000>,
> -		      <0x0 0xf0000000 0x0 0x00100000>;
> -		reg-names =3D "dbi", "apb", "config";
> +		      <0x0 0xf0000000 0x0 0x00100000>,
> +		      <0xa 0x40300000 0x0 0x00002000>;
> +		reg-names =3D "dbi", "apb", "config", "atu";
>  		resets =3D <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
>  		reset-names =3D "pwr", "pipe";
>  		status =3D "disabled";
> @@ -170,10 +171,11 @@ pcie3x2: pcie@fe160000 {
>  		ranges =3D <0x01000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x00100000>,
>  			 <0x02000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0x00e00000>,
>  			 <0x03000000 0x0 0x40000000 0x9 0x40000000 0x0 0x40000000>;
> -		reg =3D <0xa 0x40400000 0x0 0x00400000>,
> +		reg =3D <0xa 0x40400000 0x0 0x00300000>,
>  		      <0x0 0xfe160000 0x0 0x00010000>,
> -		      <0x0 0xf1000000 0x0 0x00100000>;
> -		reg-names =3D "dbi", "apb", "config";
> +		      <0x0 0xf1000000 0x0 0x00100000>,
> +		      <0xa 0x40700000 0x0 0x00002000>;
> +		reg-names =3D "dbi", "apb", "config", "atu";
>  		resets =3D <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
>  		reset-names =3D "pwr", "pipe";
>  		status =3D "disabled";
> @@ -219,10 +221,11 @@ pcie2x1l0: pcie@fe170000 {
>  		ranges =3D <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
>  			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x00e00000>,
>  			 <0x03000000 0x0 0x40000000 0x9 0x80000000 0x0 0x40000000>;
> -		reg =3D <0xa 0x40800000 0x0 0x00400000>,
> +		reg =3D <0xa 0x40800000 0x0 0x00300000>,
>  		      <0x0 0xfe170000 0x0 0x00010000>,
> -		      <0x0 0xf2000000 0x0 0x00100000>;
> -		reg-names =3D "dbi", "apb", "config";
> +		      <0x0 0xf2000000 0x0 0x00100000>,
> +		      <0xa 0x40b00000 0x0 0x00001000>;
> +		reg-names =3D "dbi", "apb", "config", "atu";
>  		resets =3D <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
>  		reset-names =3D "pwr", "pipe";
>  		#address-cells =3D <3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff4..286d7b10b9dd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1259,10 +1259,11 @@ pcie2x1l1: pcie@fe180000 {
>  		ranges =3D <0x01000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x00100000>,
>  			 <0x02000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0x00e00000>,
>  			 <0x03000000 0x0 0x40000000 0x9 0xc0000000 0x0 0x40000000>;
> -		reg =3D <0xa 0x40c00000 0x0 0x00400000>,
> +		reg =3D <0xa 0x40c00000 0x0 0x00300000>,
>  		      <0x0 0xfe180000 0x0 0x00010000>,
> -		      <0x0 0xf3000000 0x0 0x00100000>;
> -		reg-names =3D "dbi", "apb", "config";
> +		      <0x0 0xf3000000 0x0 0x00100000>,
> +		      <0xa 0x40f00000 0x0 0x00001000>;
> +		reg-names =3D "dbi", "apb", "config", "atu";
>  		resets =3D <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
>  		reset-names =3D "pwr", "pipe";
>  		#address-cells =3D <3>;
> @@ -1310,10 +1311,11 @@ pcie2x1l2: pcie@fe190000 {
>  		ranges =3D <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
>  			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
>  			 <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
> -		reg =3D <0xa 0x41000000 0x0 0x00400000>,
> +		reg =3D <0xa 0x41000000 0x0 0x00300000>,
>  		      <0x0 0xfe190000 0x0 0x00010000>,
> -		      <0x0 0xf4000000 0x0 0x00100000>;
> -		reg-names =3D "dbi", "apb", "config";
> +		      <0x0 0xf4000000 0x0 0x00100000>,
> +		      <0xa 0x41300000 0x0 0x00001000>;
> +		reg-names =3D "dbi", "apb", "config", "atu";
>  		resets =3D <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
>  		reset-names =3D "pwr", "pipe";
>  		#address-cells =3D <3>;
> --=20
> 2.41.0
>=20

--h42cdtflgr537sr7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUy7+kACgkQ2O7X88g7
+ppdow/+J8ML23fr7MvgusaD87EUwIll8CKja746hEjalmHJDGBWonjpSBM9DDim
Z6qE2wPff8V1H2kZd6P+A/XUD5cZLuYDPBrC23xSrVUOSs9v4N7bRB1haNPG/wHp
V5Bl8gX6lJXQvrpzGxsXyqcwqdfSS4yuoBMvGs3/fTjE6sDFBFW7CJtLG45rCVA1
uKxMvumhVh1jtDaVPW+7Ygv0tbcOm75agG74r3iNv61MYEKfEWDshANLlaBQRJgb
GYV8u/uoDgR2QNkNj/QLnSOShmWbjbOj8u6iEvle5rdhUwPe9u6aCJgesGgrne0Z
lDv901qhJGuGV8pAYycYPCIsD9gTW9x7I6ybYzwXNOLNT0kKQr4ror03/YI4wGpU
ULP3kwCGviyPUZie6gKuVvHABFudv/iiaDhE9lAqDaXJJ0XJspruAgbk7WBsHg73
akkiXplg236PRzasJFcY8NVSyZs4fHa3l/aCAQcKv9z72f6wvHuMMQAILLH0Sesy
SckMyvJjr46M6WuHX3DUHSMJ4pPh3g2M/h7eHcUUoQoOu+BB/F5/RIT9Eb5EYhqg
NbWI3T0dctlASn3pLBDdji3Ufrm97owq4NUmoMqjpOBkwbXBOBcZfqPFMsOjdUwG
pgvGRSbA6BZy3+ROGHJ2HgSLyHuFPQzbJOdgQxhdLPGNnC+/xMQ=
=SVY8
-----END PGP SIGNATURE-----

--h42cdtflgr537sr7--

