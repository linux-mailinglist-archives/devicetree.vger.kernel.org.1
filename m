Return-Path: <devicetree+bounces-22689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DB8086DF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 12:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CD621C20D8A
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 11:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72BA637D25;
	Thu,  7 Dec 2023 11:41:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58063A3;
	Thu,  7 Dec 2023 03:41:10 -0800 (PST)
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBCkW-000248-Ve; Thu, 07 Dec 2023 12:41:01 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Sam Edwards <cfsworks@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel =?utf-8?B?S3VraWXFgmE=?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
Subject:
 Re: [RESEND PATCH] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
Date: Thu, 07 Dec 2023 12:41:00 +0100
Message-ID: <2369165.PYKUYFuaPT@diego>
In-Reply-To: <d38540c5-79a8-0582-87b9-0e99bf3044d5@gmail.com>
References:
 <20231205202900.4617-1-CFSworks@gmail.com> <3331042.e9J7NaK4W3@diego>
 <d38540c5-79a8-0582-87b9-0e99bf3044d5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Mittwoch, 6. Dezember 2023, 19:26:40 CET schrieb Sam Edwards:
>=20
> On 12/6/23 07:55, Heiko St=FCbner wrote:
> > Am Dienstag, 5. Dezember 2023, 21:28:59 CET schrieb Sam Edwards:
> >> The RK3588 PCIe 3.0 controller seems to have unpredictable behavior wh=
en
> >> no CLKREQ/PERST/WAKE pins are configured in the pinmux. In particular,=
 it
> >> will sometimes (varying between specific RK3588 chips, not over time) =
shut
> >> off the DBI block, and reads to this range will instead stall
> >> indefinitely.
> >>
> >> When this happens, it will prevent Linux from booting altogether. The
> >> PCIe driver will stall the CPU core once it attempts to read the versi=
on
> >> information from the DBI range.
> >>
> >> Fix this boot hang by adding the correct pinctrl configuration to the
> >> PCIe 3.0 device node, which is the proper thing to do anyway. While
> >> we're at it, also add the necessary configuration to the PCIe 2.0 node,
> >> which may or may not fix the equivalent problem over there -- but is t=
he
> >> proper thing to do anyway. :)
> >>
> >> Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM suppor=
t")
> >> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> >> ---
> >>   .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 14 ++----------=
=2D-
> >>   1 file changed, 2 insertions(+), 12 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arc=
h/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> >> index 9570b34aca2e..129f14dbd42f 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> >> @@ -214,7 +214,7 @@ rgmii_phy: ethernet-phy@1 {
> >>   &pcie2x1l1 {
> >>   	linux,pci-domain =3D <1>;
> >>   	pinctrl-names =3D "default";
> >> -	pinctrl-0 =3D <&pcie2_reset>;
> >> +	pinctrl-0 =3D <&pcie30x1m1_pins>;
> >>   	reset-gpios =3D <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
> >>   	status =3D "okay";
> >>   };
> >> @@ -226,7 +226,7 @@ &pcie30phy {
> >>   &pcie3x4 {
> >>   	linux,pci-domain =3D <0>;
> >>   	pinctrl-names =3D "default";
> >> -	pinctrl-0 =3D <&pcie3_reset>;
> >> +	pinctrl-0 =3D <&pcie30x4m1_pins>;
>=20
> Hi Heiko,
>=20
> >=20
> > also, why are you throwing out the pinctrl for the reset pin.
> > That seems not related to the regular pins and you could instead just do
> >=20
> > +	pinctrl-0 =3D <&pcie30x4m1_pins>, <&pcie3_reset>;
>=20
> The pcie30x4m1_pins def does include pinmuxing `4 RK_PB6` to the DW=20
> controller already. The v2 patch should probably instead remove the=20
> reset-gpios property, since an out-of-band GPIO reset is not needed when=
=20
> the controller can do it.

yep, also because of the reset-gpios the pinctrl/gpio driver will mux the
pin to gpio function even though the pinctrl would've set if the pcie-
function before that.

So I'm really in favor of not mixing the two concepts :-)
When setting the pins, the reset-gpio should be gone and vice-versa.

> I'm still looking into the story with the PCIe 2.0 pins, since 2.0x1's=20
> PERST# is definitely 4A2. I'll ask around and try to find out where the=20
> corresponding CLKREQ# is going.

Yeah, I tried reading up in the TRM but it was really hard following
which pin-group actually goes to which controller and the naming
definitly does not help :-) .


Heiko



> >>   	reset-gpios =3D <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> >>   	vpcie3v3-supply =3D <&vcc3v3_pcie30>;
> >>   	status =3D "okay";
> >> @@ -245,17 +245,7 @@ hym8563_int: hym8563-int {
> >>   		};
> >>   	};
> >>  =20
> >> -	pcie2 {
> >> -		pcie2_reset: pcie2-reset {
> >> -			rockchip,pins =3D <4 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> >> -		};
> >> -	};
> >> -
> >>   	pcie3 {
> >> -		pcie3_reset: pcie3-reset {
> >> -			rockchip,pins =3D <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> >> -		};
> >> -
> >>   		vcc3v3_pcie30_en: pcie3-reg {
> >>   			rockchip,pins =3D <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> >>   		};
> >>
> >=20
> >=20
> >=20
> >=20
>=20





