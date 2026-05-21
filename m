Return-Path: <devicetree+bounces-301492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Bw+ITpmD2pKKgYAu9opvQ
	(envelope-from <devicetree+bounces-301492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 22:08:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D260D5ABA53
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 22:08:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3CC63028B4A
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 20:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98003406289;
	Thu, 21 May 2026 20:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnQhC89x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C223F54C2;
	Thu, 21 May 2026 20:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779394094; cv=none; b=SQu4j0m8ZBfIa9ohjk5lMMeBkP81rLoOJyJKriairIsKyVckIy6Y44tJxvcYfV+9SegDhSiUwCzWHQdUBRgqElzqzOUWMDKcyrHaqdW0DntyVf25yBYnhzny3qWtnyvOz8XH0zgiO3brvWFDLi/hW1u+HgeDvIBR48+E4rsaWsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779394094; c=relaxed/simple;
	bh=707jK27ZELdllgXoMxuZs9+Kj+Za41Z+d79jxmYPrkQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ts8CCFp/Qy9WTuXqrtDWT6Lgm2K/H/o5+X3WG9xxuGzEiBz4LJG4j7ocHQrVNkoAx0/FM/W/dHxmo+a3eb6dllOoBFyGrDUMoz8tOmfZy0uVKoA03jErPnOyFpdarOLqN0ONZQLBELXqxX529V7OvQF4F2v/vdaeb/CcfmR2pro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnQhC89x; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1E01F000E9;
	Thu, 21 May 2026 20:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779394092;
	bh=707jK27ZELdllgXoMxuZs9+Kj+Za41Z+d79jxmYPrkQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XnQhC89x81h+yCkodScj88ddByjv2tXNQ9ox5EpkfYEkbUqs6gFJeqYItZinvYTvY
	 nGOei2abuhB6Yz/cursfuF2ME+VN5H4K7gQJN1Ryot1KMbKKg+tfwgeUkoQtfdps6Z
	 A+P60g/kPyvcov6QxzohAuStjaHKdz+bDuukmJ6yL5pBZsmgJdPRlhjBIZ2UzIxIT7
	 a4Gm1egxLXUBTJbqwcyZPK60MTOhifSBlpPf5qDoY06uuzTYWxprsFwCj4OuIItsN+
	 wn5p5pqW0A2yQuIXw7PM0vY6X0xFH5ttinTitzWsZsw+JDxM8/Eh6URlmHtnNdKdto
	 bGbABwQtCXzXw==
Date: Thu, 21 May 2026 21:08:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260521-challenge-flaccid-26b6f5d2d0bd@spud>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
 <20260518200526.458421-3-macroalpha82@gmail.com>
 <20260520174217.6ca98524@jic23-huawei>
 <20260521-premium-afterlife-0d7a22b77517@spud>
 <PH0PR19MB99733879756FFB321CDCDD9B81A50E2@PH0PR19MB997338.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wintQjHsEd+E3xkx"
Content-Disposition: inline
In-Reply-To: <PH0PR19MB99733879756FFB321CDCDD9B81A50E2@PH0PR19MB997338.namprd19.prod.outlook.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301492-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[hotmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: D260D5ABA53
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wintQjHsEd+E3xkx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2026 at 12:43:09PM -0500, Chris Morgan wrote:
> On Thu, May 21, 2026 at 05:44:21PM +0100, Conor Dooley wrote:
> > On Wed, May 20, 2026 at 05:42:17PM +0100, Jonathan Cameron wrote:
> > > On Mon, 18 May 2026 15:05:17 -0500
> > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > >=20
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > >=20
> > > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > > ICM42607P inertial measurement unit. This unit is a combined
> > > > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > > >=20
> > > > This device is functionally very similar to the icm42600 series wit=
h a
> > > > very different register layout.
> > > >=20
> > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > Note that Sashiko has highlighted that the binding this being added to
> > > has a potential problem.
> > >=20
> > > interrupts are required but interrupt-names are not.
> > > That would be fine but the binding doesn't say there is a default
> > > ordering for the interrupts - so if we don't have names we have no
> > > idea which interrupt it is.
> > >=20
> > > This needs fixing - probably by adding a default
> >=20
> > Worth pointing out that this isn't an issue with this particular patch,
> > the problem exists in mainline.
>=20
> The driver I lovingly borrowed this code from seems to have fallback
> logic, basically picking the first interrupt if it couldn't find one
> named "INT1". I was told early on not to do this that way, so in my
> case the interrupt-names would be required (but not for the existing
> driver because of this fallback).
>=20
> Should I make the requirement conditional just to my compatible
> strings?

Sure, sounds like a good idea to me.

--wintQjHsEd+E3xkx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag9mJwAKCRB4tDGHoIJi
0uWgAP96xINoifZYfEqvlm8mnXkLoTpcNpRpexPVhkPesyjNSgEAyT1KnP4I+z5d
not7x1APCxb9+VXz2wgU/dZA0O48bAo=
=yomg
-----END PGP SIGNATURE-----

--wintQjHsEd+E3xkx--

