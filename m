Return-Path: <devicetree+bounces-303117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJWRHJPUFWrRcgcAu9opvQ
	(envelope-from <devicetree+bounces-303117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 19:12:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBB65DA69A
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 19:12:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0832F3197349
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 16:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19CD33FCB29;
	Tue, 26 May 2026 16:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ot0gjLdf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C2E3FB07B;
	Tue, 26 May 2026 16:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779813839; cv=none; b=tyTLWfDY9iErAmpxXnJCGyOZteX6ufdwpiMf3G75vwKvTRdl7B+kF1pDc2f8iPHYf7DKNwfrS/OtDYdgGIBWHmtldVeU1oZa6E5mrLGaVQck06z8KqTM8wQ9/JoboYQyd2UUrHAg3LWjT7bwcUWyvV2Q+ffDaoa1yTwK/K064yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779813839; c=relaxed/simple;
	bh=4iGxpqreUMKZqfZJta2HzBWwW9Zct0UhY51b8JS9hUA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CV5nH4geLishUzzN3uMwKNsOPS9VQzauUKkGhY5jTyYcG21P+pa+ZIpkoGstmc4khvNvUWSvBsSY4fPLSgChkd1isvrpfIIC8yXkgfxAOJm7U773FRlf5DmqFOOsRvtnSJs+12PfRYL45u8BBWiF4YYQur2DFIT61VyCe2g67u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ot0gjLdf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1C461F000E9;
	Tue, 26 May 2026 16:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779813837;
	bh=4iGxpqreUMKZqfZJta2HzBWwW9Zct0UhY51b8JS9hUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ot0gjLdfkX6K9J6JjAfXoCdJ9wZ3mqd9Gb19fryXvdC1y0Z2W6K1SZRMOJvaup6aw
	 6GbBEV5K8uOJFZwtJkBuYgT+KnDc71Coe+s/uiI9hmVpx3U+QLfcXX/S9qRSWNTRRb
	 uiTDwT2NRcxcr2otoOZ0fpZOk7QMLBAPAvsBwn8fJHru47dQEsTo38eHOKdkYrOYei
	 +0fPTeZWUjgk5hNnwAR2RsGNzSVHGnuZUYgw034XF9rXXQh60iZq2eCdXErm2X6q1p
	 cehN01AesPINd0bBQsdJTOpDg2vrDsVFIQGBgHhVNzMqQPBFQ0y4cZCY3X4XtQgiaa
	 Q+yIK4dTUK4Xg==
Date: Tue, 26 May 2026 17:43:53 +0100
From: Conor Dooley <conor@kernel.org>
To: "Jose A. Perez de Azpillaga" <azpijr@gmail.com>
Cc: linux-iio@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: light: add Broadcom APDS9999
Message-ID: <20260526-deceased-divisibly-1c76d5208d79@spud>
References: <cover.1779781224.git.azpijr@gmail.com>
 <2da5163825ceb794c73c9aebb5cadf6ab3728097.1779781224.git.azpijr@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RmfARgWHh0ZSQRkS"
Content-Disposition: inline
In-Reply-To: <2da5163825ceb794c73c9aebb5cadf6ab3728097.1779781224.git.azpijr@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303117-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Queue-Id: DEBB65DA69A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--RmfARgWHh0ZSQRkS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 26, 2026 at 09:55:15AM +0200, Jose A. Perez de Azpillaga wrote:
> Add Device Tree binding for the Broadcom APDS9999 ambient light
> and proximity sensor. A separate binding file is used rather
> than merging with avago,apds9300.yaml because the APDS9999
> has an additional vcsel-supply for the VCSEL.
>=20
> The APDS9999 features individual R, G, B, and IR channels with
> a green channel that uses optical coating to approximate the
> human eye spectral response for ALS/lux measurements. Calibrated
> RGB color sensing is not yet implemented in the driver.
>=20
> Signed-off-by: Jose A. Perez de Azpillaga <azpijr@gmail.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--RmfARgWHh0ZSQRkS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahXNyQAKCRB4tDGHoIJi
0qhGAQDbYJ6pvXiznURbTsN6RQf2dhiJeZZTPJ5szCiA12A6SQEAoStqXaokjbqX
EivfbXXKxWPHKVN7FCR3hZg64SOZlg8=
=/aVD
-----END PGP SIGNATURE-----

--RmfARgWHh0ZSQRkS--

