Return-Path: <devicetree+bounces-287365-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LnNFQtf3mn+CQAAu9opvQ
	(envelope-from <devicetree+bounces-287365-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 17:36:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A83F73FBF63
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 17:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D2623035253
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 15:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B7313EAC67;
	Tue, 14 Apr 2026 15:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X44qJim7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267821DF254;
	Tue, 14 Apr 2026 15:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776180886; cv=none; b=nKtdP8NUjOAT+Z3bdJO4jXz5OaVEamOm4XI4dCsmxTfrVEI1Td1FbX487Iu8F6SmV3T4ZxTAajW7LHNB8Rtw6kaDFuDrY1aet5KnCd7BJbu8vObKkWfwmRKd3KzXMzdZkrRR5EKV+AyzrZxU4DyRx9g4xxyB9R0VB4QQIWkkiyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776180886; c=relaxed/simple;
	bh=Czyoq/4w8FJDPYX2xolC4H2DgK5T9oi5zuXZ7QHhSq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=saxnbXAZ3aecUUzdytgawq3Ql5o98SlWb1CnMn6dJNBiUbN7owb0AziLnwxluYB3wODsvbiCM3TYrM4VgGf0lem0u1z60K7IcoVoC1brF6dVmVckyPFjLYIpFketVvp3tF2kOJt2VDcyFyRZGpU3rMB5Om26ZBOX4h0AUSunZ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X44qJim7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E1DAC19425;
	Tue, 14 Apr 2026 15:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776180885;
	bh=Czyoq/4w8FJDPYX2xolC4H2DgK5T9oi5zuXZ7QHhSq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X44qJim7+ZYCSQ2m2jKv91VAXK9ca/h2BJ8KdVGQvkFMXL4eL/HyM0NrGXo2p6cnW
	 2dR2mZ6GoS4VBHsjDSd8KDuQZlnPoDkwtXK1QQ4flV3M/zRSrFSmPapfWSX2Vsl6cP
	 V0zuv5ZgKBV59V+IvUdJVXqWI1NoQRO+se2iT/8rRwyyzKDiuyooguNRshwnd3fPH2
	 rw0rTLsw/tZ9x6LMEF1BuV7mQhICfX/brjo6wdf0qzMt+/40HV2GZXusO9KS3kUFJI
	 Y5kBc3D6V3ByIVdE4TNpsVgbvHbSJ8YFNhJ5LM+YUVCTtKWaPZP2ybqPNuvVtA9f5T
	 Ioi2hIei52EXQ==
Date: Tue, 14 Apr 2026 16:34:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Ariana.Lazar@microchip.com
Cc: dlechner@baylibre.com, nuno.sa@analog.com, Conor.Dooley@microchip.com,
	Jonathan.Cameron@huawei.com, robh@kernel.org, jic23@kernel.org,
	andy@kernel.org, krzk+dt@kernel.org, linux-iio@vger.kernel.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: add support for Microchip
 MCP48FEB02 to MCP47FEB02
Message-ID: <20260414-undated-chug-0526be77c0a7@spud>
References: <20260403-mcp47feb02-fix2-v1-0-da60c773550e@microchip.com>
 <20260403-mcp47feb02-fix2-v1-1-da60c773550e@microchip.com>
 <20260403-speed-childless-1360de358229@spud>
 <dd516b8155d9e782855f5e06e2260d57b596184b.camel@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8ejywMB/GX8zVWv/"
Content-Disposition: inline
In-Reply-To: <dd516b8155d9e782855f5e06e2260d57b596184b.camel@microchip.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287365-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A83F73FBF63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--8ejywMB/GX8zVWv/
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2026 at 01:39:32PM +0000, Ariana.Lazar@microchip.com wrote:
> Hi Conor,
>=20
> > > =A0
> > > =A0patternProperties:
> > > @@ -161,8 +222,7 @@ patternProperties:
> > > =A0=A0=A0=A0 properties:
> > > =A0=A0=A0=A0=A0=A0 reg:
> > > =A0=A0=A0=A0=A0=A0=A0=A0 description: The channel number.
> > > -=A0=A0=A0=A0=A0=A0=A0 minItems: 1
> > > -=A0=A0=A0=A0=A0=A0=A0 maxItems: 8
> > > +=A0=A0=A0=A0=A0=A0=A0 maxItems: 1
> >=20
> > Why is this changing? Was it originally a mistake and what you wanted
> > was a max of 8 but only one entry?
> >=20
> > >=20
>=20
>=20
> Thank you for the review.
>=20
> It was a mistake I missed in the devicetree
> binding for the mcp47feb02 driver. The property contains a single
> integer representing the channel number (0-7), as you said.
>=20
> Should I send a fix for the mcp47feb02 binding first or can I continue
> to rewrite/split mcp47feb02 driver into the core module with I2C
> protocol file and include this binding fix there too?

Do it separately please with a fixes tag and all that jazz.

--8ejywMB/GX8zVWv/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCad5ejQAKCRB4tDGHoIJi
0saKAP4jakD671ZIMhhzR6r+TLgWqrVtvDaL53KOFzmlRgwN6gD/dMmj+Oq5wwSz
WDISMYpXYElsN3xUo6mz+uAGwChnJw0=
=sSmD
-----END PGP SIGNATURE-----

--8ejywMB/GX8zVWv/--

