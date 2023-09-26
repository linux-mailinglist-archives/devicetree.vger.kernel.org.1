Return-Path: <devicetree+bounces-3347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3BF7AE74E
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7254D1C20364
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 08:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D16511CA5;
	Tue, 26 Sep 2023 08:04:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343882906
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 08:04:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B023EC433C8;
	Tue, 26 Sep 2023 08:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695715444;
	bh=Gk8UPv85NpIAuRUm/g1FxXwc/A9EC198ra1ZI3l3y+I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p2CxJOqPE3nULReRB6ueRzPUzLpG0HduGqLQMB0peveb97gyS0glSpsfF/OfzpYSK
	 FtKFoAboDI/Wl31DYCEJNH6MJwo2lSENM8wLT/hEf+bzbwDajk7F3Z+/7afgxKP8+t
	 8HLSDlYyxmyfYmjUleCNSg0SjLRSaSqubaqV49fJbCMBU6tTD8GTdpTLQuY+18SkcS
	 FiaXCSorr5u2AEdAs1yXGjOyqL98yQX0TOORNHULtuuEU8by8vwSNCZY9y1qW5kfYo
	 DDRKhdJuUgvkNI7oHJFs2R9ba4ixOaxRbcHRAVaJAygr3p8ohvuh/wgFRbxq57jtZA
	 hW71Nb5MESBuA==
Date: Tue, 26 Sep 2023 09:03:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Huqiang Qin <huqiang.qin@amlogic.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 2/2] arm64: dts: Add watchdog node for Amlogic C3 SoCs
Message-ID: <20230926-output-musket-a43dd5abd0b5@spud>
References: <20230926055512.2355390-1-huqiang.qin@amlogic.com>
 <20230926055512.2355390-3-huqiang.qin@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/h6xUWSBVS6sbE34"
Content-Disposition: inline
In-Reply-To: <20230926055512.2355390-3-huqiang.qin@amlogic.com>


--/h6xUWSBVS6sbE34
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2023 at 01:55:12PM +0800, Huqiang Qin wrote:
> Add watchdog device.
>=20
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
> ---
>=20
> V1 -> V2: Increase compatibles of C3 watchdog.
>=20
>  arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi b/arch/arm64/boo=
t/dts/amlogic/amlogic-c3.dtsi
> index 998f5050795c..2ad1f8eef199 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
> @@ -81,6 +81,12 @@ apb4: bus@fe000000 {
>  			#size-cells =3D <2>;
>  			ranges =3D <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
> =20
> +			watchdog@2100 {
> +				compatible =3D "amlogic,c3-wdt", "amlogic,t7-wdt";

Does this pass dtbs_check?
The binding patch doesn't seem to permit this combo..

> +				reg =3D <0x0 0x2100 0x0 0x10>;
> +				clocks =3D <&xtal>;
> +			};
> +
>  			periphs_pinctrl: pinctrl@4000 {
>  				compatible =3D "amlogic,c3-periphs-pinctrl";
>  				#address-cells =3D <2>;
> --=20
> 2.42.0
>=20

--/h6xUWSBVS6sbE34
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRKQbwAKCRB4tDGHoIJi
0inUAPwLNBh3Grd1kaNeXqiBtQPj8KCHNGRCyoENBGkom8ZsewEApURp1rXmTzcy
YTPySsifKx2BM9nMc5YyQIuMhDpgGg0=
=mVVI
-----END PGP SIGNATURE-----

--/h6xUWSBVS6sbE34--

