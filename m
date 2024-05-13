Return-Path: <devicetree+bounces-66719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CABC18C4561
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 18:55:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8052D281C6A
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2024 16:54:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A591A29A;
	Mon, 13 May 2024 16:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Np33hDol"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2BE18C3D
	for <devicetree@vger.kernel.org>; Mon, 13 May 2024 16:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715619296; cv=none; b=CrUKqoLkpJo0OihMxyfgKloN2ceLEllBW+hAMrvcLVZYjh4EOLsue3EcxZ7CqYDShCu5l3irwYX/Cf6prb8N63NyYUEvRPLAZ9Trs6xhnzvXw9Ow743vbM9nHvr8SDDsHJHHBhSueRD9de5pA94ZfsoGK/5WU87SAMDkMHI6nYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715619296; c=relaxed/simple;
	bh=uZ5ard+sumv6T1N848qKHAi5miG10E+UbOzJaGtMlTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SudYt5tV+WdRWztnv+V5KeH2ryV4ZCbAVyF6wNdVTNxVmuRHU66+OXeD02DPUtEQhi+7j0A1XT6mMW0jsuzChEIHJYaMjiO59RZqfjOWhzKQvQXJP0sT11XBPJ0rSxD6pounQTLhjy1mx4lX1zoFwL1UPn1eDyqQVIpUFSLuCJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Np33hDol; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22DCCC113CC;
	Mon, 13 May 2024 16:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715619295;
	bh=uZ5ard+sumv6T1N848qKHAi5miG10E+UbOzJaGtMlTw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Np33hDolXOw4LOUaAUcVKCSqYJyvSzuFFa0Q4aUkIBWLnO4D0XDy/bn4XyeZsUkeb
	 l/WY2vGPl4j7csM4P3KMhY0bh2XHD+QMOxRKKDEIEOZHhygUxfx5LsjwoN2Ma3Qb+V
	 nz3JqcMAjyCM7NRBzbMxSXFha0dVBbAeJ54FbIBvCQdBmY+Qg3qy6qK5NfGsHmVHu1
	 XoVrKFYJJEckBvufyzVYxWL0rOvpNM2FwoddpvSzMmgghNCBtscwD9KKNMvDobOZGa
	 WDQBPB2wh/dLbfhVOfA5pKcKthpbZn5nh4ylSHZayiaHfNgLOccgz6f/QcOSqMrQHy
	 dgnVyEqT7/0sg==
Date: Mon, 13 May 2024 18:54:51 +0200
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org,
	lorenzo.bianconi83@gmail.com, conor@kernel.org,
	linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org,
	dd@embedd.com, catalin.marinas@arm.com, will@kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH 1/3] dt-bindings: phy: airoha: Add binding doc for PCIe
 PHY driver
Message-ID: <ZkJF2w0f2L6nOtKP@lore-desk>
References: <cover.1715527166.git.lorenzo@kernel.org>
 <7b60943ea9814a1a9a3d8b273157b338f9130174.1715527166.git.lorenzo@kernel.org>
 <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dRkxIEJn6F1Z9zTu"
Content-Disposition: inline
In-Reply-To: <b65a6290-1500-42bc-815c-d88dd52dd8ac@collabora.com>


--dRkxIEJn6F1Z9zTu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> Il 12/05/24 17:27, Lorenzo Bianconi ha scritto:
> > Introduce device-tree binding documentation for Airoha EN7581 PCIe PHY
> > driver.
> >=20
> > Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > ---
> >   .../bindings/phy/airoha,pcie-phy.yaml         | 55 +++++++++++++++++++
> >   1 file changed, 55 insertions(+)
> >   create mode 100644 Documentation/devicetree/bindings/phy/airoha,pcie-=
phy.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml=
 b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..443d7e717296
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
>=20
> airoha,en7581-pcie-phy.yaml

ack, I will fix it.

>=20
> > @@ -0,0 +1,55 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,pcie-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha PCIe PHY
>=20
> title: Airoha EN7581 PCI-Express PHY

ack, I will fix it.

>=20
> > +
> > +maintainers:
> > +  - Lorenzo Bianconi <lorenzo@kernel.org>
> > +
> > +description: |
> > +  The PCIe PHY supports physical layer functionality for PCIe Gen2/Gen=
3 port.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,en7581-pcie-phy
> > +
> > +  reg:
> > +    maxItems: 3
> > +
> > +  reg-names:
> > +    items:
> > +      - const: csr_2l
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
> > +    bus {
>=20
> Shouldn't this realistically be 'soc' instead?

ack, I will fix it.

Regards,
Lorenzo

>=20
> Cheers,
> Angelo
>=20
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
>=20
>=20

--dRkxIEJn6F1Z9zTu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZkJF2wAKCRA6cBh0uS2t
rFNMAQCINIx9JZ9XM42fFpuj8Pir2nzs80N6LEFcQsCRJCe2MAEA+FbysgeLv4+a
zNIakzQSgk9pdAywa4H7FPmMBAmyGQQ=
=p21a
-----END PGP SIGNATURE-----

--dRkxIEJn6F1Z9zTu--

