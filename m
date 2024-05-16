Return-Path: <devicetree+bounces-67277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E4C8C74E2
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 12:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9490FB20C39
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 10:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F009145346;
	Thu, 16 May 2024 10:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeZ0QRoB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC77143898
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 10:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715856976; cv=none; b=FsfG4+XmsaNRBPZaH1tUOV+s/nVXFPj8kGD+lCeoD27aJIJPP9rL7cUDC1WqgFoUkIvqVFSpQsJinh3/yBDd/HDs+otpb5IILuh9BAXwlFXAb1CSWGs3AS+4M+0EcmGzG7tOg1pweOTsKOb6VsXFxo7lBltACDwJrbKfkV+cYEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715856976; c=relaxed/simple;
	bh=rh5ZSgzb+xipdRSlRwu8YPmjbuQSeYjAhq0kMx8LL14=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=svHSZSADMuxpm7t//1JEzCBzU2j9IR6bMQGGJJw8hXVyJXwGfCusFh0hRkxm7Iac4Ok7Ln1QQTP9J2TyI9r/bjQHM0PGB4F8kW2oRl24kmyoCfFAlzdNSdi2m8AFhq1jlvrQEKDmCj6NqbOP3Ccz3OVgOHls2BJ8Tt8/isnTIVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeZ0QRoB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73D8CC32782;
	Thu, 16 May 2024 10:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856976;
	bh=rh5ZSgzb+xipdRSlRwu8YPmjbuQSeYjAhq0kMx8LL14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NeZ0QRoB67ojIrjp45w92g0Shyeh85fDAjlhQI8vzACyhMSZ+iQ2TWFzhwj4KcKFQ
	 p3PKI1cW55Qpeu9qQrcmnql1iZVkWpe/mRhIJ1Qd7jhjfka7/SwVCJfJg+b4lUahzE
	 KLxslvASGXc4kiNBundEkc4NkO3Tseb9FGnDJH3osJ8zDnCSp8gaaRBAIhpECiG6db
	 aUmssLsRMfLE8dKpUaNIOw+YJvVcG1fDSmjdafHPhogLMmc/jqzx1CdpzFZRyrotRH
	 uiOtmu9gJXfYkNF9DIsRiJfnDcHzZhRgWi0+g9JZ9c/Xtj2doZac3ZeJMpyYkywtwq
	 EvsTr9lnph15A==
Date: Thu, 16 May 2024 12:56:12 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com, amitsinght@marvell.com
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: airoha: Add binding doc for
 PCIe PHY driver
Message-ID: <ZkXmTP_hl2WsJyob@lore-desk>
References: <cover.1715769325.git.lorenzo@kernel.org>
 <0807ee3023a771fbb35fff5c65839120959486d3.1715769325.git.lorenzo@kernel.org>
 <651d97e7-d13d-4180-ab76-65dc67ef2c2f@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r9EyE8PW+Om96BnB"
Content-Disposition: inline
In-Reply-To: <651d97e7-d13d-4180-ab76-65dc67ef2c2f@collabora.com>


--r9EyE8PW+Om96BnB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 15/05/24 12:44, Lorenzo Bianconi ha scritto:
> > Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> > driver.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 55 +++++++++++++++++++
> >   1 file changed, 55 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/phy/airoha,en758=
1-pcie-phy.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-p=
hy.yaml b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..4ab04b501129
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,en7581-pcie-phy.yaml
> > @@ -0,0 +1,55 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,en7581-pcie-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha EN7581 PCI-Express PHY
> > +
> > +maintainers:
> > +  - Lorenzo Bianconi <lorenzo@kernel.org>
> > +
> > +description:
> > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen=
3 port.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,en7581-pcie-phy
> > +
> > +  reg:
> > +    maxItems: 3
>=20
> If you have a description for the registers, I'd appreciate seeing that l=
ist.
> If you don't, and can't retrieve a description, it's still fine, but plea=
se
> try if you can.

ack, I will fix it.

>=20
> > +
> > +  reg-names:
> > +    items:
> > +      - const: csr_2l
>=20
> Can we please avoid underscores?

sure, I will fix it.

Regards,
Lorenzo

>=20
> Please change this to "csr-2l", after which:
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>=20
> > +      - const: pma0
> > +      - const: pma1
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - "#phy-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/phy/phy.h>
> > +
> > +    soc {
> > +        #address-cells =3D <2>;
> > +        #size-cells =3D <2>;
> > +
> > +        phy@11e80000 {
> > +            compatible =3D "airoha,en7581-pcie-phy";
> > +            #phy-cells =3D <0>;
> > +            reg =3D <0x0 0x1fa5a000 0x0 0xfff>,
> > +                  <0x0 0x1fa5b000 0x0 0xfff>,
> > +                  <0x0 0x1fa5c000 0x0 0xfff>;
> > +            reg-names =3D "csr_2l", "pma0", "pma1";
> > +        };
> > +    };
>=20

--r9EyE8PW+Om96BnB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkXmSwAKCRA6cBh0uS2t
rAh7APwMoC7BO0FO+faFeNjjfXY/CGE+GtDOIy1I8PnqaugUzAD7BetsQcJbR97q
G12MjjD4c2kvEXr7jzjnoMHKr3y8agA=
=TErp
-----END PGP SIGNATURE-----

--r9EyE8PW+Om96BnB--

