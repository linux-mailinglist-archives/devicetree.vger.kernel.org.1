Return-Path: <devicetree+bounces-276750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKcQDFp1uWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:38:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6B12AD274
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EA66309908D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC1853EAC8E;
	Tue, 17 Mar 2026 15:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNP+TqNk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9878A3E3C4D;
	Tue, 17 Mar 2026 15:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773761805; cv=none; b=brpyerEOLGeK0L1XBnFvbZvGYu7SrCYq0ghfGxYgU4S3GlEcQLhG4XshoeHMe5LkCsCwcTZjDizZbx2UZLXLEDW/DuzdLyTMxshhCxP0bVDVfy4bWjd8l+shLSOTnNDxoRVyx6DsuLDJ7dgFN0npS5dq1JFxrKPJ3jDbkQXbe7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773761805; c=relaxed/simple;
	bh=nRgv3CkjH8mSrnQWc47EFIpfxM4tVAxAbKyAkUqrMeU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GabCe6/080uyR6VtboHU7QTnCsUiJuAuJayB2MvSxzJ6ItH/KPsxeKSVVkTgEDh2CzynJTeLItgyQZtLtgBKVUF5oieGp1GEsMBSNtC4bK5uvDq7G+1kKPF18QF+UKtmIfg3OV1kfVbydzXyQQlD0lSrO6kPkBNSm8GtJPHU1rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNP+TqNk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA355C4CEF7;
	Tue, 17 Mar 2026 15:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773761805;
	bh=nRgv3CkjH8mSrnQWc47EFIpfxM4tVAxAbKyAkUqrMeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FNP+TqNkYKnIdDLyenctyvFqrelrFiNV0GBXRbHh1te9xfxt/OtczGMNE3bLDCHmz
	 gKiIgjS4CIdiEjMY1fqrhidPju0Ap2lJm3Tzl87zRThsm97GPL/KFVkcjP5bav4xaF
	 Q9FWvcYZJhERKl2JiGfF4zRN6hY82SCu/UkoG7B0lWMVXLdWanl0vuwWy2cK5TjQLE
	 DXmFGkAPscsOX7EmQzrd80SPWvFtMLixtKfTYLsTYOQ1bfHQz00O7C2TUTdyGszB9n
	 Q5rrxdVYbUl4qfGaeFGXhtDJNQtTeocK0vuN+m3BiWZzqCHSdS5qoPqp+DwKWwTAas
	 qb2/udHwxAf3A==
Date: Tue, 17 Mar 2026 15:36:40 +0000
From: Mark Brown <broonie@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: regulator: fix typos in regulator-uv-*
 descriptions
Message-ID: <9b3e9b15-ee4b-402c-84f9-0de05243b209@sirena.org.uk>
References: <20260317152357.3473584-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SzLKkDhqfP23zfeD"
Content-Disposition: inline
In-Reply-To: <20260317152357.3473584-1-hugo@hugovil.com>
X-Cookie: Must be over 18.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276750-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,dimonoff.com,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid,dimonoff.com:email]
X-Rspamd-Queue-Id: 9D6B12AD274
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--SzLKkDhqfP23zfeD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 17, 2026 at 11:23:39AM -0400, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>=20
> Remove word "over".

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--SzLKkDhqfP23zfeD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm5dQgACgkQJNaLcl1U
h9AxDAf/ZSsNOG3eaiDPEqVsztKA87Th/bIV1+i4uJMl3QBh33lL+zxGWPHum6UJ
b29w4uS8dI5dXXcAAQ0UMOcslnnuhFDgCI8XvGqMbR60Jo6OfpcOVs0G9ZKGDSgY
PHygabWDot5UJYYFm2g2r9t3ZaoHm/FcL40/3xUcKno+bhgN0mZjFNhGeZgyxJWq
yBqMv5HAfqH9zvmXa+smytf1hXT4CBjZQBxfMciyvWYig+FE4F9uX9yO1YN+jRAv
PsXhxWnFibpPmRgG7E0JF9z8mhlNQFiygb4op8zByhNdTlgh7nC+NFEwDHrVCEBY
R/4z4hXKrLDXNMFnd4eE/3OqqzjFyg==
=DS+L
-----END PGP SIGNATURE-----

--SzLKkDhqfP23zfeD--

