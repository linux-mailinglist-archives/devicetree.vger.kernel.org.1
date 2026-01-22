Return-Path: <devicetree+bounces-258613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCz6CO1vcmlpkwAAu9opvQ
	(envelope-from <devicetree+bounces-258613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:43:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC366C9FE
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 19:43:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1523301FF92
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 18:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 405DA37AA94;
	Thu, 22 Jan 2026 18:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKWHi0Nl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A2337D103;
	Thu, 22 Jan 2026 18:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769107295; cv=none; b=cKB4Wo64N6XqlwXaRfYfjfEmWyJPdC31d1Of4yzjwbsVJ/mxK30yob06+tjOvTGrXpUOdE7gzutMOTgw00PsLZheFg+xKmGxwPT50NFyY5/uvpdrVixaRDICOUrvFeSjtsIrS6tKF7BlI0PwMn2gB1oja2ywjDzeHkKRei9bKuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769107295; c=relaxed/simple;
	bh=fy9bVDkRFNM90P08kAqq9YB+nPDe+gAFEszJMJGA9qY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T/LPyDns66O9Nc5Xz2WXved6Bj1pFXCrWOKpTd9pgAob9gwNutpJZzFdNmIkpopRYzvAWExVDU7lQps79c4/kahLIVTQFeycNt91/hl5RjWw89JQzEq0q0Sm4cxLjSYukPCOEAIR1sMUp5b+kRZyjWqwTNQhmL+apPRZaIBGYVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKWHi0Nl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77A22C116C6;
	Thu, 22 Jan 2026 18:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769107293;
	bh=fy9bVDkRFNM90P08kAqq9YB+nPDe+gAFEszJMJGA9qY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YKWHi0NlLOZ2YcebAthzQtiU7tkZbTKIgE1+rsmuxvt8dKutYnhMr8FAigxc3A0kH
	 Xm53zKGgYzSQPfW8TccPHBnUr2PkETJzPZ8KHMzEYOIHy09+NGLcxWI5PGEN2gXiNE
	 d+IdvK4bxOuUjG4k5WSXAh4N9h9gaTrSTZtLNaddFpbcmmt1gel4MjMLPvDSX763Uo
	 0kGq+8YlVv15YRwYHRcEYLP2IG9Bm+02/US5drti6uW3ytnWd6e7JQL9YRsZL78KHt
	 tYFUB6KEzgkvhPibL55nMzC/Zd6BoXuxCK+BBPIH6vNllIeVzygMgmmKFVmOEPONDb
	 VI9ypX2sOwEjw==
Date: Thu, 22 Jan 2026 18:41:29 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
Message-ID: <20260122-tidbit-simplify-000698476986@spud>
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NaIco8W6Nw8mDdn9"
Content-Disposition: inline
In-Reply-To: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258613-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7CC366C9FE
X-Rspamd-Action: no action


--NaIco8W6Nw8mDdn9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 22, 2026 at 04:23:04PM +0000, Akhila YS wrote:
> Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
> Controller binding to YAML format.
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--NaIco8W6Nw8mDdn9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXJvWQAKCRB4tDGHoIJi
0suAAQCTkaLmsTPQcyTO4pTuIklQEDHf71fEHmdcGdb5EMde5wD/W4fuNRYAIGOA
rnObI5gO0dPpd1Iv+p+n3y8g5xt7PgM=
=0Mnz
-----END PGP SIGNATURE-----

--NaIco8W6Nw8mDdn9--

