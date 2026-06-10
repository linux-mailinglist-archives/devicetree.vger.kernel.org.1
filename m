Return-Path: <devicetree+bounces-309959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jLW0DJuUKWooaAMAu9opvQ
	(envelope-from <devicetree+bounces-309959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:45:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E8766BA07
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:45:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Fl9xV8YP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309959-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309959-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 104CA32908EF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36117332EAC;
	Wed, 10 Jun 2026 16:34:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3707C1DB356;
	Wed, 10 Jun 2026 16:34:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109268; cv=none; b=i7TxHRhyDcpvkxxx6/tf03gtYmjd1f5xjve684JvZ2zR5TyO6TqxQZKO2Or6pUP/kQRUOuzK9BvbugNNl9eOIQJ0trhY7KYG1jMb1fRLUJVy5pqhpAG28+7KBJirI91UeRYFOgH5tQKb1mPes9aZilcggbc8xuyouSInH09efWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109268; c=relaxed/simple;
	bh=zcb0dtZHCHiBgHkSvFJuQubeYv+nc7A88NajAAY88/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WTLHj8i5clydouljOmM2ynlCFjUZceU+RjKJoKUB9H2TggPc0rB35xxMoJP1+f0g4qqS+fhMxQsZF7SntfaC8K4vIyCmblr8pDvwIbhxWpap79r9YIqTHFTEzEvZKBsuFrz8FFR3y94ak5mWJZ7BaqQlAz71vmqOw+WATujtdbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl9xV8YP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 568561F00893;
	Wed, 10 Jun 2026 16:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109266;
	bh=gjO31DRuVicXMLpjIb0ytHqC9/QtWlWYgv3Gax2rQCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Fl9xV8YPKnzwjRwjWApXWMag+kQ6znrq0IvV2EThA/UjfW1WmotnjPmgLLV8zabhz
	 goQOyxSKF2wyUmnK+olLJfTFdMn4uvK5l36ygRHvTkUI5XUkNjpztXGwWvcXRh3g6P
	 gfrpnZyLhQjURBoSSHPmT/AB10ytiGanfdCcCZt6Lou3iRxlRbCOfQafHS9+7ZviPC
	 iVqXqczmnIssCU1KOmkhMmrqMRHxXoCB5QKg4QhaH0lYDPPuTaPRqLShyGBc8Eobgf
	 vchgpSLMocJBIVsfduRD+yXE6O9gfrhFYoqmiOZXMWgYL+Rg04MpH0P0AQ/4KMT2VP
	 6FvaeGSlrpTzw==
Date: Wed, 10 Jun 2026 17:34:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com, krzk+dt@kernel.org,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 7/8] dt-bindings: input: microchip,cap11xx: Add CAP1114
 support
Message-ID: <20260610-generous-strength-4acced86f3c6@spud>
References: <20260609-ebook-tantrum-4846384c02d5@spud>
 <20260610133458.970174-1-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+tTubhEK9EHpfl3N"
Content-Disposition: inline
In-Reply-To: <20260610133458.970174-1-jerrysteve1101@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309959-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:krzk+dt@kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2E8766BA07


--+tTubhEK9EHpfl3N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 10, 2026 at 09:34:58PM +0800, Jun Yan wrote:
> > > > > +      threshold, so counts differ.
> > > > > =3D3D20
> > > > >    microchip,calib-sensitivity:
> > > > >      $ref: /schemas/types.yaml#/definitions/uint32-array
> > > > > @@ -149,7 +153,7 @@ patternProperties:
> > > > >        reg:
> > > > >          description: LED channel number
> > > > >          minimum: 0
> > > > > -        maximum: 7
> > > > > +        maximum: 10
> > > > > =3D3D20
> > > > >      required:
> > > > >        - reg
> > > > > @@ -199,6 +203,19 @@ allOf:
> > > > >              reg:
> > > > >                maximum: 1
> > > > > =3D3D20
> > > > > +  - if:
> > > > > +      properties:
> > > > > +        compatible:
> > > > > +          contains:
> > > > > +            enum:
> > > > > +              - microchip,cap1188
> > > >=3D20
> > > > I don't understand this restriction, shouldn't this be
> > > > if: properties: compatible: not: contains: microchip,cap1114
> > > > so that the constraints before your change are retained?
> > > >=3D20
> > >=3D20
> > > Previously, the LED reg property had a default maximum of 7 for CAP11=
88.=3D
> > =3D20
> > > With the addition of CAP1114, the default maximum is now 11.=3D20
> > > An if-then constraint is added to limit the LED count for CAP1188.
> >=20
> > Ah, is this because cap1188 is the only existing device in the binding
> > that actually has LEDs?
>=20
> - CAP1126: max 2 LED channels (0-1)
> - CAP1188: max 8 LED channels (0-7)
> - CAP1106, CAP12xx: no LED support
>=20
> The LED reg property constraints for CAP1126 were added in Patch 3 [1].
>=20
> [1] https://lore.kernel.org/linux-input/20260606150458.250606-4-jerrystev=
e1101@gmail.com/

Okay, that makes more sense now. Thanks.

--+tTubhEK9EHpfl3N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaimSDAAKCRB4tDGHoIJi
0gFaAP9trN8osyavF69mIX7MVoz0YmJAQutYJoggCDkyExIWOwD+PMC5Q7rJOkrw
z4POsbKMvLC5wZbE1lmpk3CICqcrdwE=
=xFIY
-----END PGP SIGNATURE-----

--+tTubhEK9EHpfl3N--

