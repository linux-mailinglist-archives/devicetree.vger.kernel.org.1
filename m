Return-Path: <devicetree+bounces-19562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A077FB536
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:07:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6E63B20DB9
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4726381A5;
	Tue, 28 Nov 2023 09:07:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="uz9IJSni"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB8D1B8;
	Tue, 28 Nov 2023 01:07:21 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3AS970Vl114525;
	Tue, 28 Nov 2023 03:07:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701162420;
	bh=0Bsvt1l9mW3FinBaPSE2fEKMXD2ylR2MAtsxOt2IZxs=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=uz9IJSniNST78RQOFrlhqNbtaMDiVGf0tf91utypuOKlpMM25J6GKrZ013LFIUHjH
	 +z1201ecd5BxW72KJ2db0DtaPt8aJ35+jS9IXAoyfCl93LGN86+YM5sVWzq6UMG+Ei
	 pv06r9JAaO8XuHD2Zw8qk26p3XOo/OAGI9DgjDqA=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3AS970f0029475
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Nov 2023 03:07:00 -0600
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Nov 2023 03:07:00 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Nov 2023 03:07:00 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3AS96w3L008259;
	Tue, 28 Nov 2023 03:06:59 -0600
Date: Tue, 28 Nov 2023 14:36:54 +0530
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
 Welch <martyn.welch@collabora.com>,
        Matthias Schiffer
	<matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH v2 5/9] arm64: dts: ti: k3-am62x-sk: Enable camera
 peripherals
Message-ID: <chhumn2ewrsadvb3gw2evlupowh7duye4imzfuv6jxxjdpdi3e@2ikxvbcxy44d>
References: <20231117-csi_dts-v2-0-bf4312194a6b@ti.com>
 <20231117-csi_dts-v2-5-bf4312194a6b@ti.com>
 <33a4a072-a915-4994-8d5e-6032a769475e@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7xacl3zjobxfsk5q"
Content-Disposition: inline
In-Reply-To: <33a4a072-a915-4994-8d5e-6032a769475e@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

--7xacl3zjobxfsk5q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

Thanks for the comments.

On Nov 20, 2023 at 13:32:33 -0600, Andrew Davis wrote:
> On 11/17/23 3:28 AM, Jai Luthra wrote:
> > CSI cameras are controlled using I2C, on SK-AM62 and derivative boards
> > this is routed to I2C-2, so enable that bus. Also enable the nodes for
> > CSI-RX and DPHY-RX IPs.
> >=20
> > Specific sensor connected to this bus will be described in the DT
> > overlay for each sensor.
> >=20
> > Tested-by: Martyn Welch <martyn.welch@collabora.com>
> > Signed-off-by: Jai Luthra <j-luthra@ti.com>
> > ---
> >   arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 15 +++++++++++++++
> >   1 file changed, 15 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm6=
4/boot/dts/ti/k3-am62x-sk-common.dtsi
> > index 19f57ead4ebd..21658f811307 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> > +++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
> > @@ -399,6 +399,13 @@ sii9022_out: endpoint {
> >   	};
> >   };
> > +&main_i2c2 {
> > +	status =3D "okay";
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&main_i2c2_pins_default>;
> > +	clock-frequency =3D <400000>;
> > +};
> > +
> >   &sdhci0 {
> >   	bootph-all;
> >   	status =3D "okay";
> > @@ -517,3 +524,11 @@ dpi1_out: endpoint {
> >   		};
> >   	};
> >   };
> > +
> > +&ti_csi2rx0 {
> > +	status =3D "okay";
> > +};
> > +
> > +&dphy0 {
> > +	status =3D "okay";
> > +};
> >=20
>=20
> Why do this in the common file? These should go in the overlays
> that actually make use of these nodes, same as you did for BeaglePlay
> in patch [4/9].

Makes sense for the csi2rx nodes, will move it to the overlay in v3.

For the i2c node (and also gpio expander on sk-am62a) I think it is=20
better to enable them in the base DTB here, as it helps in=20
detecting/debugging new sensors using userspace utilities like=20
i2c-detect without actually having a functional overlay.

>=20
> Andrew

--=20
Thanks,
Jai

GPG Fingerprint: 4DE0 D818 E5D5 75E8 D45A AFC5 43DE 91F9 249A 7145

--7xacl3zjobxfsk5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmVlraEACgkQQ96R+SSa
cUUSog/9Ff8oYSbo7YJ7NRZBvRAxUfHEPKo9cZqQ9n306jhudvYl/WgoGdCgPZE0
wN8DBEcFmzrTyTtbCTZi5rwRk3PTojt9YGldBl5kdJ93H0Ok+3VK7AJm1oIWnFua
LUPOU8FKJExG0XRBOqeoSlni/14VPe1TT6ebzSusmuR4hw5zVNKTsQw1Cdt0ia6m
gOeg6CwaNV8JNrXFM4evCtaLP2BLjznLxt8SDswY1P9+xSJ8oGjNA7RmK1ccWOQN
93TUswsyx7y3UNz8x6FS+gBvK0BBVUpUTdS49Rx57JM+B8DlIHibAp2jjH1CBcjo
3OQR6CxEiC7Ag2gd9IvMElJ4yQw/CZkwwKB4N1YPpPUBf/HHtqO0t1gPCzlt5IIl
p9j74sHHlnruASc2YvbRuMTUB1YWLlnUfx1IsWrrK6I9ZgzdIecIZxfn7UXwJG5x
Qmq4juodUoEbpUYA+Q9CoAfCKA/P2wltBcJFbBrQa572t8NVPTid4wEfO0yre5YV
0PeaAJ5GXLkaqjF3UXENIaEe3ol7NtzD9mv8yF/hJlh7fA4CWw6CFsp9C90Zqoio
efmeX7fcwlMWshwWg+OnV71rPBwSaF9oNDpC7UGz/9UmpDB2X/0MiisKohPYldAl
chsS0u3QI6iDZiHeHcUloMx+iZWJ6z/kJHCZ69+vIWL0gZwFi2g=
=hnoC
-----END PGP SIGNATURE-----

--7xacl3zjobxfsk5q--

