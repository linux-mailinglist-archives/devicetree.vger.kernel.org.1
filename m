Return-Path: <devicetree+bounces-305834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1hKLFdZCH2o6jQAAu9opvQ
	(envelope-from <devicetree+bounces-305834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:53:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0776B631E8D
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:53:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=hAeuQM4x;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305834-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-305834-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F4DC303037F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 20:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44764395AE6;
	Tue,  2 Jun 2026 20:53:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2AB6380FF2
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 20:53:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780433616; cv=none; b=F70/BVIBgy1s1DaxU2o+vZ95laFBQmB98OCnk97JylcLGN7A5cbsO0OGpmw9wDQwUyLjhWLjb2a9Kfnm6rEQL79FJf6RPNnsbf9vztwvo+Gyz+wgE+yZ40NH+fPyI4E9Lqlziu+qWoe7Bibf6xDfFmpixwUBiifITvTP7SL7qPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780433616; c=relaxed/simple;
	bh=GG3yd9a/ofQvxgRx7PTZU6BVVGmdh7Cf50F3OjopV9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qMDpOkFfcX8GCOYQW4uxQANwb4+UbLccFTQKOinbSCIweBr9OH6tKDVbc6g/k++CCmgEUppVP5S6dKsSn3ulG/Vpa/Fq2fjmav+GcU5CtgiVRH7FtTGyylS2C0SXwRo6xgUfkMhiwvDzaqGrsaUmBveXddMLdkFRcKUK4tu77B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=hAeuQM4x; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=GG3y
	d9a/ofQvxgRx7PTZU6BVVGmdh7Cf50F3OjopV9Q=; b=hAeuQM4xm+KSg56kcXSl
	L0AtObz7ir3xfDpo0b+26uC19GQsbCBiHG50HQN0mPq2ghch1lnEHDnpwzlA+5zn
	asiwJ54xapW/vf2e2tJEijBowd5mzbqBlAbiLP1BH2tGmkrHi7CtYdHd7FgCQLAh
	YzdtND+y76FfoLvB5bgQOTS+hpRiO1fxIGxdli1arvqx+q+30JQqS00Bu8N5CMqQ
	3KabSkMfcaaz9WZtk8Nqfo0VAV5yhgsRTGJYJqOhOq3ulP5YlzFrYHNeq5C4nw5W
	V8U/yGD1RBdPiGUVbCmZ2NuRpth5ym/kW2tW94vsAJnYmQoa8Gj/uU9gqADZSpF1
	tQ==
Received: (qmail 3020695 invoked from network); 2 Jun 2026 22:53:31 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Jun 2026 22:53:31 +0200
X-UD-Smtp-Session: l3s3148p1@jAL2gEtTXpMujnv7
Date: Tue, 2 Jun 2026 22:53:30 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Claudiu Beznea <claudiu.beznea@kernel.org>
Cc: geert+renesas@glider.be, linusw@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com, claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: renesas: rzg3s-smarc-som: Enable I3C
Message-ID: <ah9Cypt70WLMYLEF@ninjato>
References: <20260528080439.615958-1-claudiu.beznea@kernel.org>
 <20260528080439.615958-8-claudiu.beznea@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lxJajlOGLMQkz4kx"
Content-Disposition: inline
In-Reply-To: <20260528080439.615958-8-claudiu.beznea@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:claudiu.beznea@kernel.org,m:geert+renesas@glider.be,m:linusw@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:claudiu.beznea@tuxon.dev,m:linux-renesas-soc@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:claudiu.beznea.uj@bp.renesas.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[sang-engineering.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-305834-lists,devicetree=lfdr.de,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[glider.be,kernel.org,gmail.com,bp.renesas.com,tuxon.dev,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ninjato:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sang-engineering.com:dkim,sang-engineering.com:from_mime,sang-engineering.com:email,renesas.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0776B631E8D


--lxJajlOGLMQkz4kx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 28, 2026 at 11:04:39AM +0300, Claudiu Beznea wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The Renesas RZ/G3S SMARC SoM board has a connector for I3C interface.
> Enable I3C.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>


--lxJajlOGLMQkz4kx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmofQsoACgkQFA3kzBSg
KbYY9BAApIlsHQkUMd81mi8lYST6dKvVcboNq6UEvMvJ5Zwz70YRw8SYioLhuGjr
sQ1VQ/TryoRGmkh80Qn2pO0rM3F/iwpHGC28CQhAbm3XoX6h5cC4v3LIj2Co3HLx
exOImd4qMtntzIoFHpmOhqekwiGmAum2gJcytoIyI7TrniXAEM0kTcMC4nb7Zk5g
KRFgoK4hW9M0aTaF7iexARkk1OK/vVB/smL3bRFuPaFzFvShYKdlZl/pxzBdmo0J
TaZHVWAlDHpDKrsaWgVYME3+UMci3QOC5OQHBmylgV/gqdfChxMEI+FbMZitu65P
HvxafQigU/a6InUo8hfBu87xA1nSEK3kXWtTUgnyoVI2pa5EYIm4Im5RREszoOUa
QoFrfiXZ5BUQxHbCBlHk4ngxsC9ak9kAv03m5hO00gITornj1x9uPwEs/zo7R20N
bO4J6IRiIQGKxcYDlJbJFzfJVx4mvRnzx6uL0R6+w8pMd0GX+MfZhybKO43nyuWU
ZxetzG3oxl6OdHauhNKQOYBb1d4qI1Zw5Wl4YW2m2CLEIhQpHgmRT4uDy1v10Qfx
CCYFbM6Hfv1tJIlJkxcdt9aL3qBbbh/e17OFrOoX0ZfU9moVlLW/Q9iuqJ3epXtZ
woJ9unaJgcZNIBHUFQESK9NJfqsoPIDYnAaO4tpbbndzEka00IM=
=VAsA
-----END PGP SIGNATURE-----

--lxJajlOGLMQkz4kx--

