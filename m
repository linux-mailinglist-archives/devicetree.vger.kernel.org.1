Return-Path: <devicetree+bounces-267138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2A/sNQc1mmmgZgMAu9opvQ
	(envelope-from <devicetree+bounces-267138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:43:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 354D916E271
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9064030252B7
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 22:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C07230F938;
	Sat, 21 Feb 2026 22:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa3bBdp7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E87286881;
	Sat, 21 Feb 2026 22:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771713796; cv=none; b=ttN/qEYaGAj8lVkgJTJordlbVBBLo5va4Zd+6VB1dWS1NqQExCE2MO6lwnG4mwx6x1NWUuKpOp2zPuW5cX24bONx7tviNy80sasUgNg0sCHlVYQIVBWDWCc58hrZf7i/OYLS5PxzT0hto/KhAk/ywPYh4rVL+rp0o4GU3dXpEKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771713796; c=relaxed/simple;
	bh=l1mLttXcMUKU0fqnl6vPAmjLOeTpuvTMHgBKn7H5Qa0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fRaemHoJagjwpmSA3NIJfknDYEjCZhENwKyOS0FLP5C7W4X0VtxpNUhcr5OeO1fNbhW20FghH5AUVIZd02mSu+DCSeITMLtn7xZ+++RcKMfoz01NUUw15uROx7R9WiSWaTjbO1nR9ndZDbKsdU94XlP6eNy3QMSGembWpwlBQ4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa3bBdp7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83C69C4CEF7;
	Sat, 21 Feb 2026 22:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771713796;
	bh=l1mLttXcMUKU0fqnl6vPAmjLOeTpuvTMHgBKn7H5Qa0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fa3bBdp7wK/NbCA2tMCiIWYD1D6FSWGoCXK+gXnCSds1q5aiy6e8GAA+ktxPhGu2+
	 oEFIPezMf+XB0z9hCbuX15I1721tL5DjgtRFwcUUJhR/3RbiXiY/ku7ihZEiGMFdLM
	 K+DUcrVgLyKq0DUoCGLUlcq4QyCHfaDK1Ye8uM6JCcViE7KPQ9X2++aDbJIQyzj280
	 ShmF+1uMQkLIjACjg73Vp44sAlDoG3Y270xuZCcUElv5yGCQ8KbPCoHTmeG98wjQbM
	 yrsaEcxBIm/JU2pj9m2a6Np5J4QxtQsbmv5K9W52eL5iieOSHD/3dmXiVsVQPoTEBt
	 NcedIOUHZ6VQA==
Date: Sat, 21 Feb 2026 22:43:11 +0000
From: Conor Dooley <conor@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH RFC 1/8] dt-bindings: iio: frequency: add ad9910
Message-ID: <20260221-batting-amiable-fc01ae386789@spud>
References: <20260220-ad9910-iio-driver-v1-0-3b264aa48a10@analog.com>
 <20260220-ad9910-iio-driver-v1-1-3b264aa48a10@analog.com>
 <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FdGph1zvow74waEI"
Content-Disposition: inline
In-Reply-To: <41190a42-70ab-45b9-922f-317e792b25a0@baylibre.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267138-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 354D916E271
X-Rspamd-Action: no action


--FdGph1zvow74waEI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 21, 2026 at 02:43:02PM -0600, David Lechner wrote:
> On 2/20/26 10:46 AM, Rodrigo Alencar via B4 Relay wrote:

> > +dependentSchemas:
> > +  resets:
> > +    properties:
> > +      reset-gpios: false
> > +  reset-gpios:
> > +    properties:
> > +      resets: false
>=20
> This seems too strict. Couldn't we have some resets from a reset
> controller and others from gpios?
>=20
> Or maybe the reset bindings are enough and we don't need the gpio
> bindings for the same pin?

Actually, I'd be interested in seeing evidence for the resets property
ever being used with this device. I think every single reset-controller
that's currently documented is an on-chip device for resetting
peripherals.

--FdGph1zvow74waEI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZo0/gAKCRB4tDGHoIJi
0l26AQDR3ZVj0FXwPKdQMJzQ5DAH9j6w3UqQs2++/xuFnGbjHgEAh9aLwGPduncW
ITaX2/mpnyBdPmyszgUdZfQM1oS5Kwc=
=mGrX
-----END PGP SIGNATURE-----

--FdGph1zvow74waEI--

