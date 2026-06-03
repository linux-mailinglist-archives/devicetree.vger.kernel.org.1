Return-Path: <devicetree+bounces-306404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Bi7nEj1XIGoO1gAAu9opvQ
	(envelope-from <devicetree+bounces-306404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:33:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 62973639C32
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:33:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nhLlZQBH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306404-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306404-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2EAC832172EB
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8896A3CD8C7;
	Wed,  3 Jun 2026 15:50:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6133D47B1;
	Wed,  3 Jun 2026 15:50:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780501844; cv=none; b=mbNlKuy7jCnA81FiCaOTk9nQ4b65aK7AM1XH3dSmWmIK3lJN1/RDRpS4euY69UAR1bQTAoFZh1aJ3zrEfv1ZpWBEbynIFVr72NC4xI50JW8E+i7TatqbpHx5JHTJju3ivf7kQ87OEELnuG+28mHwgJHxqcKXYHEPqwhRga4lQEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780501844; c=relaxed/simple;
	bh=hSEyrQnQzfFxChLpOBbQ5Vz93PJwfhQqH6ffjmGCdBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MMUwfL1u2KxgHDbgo73jXBWFiHYUBVx2ylLJ29xGU1HEgpj0KIxAKMWIIyYZM0jpcEEFtRqbA5JTj6mlj5ETpUXWHTH2ax1yZdZ2Fqte0/yXs+nWbH3Wvo13TLjhy9w2VVE1+3Pt1VX0vI9C7F30qz3flhgaLY1rnSLemf7aCw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhLlZQBH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54BA71F00898;
	Wed,  3 Jun 2026 15:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780501843;
	bh=vCs9UAIkiodhsbZ/odVVdbmcYh4cByi63umqI9snLoM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nhLlZQBHzf12m7nTEXBM2ed1IJWgFkuHT6XsTb2EEF94DiMUraBF0RSjS3ZRFYGgg
	 DBLOBnqpwD8g/FEHx8gUU/EmZt5VzMU/nbBRK0EXknBFzJkDKsV1hfb/dtCXs565Xa
	 5cXNJt6LTFfvtsOw6jSiwWYV67aM0W8TmseM2qV1YfFAOwb6rGMzHmwwmufiezLYyQ
	 rVNPrwkPcJVBhPSv+khVbCXkrUP+UyroIEVQK/bUCmaXMQmdx6om5zwT23WM/9cGau
	 ZTAFvqecZxFX+yTGIP+wbKnMvE4T26OZqD65V+anK22Kt17sctqriFtNv+Tn/+tshX
	 MKcT+iVc002/g==
Date: Wed, 3 Jun 2026 16:50:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: sashiko-reviews@lists.linux.dev, robh@kernel.org, vkoul@kernel.org,
	neil.armstrong@linaro.org, conor+dt@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	olteanv@gmail.com
Subject: Re: [PATCH v3 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <20260603-numerate-unbundle-ef259832006d@spud>
References: <20260603132059.503527-1-vladimir.oltean@nxp.com>
 <20260603133350.9FA271F00893@smtp.kernel.org>
 <20260603133825.l544tnmtn2pqfrzh@skbuf>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="29efmMoE7cLoxf6X"
Content-Disposition: inline
In-Reply-To: <20260603133825.l544tnmtn2pqfrzh@skbuf>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306404-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,linaro.org,lists.infradead.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,spud:mid,nxp.com:email,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 62973639C32


--29efmMoE7cLoxf6X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 04:38:25PM +0300, Vladimir Oltean wrote:
> On Wed, Jun 03, 2026 at 01:33:50PM +0000, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential is=
sue(s) to consider:
> > - [Medium] The `if` condition for enforcing the `big-endian` property i=
ncorrectly matches the `compatible` string array directly against an `enum`=
, which will always evaluate to false and cause the requirement to silently=
 fail.
> > --
> >=20
> > commit 8bd3982a89722b20a3686e42d4ab3b9f0711ae11
> > Author: Vladimir Oltean <vladimir.oltean@nxp.com>
> >=20
> > dt-bindings: phy: lynx-10g: initial document
> >=20
> > This commit adds the schema for the 10G Lynx SerDes used on most QorIQ =
and
> > Layerscape SoCs. It defines the valid compatible strings, PHY cell requ=
irements,
> > and enforces SoC-specific constraints such as lane counts and endiannes=
s.
> >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml =
b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > new file mode 100644
> > > index 0000000000000..8cf6027a75b91
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          enum:
> > > +            - fsl,ls1046a-serdes1
> > > +            - fsl,ls1046a-serdes2
> >=20
> > [Severity: Medium]
> > Does this conditional correctly enforce the big-endian property?=20
> >=20
> > Since the compatible property is a string array in device trees, evalua=
ting it
> > directly against an enum always returns false. Should this use "contain=
s:"=20
> > with the enum, similar to the preceding if block, so dt_binding_check=
=20
> > correctly enforces the requirement?
>=20
> The tests I did suggest that it does enforce the requirement.

Yeah, sashiko just doesn't understand how this works without "contains".
"contains" is only actually required for validation purposes if there's
fallback compatibles and you're trying to get a partial match.

>=20
> - "make dt_binding_check" passes with the submitted example
>=20
> - If I replace "fsl,ls1028a-serdes" from the example with
>   "fsl,ls1046a-serdes1" but leave everything else as is (implying:
>   little endian), I get:
>=20
> $ make -j 8 DT_CHECKER_FLAGS=3D-m dt_binding_check DT_SCHEMA_FILES=3Dphy/=
fsl,lynx-10g.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   CHKDT   ../Documentation/devicetree/bindings
>   LINT    ../Documentation/devicetree/bindings
>   DTEX    Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dts
>   DTC [C] Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dtb
> Documentation/devicetree/bindings/phy/fsl,lynx-10g.example.dtb: serdes@1e=
a0000 (fsl,ls1046a-serdes1): 'big-endian' is a required property
>         from schema $id: http://devicetree.org/schemas/phy/fsl,lynx-10g.y=
aml

--29efmMoE7cLoxf6X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBNTwAKCRB4tDGHoIJi
0qEpAP9xJIQD67kq3rH/iSn47fcaj5H2Gm4eWSUDKokdZ9vTHgEAg/Se6W+36U7P
aL+sw1M/xaTL+1SnXFHozFNqtmazbgE=
=gCxu
-----END PGP SIGNATURE-----

--29efmMoE7cLoxf6X--

