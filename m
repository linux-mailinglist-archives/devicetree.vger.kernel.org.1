Return-Path: <devicetree+bounces-316507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yaHbOYZzQWrVqwkAu9opvQ
	(envelope-from <devicetree+bounces-316507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:18:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 455DA6D4C08
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:18:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C2ae3eBf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316507-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316507-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71D873004634
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E95822FFFB8;
	Sun, 28 Jun 2026 19:16:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E890E2135C5;
	Sun, 28 Jun 2026 19:16:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674197; cv=none; b=uj2m9kwfFPiI4Fas4Iu0xRz48O/MWyZkLqf049lzCRkuNmLhjS1rmEfDshX9Ex+HMggvmWXC7xZ2qfATttemcBOgdYBLKDPEVlb98GBzvnjx4/TFnGqZDOmeXYHXFGRVoHdB9py04MuKZfC23BTbnYhEkeKEU5febep20/+IMp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674197; c=relaxed/simple;
	bh=U1Ihsxsncd8sVIP3LrtRXPQYbqoHdKSUCGHZfn3SpPc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZLmdFJhC/TFQssW62t3ZejEy7JT5L0TPz0NrueyrPyUeMLqKZtzhXG45jgYAjDPjg2ZPgw3hrllDxb1JXQBEWjYBCvM26ovKqFcWiBRCiqqDv8S0/bQsgej2j+nFQxEv1TV65KPxnAu4t4uRlgRQAOtDot6xPtydYorTct8POpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2ae3eBf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AE6B1F000E9;
	Sun, 28 Jun 2026 19:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782674196;
	bh=qvpvocvyj4fxsxiefiLqARhfbYvZgFEL9le63BHBvnQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=C2ae3eBfVmgGGX9uqhMuFKnSt1tBjoe1AhfpL7hkYmLJaqBjavRIoZBu1xb4TIMMB
	 RK0woMP2Go62qrj6zNYYR7ZQ5xeJzBL1iy8p90UAkkNm6EE5r3Brju7yQFArqrlcov
	 jOjtUCEN892DmZAlOKv2P3gNe7TL9Ep3KYcPhSJlXbNBU9TvLTA7tS5/L+c/pkMWKR
	 uDpwOp+6XymLJC0+gRYkDfnZvr2vclPP9py5hzsdSusaFQte85StTv0zqzhMXS6Ttg
	 DJceRGYl4S2+IP2aj6S7+1W3wymU7TIbkRDMaKp9i76dxbLuw3gecisiZWuR/XqQYz
	 rGL82Gy1C9tjQ==
Date: Sun, 28 Jun 2026 20:16:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linusw@kernel.org, linux-bluetooth@vger.kernel.org,
	linux-kernel@vger.kernel.org, luiz.dentz@gmail.com,
	marcel@holtmann.org, robh@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: bluetooth: broadcom: add BCM43752
Message-ID: <20260628-junkyard-reseller-7250dcf60db4@spud>
References: <20260628095500.29810-2-hugo@whynothugo.nl>
 <20260628164915.19580-2-hugo@whynothugo.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SQAUDHPQn9kmhnny"
Content-Disposition: inline
In-Reply-To: <20260628164915.19580-2-hugo@whynothugo.nl>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316507-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hugo@whynothugo.nl,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:luiz.dentz@gmail.com,m:marcel@holtmann.org,m:robh@kernel.org,m:conor@kernel.org,m:krzk@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com,holtmann.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,spud:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 455DA6D4C08

--SQAUDHPQn9kmhnny
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 28, 2026 at 06:49:13PM +0200, Hugo Osvaldo Barrera wrote:
> On Sun, 28 Jun 2026, at 13:57, bluez.test.bot@gmail.com wrote:
> > [=E2=80=A6]
> > ##############################
> > Test: SubjectPrefix - FAIL
> > Desc: Check subject contains "Bluetooth" prefix
> > Output:
> > "Bluetooth: " prefix is not specified in the subject
>=20
> I followed the style of previous patches introducing
> similar changes to this same file. Should I include
> this prefix for this patch too?
>=20
> > ##############################
> > Test: TestRunner_mgmt-tester - FAIL
> > Desc: Run mgmt-tester with test-runner
> > Output:
> > Total: 494, Passed: 489 (99.0%), Failed: 1, Not Run: 4
> >
> > Failed Test Cases
> > Read Exp Feature - Success                           Failed       0.257=
 seconds
>=20
> I can't find any reference of "mgmt-tester" anywhere
> in the repo. Is this failure unrelated to my changes?

No idea what this is, but it's unlikely to be anything to do with a
dt-binding.

--SQAUDHPQn9kmhnny
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakFzEAAKCRB4tDGHoIJi
0pK0AP93johwOiEewzqceYujM3mJPF7C91cjaQ+2IAeDkXGINgEA2zheqql8uyXM
5MLp4sD/8P43LByf2rYtCjpQckSwHAg=
=BS3/
-----END PGP SIGNATURE-----

--SQAUDHPQn9kmhnny--

