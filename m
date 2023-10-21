Return-Path: <devicetree+bounces-10508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A792E7D1A02
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 02:45:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DC372825E3
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 00:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6088237B;
	Sat, 21 Oct 2023 00:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="b0w7JWMn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F21379
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 00:45:33 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 303F4E8
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 17:45:29 -0700 (PDT)
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9F0C56607332;
	Sat, 21 Oct 2023 01:45:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697849126;
	bh=Ot4ujHThbvkNQVusztRUjnZPs4GTYIxK/3v77Z+oqhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b0w7JWMn5AcQyMe9lbW2SjKwVpQ6LRDEtMvdzU22zfLQrbhgnjCj6TMUB4qBUDSwt
	 vv3ifvwMqu+8oOx9nE3bEljNrv9trOeJK4QkpEmP3hdrqmOOvxdO9rDXNT3/i+z1Ki
	 EcFR+Jk2dOVE1RN4Qbi6tqqpmcgyNNCQlxtTpO3HlvDdW3jwmfLwA+jx3YtBpWrjT4
	 pLxbyINdUYy3HMDf7Ws1ZQ7xMFn8IrjdqBCIj65fG+HNkRgkr738LbW1HF/uCXeEsP
	 SLI2uOJonTleWiR7f8UtpLWFVvYVz5t+xa/Og+ipE3QN7W78PlkDdtRbxptfNIp/Cf
	 YjT28pY7eWA5w==
Received: by mercury (Postfix, from userid 1000)
	id CEE78106061E; Sat, 21 Oct 2023 02:45:23 +0200 (CEST)
Date: Sat, 21 Oct 2023 02:45:23 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Niklas Cassel <nks@flawful.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>, Damien Le Moal <dlemoal@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add missing mandatory rk3588 PCIe
 atu property
Message-ID: <20231021004523.nhvoefrczp3t56fr@mercury.elektranox.org>
References: <20231020125221.3564951-1-nks@flawful.org>
 <20231020212357.xwyvsncv5y5ib5gz@mercury.elektranox.org>
 <ZTMULogkdGevqMaA@x1-carbon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7jszj5wisaf4j63r"
Content-Disposition: inline
In-Reply-To: <ZTMULogkdGevqMaA@x1-carbon>


