Return-Path: <devicetree+bounces-310549-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V+TbH+L3KmrM0AMAu9opvQ
	(envelope-from <devicetree+bounces-310549-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:01:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CF3674401
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:01:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fbgJWsEN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310549-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310549-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F1FBC30173AE
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 18:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4779943C063;
	Thu, 11 Jun 2026 18:01:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6424223DEA;
	Thu, 11 Jun 2026 18:00:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781200861; cv=none; b=HpT958Pprn/hfyMfIsShfTmdk+YJz3k6Lk7PI/KT2p+l/0QGsfiliVI8wmOtRhCwPZ87KNSZ5krDq7M+K7piTGs62aVJsVZaqEBdWMhfXSRnGpUVlw4C0F2BPgluYUEVWaZYsOB4eHbQhraMVLEe95w9IFTIq6FR4rZfkjDxz9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781200861; c=relaxed/simple;
	bh=3lr7Sxwl0HUeHNnGIIGnKfKwo8XvvSf7RE979TESsu8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zu739qG/DvhcGuRTLOjceB1VvSq2Wr9fXN8k6KD0mvd6k9TwW5ag1yOdZXNcrfe+lsL99qocHUYWEUV1HoXjP1jPAp2DlKXvdYZJwafg7EomNfiFEaKicUU13KB6FT7kY2BaY4n/5hCREhPKIzF8o80HxHHCGeJiqgQpcVYFEXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbgJWsEN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30A3E1F00893;
	Thu, 11 Jun 2026 18:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781200858;
	bh=A9Oqqr/l6I/PqOwlMmpBmr2v004b4l/K/iappFZw6cw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fbgJWsENfWIUU78rOo1V6bIPvj7OU2UInIg7BhO/MtyXLz03aNphLkvbQ4sWBH1D8
	 SZS+xEF5xGl5Z7WFRicCnucNZqZ6Y6z7rTBz6T9S7ipsqMbk+ixpaY2HxX4+o8wicg
	 1P+gBE8/Y4y6VhP0cdfTmzq0SxHsh0KEFkyoGY3oKpq7qPHvbjtZt4vCPdYN92h7NM
	 9GfIvbhUcMxe67Suzx5P/6qJ12T6++7SuSOQT3c7cHb8ncKsd3erNXbIWOkvMRST1P
	 F+qzsLaZQB0TRtE7iJ2uCCXoHkO3M3oPuiPU9b7TKEn/4gqEXqSUICRTOTW9Saex6M
	 VHyzdoBUp4AuA==
Date: Thu, 11 Jun 2026 19:00:55 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Nguyen Minh Tien <zizuzacker@gmail.com>, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add TI ADS1220
Message-ID: <20260611-stump-poison-3d44ee51ecdd@spud>
References: <20260610151342.44274-2-zizuzacker@gmail.com>
 <20260610152903.54FE61F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ibX/47NDqAbngYGw"
Content-Disposition: inline
In-Reply-To: <20260610152903.54FE61F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:zizuzacker@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310549-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8CF3674401


--ibX/47NDqAbngYGw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 10, 2026 at 03:29:02PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] The `diff-channels` property constraint uses invalid YAML flow s=
equence syntax (`items: [const: 0, const: 1]`) that will cause a fatal pars=
er error or evaluate to a single-element list with a collapsed duplicate di=
ctionary key.
> - [Medium] The child node regex and `reg` maximum artificially limit the =
device tree to defining at most 7 channels, despite the hardware supporting=
 12 unique multiplexer configurations.
> --
>=20
> commit 2b3665a0096105a4bb2db6266e47dec0a0802cff
> Author: Nguyen Minh Tien <zizuzacker@gmail.com>
>=20
> dt-bindings: iio: adc: Add TI ADS1220
>=20
> This commit adds a device tree binding for the TI ADS1220 24-bit ADC.
> It describes the SPI device, its per-input channel child nodes,
> external reference selection, and the DRDY interrupt.
>=20
> > diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml =
b/Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml
> > new file mode 100644
> > index 0000000000000..1fedffc2a1475
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1220.yaml
> [ ... ]
> > +patternProperties:
> > +  "^channel@[0-6]$":
> > +    $ref: adc.yaml
> > +    type: object
> > +    description: Represents one ADC input configuration (channel).
> > +
> > +    properties:
> > +      reg:
> > +        minimum: 0
> > +        maximum: 6
>=20
> [Severity: Medium]
> The ADS1220 hardware supports 12 unique multiplexer combinations
> (8 differential pairs and 4 single-ended inputs). Does this regex and
> reg maximum artificially limit the device tree to defining at most 7
> channels?
>=20
> System integrators might not be able to represent all available
> hardware configurations if this limit is enforced.
>=20
> [ ... ]
> > +      diff-channels:
> > +        description:
> > +          Differential input pair routable by the ADS1220 multiplexer.
> > +        oneOf:
> > +          - items: [const: 0, const: 1]
> > +          - items: [const: 0, const: 2]
> > +          - items: [const: 0, const: 3]
> > +          - items: [const: 1, const: 2]
> > +          - items: [const: 1, const: 3]
> > +          - items: [const: 2, const: 3]
> > +          - items: [const: 1, const: 0]
> > +          - items: [const: 3, const: 2]
>=20
> [Severity: High]
> Will this syntax pass the dt_binding_check validation?
>=20
> In YAML, a flow sequence like [const: 0, const: 1] evaluates to a list
> containing a single implicit mapping with duplicate keys. The dt-schema
> toolchain utilizes a strict parser that typically fails on duplicate
> dictionary keys.
>=20
> If it did parse, it would likely collapse the duplicate keys into a
> single element, forcing the diff-channels array to have exactly one
> element instead of the expected two.
>=20
> Would it be better to use a valid flow mapping sequence, such as
> - items: [{const: 0}, {const: 1}]?

dt_binding_check passes actually. Although this syntax has no other
users in the tree. The only other diff-channel user I saw that applied
as tight restrictions as this one spelt it out as
  items:
    - const: 0
    - const: 1
etc but I have no objection to this if it works.

--ibX/47NDqAbngYGw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCair31wAKCRB4tDGHoIJi
0pBWAP47b2XfFh9+TXxIUGnXm9V5k8GySya9KmjNCktoq+wKOwD/ZcE3GcY+7oz1
TM+DlHHcMdSAqQgtVoS3laZozGMmCQs=
=Clc4
-----END PGP SIGNATURE-----

--ibX/47NDqAbngYGw--

