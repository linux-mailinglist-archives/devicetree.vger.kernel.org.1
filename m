Return-Path: <devicetree+bounces-20088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2917FDB9B
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:36:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70B7E1C20944
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDBF238F82;
	Wed, 29 Nov 2023 15:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7sbSfys"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21D7249F4
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 15:36:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56302C433C8;
	Wed, 29 Nov 2023 15:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701272160;
	bh=TB30gWWXrXlW77SxxhSjBq16m86w+0vce8gY0Rpmi80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U7sbSfysXpySoYJ6RtGsSfSc+clUUisZT2uFvsG+4bUESYF5qLB7/b0KSg5nYsBVE
	 weDI6hIirRHXriOHF4YNM+2I9+Cxof3qAY7x0j+7aCII04l87Sl+28uG4q3YZgx0C0
	 MRRO4vVi60QfkjAmL1QGYzktXsDz6U07khn5iEYbntI0MymLAxVnGJl/iezqhZ/tUk
	 ZzJ+CzH2kku72+5SM+MpX4p9WjKXGvNGn8vfcvRAyrr8JggmeI/V7ufvDusMUgotAr
	 396c79rGTpcDuAFp4nEkz1U0TMhA1uNo/xcoDcInnyhiZ58c2ePFWwZLhj3AnQO3E9
	 aAE7vIeVCoWLA==
Date: Wed, 29 Nov 2023 15:35:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	gregory.clement@bootlin.com, u-kumar1@ti.com
Subject: Re: [PATCH 3/5] arm64: dts: ti: k3-j7200: use ti,j7200-sci compatible
Message-ID: <20231129-reverse-numbness-63986443703f@spud>
References: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
 <20231129-j7200-tisci-s2r-v1-3-c1d5964ed574@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HgCRekJUlEVPbssQ"
Content-Disposition: inline
In-Reply-To: <20231129-j7200-tisci-s2r-v1-3-c1d5964ed574@bootlin.com>


--HgCRekJUlEVPbssQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 04:31:19PM +0100, Thomas Richard wrote:
> On j7200, suspend to ram poweroff the SOC.
> This compatible restores irqs at resume.
>=20
> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64=
/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> index 467970fab3a0..d8dc1421e75e 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> @@ -7,7 +7,7 @@
> =20
>  &cbass_mcu_wakeup {
>  	dmsc: system-controller@44083000 {
> -		compatible =3D "ti,k2g-sci";
> +		compatible =3D "ti,j7200-sci", "ti,k2g-sci";

This is not what your dt-binding change allows. Did you test this with
dtbs_check?

--HgCRekJUlEVPbssQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWdaWgAKCRB4tDGHoIJi
0l3YAP44nO/sx6rPYRmv02kTSOn0PXi5g8rRrqg5Xzr365uaDQEAyc5SO5UxMzCN
O+A54etEvUvBVRNVKRtCOdfy76AzZQU=
=9RnY
-----END PGP SIGNATURE-----

--HgCRekJUlEVPbssQ--

