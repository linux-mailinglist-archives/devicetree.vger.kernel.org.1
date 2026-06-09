Return-Path: <devicetree+bounces-309232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1uEnFaJJKGqHBgMAu9opvQ
	(envelope-from <devicetree+bounces-309232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:13:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A79EA662CC5
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 19:13:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k7srYTgn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309232-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309232-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BFD11349FE54
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5394963D8;
	Tue,  9 Jun 2026 16:36:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E79843901E;
	Tue,  9 Jun 2026 16:36:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022995; cv=none; b=DobODzQdNmCfzhwydtPckLeNFzu3Rl52PL+7Yym/lzham/DfjDKjf23XWPuKtfEYkUEbDMY3cInB+iyH4qzDmLUPTK0GzJenDek27JUuARs69+SVURepNiFT0mXnbreQTYrsEOFhhXjK9r/0v8rRMI2J8/g32df+V0f2UWVNHYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022995; c=relaxed/simple;
	bh=xByF0F/h7ktLt8lyZSDxHvLsA0knmEA+TzCJxkgFBdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I1kgXRtrCo9vkiYr7Tke1zDzwhSOfQ79JjO7Yq5QocoSQxMbghOJI7lWdK5OsaDRDZJTZ+KF5PcGHL/gGVYAExfGhvww2hqT1vkasyDRkOmSOIFO+kQStE7dtbYVHPG685Y268kaP0qlwRq692StK9hNKfvf+bY/y2i/JiGkirQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7srYTgn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3FB11F00893;
	Tue,  9 Jun 2026 16:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781022994;
	bh=LwMOiZxgW53fTEkj2s9qCUAq2VW/FZU0VZwV5eBvpcY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k7srYTgnpnlzXL1IuMkoGdY3uf5tr4jvi6oSbUyvyGh5/bd7bGBpiFBmTD9f4KRvo
	 eWzalQLigf0hT8KHpsKnBt97+xPL2G0JoAD5HHSCOL+Ml/xH/zNn6XOKQSP1tXsKDz
	 fQM4zFEB4bFP1WpPa9VgfGOmbIgWxRzocBgGeOM/ds08PTDVufhmctbcFkp2s3ug37
	 ev8tXZn8uVLKU+dPb8pKC9CSJ7PFTaLRQh5Y4btuBICCnSQ32e+Q9vy3rEg9j6DeJM
	 iNKSWd7zFaEuvNJ6kwZhmXUjJZqHbGfvsHSDS/y+HLV0BcwDp+CkKNSwNMIfHf76VN
	 hWnDDIvtRS1VA==
Date: Tue, 9 Jun 2026 17:36:30 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	wsa+renesas@sang-engineering.com
Subject: Re: [PATCH v3 1/3] dt-bindings: mfd: syscon: Disallow simple-bus
 with syscon
Message-ID: <20260609-appraiser-sedate-c76c7b06690c@spud>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-1-4eba9ec1212a@oss.qualcomm.com>
 <20260608205406.45ED31F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g7GIejA9sAOaRBJP"
Content-Disposition: inline
In-Reply-To: <20260608205406.45ED31F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:krzysztof.kozlowski@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa+renesas@sang-engineering.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309232-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A79EA662CC5


--g7GIejA9sAOaRBJP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 08, 2026 at 08:54:05PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] The patch introduces several new compatible strings (e.g., `ti=
,am3352-scm-conf`) to the exception list without documenting them in any va=
lid dt-binding schema. This causes a bisectability breakage in `dtbs_check`=
 during the series and leaves permanent 'undocumented compatible' warnings =
at the end of the series.
> --
>=20
> commit 0cddec624a3b6ba2f0c447b95621f32101d2e31f
> Author: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>=20
> dt-bindings: mfd: syscon: Disallow simple-bus with syscon
>=20
> This commit adds a schema to disallow the combination of syscon and
> simple-bus compatibles. It includes an exception list for legacy
> configurations that currently rely on this pattern.
>=20
> > diff --git a/Documentation/devicetree/bindings/mfd/syscon-common.yaml b=
/Documentation/devicetree/bindings/mfd/syscon-common.yaml
> > index 14a08e7bc8bdd..2d5eef5add544 100644
> > --- a/Documentation/devicetree/bindings/mfd/syscon-common.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/syscon-common.yaml
> [ ... ]
> > @@ -52,11 +53,44 @@ allOf:
> >            contains:
> >              const: simple-mfd
> >      then:
> > +      # Always require a specific compatible for syscon with simple-mfd
> >        properties:
> >          compatible:
> >            minItems: 3
> >            maxItems: 5
> > =20
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: simple-bus
> > +    then:
> > +      # simple-bus conflicts with syscon - if a device is a system con=
troller
> > +      # with miscellaneous registers, then it has at least one dedicat=
ed
> > +      # function thus it is not a simple bus. Allow existing exception=
s.
> > +      if:
> > +        properties:
> > +          compatible:
> > +            not:
> > +              contains:
> > +                # This list CANNOT grow
>=20
> [Severity: Medium]
> Will this break bisectability for dtbs_check? Since the DTS files are
> updated later in the series, it seems like existing TI DTS files using sy=
scon
> and simple-bus without these new specific compatibles will fail validation
> when this patch is applied.

Perhaps worth telling the sashiko people that transitory warnings like
this aren't something we care about, especially since even the normal
development process for devicetrees introduces validation issues in the
platform maintainer branches.

--g7GIejA9sAOaRBJP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaihBDgAKCRB4tDGHoIJi
0mORAP9XbacaXxKtk0YB3FToPLoZf0AcjnruCGhq+mcJSV5BeQD+Psshiw/O0AFl
UoJZc6ASeJ1rzvfyEPatykMZTs+B0Ac=
=dzg1
-----END PGP SIGNATURE-----

--g7GIejA9sAOaRBJP--

