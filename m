Return-Path: <devicetree+bounces-19301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8FD7FA586
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 17:02:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF94D1C20986
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 16:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E016B34CDE;
	Mon, 27 Nov 2023 16:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="GnFO8zsP"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D49E9B4;
	Mon, 27 Nov 2023 08:02:11 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ARG1pI6110363;
	Mon, 27 Nov 2023 10:01:51 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701100911;
	bh=DkNYOh3WI1Z8sgvoainrTIvlDD/uER17VIsjEaXQfok=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=GnFO8zsPuESwH/yF+CK/9Rz+/8wthIhHjiWdUlyUCJGzRirkDhUrDati4bHPBPOt6
	 TCpiBQ2KGKIp/jUYV/qJruvEqLNfXmLyMA1/1YXBwcJZlP8Z7CTrWzBuOxtSIoI5FN
	 qkOhEX4G63W1h8lR7zCIvJjwq4KSEdaU0ZRBALIU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ARG1p5A006427
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 27 Nov 2023 10:01:51 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 27
 Nov 2023 10:01:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 27 Nov 2023 10:01:50 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ARG1npe011871;
	Mon, 27 Nov 2023 10:01:50 -0600
Date: Mon, 27 Nov 2023 21:31:48 +0530
From: Jai Luthra <j-luthra@ti.com>
To: Aradhya Bhatia <a-bhatia1@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Linux
 Kernel List <linux-kernel@vger.kernel.org>,
        Linux ARM Kernel List
	<linux-arm-kernel@lists.infradead.org>,
        Devarsh Thakkar <devarsht@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Add interrupt support for
 IO Expander
Message-ID: <47bohluxljqwmehol6d6owgkf2zrlornyne6xi2zddhapgtwok@jukkjr7kwton>
References: <20231108191652.1118155-1-a-bhatia1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nxg2xsltibpzyyyn"
Content-Disposition: inline
In-Reply-To: <20231108191652.1118155-1-a-bhatia1@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

--nxg2xsltibpzyyyn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Aradhya,

On Nov 09, 2023 at 00:46:52 +0530, Aradhya Bhatia wrote:
> The Hot Plug Detect (HPD) signal for the HDMI display travels from the
> on-board HDMI connector, through the IO Expander 1, and finally to the
> main_gpio1 line #23, of the SoC.
>=20
> Add interrupt information for the IO Expander 1 (exp1).
> Also add pinmux info of main gpio 1, line #23.
>=20
> Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>

Reviewed-by: Jai Luthra <j-luthra@ti.com>

> ---
>=20
> Notes:
>=20
>   - HDMI display on AM62A7 is not in the mainline yet. All the patches,
>     including this one, required to enable HDMI display and HPD on
>     AM62A7 SK-EVM, can be found on my github fork in the branch
>     "next_am62a-v3"[0].
>=20
> [0]: https://github.com/aradhya07/linux-ab/tree/next_am62a-v3
>=20
>  arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dt=
s/ti/k3-am62a7-sk.dts
> index 8f64ac2c7568..560dad02ef62 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
> @@ -274,6 +274,12 @@ AM62AX_IOPAD(0x08c, PIN_OUTPUT, 2) /* (K19) GPMC0_WE=
n.MCASP1_AXR0 */
>  			AM62AX_IOPAD(0x084, PIN_INPUT, 2) /* (L18) GPMC0_ADVn_ALE.MCASP1_AXR2=
 */
>  		>;
>  	};
> +
> +	main_gpio1_ioexp_intr_pins_default: main-gpio1-ioexp-intr-default-pins {
> +		pinctrl-single,pins =3D <
> +			AM62AX_IOPAD(0x01d4, PIN_INPUT, 7) /* (C15) UART0_RTSn.GPIO1_23 */
> +		>;
> +	};
>  };
> =20
>  &mcu_pmx0 {
> @@ -407,6 +413,12 @@ exp1: gpio@22 {
>  		reg =3D <0x22>;
>  		gpio-controller;
>  		#gpio-cells =3D <2>;
> +		interrupt-parent =3D <&main_gpio1>;
> +		interrupts =3D <23 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-controller;
> +		#interrupt-cells =3D <2>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&main_gpio1_ioexp_intr_pins_default>;
> =20
>  		gpio-line-names =3D "GPIO_CPSW2_RST", "GPIO_CPSW1_RST",
>  				   "BT_EN_SOC", "MMC1_SD_EN",
>=20
> base-commit: 2220f68f4504aa1ccce0fac721ccdb301e9da32f
> --=20
> 2.42.0
>=20

--=20
Thanks,
Jai

GPG Fingerprint: 4DE0 D818 E5D5 75E8 D45A AFC5 43DE 91F9 249A 7145

--nxg2xsltibpzyyyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmVkvV0ACgkQQ96R+SSa
cUUtxxAAlDWzech4ZFVVHTV4LVfOJMd45nH9fgx/cZ7UyW6ohOUcIFW8eSTl+ze8
yrrHBlRXIIO/DWl9OHhHEGnfnJ1rJ7/CNRaoq3MsgyfxuYits8AA7hJBPxoio7+3
1asxTxabvgNgxMZVc0xeMNqYeNzOs2NCnpWMPbhovHkv1lPz18nK94/o4WrIkiQy
UEu3PMh3DBkKsrnJSjU442yne8XF7tZdRNU5flslGsv+89xO9lIhtO6g5yJfcH5B
k7NocQuwdfA482RHJYLdIQFIkHJ5tIS10Ar9kMQtDsnybX+kl5TAKZRYkdeTR9Wg
cKl1xT1T9NBZFhDs/URGDcQuxG/7sLudPF+3SCzQYDnT6WOy2Uq9b83fGFaClCSM
mikdNkuYtLs876asIIkw8+opLXosLU9PHqUaJFOiXaxrX14rw87LiWi/dj3+SMXy
BE3ZWyUxYA2xnxX8UGKSyw4mH9dVFOSIQqLCojBYjzjvLReTKbjlB/b8zQbWUvkf
rb8B5qQ6QUoXYfQeQCEbA0Vk3H1lkBEvLd8crEuB8gZzh1O2KqIz8oIMRFAYTzJR
Z3XNtcEi6so+TlVWoJ1i1CSMhpeY0Wujh25VMl7AZEeTIvh1wrjCQ17aNwUmDWg8
NpgyK0z8Q035rrWXWhEEoycycTE0aVPsSEGQnszdEXlVx3FwHbE=
=WIOm
-----END PGP SIGNATURE-----

--nxg2xsltibpzyyyn--

