Return-Path: <devicetree+bounces-10410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4F17D113E
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 16:11:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE77228252D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1CC1CFBE;
	Fri, 20 Oct 2023 14:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="VGyxoBca"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41D11CFA6
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:10:58 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::221])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7306193;
	Fri, 20 Oct 2023 07:10:56 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D7E31240009;
	Fri, 20 Oct 2023 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697811055;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=52lH+GkBwc41ljxBF1Kw4WZBdBsZqH5YByG4eJJ9tVk=;
	b=VGyxoBcacZ+ZUyB68YjKdlo3eeT+/vshs1EhL1OmNxtrAVdkR+8mNSbmJ+DeV8N0Cycf34
	3pKohd7EgfyKwdyB04xBx+kJwaCEVRurOWCyBq4lSHc2XE0DT1w5A5pRW5rnnpMaQKlAxs
	h8OFGJ7MHBtNQhcTO4UU9/jspVnRn+GORYZQ5JTT4PDm8U9bwFnbnn+E9inXg/2WlB96ZN
	Hn25HWYlilZZHkHW3rZUpYFPnsftBj2wY7fyUfxRXaNx/zR2GDiVrwBz5SGOk/auRYdeQJ
	8Zhd4KsSjs4mOB7DHB68hm+4qy6/NkhonywrIIZ2YzM9QEwpvA5SFsRDdqco3Q==
Date: Fri, 20 Oct 2023 16:10:53 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Mehdi Djait <mehdi.djait@bootlin.com>
Cc: mchehab@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, ezequiel@vanguardiasur.com.ar,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com, maxime.chevallier@bootlin.com
Subject: Re: [PATCH v8 3/3] arm64: dts: rockchip: Add the camera interface
Message-ID: <ZTKKbckxeQda07rP@aptenodytes>
References: <cover.1697446303.git.mehdi.djait@bootlin.com>
 <936393d5f2d4b583efbb1ac81f21e8d41fb452cb.1697446303.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cEW6dqGFLbs7lmqa"
Content-Disposition: inline
In-Reply-To: <936393d5f2d4b583efbb1ac81f21e8d41fb452cb.1697446303.git.mehdi.djait@bootlin.com>
X-GND-Sasl: paul.kocialkowski@bootlin.com


--cEW6dqGFLbs7lmqa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mehdi,

On Mon 16 Oct 23, 11:00, Mehdi Djait wrote:
> The PX30 has a camera interface, supporting CSI2 and BT656
> modes. Add a DT description for this interface.

The "vip" node name is not very standard but the generic names recommendati=
on
doesn't have anything that really fits video capture:
https://devicetree-specification.readthedocs.io/en/v0.3/devicetree-basics.h=
tml#generic-names-recommendation

You might want to call it "video-capture" or "camera-controller" which seems
like a good middle-ground that could be included in the list.

Please keep the name (vip/cif) as label though.

Other than that, please rename vip to cif and this will be:
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Cheers,

Paul

> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts=
/rockchip/px30.dtsi
> index 42ce78beb413..7aaa88a15d07 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -1281,6 +1281,18 @@ isp_mmu: iommu@ff4a8000 {
>  		#iommu-cells =3D <0>;
>  	};
> =20
> +	vip: vip@ff490000 {
> +		compatible =3D "rockchip,px30-vip";
> +		reg =3D <0x0 0xff490000 0x0 0x200>;
> +		interrupts =3D <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks =3D <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>;
> +		clock-names =3D "aclk", "hclk", "pclk";
> +		power-domains =3D <&power PX30_PD_VI>;
> +		resets =3D <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN=
>;
> +		reset-names =3D "axi", "ahb", "pclkin";
> +		status =3D "disabled";
> +	};
> +
>  	qos_gmac: qos@ff518000 {
>  		compatible =3D "rockchip,px30-qos", "syscon";
>  		reg =3D <0x0 0xff518000 0x0 0x20>;
> --=20
> 2.41.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--cEW6dqGFLbs7lmqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAmUyim0ACgkQ3cLmz3+f
v9G2twf/SeumhpY637dwLFwp9ThP8+5B/p+8/pUDkYTjoRWYc9+f2h4x+Q+DxV5A
XroPIep0qSAaEcSElIY+xmQrGxT6aOvG75J+RvzL4NZEqmNIGshYjkijsZ/xIn0Q
4CggUE46UhTw1rkHkW8rMl9eHFEQYd2Fpv2rz5D6pUBpHPhVZ1Tfx7e4sNdgl7kQ
T7fLi0ldX6Q4AppmqAeIsi3M6V5BbZSDGYb9eVAv2kvEWEUwLHC3l71VBz2LnNCJ
sHbSSfIa5Yk/9GZgiVPjvM3cUzc4neV2V/vx4a83NJ0yf/lgE74qDpUG5ZLkvyk5
A7rBvnl9zGXA1SZulOQyJK1A7Fm/Aw==
=+ix9
-----END PGP SIGNATURE-----

--cEW6dqGFLbs7lmqa--

