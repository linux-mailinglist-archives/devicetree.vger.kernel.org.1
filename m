Return-Path: <devicetree+bounces-312299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PJBLBKvnMGpMYgUAu9opvQ
	(envelope-from <devicetree+bounces-312299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:05:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9476768C592
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:05:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=J1qptdT5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312299-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312299-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F8993025C50
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 06:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412B23DA7C9;
	Tue, 16 Jun 2026 06:04:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC913DA5DE
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 06:04:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781589877; cv=none; b=K048aKuqti1kd9XCju/DT/DQ13TwtriC8+lcvZY6aOv7uwyWqqVI5blFYqj846A99JkC5gtLmGjzjr8PhD873ps6GMPYCkcRXQWio+wE1B/MSokWUQZJtpuH6vE6vU5M7BJ+fdtfp+6FPFplNTN2gxsITjS2TAkB5hGzD+HT8I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781589877; c=relaxed/simple;
	bh=Zt35hKcQpMBIQMXyuv9utQb7opykqF+8QAv0mxPGhAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hNmgdArxQVozH3aIN2Px6m7GfexxbY44h+48cOzUurS/4r5Xv8da8ia+ko6J49kULmYJWoop+9YMdOso//KHUgnz3xVI6qXijfWz3GkKbFEpZbPVM/cuThmoHkCtJehycgFOaaWrXqqcS/m8pXJBwULrLTju4/86H84e8IC7aZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=J1qptdT5; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=nkBm
	QQ9dqjG18VCLU/qKEfRoNEHraCSMs/J733uvHnw=; b=J1qptdT5Emcah7Ku3DIG
	OMcGp+giZ7CQ6zLZVRBet0ON+Ouwq8zpexUaPzE/cI2PHivMpdpMSunSfAywXQYY
	FlTtfqGx84PytXlTx6QrYF14Pu+PryHUnN1HGiZS28rINtJwS9y4n5aeNcFebpFd
	5vffuOq4V2Zo56AKg8v0akm/lH9jSycbKZ1GufBCJZ6eEMFrPiN9ILpd5cHMW3rd
	cEZ/cGa9bNapUQURTIPT3Gn0h/LKgPhmLQOM02rDdaTNEO6EjAGiA4Xw1C1isP+n
	Vkyl3Ryfi0/EULxtXVdfZ0jJITp2ofTyKSyirwKhDqD3HLMyIDsiDxMIE4ES1MME
	0g==
Received: (qmail 3824001 invoked from network); 16 Jun 2026 08:04:30 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 16 Jun 2026 08:04:30 +0200
X-UD-Smtp-Session: l3s3148p1@33RUt1hUONZUszEP
Date: Tue, 16 Jun 2026 08:04:29 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Thierry Reding <thierry.reding@kernel.org>
Cc: linux-i2c@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
Message-ID: <ajDnbQJhfeICowkn@shikoro>
References: <20260611122704.7559-2-wsa+renesas@sang-engineering.com>
 <ajBGibftf679T6P4@arch.a226c7d-lcedt>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="olvrVkuLCufgqrzf"
Content-Disposition: inline
In-Reply-To: <ajBGibftf679T6P4@arch.a226c7d-lcedt>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:thierry.reding@kernel.org,m:linux-i2c@vger.kernel.org,m:treding@nvidia.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	TAGGED_FROM(0.00)[bounces-312299-lists,devicetree=lfdr.de,renesas];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nvidia.com:email,vger.kernel.org:from_smtp,sang-engineering.com:dkim,sang-engineering.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9476768C592


--olvrVkuLCufgqrzf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Thierry,

> By default I used to list the subsystem maintainer as the bindings
> maintainer if the binding wasn't Tegra-specific, or in this case the
> original author wasn't active anymore.

I understand that. Yet, since I handed I2C over to Andi now, this entry
becomes kind of stale then. I wanted to drop the maintainers:-property
completely to avoid changing all the maintainers entry once a subsystem
gets handed over, but Rob disagreed to that.

> I'm fine being listed as the maintainer for this if you don't want to,
> but I prefer to use the thierry.reding@kernel.org email address for
> communication.

Ok, thank you, will fix.

> With that:
>=20
> Acked-by: Thierry Reding <treding@nvidia.com>

I will use your kernel.org address for the ack then as well, I guess.

Happy hacking,

   Wolfram


--olvrVkuLCufgqrzf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmow520ACgkQFA3kzBSg
KbalOhAAq5Wo7LCUYVLgQFlj5k/eFBrQU9SS1Qs9t3CVTM/TdRLrBCJrQnxbnh1d
jYMxuVqpWt7YNnkw4/v/aL8LA7f9IZl1391hrI1N5Zuw8eVltb705zHlfK6lVF3y
r333VTTQJZHowAxAKCtmzYG9SgZ8rkU0whazIXBtqlsUsF0tCc0RodOeMU4/tu56
HeCbTSRbQyCF+lhSCSwyyeck8iW6HQVg4NSli/7xtGsZy1JxHKxeSTpHGstf5ZHM
8mKQk+3FMqwC1J3GBASCJDwyewUo/aK7TqOCYAibv1yqXTemYFli5RAr5B0h72kt
dL7sKAv8JDcdDD2zyTwMjizS1zXhG8OcKA26mktQIoBBKw+b0qclN7WqIRjv4nEN
n3L7vjaI80fCeXFDwImsZyigs3BPCDBRxrsla2woLTQVQK89IC/BpnhsEy8dQUpn
J7Zj3XjaB9k3zn2SknQRczFYHmNNcps31ccbtq9wiH15Nl7L4B3UVcg84IWKEwv1
22jk9DjiOVh50PX1QHfAOButrxpCQISP/iuCSdFnUQIHqGb+00FJPBXVXtz5sqyV
nElLGoJPG9U6o3a/sDLPmSMtAS44y9HKvmv2QCYAIijm63A3n9RYrqUBSkEgnMK3
B24OVuLP1ui3dHjubFa003TXo+ACNxsj4EhndozEVAdIHuikfBo=
=xZZB
-----END PGP SIGNATURE-----

--olvrVkuLCufgqrzf--

