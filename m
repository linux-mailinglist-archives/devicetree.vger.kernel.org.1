Return-Path: <devicetree+bounces-258348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKcbH4IScmksawAAu9opvQ
	(envelope-from <devicetree+bounces-258348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:05:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 047F866638
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:05:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EF1A85AC30F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A99333B8BDC;
	Thu, 22 Jan 2026 11:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7vPrBhG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787A83AE70B;
	Thu, 22 Jan 2026 11:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769081276; cv=none; b=l0+K8Hy7N5vwR26zEoj0enFaYdK+EDvvWwkjHPaVUgm0v43PdNFg7MILEAkaatwhi1SlEW62OKUKuJZ/gnTdv39rXrSUQK3/YxsE2t/1A3xQ0i5gerq3fRFGr5RQN642fcmDAd5jOt+Er8J7Df8Bfg9aX76pSwWMZgm/ZNnZP8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769081276; c=relaxed/simple;
	bh=cqjws9ooAjsbBwZ61CYWYQ//fsA2CNwseWVKxBI1+0c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evA/Uvso2QH593GEBLYAwHafrPFIOo8xtyQ0210ZfPPjYmNAinpZKDMfweDC+aB7ok8N4d+Ssg0uHvZWcQkHc1vm3hffgJazujKyrML7AP0ZM2xZv1FRDlqrTlQxtm7YiUZ47JF+7n1KwROLSd92HcWA+/aDJn6zWC3wSD6UVNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7vPrBhG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDC1AC116C6;
	Thu, 22 Jan 2026 11:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769081276;
	bh=cqjws9ooAjsbBwZ61CYWYQ//fsA2CNwseWVKxBI1+0c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d7vPrBhG7gXRu4QD0E8T9ufg4w39M2sZzihMhPpevwBb6pqdsc5vX8wYg4WlhxgL2
	 3B/UkK+As2Rn/y3O2q8ulnMeMM4XMzxJOhYL015tDP39vgZ1oQR5Uxg5BstdEOGIGa
	 eI9east+ya8K+bsJ52XXgk5R7yjD+I8oRCazfyudNMmQu7jtv39Ufc2lWz+g465RyW
	 OTACBH5GZYQLO+/HTjUcPgKOEk2PGNeRnPCTKtl3doK6+LnZdBlwosUfMiM603d0vr
	 mMl6ARbX+3rL6Bc8q5nHobSI5l8pJNSG0vfbLF7MOkOqqdKY5Hj61vgv3i/QjHWDoF
	 S5NOiZLm56ztA==
Date: Thu, 22 Jan 2026 11:27:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: Guodong Xu <guodong@riscstar.com>, Liam Girdwood <lgirdwood@gmail.com>,
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
Message-ID: <77bc5a5f-666d-4beb-ab78-99a242d72a39@sirena.org.uk>
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122101122-GYA63789@gentoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kCU7aOWPcG50IcvN"
Content-Disposition: inline
In-Reply-To: <20260122101122-GYA63789@gentoo.org>
X-Cookie: Don't read everything you believe.
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258348-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[riscstar.com,gmail.com,kernel.org,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 047F866638
X-Rspamd-Action: no action


--kCU7aOWPcG50IcvN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 22, 2026 at 06:11:22PM +0800, Yixun Lan wrote:
> On 17:43 Thu 22 Jan     , Guodong Xu wrote:

> > Patch 1, n_voltages is corrected to match hardware register widths, as the
> > previous values prevented regulators from reaching higher operational
> > voltages (e.g., 3.3V on LDOs).

> This patch bring system-wide change that not only affect Bananapi F3..

> Please also provide fix for other boards, I think you may not be able
> to test all boards, but make sure the patches are available, so people
> who interested can test, P.S I can help on milkv jupiter board

Patch 1 looks like it should be OK as is?

--kCU7aOWPcG50IcvN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmlyCbUACgkQJNaLcl1U
h9D/aQf/dEWaK9GmzmmF+ESbSHBcwMTmMmByHHPPRFKrNnkGd9hynfVF6M9fDOHD
EfN1Lm1BPwuFZF3+/qUg3drebJxFEPVPRfT5kxC+TJ5Bxf6200kqu7RkZiTNpA3H
ftvyR5aZr1r2lP+nbk5f8BICKQWgcxQ1W4iRnd69UcpV4yRSZe9J3j8PyxNnaaYE
uWYmlgCnYyOlCMjA/kQGRmXVC9p+qyIouIX4W1ixUw20wmKPIVrhEI48GcS4sWgR
m85lhXE84rP9UX0S3p+8sWp3hp36sP6VCzB+RCu84jwPdsdrz5++TPVMg5lK2wc9
aBcV2THb3moaWueejc7XDx9tG0j9tQ==
=L0Vb
-----END PGP SIGNATURE-----

--kCU7aOWPcG50IcvN--

