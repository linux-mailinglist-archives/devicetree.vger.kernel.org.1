Return-Path: <devicetree+bounces-16475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A287EED02
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 08:55:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55AC51C2082C
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 07:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55D8D263;
	Fri, 17 Nov 2023 07:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ipM2Asqx"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3CDAD4F;
	Thu, 16 Nov 2023 23:55:20 -0800 (PST)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AH7t5dt110494;
	Fri, 17 Nov 2023 01:55:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1700207705;
	bh=X5ZVsyyCxl3ZoLstqS+zqF8H29PAu996SHO/uwezhNI=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=ipM2Asqxv8/z+hwYRYnl+3q7+gSMV0ya3oH7K4mLFMuKSMU7hUoEo7uD5ydmpy3/1
	 9bBpUcfQvgLKwfuNwkNLr8hyLKvYvC35D00w1HZBh01+67CtdPFmZJMO3D1s06u+2d
	 z/9Wn3/yYmzt3gAwtdDSTeGzttsBndqFCjhammpU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AH7t5pW015727
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 17 Nov 2023 01:55:05 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 17
 Nov 2023 01:55:05 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 17 Nov 2023 01:55:05 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AH7t4bP003607;
	Fri, 17 Nov 2023 01:55:05 -0600
Date: Fri, 17 Nov 2023 13:24:58 +0530
From: Jai Luthra <j-luthra@ti.com>
To: Andrew Davis <afd@ti.com>
CC: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia
	<a-bhatia1@ti.com>,
        Devarsh Thakkar <devarsht@ti.com>,
        Vaishnav Achath
	<vaishnav.a@ti.com>,
        Julien Massot <julien.massot@collabora.com>,
        Martyn
 Welch <martyn.welch@collabora.com>
Subject: Re: [PATCH 4/8] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Message-ID: <hkw7lkbw6wx6pfznnhnwwewsqfljmbam5r7r36o6kqfoomottf@qyq4dwdcswgs>
References: <20231115-csi_dts-v1-0-99fc535b2bde@ti.com>
 <20231115-csi_dts-v1-4-99fc535b2bde@ti.com>
 <0a74f40d-a175-4c1d-9e6f-63cabdebb587@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pgtjdmajvimufoma"
Content-Disposition: inline
In-Reply-To: <0a74f40d-a175-4c1d-9e6f-63cabdebb587@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

--pgtjdmajvimufoma
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Thanks for the review.

On Nov 16, 2023 at 08:26:40 -0600, Andrew Davis wrote:
> On 11/15/23 3:51 AM, Jai Luthra wrote:
> > Three different OV5640 modules are supported using the FFC connector on
> > BeaglePlay:
> > - Digilent PCam 5C
> > - ALINX AN5641
> > - TEVI-OV5640-*-RPI
> >=20
> > The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
> > the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
> > overlay.
> >=20
> > Signed-off-by: Jai Luthra <j-luthra@ti.com>
> > ---
> >   arch/arm64/boot/dts/ti/Makefile                    |  7 ++
> >   .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 +++++++++++++=
+++++++++
> >   .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 +++++++++++++=
+++++++++
> >   3 files changed, 161 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/M=
akefile
> > index 77a347f9f47d..e49e32414560 100644
> > --- a/arch/arm64/boot/dts/ti/Makefile
> > +++ b/arch/arm64/boot/dts/ti/Makefile
> > @@ -9,9 +9,15 @@
> >   # alphabetically.
> >   # Boards with AM62x SoC
> > +k3-am625-beagleplay-csi2-ov5640-dtbs :=3D k3-am625-beagleplay.dtb \
> > +	k3-am625-beagleplay-csi2-ov5640.dtbo
> > +k3-am625-beagleplay-csi2-tevi-ov5640-dtbs :=3D k3-am625-beagleplay.dtb=
 \
> > +	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
> >   k3-am625-sk-hdmi-audio-dtbs :=3D k3-am625-sk.dtb k3-am62x-sk-hdmi-aud=
io.dtbo
> >   k3-am62-lp-sk-hdmi-audio-dtbs :=3D k3-am62-lp-sk.dtb k3-am62x-sk-hdmi=
-audio.dtbo
> >   dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay.dtb
> > +dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay-csi2-ov5640.dtb
> > +dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay-csi2-tevi-ov5640.dtb
>=20
>=20
> We don't need .dtb files for each overlay combination, you should leave t=
hese
> as overlays only, and just apply them at boot time as needed.
>=20
> To test apply them at build time, you can use the CONFIG_OF_ALL_DTBS
> method that Rob suggested here[0].
>=20
> # Build time test only, enabled by CONFIG_OF_ALL_DTBS
> dtb- +=3D \
> 	k3-am625-beagleplay-overlay-test1.dtb \
> 	k3-am625-beagleplay-overlay-test2.dtb
> k3-am625-beagleplay-overlay-test1-dtbs :=3D k3-am625-beagleplay.dtb \
> 	k3-am625-beagleplay-csi2-ov5640.dtbo
> k3-am625-beagleplay-overlay-test1-dtbs :=3D k3-am625-beagleplay.dtb \
> 	k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
>=20
> dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay-csi2-ov5640.dtbo
> dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-beagleplay-csi2-tevi-ov5640.dtbo
>=20
> [0] https://lore.kernel.org/all/CAL_Jsq+8jisrwEqzz7tZnsV9g2+LmThwpO7sHRFA=
-zh+6q8XuA@mail.gmail.com/
>=20

