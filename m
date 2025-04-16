Return-Path: <devicetree+bounces-167867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F11A9091C
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F2A35A4441
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EBA620F066;
	Wed, 16 Apr 2025 16:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBO62cTz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D43178395
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744821083; cv=none; b=TurxlI1r6FkuhJm4XumAyFfvVayQpd0WDgr1z8hQcuYfjl6XzOJCfJhvmsyR1TZC+e+UrHPClHF6xOqHRWQ+0x83f+RTf45+bD3H54svd8MA04S6hwPDuzZn9P+WZOtI6zwgbGbV7YYgdp4V3B7HRODU6l++LPuQKcJ4qxzbWhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744821083; c=relaxed/simple;
	bh=gd4WJ1bKoNwsdKrjrxPXgePTdjDUnGH4t90UElI2Ng0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LKG3KqjpKWz7CVCq6AeE/QreR3CGWMKyWs2RonBEd1UD/5ec5oDSLlCM4kzvkOS+5oEpjy7LbaFGDwhyvZGgEPOyuP33BYmlBzeXe+sdBtQhZimbiHWVX0clFqRCexkRzaVF4YD5aSJxA05GHo5LAsymz1B1AB76KsajKLZSQPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBO62cTz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9B4FC4CEE2;
	Wed, 16 Apr 2025 16:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744821082;
	bh=gd4WJ1bKoNwsdKrjrxPXgePTdjDUnGH4t90UElI2Ng0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oBO62cTzmHGTYfMcNfBkhSRUl+ysy7VRh0akpS1HqVX8NftlJKagpLADUPEOJy57Q
	 r+YEvPJfvGGjK+T7q2klddkSFTYXRAmmBWi/7ekn2H3CvjoWrxukrV/SEMPVbZHgcz
	 BiMabEqAhxo61m8fF2aGJfNUSuBVwQak91EmpVk2PU37LBgDZAliZdY6bDHynSwLT/
	 nRQdLttpKUYTKdj1S1u97In5c+7iLK8OnUfH3U9MzK43ujiHgK9OLd8Jld4nFybRpI
	 TQaXH1mh+VZT+J1QgJZ31cIgqap+JZew9TjlrFvX6/+mg47O/wz08xUvSpWBX9SF8r
	 yLDt/mgU0fN9Q==
Date: Wed, 16 Apr 2025 17:31:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Dominik Haller <D.Haller@phytec.de>
Cc: "robh@kernel.org" <robh@kernel.org>,
	"kristo@kernel.org" <kristo@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"vigneshr@ti.com" <vigneshr@ti.com>, "nm@ti.com" <nm@ti.com>,
	"m-chawdhry@ti.com" <m-chawdhry@ti.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"upstream@lists.phytec.de" <upstream@lists.phytec.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: ti: Add bindings for PHYTEC
 AM68x based hardware
Message-ID: <20250416-repost-crock-e86b694bd268@spud>
References: <20250415130458.33714-1-d.haller@phytec.de>
 <20250415-lark-deskwork-7850a95aa955@spud>
 <e93ea6f4c401089298dcf36ac35dbc4365deb9b6.camel@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VGUmC/Ceia8R78/F"
Content-Disposition: inline
In-Reply-To: <e93ea6f4c401089298dcf36ac35dbc4365deb9b6.camel@phytec.de>


--VGUmC/Ceia8R78/F
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 12:25:36PM +0000, Dominik Haller wrote:
> On Tue, 2025-04-15 at 17:09 +0100, Conor Dooley wrote:
> > On Tue, Apr 15, 2025 at 03:04:56PM +0200, Dominik Haller wrote:
> > > Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
> > > and the phyBOARD-Izar carrier board.
> > >=20
> > > Signed-off-by: Dominik Haller <d.haller@phytec.de>
> > > ---
> > >=20
> > > Notes:
> > > =A0=A0=A0 Changes in v2:
> > > =A0=A0=A0 - no changes
> > >=20
> > > =A0Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
> > > =A01 file changed, 2 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > index 18f155cd06c8..a03fdb9c0482 100644
> > > --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> > > @@ -135,6 +135,8 @@ properties:
> > > =A0=A0=A0=A0=A0=A0 - description: K3 J721s2 SoC
> > > =A0=A0=A0=A0=A0=A0=A0=A0 items:
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - enum:
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - phytec,am68-phyboard-izar
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 - phytec,am68-phycore-som
> >=20
> > This looks wrong, if I am not misunderstanding. Your izar dts
> > includes
> > the som dtsi, so this should be configured with a fallback, so you're
> > going "phytec,am68-phyboard-izar", "phytec,am68-phycore-som",
> > "ti,j721s2",
> > no?
> The compatibles are "phytec,am68-phyboard-izar", "ti,j721s2"; in the
> dts and=A0"phytec,am68-phycore-som", "ti,j721s2"; in the dtsi now.
>=20
> So when I add the phytec,am68-phycore-som comaptible to the dts I'll
> move my bindings into an own entry and use a second const for the som:
>=20
>       - description: K3 J721S2 SoC Phytec SoM based boards
>         items:
>           - enum:
>               - phytec,am68-phyboard-izar
>           - const: phytec,am68-phycore-som
>           - const: ti,j721s2

This looks more like what I'd expect, ye.

--VGUmC/Ceia8R78/F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ//bVgAKCRB4tDGHoIJi
0gEOAQC41W0X7lIQLzvWx+GjIyTqwWL/Ak2Hilski22leIhZ9gD/Y9/3EHL8AwMr
mB65pu9rFGljtn2AssgjV1vVv+5DHws=
=RVvU
-----END PGP SIGNATURE-----

--VGUmC/Ceia8R78/F--

