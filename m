Return-Path: <devicetree+bounces-58795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D99868A3181
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:51:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 077D51C20E81
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020F414386F;
	Fri, 12 Apr 2024 14:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ds115K2P"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C92183CDC
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712933391; cv=none; b=EKfaqnn4U36WPGYArtbGpbdZYG+jVk0xt18riT5zTO5folfFgQS0PZMydmUYFK9I0bbkE778IChQ1uR28jMbS3mE//mmvIMSFxVobogkrIcD1Mr4zeLu+uiXarkFuXRcXy67d+1q4fqzYj786E7+aiH0Vc8mY6+slaRkkN4xpRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712933391; c=relaxed/simple;
	bh=KmzO5+j0BSZYVX0Kzkgi7poYBPGKpTxQjlGkqcKpzpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WXuwsdQnYmw302tvFDdjST/XcDgzsOlBRqfD5t8AjLF5lRhroXar+ukPIihb//AXkM1FwvS6U/ekTNzvqjsfXjhKES32WYZhRdH1WoxB7c73rbnXKCLMD9uTaBAZv7yu9zJCPSMWqjGbTht1SbMAsmU1GnXqo/KTE/SNVC8X0SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ds115K2P; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712933388;
	bh=KmzO5+j0BSZYVX0Kzkgi7poYBPGKpTxQjlGkqcKpzpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ds115K2Pksnz7v+xGJOxGXkrgWY3OH449lGhnbPSReBQBqMF9vI4aW1ONanf9rPsa
	 zR4zIVYwLHO2EQOf1xKxFdzWBS8fADoemuu32vqSORIXVxxcFQChZILbywMtIvJkfV
	 4P4DcMW0PQD4+JfKDMmCf9c0b+TsToYLkbkH/2azv2a7oel4ol8oTYtsNROG5YZ/GR
	 6DXJK0dqebSQWEWXvZITwJxaVj/JQYcw4eDu6XBiVwI/YkvlyvWgjUGZZyfkztCR2E
	 DpFkIms3Kzq6Bq4BFp6y9H8j5GHB+ucbAfaqsj3GII6Hz8xnyZF8GeBlGFIkNFclC5
	 RipQSSWPO1q9g==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1E7043782133;
	Fri, 12 Apr 2024 14:49:48 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id BA84A106071F; Fri, 12 Apr 2024 16:49:47 +0200 (CEST)
Date: Fri, 12 Apr 2024 16:49:47 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Michal Tomek <mtdev79b@gmail.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,rx-common-refclk-mode
Message-ID: <6dixxtdwsrkkxmrozlpkp35rvdk2emrkyqwa6grxocjzdrayxl@q4yezpwtt4ig>
References: <20240412125818.17052-1-cassel@kernel.org>
 <20240412125818.17052-2-cassel@kernel.org>
 <bwrnrbqgh3ch7kzy3iieybf34634goydiyk4z7aynizgqergx2@pq76ovyfvxsp>
 <Zhk_REt7nPpZT_yX@ryzen>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="girmzmcjeyop2jti"
Content-Disposition: inline
In-Reply-To: <Zhk_REt7nPpZT_yX@ryzen>


