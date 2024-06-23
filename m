Return-Path: <devicetree+bounces-78981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC649913D27
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 19:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64B012835A5
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 17:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79B9A1836CF;
	Sun, 23 Jun 2024 17:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmT8Zwn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BC81836CC
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 17:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719163246; cv=none; b=GNqVf1cs7iQ9kHZhPBhOXyCoGVNYUJW1PWNSL9FLjkPTJVkZcYyB7ZxMSzr1GC2Jc9yO/157DzI2M1MRnhwZar9y+lClK5L72R2F8J+m6HE7NG7Pqvi1EUmcip51C1nq2Sh1r70ELXVPYjAta09HioVkObFpunhICN3RYd7txws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719163246; c=relaxed/simple;
	bh=2AmsLaNgIpfW4tk6T8sVQh3LyzJdjLq9qnkd69z21Po=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lt5z1oxZ0XCqK2bfdKKPLprrRGUTzAqCryOmDeHthmJ2tkyt4WCePXjtfQPA3DT92UMsp34a/3seUG/o0JHopgwRZ+gJkJ13Q6HzFOWgZaxIjgvk99wVFQ5dT5ZFVmhzTdwcL+/9w0ae02iSlsVr73SF+XLCdV7Ev43FcXrpkmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmT8Zwn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57479C32786;
	Sun, 23 Jun 2024 17:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719163245;
	bh=2AmsLaNgIpfW4tk6T8sVQh3LyzJdjLq9qnkd69z21Po=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YmT8Zwn39Suc5haMGNZgk4v4ISIqE4iVLEX3AlK3vs1tAAT2hxNIxxSUD4XmaDw+V
	 5N6LC91VvUVtZ7pAlHgAexXq5WoMI3qn9EvwtmFqs86KhnvkYezZAQg3SX/ZS3Nm81
	 ZZqymuo2SN+ULCG90h/Y2ie8+MfM5QD4SsaNrLaXDFTXfJbYP4ElTqGtCZ5e9YlhkS
	 aibOma1yRRrG+IJhOqztVEVUAlf8H2fQv6Y+/bO6yvKAg1BefSAquvWy6cDJFKemoZ
	 vpaAMJK6TGxW0KtjbzYJyd7Vw+GACOPTWC5Ku6/PS8lsAWync1HMgIsHWnuOzyo5+N
	 7qkBjdGzQJNwg==
Date: Sun, 23 Jun 2024 18:20:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: tc358867: Document
 default DP preemphasis
Message-ID: <20240623-unadorned-human-deedc8fd4819@spud>
References: <20240621155430.92894-1-marex@denx.de>
 <20240622-ruse-stock-2c2b8d0b1cfb@spud>
 <8d6bc5d3-6a21-4b90-a5f2-74b5597ba3b2@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yzBqMuf10iA8ZrEG"
Content-Disposition: inline
In-Reply-To: <8d6bc5d3-6a21-4b90-a5f2-74b5597ba3b2@denx.de>


--yzBqMuf10iA8ZrEG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 23, 2024 at 04:48:47PM +0200, Marek Vasut wrote:
> On 6/22/24 1:56 PM, Conor Dooley wrote:
> > On Fri, Jun 21, 2024 at 05:53:53PM +0200, Marek Vasut wrote:
> > > Document default DP port preemphasis configurable via new DT property
> > > "toshiba,pre-emphasis". This is useful in case the DP link properties
> > > are known and starting link training from preemphasis setting of 0 dB
> > > is not useful. The preemphasis can be set separately for both DP lanes
> > > in range 0=3D0dB, 1=3D3.5dB, 2=3D6dB .
> > >=20
> > > Signed-off-by: Marek Vasut <marex@denx.de>
> > > ---
> > > V2: - Fix the type to u8 array
> > >      - Fix the enum items to match what they represent
> > > ---
> > >   .../display/bridge/toshiba,tc358767.yaml       | 18 +++++++++++++++=
+++
> > >   1 file changed, 18 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba=
,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,t=
c358767.yaml
> > > index 2ad0cd6dd49e0..6287eb2b40908 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc3587=
67.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc3587=
67.yaml
> > > @@ -98,6 +98,24 @@ properties:
> > >               reference to a valid eDP panel input endpoint node. Thi=
s port is
> > >               optional, treated as DP panel if not defined
> > > +        properties:
> > > +          endpoint:
> > > +            $ref: /schemas/media/video-interfaces.yaml#
> > > +            unevaluatedProperties: false
> > > +
> > > +            properties:
> > > +              toshiba,pre-emphasis:
> > > +                description:
> > > +                  Display port output Pre-Emphasis settings for both=
 ports.
> >=20
> > Why here and not in the port nodes?
>=20
> There was a short discussion about that in V1:
>=20
> https://lore.kernel.org/all/00e9ef90-3bbe-4556-8da9-462f65928781@denx.de/
>=20
> "
> Let's keep it in the endpoint node.
>=20
> There is some mention in the TC9595 datasheet that the DP might operate
> in some split mode, where each DP lane is used to feed one display (?),
> so I assume in that case there might be two endpoints (?), but that is
> not supported right now.
>=20
> If that is ever needed, I guess this array would have minItems 1 and
> maxItems 2 and another endpoint would be added to the schema for this
> port 2.
> "

Can this be put in the commit message please?

> > > +                $ref: /schemas/types.yaml#/definitions/uint8-array
> > > +                minItems: 2
> > > +                maxItems: 2
> > > +                items:
> > > +                  enum:
> > > +                    - 0 # No pre-emphasis
> > > +                    - 1 # 3.5dB pre-emphasis
> > > +                    - 2 # 6dB pre-emphasis
> >=20
> > I'd love to say please make this -bB and put this in units, but that'd
> > require it being a string..
>=20
> I can do that. Do you think that's worth it ?

I dunno, I'd advocate for it for any other unit cos I would ask for the
unit to be changed into something that didn't require fractions. But for
decibels, that just going to be confusing given how it works. I think
for dB it's just not worth it.

--yzBqMuf10iA8ZrEG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnhZaAAKCRB4tDGHoIJi
0rdQAQDr9zyqpYxL8AhLMhCi0G6rabJ9c5NGz4sygSDIEkDwUgEAgJHtE2XxX5cY
q+lSwvwXRAoJW4vw2dWK514Qz7zwFw0=
=Jp6p
-----END PGP SIGNATURE-----

--yzBqMuf10iA8ZrEG--

