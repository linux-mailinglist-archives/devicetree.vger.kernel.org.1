Return-Path: <devicetree+bounces-299542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDsnBCg5C2qWEwUAu9opvQ
	(envelope-from <devicetree+bounces-299542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:07:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 657D9570982
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 18:07:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DA15300C025
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 16:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624F0480953;
	Mon, 18 May 2026 16:00:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from leonov.paulk.fr (leonov.paulk.fr [185.233.101.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D313FADE0
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 16:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.233.101.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779120015; cv=none; b=fAuLgn1PV2RNMZOZ6MrXQBq0SUZuoaDd6um0iyA06LRM24P9knwCa6astgwE2VD+JzHGYCB2LJgkl7Hut6uCjBuyQLhWmQLty4SQfsxhdOWdMa5v+1DJxq2edrGWzRp/ygN+EStZ3QLyN0yul8ddZi+OC13a5y4Cw/v2eRIT9BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779120015; c=relaxed/simple;
	bh=8jG6fyV1k1+GQi65L6jjjdziyvONJzX5Tsgd3tXgyN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B2yvg2Zn2fq7bsUrVhSgPXFoKGr1Jth5Hn3ugBsKNTQSvyDQGDe/nZF5Z7khIPacHP3Gw1+69g0VRLZ2EWD/EUXA5qVe4Fr/UFF24zB0bc9dN92aTRxwHlPC+UaFvVfLM2X3FT3BDgEdVbVbkrroBB9iR5bfbN91EuegGZ4bMKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io; spf=pass smtp.mailfrom=sys-base.io; arc=none smtp.client-ip=185.233.101.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sys-base.io
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id B63291F8004A
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 16:00:01 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id 98250B40803; Mon, 18 May 2026 16:00:00 +0000 (UTC)
X-Spam-Level: 
Received: from collins (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id D6588B40800;
	Mon, 18 May 2026 15:59:59 +0000 (UTC)
Date: Mon, 18 May 2026 17:59:57 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: sashiko-reviews@lists.linux.dev
Cc: linux-sunxi@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v9 2/9] dt-bindings: media: sun6i-a31-isp: Add optional
 interconnect properties
Message-ID: <ags3fdMHlt2AyRMp@collins>
References: <20260518153339.619947-3-paulk@sys-base.io>
 <20260518155006.12589C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MgUXvio5QiWlCs6F"
Content-Disposition: inline
In-Reply-To: <20260518155006.12589C2BCB7@smtp.kernel.org>
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299542-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[sys-base.io];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sys-base.io:url,sys-base.io:email,paulk.fr:url]
X-Rspamd-Queue-Id: 657D9570982
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--MgUXvio5QiWlCs6F
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Le Mon 18 May 26, 15:50, sashiko-bot@kernel.org a =C3=A9crit :
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] The commit message body incorrectly refers to the 'sun6i-a31-c=
si' device instead of the 'sun6i-a31-isp' device.
> --
>=20
> commit 816ee95ed6c916a2cdd9b96a5a6e283ad0e7d42e
> Author: Paul Kocialkowski <paulk@sys-base.io>
>=20
> dt-bindings: media: sun6i-a31-isp: Add optional interconnect properties
>=20
> This commit updates the allwinner,sun6i-a31-isp device tree binding by ad=
ding
> optional interconnect and interconnect-names properties.
>=20
> > An interconnect can be attached to the sun6i-a31-csi device, which is
> > useful to attach the dma memory offset. Add related properties.
>=20
> This isn't a bug, but should the commit message body refer to the
> sun6i-a31-isp device instead of the sun6i-a31-csi device?=20
>=20
> The patch modifies the allwinner,sun6i-a31-isp.yaml binding and the commit
> title correctly indicates sun6i-a31-isp.

Yes that is true. Maybe it can be fixed while applying, or just ignored.
I don't think the level of confusion is worth sending a v10 just for
this.

Paul

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--MgUXvio5QiWlCs6F
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmoLN30ACgkQhP3B6o/u
lQwpnw//amZlWD1gv1yDIZMTgRXXrUNI0T14l9wwXy5NNw9xeGyEJqpWD9Le1/Mn
xrr0mT5ARIYRiSL2L12NDtYS655/GGsIlIWGavZ9G7oEAWTe5WTOF75C8b9o8++2
OwKI+bOE0nZOT2KcpXuk6zy1eaa1nAI2p0U0K8mOMGcBbBt+choWxTV9lnYDLEiZ
XZ03Do1F4BiUpYf4LvNwDWf1M+Op36dOeRSj2H3WCM0vCE6XQY+Ilz4865kz2SPv
5f4+GvHXmmWUIHI17n3yUcUU7JSA8epGttPWtr5BKnJmukNxzk9jiB/pZsltDH5f
jAS5N0UYUUPv7Ocp+MJRCLSX256tqTdZw63xxaPDw7dnI5hvpfHi+N8H/YV1MWoo
V3B4NwdX5jxDFwa6LSMfqnXub1T9dSkrTSd86H45WZ4YThfcJ5+5BXmqadF4am+E
G7vMGvFbyej/ALAmG9HJVLck8aOgm2gvRzNr5NdbFXyQJ38rBelBwPYK0uPpI1ri
podfHtNjZNipiM77nIlAEZor1OAPIIQAubGBCL+bfLz/f7sLN1ZQlDEopFDebryx
B4aH3FLmN7tWuL7LpKBQ9ET0BDbpkMpVENk5CvYDFlvusLD144k4kkPjvjG+2iXm
kjIceCHCSTMXsYFbLi/+HycRcmxNCjKxLBNcO75m+9S0fOAeQUw=
=k9sp
-----END PGP SIGNATURE-----

--MgUXvio5QiWlCs6F--