--girmzmcjeyop2jti
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 12, 2024 at 04:03:48PM +0200, Niklas Cassel wrote:
> On Fri, Apr 12, 2024 at 03:36:11PM +0200, Sebastian Reichel wrote:
> > On Fri, Apr 12, 2024 at 02:58:15PM +0200, Niklas Cassel wrote:
> > > From the RK3588 Technical Reference Manual, Part1,
> > > section 6.19 PCIe3PHY_GRF Register Description:
> > > "rxX_cmn_refclk_mode"
> > > RX common reference clock mode for lane X. This mode should be enabled
> > > only when the far-end and near-end devices are running with a common
> > > reference clock.
> > >=20
> > > The hardware reset value for this field is 0x1 (enabled).
> > > Note that this register field is only available on RK3588, not on RK3=
568.
> > >=20
> > > The link training either fails or is highly unstable (link state will=
 jump
> > > continuously between L0 and recovery) when this mode is enabled while
> > > using an endpoint running in Separate Reference Clock with No SSC (SR=
NS)
> > > mode or Separate Reference Clock with SSC (SRIS) mode.
> > > (Which is usually the case when using a real SoC as endpoint, e.g. the
> > > RK3588 PCIe controller can run in both Root Complex and Endpoint mode=
=2E)
> > >=20
> > > Add a rockchip specific property to enable/disable the rxX_cmn_refclk=
_mode
> > > per lane. (Since this PHY supports bifurcation.)
> > >=20
> > > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > ---
> > >  .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++=
++
> > >  1 file changed, 10 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy=
=2Eyaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > > index c4fbffcde6e4..ba67dca5a446 100644
> > > --- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> > > @@ -54,6 +54,16 @@ properties:
> > >      $ref: /schemas/types.yaml#/definitions/phandle
> > >      description: phandle to the syscon managing the pipe "general re=
gister files"
> > > =20
> > > +  rockchip,rx-common-refclk-mode:
> > > +    description: which lanes (by position) should be configured to r=
un in
> > > +      RX common reference clock mode. 0 means disabled, 1 means enab=
led.
> > > +    $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +    minItems: 1
> > > +    maxItems: 16
> > > +    items:
> > > +      minimum: 0
> > > +      maximum: 1
> >=20
> > Why is this not simply using a single u32 with each bit standing for
> > one PCIe lane? I.e. like this:
>=20
> Hello Sebastian,
>=20
> The reason for the existing way to specify each lane in an int32-array
> is to be consistent with the existing property "data-lanes",
> which already uses this representation.
>=20
> e.g.
> data-lanes =3D <1 1 2 2>;
> rockchip,rx-common-refclk-mode =3D <0 0 1 1>;
>=20
> It would be very weird if this was instead:
> data-lanes =3D <1 1 2 2>;
> rockchip,rx-common-refclk-mode =3D 0xc;
>=20
>=20
> >=20
> > rockchip,rx-common-refclk-mode:
> >   description: bitmap describing which lanes should be configured to run
> >     in RX common reference clock mode. Bit offset maps to PCIe lanes and
> >     a bit set means enabled, unset bit means disabled.
> >   $ref: /schemas/types.yaml#/definitions/uint32
> >   minimum: 0
> >   maximum: 0xffff
> >   default: 0xffff
> >=20
> > Apart from that the PHY only supports up to 4 lanes on all existing har=
dware,
> > so 0xf should be enough?
>=20
> Again, in order to be consistent with the existing "data-lanes" property =
in
> this binding, which defines:
>     minItems: 2
>     maxItems: 16
> which means that the binding already supports up to 16 lanes.
> (The reason why "data-lanes" specifies minItems:2 is because bifurcation
> doesn't make sense if you just have a single lane. The rx-common-refclk-m=
ode
> property however makes sense even in the case where there is just a single
> lane.)

Works for me:

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

--girmzmcjeyop2jti
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYZSggACgkQ2O7X88g7
+ppkcw/+M05aLg22h3jIY7fVGRc/VMedvWyIwQ1WpZBdgql2UYvVYbHw3TLGpTMP
5WVtGJCp4cjRa5195wInlctBUrSt+rEQmg9QR/ghToLF36Rrjk4kLsqP0SaJKmsL
zo5DSKhsyqkWb60MIRTMZG4klg59UQg22QMboQLRJhIh5Mh6YbVehca4o8QgkqN5
2TWesUmFcm2TiAwlz/x3epE9J5cEMZBCEClzM0Tdz9OrlAlu7hVuIGuahhwWca86
1HuiUeM/uf9PZTtfk5KQJaZRu5uAQgbyknyK8dJDB99DBDIgSm44Y5aHYdwfXY17
F264OF6hG5+coI7TZU0RoPNuteB7498JQ0hOWwMeQ+dY6nKn1yEhMYrCFKQ0k9Gq
tkQmRKwlKW6mrKnwSAYSSgS8VFfsMa+hr+2eKslARt7wv+wQO1LmmwmaF4w+Wsyf
LIKuMyen9rQ90pf/XsNi0Hjo1ngUttd2GthAs0rXrUbjMF6cYn8VaetxYiBc9Jc5
sIEXVHD/cXCdScSt06zILMKP6WjqkIBmDDUfBnNLg6w8B5wyYNcFOEI3Cu4ruFZP
IaFJaeKFmwECbDNnLpRjMr26aU1t2HGsF68mvySRjEz1TVnEUUBqlgx6l0B2Os0f
R/LRWfI973YXrGSG4yR75mtqPHx8lc32mDINp0uhwuWpFIyTxVY=
=4L95
-----END PGP SIGNATURE-----

--girmzmcjeyop2jti--

