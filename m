Return-Path: <devicetree+bounces-24679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD75810D9A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:46:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88A2A1F2116A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 09:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 221A1208C0;
	Wed, 13 Dec 2023 09:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="reV1SdvT"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6DCA91;
	Wed, 13 Dec 2023 01:46:18 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BD9kADc100621;
	Wed, 13 Dec 2023 03:46:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1702460770;
	bh=CURFSVLmZ5QgLhebwaRlM2v0jStEoUK2jdIO++eSFAU=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=reV1SdvTl7QoEzKY5DwW05Sgv/Tv6Bu0SvE8OCk6jeRCJ8009fD74GDykd59IY/JT
	 XBXMEZ32swPiRj+5xo08xrZGZKKb5VUYt8+otp1znASCMYD2z/pT02VbN1Y3sTJ10H
	 7OFAv4BPSZGHiLhRYQnRzZttaZtg39gDrDpzFGS4=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BD9kAZ4062678
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 13 Dec 2023 03:46:10 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 13
 Dec 2023 03:46:10 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 13 Dec 2023 03:46:09 -0600
Received: from localhost (jluthra.dhcp.ti.com [172.24.227.12])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BD9k9gA017205;
	Wed, 13 Dec 2023 03:46:09 -0600
Date: Wed, 13 Dec 2023 15:16:02 +0530
From: Jai Luthra <j-luthra@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, <m-chawdhry@ti.com>
CC: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: ti: k3-am65: Add additional regs for DMA
 components
Message-ID: <rbwjt352yewngagypraqjzaynks65d3ttabeqqbdffifnoal55@aiuybx2bvx6l>
References: <20231212111634.3515175-1-vigneshr@ti.com>
 <20231212111634.3515175-2-vigneshr@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ml4slrfwpinrbggr"
Content-Disposition: inline
In-Reply-To: <20231212111634.3515175-2-vigneshr@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

--ml4slrfwpinrbggr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Vignesh/Manorit,

Thanks for the patch. BCDMA regions don't seem to match the TRM for=20
AM65, can you recheck?

On Dec 12, 2023 at 16:46:32 +0530, Vignesh Raghavendra wrote:
> From: Manorit Chawdhry <m-chawdhry@ti.com>
>=20
> Add additional reg properties for UDMA and RingAcc nodes which are
> mostly used by bootloader components before Device Manager firmware
> services are available, in order to setup DMA transfers.
>=20
> Signed-off-by: Manorit Chawdhry <m-chawdhry@ti.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 8 ++++++--
>  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  | 8 ++++++--
>  2 files changed, 12 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/d=
ts/ti/k3-am65-main.dtsi
> index 5ebb87f467de..2033a8ec89d6 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -790,8 +790,12 @@ main_udmap: dma-controller@31150000 {
>  			compatible =3D "ti,am654-navss-main-udmap";
>  			reg =3D <0x0 0x31150000 0x0 0x100>,
>  			      <0x0 0x34000000 0x0 0x100000>,
> -			      <0x0 0x35000000 0x0 0x100000>;
> -			reg-names =3D "gcfg", "rchanrt", "tchanrt";
> +			      <0x0 0x35000000 0x0 0x100000>,
> +			      <0x0 0x30b00000 0x0 0x20000>,

AM65 TRM mentions TCHAN region size as 0x10000 in the memory map. Can=20
you confirm if this is correct and send a v2 if not?

> +			      <0x0 0x30c00000 0x0 0x8000>,

Same here, TRM says size is 0x10000.

> +			      <0x0 0x30d00000 0x0 0x4000>;

Same here, TRM says size is 0x8000.

> +			reg-names =3D "gcfg", "rchanrt", "tchanrt",
> +				    "tchan", "rchan", "rflow";
>  			msi-parent =3D <&inta_main_udmass>;
>  			#dma-cells =3D <1>;
> =20
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dt=
s/ti/k3-am65-mcu.dtsi
> index edd5cfbec40e..ecd7356f3315 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> @@ -214,8 +214,12 @@ mcu_udmap: dma-controller@285c0000 {
>  			compatible =3D "ti,am654-navss-mcu-udmap";
>  			reg =3D <0x0 0x285c0000 0x0 0x100>,
>  			      <0x0 0x2a800000 0x0 0x40000>,
> -			      <0x0 0x2aa00000 0x0 0x40000>;
> -			reg-names =3D "gcfg", "rchanrt", "tchanrt";
> +			      <0x0 0x2aa00000 0x0 0x40000>,
> +			      <0x0 0x284a0000 0x0 0x4000>,
> +			      <0x0 0x284c0000 0x0 0x4000>,
> +			      <0x0 0x28400000 0x0 0x2000>;

These look okay.

> +			reg-names =3D "gcfg", "rchanrt", "tchanrt",
> +				    "tchan", "rchan", "rflow";
>  			msi-parent =3D <&inta_main_udmass>;
>  			#dma-cells =3D <1>;
> =20
> --=20
> 2.43.0
>=20
>=20

--=20
Thanks,
Jai

GPG Fingerprint: 4DE0 D818 E5D5 75E8 D45A AFC5 43DE 91F9 249A 7145

--ml4slrfwpinrbggr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmV5fVkACgkQQ96R+SSa
cUWDRRAAvpyEW9sMFP/+bSgALlAyBq6/8gdS6bkiYEQlFAhE+Fecsl2bKNnGyh0O
xYOC2oqVD68X7LwfhZWz7y4RUoAzClCQn25yayWZjzJ65BovjP9Ecv9RNy+kf42L
k0jKaTOGVHELTP5TfWh3o8qHWFi0MK4UGpkCg5ZSPuSnqn1H7rU3NB7Plqm5Qfna
IvwS24WUT5TAa9RrrBbpEueQR77pYx4NjjeHhHVn6bYPnvyanKGpdPxnfuJC9Ike
xO0L/i3yBvEZp1xrNFIfgpFck+u1j0aBUmfiqE3ubFQ8QgkQ0xkdukH/yn2yVN6b
DKizpbcDj8Vnc+2TcI701A6hKfZeXNXcxC9l7EFLBh1bQyon8dGs+BcV+N3E+cCR
JIdhcGj/ug8IElhntpL3FQj5aG7Fr3Ki5Jh1rMNztJpeCIGIXCFQU/tDqAidF+m/
uqM5oot+3P7AT8NL5ca5Ez4TpPCeo7zP+pnfx0qm+wE/XXD5T4MujGaqHDx8kmHz
ESY2CyyMvf2ENKczzw0xrKrwYKLQfUgZggKOfEltq0gabp/G0mpskNCFj86dqCXb
nTwxfFj3D4Uy4RhKDlBzh7IhjBSOF/FqOu31sWxIkf1EcW96tWt1wzTXzKljeZ2Z
uzKE1Wk17rTtG80dRuJrxbVH8N3Uem/y8nsQLmYD2PAapkXg3ho=
=CSC2
-----END PGP SIGNATURE-----

--ml4slrfwpinrbggr--

