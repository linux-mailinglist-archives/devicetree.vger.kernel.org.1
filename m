Return-Path: <devicetree+bounces-310436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /OvtC1upKmpaugMAu9opvQ
	(envelope-from <devicetree+bounces-310436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:26:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA437671CF8
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 14:26:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=FrVFXRtf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310436-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310436-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 169C7300AB0C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 12:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D7B331EBF;
	Thu, 11 Jun 2026 12:26:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820112F8E9D
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 12:25:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781180761; cv=none; b=LY4e87TgCTnjmiF6A6XVnTAPaIKWrdaUtCejwVC37W3TcqS6QyF5vgG5BeGUzL3VBCo/3FRUMCBBqa9iGbqzeZf5WITBUceP6vhjf9UJ4/8QQwt4SIZ8STxLu+QFqqwcyi/3BycGVtK2eZF6XbL06tWQa7rnwAlTVP1to4J9aoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781180761; c=relaxed/simple;
	bh=2y9y5GgH737cWdDW9MOPzFlwCufmt62EGuirBI6tVa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zldqz7i5tg39gErAHjUVu3EO5RtzMkE+8wy7zO/qkfWvdHyRVsPklbnqFzF6vN0PK1kX2Luj4da21oYIfznjYs/iGutnjaOy1GKtKi3wUJtzZ6JvuMvq+eGpkayotbz+vYDepK1tkUc3SEepKjAy5N1e91NUXQg17JBGELhYz8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FrVFXRtf; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=2y9y
	5GgH737cWdDW9MOPzFlwCufmt62EGuirBI6tVa8=; b=FrVFXRtfaMutB4+9Zooe
	5rIfgazD6jxPD6iIgrbDoOMck2eUhfkbGNJySY23Mn6RqF6lEjNXU2mQsiS1/GCD
	x1EB6S2qjSzVrjC2nlygz0NOKLkJIIcjW7ClY6qDy6EU4OGuifp02D2FSZhspCVv
	Sd+5Nj4RRyis1An7plixFtHqKwXAokOof6uo1ahCNKmGKBBaeD2M5vSYvXeyoBxa
	l6UgHBzb6Azdgoww6N1zxuztmQwUNd9jYO3BZgvFmL57KQEtj39K2RCHKiczed4A
	DM0wNCsx1XP/Dpamcxb6Giji57c/xYLm46ErAhEo4HJ4bqh5CoNIshj1ksjxcteG
	8Q==
Received: (qmail 2112436 invoked from network); 11 Jun 2026 14:25:56 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jun 2026 14:25:56 +0200
X-UD-Smtp-Session: l3s3148p1@8s86dvlTQocujnvX
Date: Thu, 11 Jun 2026 14:25:55 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Peter Korsgaard <peter.korsgaard@barco.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: mux-gpio: name correct maintainer
Message-ID: <aiqpU-Mn0HswahCK@shikoro>
References: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VoBUupXxGIIzeo6g"
Content-Disposition: inline
In-Reply-To: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310436-lists,devicetree=lfdr.de,renesas];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-i2c@vger.kernel.org,m:peter.korsgaard@barco.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA437671CF8


--VoBUupXxGIIzeo6g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 11, 2026 at 02:20:53PM +0200, Wolfram Sang wrote:
> The YAML conversion added me as maintainer but I can't recall being
> asked nor do I want to maintain it. Add Peter as maintainer for the
> binding as he is maintainer of the driver.
>=20
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---

Peter, are you fine with this change? Sorry, forgot to put this in the
original mail.


--VoBUupXxGIIzeo6g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmoqqVAACgkQFA3kzBSg
KbY6tQ//SMlt9Gyv95+oCDADCAmnUcqlXOf+u4sBrf3ozvE8C8bH4Boin3Hdqj2y
C7YZzpClemiNycS4JGlpQRnlEJeYAxPvn9u1pTD35AvQ8VFxONGGGjlH1vpWDToq
JLcqpeAVVOddpiXD7N+Sqky6iNY8J9N9Ym23bj/qzcZPQvhYQeppf/Vjwo4JOoJ/
5nn0NSV+8E270XqEUD5oI+/PRcyMEIvQcScjEmo/fSdrOxcWWa99bw8DZOriT8MO
RoxT8scvFQcW4XLQPn9rHtUdNy7HVfpfqFkHW92YffpmSVooXbWeXyl/JBJVnjvb
uBu1ycbT2vk0K29Q+GOsF63khEa6aO1cnbG4Ijb82/SmAvgEd96Bb2QtZo5p4dtc
/xx9b3He6QYjZr6s8bGREntqGuidrEJN2b5uk/qHdB/5u5qGSTL4cpdYLRHveGsB
xHkUm3ZZ58jBCd4Rt/KAJ54uUTQAhfHcA8ikFHRK9EnrqUFGBiDiH5+TqH3y1h8P
jl8MdeWlArp8dkaJuDACxAekQwZN+cce/cBRh3W5xNbVne062GfO0c4DvZdGOWdR
kNULfbBpCHmkmyPzBHMAQHQQz/nTgZ/3R8Yl/sS/xsws3NH3/XpkJZIQhIEJV2ug
A8MJvWWVvC30jKvBzQgL0PQ1Gq2axuxlSzzCWrIT/y2IEMWzi+E=
=k40F
-----END PGP SIGNATURE-----

--VoBUupXxGIIzeo6g--

