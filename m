Return-Path: <devicetree+bounces-306417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0pYfAlhbIGpg1wAAu9opvQ
	(envelope-from <devicetree+bounces-306417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:50:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D25639EB0
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 18:50:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cPFnGYX6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306417-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306417-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E8D930D6DC4
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 16:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A710835DA64;
	Wed,  3 Jun 2026 16:17:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C6B3E5564
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 16:17:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780503441; cv=none; b=SwGiOE7jx0VLalVoMkNMNpB/35bc39jRQWnO5yC67FzZRk7P+7+g0PYmgYqprAsjEpZm0o8h7U1VYKYDxIe8ETlTVGj4irqqxklMtdoYVg+HuPAE9lXBZQC40fRKvmsGGZ+tiE/ix3NQdY7h2tC1sr336QR5yfBR8PiHDscuKxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780503441; c=relaxed/simple;
	bh=STmgb4eCzuj3QUyDrbNGukfTitiuFEoTNqL7diLYpq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jxgMYdya31+oisV9ca0ArCv5DgRyhKcxvRRvTgBwU8zER7qVar4Sswl5S0+F0Pt7N3yA/hfMZIx92xlgNQrSYrSOF9kM5Wle6DJGrsruys6QC7L9X91oQXOQphdfNDzQVJThFiRJ9mXN03IGXqHEUWyjqeH04ZqctvH8b6EQwEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPFnGYX6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4D2D1F00893;
	Wed,  3 Jun 2026 16:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780503440;
	bh=STmgb4eCzuj3QUyDrbNGukfTitiuFEoTNqL7diLYpq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cPFnGYX6kVV8XG6BLqIDkBOCao6GfzWE+EYujXj0F9bPVTufgayrsW6wml0EvBTuq
	 lPb05VYOm4DgU3piQv6n+E8SHaWec9nrD6rvja3+QRgX4JLklmHr+xL6vrkDprZja/
	 lab+aaZx8TsP7JPoXxkenEOgeczeOcXmHCp8puokw+E2G9ln35YAzQl3e/Sn2bSf0X
	 GhEfRUM4kZSzAlQ+/zsHeWMTTHbK2ht0wGQ+cm5+ic5X7A2p0U2vChiq4vVy3qbqH7
	 VgdaKwq52yvE4NyvZwST0GumYyIr9qe2dXyG1AINQ57m1P2S/ahHOBGSKGzJJwTa30
	 qDYWaP5mgxerg==
Date: Wed, 3 Jun 2026 17:17:15 +0100
From: Conor Dooley <conor@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Drew Fustini <fustini@kernel.org>, Anup Patel <anup@brainfault.org>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 5/7] dt-bindings: riscv: add Smrnmi extension description
Message-ID: <20260603-deviate-steadier-9ff6a23c5e57@spud>
References: <20260603074222.593243-1-joel@jms.id.au>
 <20260603074222.593243-6-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yNASxG9BLdH4uAVz"
Content-Disposition: inline
In-Reply-To: <20260603074222.593243-6-joel@jms.id.au>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:fustini@kernel.org,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06D25639EB0


--yNASxG9BLdH4uAVz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--yNASxG9BLdH4uAVz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiBTiwAKCRB4tDGHoIJi
0kbSAP9kgT70mva4v9V2xH/K4hakrtleDSRqYCgMGRnprAgEIQEAr9YGD/YVGhxM
pOWj8Tps+sLahUnos02ypNnRWaqJ5Qs=
=2eh+
-----END PGP SIGNATURE-----

--yNASxG9BLdH4uAVz--

