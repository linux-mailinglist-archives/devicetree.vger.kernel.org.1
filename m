Return-Path: <devicetree+bounces-277789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGECDg36u2mzqwIAu9opvQ
	(envelope-from <devicetree+bounces-277789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:28:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C10F2CBFA7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:28:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 192E1308A15C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:28:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 794C43815E3;
	Thu, 19 Mar 2026 13:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAeGmcup"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B1920DE3;
	Thu, 19 Mar 2026 13:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773926922; cv=none; b=GWrUYZnpYUInGeO35AjkmEP8ntJ//0s4dhVXkqmLged5/FaFxDzaB3ElmxPBc7cR/B1a4kttpoZ/E0F5cFZO/bX1fNCkIQV4/F0yA8olL1zMrbSHwvgZxgVCbtGTDJsqek6H8sf8zWPuw1paxvYqT+LHGaOXbkzKCOz4XdQP3iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773926922; c=relaxed/simple;
	bh=qeRMOmBWoU+udjskCvznZb/F9IJh4w9Y760n/htxYqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NT86TwD/C+Dss50PqfH7xrAmt6IvG5SYj3W9uHFSXmayS6beRAaw/99QpRJ1nIixkZfuWju8GIweW8IB+D9ZfAmuHkJukPmGZoWXGncfZzJi+mTYzloRH3oU1b9Sb436cW3BcI6pdsJKrcBIqQbCqJDpGhEeHCrAFo2mvKyRFRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAeGmcup; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20593C19424;
	Thu, 19 Mar 2026 13:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773926922;
	bh=qeRMOmBWoU+udjskCvznZb/F9IJh4w9Y760n/htxYqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WAeGmcupqRVOK7ZepO6CxgpvecrhLQqtO/PzF2Cg+wtRgQP40UZKdictfYYwhZGUX
	 jY6tBP/DWVWdzKFSLHMSMKQup3cH6sPuyKGeMQBl8AhA52uHjyN4y3Yg4+YqydDS9C
	 teMf5dMkagMVOQ2/z75Wjn9MgqOBj1DCixnGpibzZCIqJ9AugKnOTSCrO9dziKuuPH
	 hoVd2BPHnzVwG3xwT+UFG+vNz4m2/gGORBH9eZahtdq5ew3azn2BpLlxQgmQEEkrbK
	 ti9FOIpLH0CC78dRp+gOmvajc5Lpfkj/sb/d9BjbQmkkGD5b+IYnvz2QWDPZ8meYes
	 A5UqFtZrjn3WQ==
Date: Thu, 19 Mar 2026 13:28:36 +0000
From: Mark Brown <broonie@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: broadcom: bcm2835-rpi: Move the firmware
 node down 1 level
Message-ID: <b93488f5-abe1-4019-a558-5117b14a5f49@sirena.org.uk>
References: <20260114015810.701076-2-robh@kernel.org>
 <CGME20260114182227eucas1p16eee8f1fbf41f998214b89517793bb0c@eucas1p1.samsung.com>
 <a9a202c1-048f-473e-b8f4-6f0550bdba2c@broadcom.com>
 <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I/vECaqBBurZUYNg"
Content-Disposition: inline
In-Reply-To: <86bce6c0-dbaf-4508-9f40-ff209c85a76d@samsung.com>
X-Cookie: A rolling stone gathers momentum.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277789-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.971];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8C10F2CBFA7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--I/vECaqBBurZUYNg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2026 at 12:19:59PM +0100, Marek Szyprowski wrote:

> Florian: I've noticed that the $subject patch has been applied to=20
> yesterday's linux-next as commit 0603d8af97ff, but the code applied in=20
> Your tree differs from what has been posted in this thread. See:

=2E..

> The "firmware" node in Your tree is=A0under "soc" node, but without addin=
g=20
> a "compatible =3D simple-mfd;" property there=A0it won't be populated, wh=
at=20
> breaks operation of all drivers requiring the firmware driver(s).

This includes the ethernet controller so all testing based on NFS root
is having a bad time :(

--I/vECaqBBurZUYNg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm7+gMACgkQJNaLcl1U
h9A94Af+NYq1bDgru1ydnRtIVQj4MDIaTKWyad2QBljjAlqluVNRt5ZzWz7mQrJN
Z3HLgTPsCZfNxQU/5Wq5AaWs/3lERa5DIaIZK7EktJ+/t2sKQ98DbtgTyokzn7bh
uNmfLL0LRrZBEidzrNVMoQpG7RxoU6/0rggbIhwwoEH15VHiIrr6nIUKiI87R2zc
7yv6XORx6s+wAHMzbMTsYmLxFRTHEqMTnDEYcNVrAhKL87DNpCkNL6M8PxT/OerC
UDocBIbVJNpBd/rlONtOzfvPhccQDWQyDcplPhdrz8agWyCZsxv9yf+HIbAadCsk
KKRz8YL8ywO7bmws210RdzAOF3Xr5Q==
=eT69
-----END PGP SIGNATURE-----

--I/vECaqBBurZUYNg--