--7jszj5wisaf4j63r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Oct 20, 2023 at 11:58:40PM +0000, Niklas Cassel wrote:
> On Fri, Oct 20, 2023 at 11:23:57PM +0200, Sebastian Reichel wrote:
> > On Fri, Oct 20, 2023 at 02:52:20PM +0200, Niklas Cassel wrote:
> > > From the snps,dw-pcie.yaml devicetree binding:
> > > "At least DBI reg-space and peripheral devices CFG-space outbound win=
dow
> > > are required for the normal controller work. iATU memory IO region is
> > > also required if the space is unrolled (IP-core version >=3D 4.80a)."
> > >=20
> > > All the PCIe controllers in rk3588 are using the iATU unroll feature,
> > > and thus have to supply the atu property in the device tree node.
> > >=20
> > > The size of the iATU region equals to:
> > > MAX(num inbound ATU regions, num outbound ATU regions) * 0x200.
> > >=20
> > > Where for each 0x200 region, the registers controlling the
> > > IATU_REGION_OUTBOUND starts at offset 0x0, and the registers controll=
ing
> > > IATU_REGION_INBOUND starts at offset 0x100.
> > >=20
> > > pcie3x4 and pcie3x2 have 16 ATU inbound regions, 16 ATU outbound regi=
ons,
> > > so they have size: max(16, 16) * 0x200 =3D 0x2000
> > >=20
> > > pcie2x1l0, pcie2x1l1, and pcie2x1l2 have 8 ATU inbound regions, 8 ATU
> > > outbound regions, so they have size: max(8, 8) * 0x200 =3D 0x1000
> > >=20
> > > On the rk3588 based rock-5b board:
> > > Before this patch, dw_pcie_iatu_detect() fails to detect all iATUs:
> > > rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64=
K, limit 8G
> > > rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64=
K, limit 8G
> > > rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64=
K, limit 8G
> > >=20
> > > After this patch, dw_pcie_iatu_detect() succeeds to detect all iATUs:
> > > rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align =
64K, limit 8G
> > > rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64=
K, limit 8G
> > > rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64=
K, limit 8G
> > >=20
> > > Fixes: 8d81b77f4c49 ("arm64: dts: rockchip: add rk3588 PCIe2 support")
> > > Fixes: 0acf4fa7f187 ("arm64: dts: rockchip: add PCIe3 support for rk3=
588")
> > > Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> > > ---
> >=20
> > Thanks for your patch. This looks sensible, but I have two comments:
> >=20
> > 1. You need to update the Rockchip DT binding. It currently enforces th=
at regnames
> > must be "dbi", "apb", "config". Thus 'make CHECK_DTBS=3Dy rockchip/rk35=
88-rock-5b.dtb'
> > will introduce new errors after this patch is applied.
>=20
> In the rockchip-dw-pcie.yaml:
>=20
>   RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
>   PCIe IP and thus inherits all the common properties defined in
>   snps,dw-pcie.yaml.
>=20
> allOf:
>   - $ref: /schemas/pci/snps,dw-pcie.yaml#
>=20
> So it obviously references the snps,dw-pcie.yaml using allOf. snps,dw-pci=
e.yaml
> is the schema that has the atu property defined. If the validation toolin=
g does
> not support inherited properties, that is a bit disappointing, but not so=
mething
> that I think should stop this patch, which solves a real problem, from be=
ing
> accepted.

The validation tooling does support inherited properties. The
Rockchip binding just adds further restrictions. Those restrictions
need to be updated.

As stated in Documentation/process/maintainer-soc-clean-dts.rst this
needs to happen for your change to be accepted.

> > 2. You calculated the exact ATU size and used that, but the binding spe=
cifies,
> > "iATU/eDMA registers common for all device functions. [...] Note iATU i=
s normally
> > mapped to the 0x0 address of this region, while eDMA is available at 0x=
80000 base
> > address.". So the size should be big enough to include the DMA section.=
 So I would
> > expect it to be 0x100000 for all controllers.
>=20
> The device tree schema also allows you to specify the eDMA region using a=
 separate
> "dma" property.
>=20
> This is what I chose to do, see my patch in:
> https://lore.kernel.org/linux-devicetree/20231020224412.3722784-1-nks@fla=
wful.org/T/#u
>
> [long explanation]

That only arrived in my mailbox after I reviewed this patch :)
FWIW that way is also fine with me, but also needs updated DT
binding. I suggest to send everything as a series in v2. These
patches basically belong together, since the memory section for
DMA is removed in this patch.

Greetings,

-- Sebastian

--7jszj5wisaf4j63r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUzHxwACgkQ2O7X88g7
+ppOsA//Snr15Vh+Ul3u6b+KucKVCHRgxM8kHfpCNHJ30zng1FXL1lPleOx1ym+v
yl80w5Pi4Vzf8PGXeRKDHQV10hcv/V/b5MLOvI+wX4V+WtJOVPFt7KzHC/OS8kZr
dWjXm1cLzG5bIRqsrGVfVwDPebimdueHsdDOl8lKfpEfjEivCp2UVOX594n7T0Cr
0kE32MDc0/MuXkN96OOhCWC+OpQmNXRLGujNfaFKxwFLGDWUIyAk1BolMUU3+eRq
C1UONHVCZbAeH5+piUKFJrRkx0csYZfpkkLnPdITnlfV0mPdzZ74P0xVkJJ2dcUq
4hBi7UU89bJuVY46er8JyetLUBeA6dX+61MdHccIsXG/Y71qIwmu9wCNfJLrSyVH
zJTsyroX1vlo69gEqjGxr0R0LV9kFO6AVEGxXfNt1QkFqlCJPbVfwS68NNzzXkCa
fJuAYcFZsrelTXuEgELTPEZMLp2NUBpl7bJhM2fh7Lj+QMuJzuKGuS2ROSvDuINj
o6gfhxUyEpYmjsGrLrYQjccsuyIk/DuSAON1tlp5mltqDCHyURsN4YHicRenWqgt
glTvuRxTicp3SPgseXwJoC5UTji/FkFEnemXMrgeXuQgVcNDzK8KQ6+Adn1UJox5
oB2ZeuEhKGAM7/nY41aV0IhHWk31DxDhQfz9m5/tjS1WS8DiAYI=
=i+pY
-----END PGP SIGNATURE-----

--7jszj5wisaf4j63r--

