Return-Path: <devicetree+bounces-299048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPQmF3YqCmonxQQAu9opvQ
	(envelope-from <devicetree+bounces-299048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 22:52:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29886563D6F
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 22:52:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1045301950E
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8283A2F549F;
	Sun, 17 May 2026 20:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1jaTnUp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBC82C3271;
	Sun, 17 May 2026 20:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779051122; cv=none; b=PA/94BpXi0azafOsK7zBy1Rolgk8TKv7kGTsauXqod2O7g+AoWfISKSfK+ySKFBnuK4mr5/Q3vOA4UhqqaNZK9EWlmpHHgbXO7DY0ZolettvUlEyOKvP7W4NG7YlheQJFK1qDeys5ojF7OK/7sCA4LU8LmY7EAkXF0wGrkxQUns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779051122; c=relaxed/simple;
	bh=Og4fBV0EtD0xhgQyzKrvnJkkN7/Nmm1sRZwXKkR+uWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pNleYad3e84E/QCUgde+Ae5kvDVZCHymbKwZsjiO2UBbBOlZSFOARNAc0V+BJUbX30R0H8NsnDI5dzCddIs8LKOoKzOINk8fvT/Ixpt7B/VgdPfgteBHlsVjTE5FtszRMak08CfsCoQirk1ZCjZ/+yj31btaFdfLSTVXZ1+leEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1jaTnUp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF625C2BCB0;
	Sun, 17 May 2026 20:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779051121;
	bh=Og4fBV0EtD0xhgQyzKrvnJkkN7/Nmm1sRZwXKkR+uWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E1jaTnUpR8hVplCRXocLMST2NUTRStFSqyNR/r0AdCRcRKkgG7wbT2QSTzUGIAaZU
	 5erC8I20OCJEccLXKAm/EeTDPZTW+fAQv7zkZWKf0leDMThsIy2qGBrke9sqc9l3yy
	 VbVGJKs/Nv1YHZiBb6BdrvyHpl63iwpPKc8b+U3AEochNJEN+gwlA/oJZC73FCtKY7
	 xylPAAnVYcqiWg54xErmoNXLWPRP/VzscTYciqzPt0mFQS4WGRS2RzpmPOgLkoUljr
	 hJ6T4V+YzxQnCEvO/rkJs+eG72lYTW7o6AbjuVerwvAyfBsHrxiuQyQ6srB0K+gsXD
	 0fAp99LjNRDNA==
Date: Sun, 17 May 2026 21:51:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: clock: add binding header for
 sf21-topcrm
Message-ID: <20260517-pulsate-shining-547432ab2ca0@spud>
References: <20260517-sf21-topcrm-v1-0-438f2e0513ff@gmail.com>
 <20260517-sf21-topcrm-v1-2-438f2e0513ff@gmail.com>
 <20260517-cartoon-slather-ec5ad7605449@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XBSltlWXNSQe/OJJ"
Content-Disposition: inline
In-Reply-To: <20260517-cartoon-slather-ec5ad7605449@spud>
X-Rspamd-Queue-Id: 29886563D6F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299048-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--XBSltlWXNSQe/OJJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 17, 2026 at 09:47:26PM +0100, Conor Dooley wrote:
> On Sun, May 17, 2026 at 10:12:56PM +0800, Chuanhong Guo wrote:
> > +#define SF21_CLK_PCIE_REFP		30
> > +#define SF21_CLK_MAX			31
>=20
> > +#define SF21_RESET_IROM			17
> > +#define SF21_RESET_MAX			18
>=20
>=20
> Having _MAX is not permitted, but is also really confusing that "max"
> appears to be max+1, so actually represents the count not the max?

To be clear, if you need a define like this, put it in the driver.
Bindings having a "_MAX" or "NUM_CLKS" doesn't make sense, and half the
time this number ends up changing anyway.

Also, squash this with the patch adding the clock binding.

Cheers,
Conor.



--XBSltlWXNSQe/OJJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagoqbAAKCRB4tDGHoIJi
0kXQAP9LJgmoesY0Ipn5SDkHI1favq4yEm6Jb5EycZjpUwTLtAEAsN4MhlOWEdtS
0trUPoitDOYu794uOuGQPIOzV0sDKQE=
=ZyXF
-----END PGP SIGNATURE-----

--XBSltlWXNSQe/OJJ--

