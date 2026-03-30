Return-Path: <devicetree+bounces-282546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAngLKySymma+AUAu9opvQ
	(envelope-from <devicetree+bounces-282546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 17:11:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1830B35D8B4
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 17:11:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B176C301A020
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 15:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 429B3296BD3;
	Mon, 30 Mar 2026 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVIKelLB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED9733344A;
	Mon, 30 Mar 2026 15:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774883333; cv=none; b=rlADhHlR51LZuInmjdY7hSc3K5H8d9TmwHzYuWfOSWRseta2DBHvQ0qO9zVpIT21Hm38gVsta+AagkNTIumaicvodLxMoyFbqT5ciUMBhL/eFxfuLRSlQ8l1d+RzSYM+pZpDxgcWCRNylkUd3VD6067G7OrOQut4gPteHJ26ups=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774883333; c=relaxed/simple;
	bh=bNIY/KxBqgshoOeIzFQ43US3IKEEmyG46QSMOR89rn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MidywEbJFMcpxml/stM9s0f8OSI2tQtHoZVjy2owLHHm6t2fEAo2ri13JppjkUiTHCmahU+WD2ns0syuDXDq7+l1t+m8aQRvrll2JKy9UlUd+/fA+TMwufMr5URg02iPiNlfY0SkMBnS+pECaqMVJBDctdjafBPjPyoP+Yui+l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVIKelLB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FE3BC4CEF7;
	Mon, 30 Mar 2026 15:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774883332;
	bh=bNIY/KxBqgshoOeIzFQ43US3IKEEmyG46QSMOR89rn8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XVIKelLBNH2G4RIIHZWvCh5a1AFLVJpT12KHMsl6oas/uJ76CGydUk4NVg1He1A1F
	 GpmaATTVk1+0KrYnhwR6Xe3WPA49KY2Ft7gO+15o8l/m5OjlLvmsT7m/GbiQMxq38t
	 /qPeM4CYJeokRMbbWOBQtLrLZaiOfo3AvHZG58aXSxqQ76gkp+faUXUfFp2+3nwSRT
	 DTQZ2woU0/gqih08j0aVAgo0dRXgZ8wz1BQJWDco6Gg0//pWj1SLFOMQjjAQKVpxl3
	 YJkXv3VSHAiQg4/P/hKcn/UMrDemX/8DSR2Y7CY/L1DG3zrWW1TbcQhttqNvydU3hm
	 D3rjdDjnQ/DSw==
Date: Mon, 30 Mar 2026 16:08:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/4] ASoC: Add support for GPIOs driven amplifiers
Message-ID: <4daaa17d-5673-4efa-92ce-4f2ce87eb812@sirena.org.uk>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EOR3bLyGDtOCyecf"
Content-Disposition: inline
In-Reply-To: <20260330101610.57942-1-herve.codina@bootlin.com>
X-Cookie: HUGH BEAUMONT died in 1982!!
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282546-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,csgroup.eu,bootlin.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 1830B35D8B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--EOR3bLyGDtOCyecf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 30, 2026 at 12:16:04PM +0200, Herve Codina wrote:
> On some embedded system boards, audio amplifiers are designed using
> discrete components such as op-amp, several resistors and switches to
> either adjust the gain (switching resistors) or fully switch the
> audio signal path (mute and/or bypass features).
>=20
> Those switches are usually driven by simple GPIOs.

This sounds a lot like simple-amplifier.c?

--EOR3bLyGDtOCyecf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnKkf4ACgkQJNaLcl1U
h9BJVwf8DGBA6i4iG/IhtLwjyzLc9YE7p6HxA8tfOMCr9TZYHlAiGkd/XgxwTtHy
/DmslYhIG/p3MDrD9lgH0kR4X9ulb1r5DhdqdjDyY83sglDCm6m98qIxKoi+gYZ7
4eG8D33RSqT75yK3qnvSCAuQT01LLzm/TEtrO9pE/8MsC3QfmsBDdBmIV2seUiH3
uD9iIHzv3v2cOnByw94PT2gjQNI4KjM1IqkvLeuHTqsn6zW6kZGZzKngMySls5e/
A9NT6iJCDAZnly25MQGgdAyalv0XI/rWEggVNSNtGuOCkYRChqxHoMVH8wbtfreY
EL+P0F5VAN4UoCRYXLXlftT9X+TT7Q==
=DYV/
-----END PGP SIGNATURE-----

--EOR3bLyGDtOCyecf--

