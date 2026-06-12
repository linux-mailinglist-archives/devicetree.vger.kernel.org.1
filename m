Return-Path: <devicetree+bounces-311013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jiTzOqwfLGpQLwQAu9opvQ
	(envelope-from <devicetree+bounces-311013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:03:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7A667A652
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:03:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=G8tgumFa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311013-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311013-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65FD030037F3
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFE62386C25;
	Fri, 12 Jun 2026 15:01:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B56033F399
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 15:01:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781276478; cv=none; b=WXrMLvDOBWR0hxV5JTAxSVnoPoYNe9agnv6EkSHvzYFYpape0QDGScwFzRm6QZO7lS9svd1xEz2iwwdmfdGKmpVLnXRYGkRLflxxEPO9RvOm7xYotnAybgDrM7AC3G1pJUMx/nDwvmTGuCEe90maG87lbgmOllmNX9fMaI7p1KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781276478; c=relaxed/simple;
	bh=5UYOrm7fR5TC3T3ikxHIA8f4zcBAfFy1JMMu/bouvLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XcCCrSteHDAQau2lotBuw5zl5Bnh0WTXdNktwSamxXKSiqOQp4dPb+/AchhDEpty/OZRa1duftDnlM07XWbNWzR10tEIzMD+5BN7RYhvNXGqXjEnUkAoeENGhmETYu8ejOR8iPGmdDhWU6ntAHtZGJl5wa+eIK2UbzxHCFO0ZoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=G8tgumFa; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=5UYO
	rm7fR5TC3T3ikxHIA8f4zcBAfFy1JMMu/bouvLY=; b=G8tgumFadEDUpz5EAgFj
	yjS6aevHjLR4Dgpus7HDIDBiyvov6kFjI7GYfJmCCWgpwf+JOCmd2DiAnrH+oiJx
	1yZ2P5DeO5KyLcXVs5JKxvSk8MO8WGpuSHsqbJjui0SD9ZpbNXwcQFPxZUSBpi7S
	sfhumXuzX9+DxQO99ux+ZntPF4dppfHDkeCIq6lzO6n3XdMPETy/22DRmO/VbCdy
	e43+8hW7QFSb+YrOULUg62UcN4aLRw5nBoRX0b4/Brq92pXQDqlBxeWVj1g0js/9
	lgrXugD6krGiyYtJsFEqBjBtnERC60mk7B8+MSNfefbNx73+6JRuzEIOvMfhBe5H
	sw==
Received: (qmail 2570628 invoked from network); 12 Jun 2026 17:01:15 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Jun 2026 17:01:15 +0200
X-UD-Smtp-Session: l3s3148p1@2ZCFvw9UMz5tKXKQ
Date: Fri, 12 Jun 2026 17:01:14 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Peter Korsgaard <peter.korsgaard@barco.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: mux-gpio: name correct maintainer
Message-ID: <aiwfOgbueeG-e5vx@shikoro>
References: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ekrj8PLtxG4YAug"
Content-Disposition: inline
In-Reply-To: <20260611122053.7306-2-wsa+renesas@sang-engineering.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[sang-engineering.com];
	TAGGED_FROM(0.00)[bounces-311013-lists,devicetree=lfdr.de,renesas];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:linux-i2c@vger.kernel.org,m:peter.korsgaard@barco.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sang-engineering.com:dkim,sang-engineering.com:email,sang-engineering.com:from_mime,vger.kernel.org:from_smtp,shikoro:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C7A667A652


--5ekrj8PLtxG4YAug
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 11, 2026 at 02:20:53PM +0200, Wolfram Sang wrote:
> The YAML conversion added me as maintainer but I can't recall being
> asked nor do I want to maintain it. Add Peter as maintainer for the
> binding as he is maintainer of the driver.
>=20
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied to for-current, thanks!


--5ekrj8PLtxG4YAug
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmosHzoACgkQFA3kzBSg
Kba9lQ/5AWrn2JanrrKqNKiI+c1HMLEkB7N2jeP/a9fRJt8T6ai5CvJu+QmSKrUt
DV0kG6BUrzs8j58I0HUCkRTIWxRJnLh0GG8CGBqr3xRPkQbNzAqbQ+VU0+zccd4N
IlUl4VKdVZoLqLDPWc7wIMxQxw/8yqGTe/tm1FP34mbvLR0xA3Ee5VtFCFk7plIn
m3KOQATAtTO0lw28MY6qJSAg+g2jsHw6o3AEvK9bm13AbiIOfoKAQYcMAOg6ylPR
HBXSi4qvVogv8i2nB70WxT1935+4Sk2FFRjgqFuTie3KsRlAXQLOYSKboD1G0Pnc
eL++nrgJ5YW8+ouuSKormYkFFUWQf4/Lvc7En2F7qFFnE6zQeJVU0ZqITryeUGGk
yhX9Pe62Q7sIcqNtvF3CQIEN2tea9a7lokGjhbegHBPamxtCtSvB9J6mJV+jsX7m
N6/3CiN7J5UFGpBm7CE7xEEZRJ1Pyccu9FD3PE2zuqcqoxVhS2xPA4bipYpU9Gsz
Dn2BVEDuKZX29i409KfZE3uafnNvhssiyViEk2TueuK3lRldsbQ62O/GSnQV1BRn
pKp95q78L9sm2h7lXRcWUEpdSEMJKp40laLp5tBLHuKFRVMYW1VYJf+y9Al5OJc7
670LvlvgEvX27OmtewhoedZ4MMl+0Fn47IBVJYFMUBh4N5Hn8uQ=
=W/Wo
-----END PGP SIGNATURE-----

--5ekrj8PLtxG4YAug--