Makes sense, I was able to test this out locally by adding:
OF_ALL_DTBS=3Dy
COMPILE_TEST=3Dy
in my config.

Will send a v2 with the above changes.

I think Rob's comment on [0] for testing every combination is valid=20
here, so I will apply each camera overlay on each board that it can be=20
used with.

> >   dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-phyboard-lyra-rdk.dtb
> >   dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-sk.dtb
> >   dtb-$(CONFIG_ARCH_K3) +=3D k3-am625-verdin-nonwifi-dahlia.dtb
> > @@ -81,6 +87,7 @@ dtb-$(CONFIG_ARCH_K3) +=3D k3-am69-sk.dtb
> >   dtb-$(CONFIG_ARCH_K3) +=3D k3-j784s4-evm.dtb
> >   # Enable support for device-tree overlays
> > +DTC_FLAGS_k3-am625-beagleplay +=3D -@
>=20
> Having any DTBO applied to the base during build will add symbols to the
> base for you, no need to add this line.
> (Please check that this is true for the OF_ALL_DTBS case above, I've not
> checked yet, we should fix if not).

Without the explicit "-@" flag, the base dtb is built with symbols=20
*only* if we were doing compile test with OF_ALL_DTBS=3Dy.

For the standard build (arm64/configs/defconfig) the base DTB is built=20
*without* symbols as make does not see any combined DTBs as targets.
>=20
> I plan to remove the same below in later patches so folks will stop adding
> more of these lines.
>=20

It is not clear to me how we could avoid explicitly enabling the "-@"=20
flag for non-compile-test builds, let me know if you have any ideas.

> Andrew
>=20
> >   DTC_FLAGS_k3-am625-sk +=3D -@
> >   DTC_FLAGS_k3-am62-lp-sk +=3D -@
> >   DTC_FLAGS_k3-am6548-iot2050-advanced-m2 +=3D -@

[...]

--=20
Thanks,
Jai

GPG Fingerprint: 4DE0 D818 E5D5 75E8 D45A AFC5 43DE 91F9 249A 7145

--pgtjdmajvimufoma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmVXHE8ACgkQQ96R+SSa
cUVuLRAAh3KxXOSilixweMEHzQoTSyTSKAVexknxk7qSM69DmhV1EbZkW/r4psHZ
/HQmt8fYeYPx1X1BRgB6yMr8CFBNYk4JmpCAxWq/weo+hqevDFLBkcBKa8ZHLmB6
Gys4tpEO17tGufMHYkg5FHCWHQT3oY+32QlHmJuyYR1g5Mhqf6HBCA0tkhCfg82m
pNXrx3KR36+Nlf4W1ea8Q//WsdlvM87GpZhkVVwblIVlXFSPCc+3TWswfDnM5Euo
CG6b3BP6RaEk21v607+HOMsQeB85kv/Csjr9owz9a0EU+oAcV2eEXze9WnPRm0zQ
JZnTUBPaF1RTVMPmE+Xg9sG1wtvT5ECb75NTAFZIgSDHo69Ag4xnLrOquIcWS5Zi
weCeGS9dM9fHxq0lWek3KquaTYMtWPaV0UTkWh3lX9v7Whoep9Rm6LO4G/5EZrvP
Hp1f20pELl6BkJ5qGE/wEwo5wc3sDiLRMVkL3hxEocKopKkx9VyuISgicQ3MvSj/
uuhMpo3xfpJ+alTrNKqLnBW1vMLjqG3X80rRZzObOP6h3xMv3gFObCbioFIpDzVD
onN2/mJUldM4QeWb8Eij8QjlrliIUsUFCCI/iegy84Pvprzrfey6czOOMEAnfOcO
LPY4NjtOxAMht85db4dq4ayBVWP5xSlD+JddltBWUv0uVcQgoJI=
=F4p5
-----END PGP SIGNATURE-----

--pgtjdmajvimufoma--

