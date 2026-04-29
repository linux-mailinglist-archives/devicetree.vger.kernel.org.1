Return-Path: <devicetree+bounces-291249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPPDJpdu8WkIgwEAu9opvQ
	(envelope-from <devicetree+bounces-291249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:36:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 108D148E5C4
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:36:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 260B0300AC37
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804D23822AB;
	Wed, 29 Apr 2026 02:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyE768Oe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FEB2D7D27;
	Wed, 29 Apr 2026 02:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777430111; cv=none; b=MuOlw0qzprjqtRm4NOmzc/N1Nrdns7hzBBE3msbGMC+2DKGpE313+VMfzVZxzaZR3fgaaxnQ/o8DNuxpLJhGmJgnX5KuaxpNazDM1JOWKCimK3ehRIZDELPqXOh2rs+K4nbY4RWeXLnrnGM+fNRLpHp5ZmpjCDgedEbLV8Y9aaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777430111; c=relaxed/simple;
	bh=jpIK6hmwn1Fh9Mum9QGhf4dG9xqtXCD2+W4rd2H5kHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SxsHudI/DX+NIUVhv1CXH2L5MdwOYOgaxkjBQH5tocx5H+5nfEnPCp9TWkA3e8diwF3SgqPX4ADqBkyQ3NCTCyrhMTuCV1AkdCdqOLuVHDdjDO10hUQPUb38yhIuiuVLWDR55LmOkU5eLcDWXZyPnwvb9sb1qnsBYp6Cxe2NKl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyE768Oe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2969C2BCB7;
	Wed, 29 Apr 2026 02:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777430110;
	bh=jpIK6hmwn1Fh9Mum9QGhf4dG9xqtXCD2+W4rd2H5kHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VyE768OeMJEbsnEmzterKf2Ez6S9dXkfXVgURSw0yZZPBa4lC6KimD3De3kJ241hf
	 EKix9Yx6+xExVdlAmyTJw/rTYuCi5cYPcrDo992b3n5+k8yr9xi3VTN52t5NwURZbu
	 2NAleXgSgWr9SzC+OFskpT240fur+rU2XAtP8YQyOoRr2tBITlX5YJF3CR9djkISuW
	 qpxONGLSHpa1nqH9Tx1M9r2L5MOKSVZIm2sT1PH4Du6KOnlZZFe3wyOpZh+27QhFSD
	 a73xVcMGnKotP50ndLF9TDW1d3CciFrHVQbWLaRvBE1NBnOO6QxqmsdymMTJeLt99K
	 ynoe4U5qSaXQQ==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id CBF701AC5851; Wed, 29 Apr 2026 03:35:08 +0100 (BST)
Date: Wed, 29 Apr 2026 11:35:08 +0900
From: Mark Brown <broonie@kernel.org>
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Yixun Lan <dlan@kernel.org>,
	Jinmei Wei <weijinmei@linux.spacemit.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-sound@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/7] ASoC: spacemit: fix RX DMA params not set when TX is
 running
Message-ID: <afFuXO3IfV6CSsLf@sirena.co.uk>
References: <20260429-k3-i2s-v1-0-2fe99db11ecb@linux.spacemit.com>
 <20260429-k3-i2s-v1-1-2fe99db11ecb@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ywcan+wgjpNp2zB0"
Content-Disposition: inline
In-Reply-To: <20260429-k3-i2s-v1-1-2fe99db11ecb@linux.spacemit.com>
X-Cookie: 667:
X-Rspamd-Queue-Id: 108D148E5C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291249-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,perex.cz,suse.com,kernel.org,linux.spacemit.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sirena.co.uk:mid]


--Ywcan+wgjpNp2zB0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2026 at 09:38:46AM +0800, Troy Mitchell wrote:

> Fixes: 955f7b46873e ("ASoC: spacemit: add i2s support for K1 SoC")

	Fixes tag: Fixes: 955f7b46873e ("ASoC: spacemit: add i2s support for K1 SoC")
	Has these problem(s):
		- Target SHA1 does not exist

--Ywcan+wgjpNp2zB0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnxblwACgkQJNaLcl1U
h9AmPgf9EyhGWupByngJPOAIOzddMuTD9q6YNSITxCShSQtFhMR+vK56aZ3D5n1L
amCgyhAauqiGTQ63bwkPr9qS92t2dbTVyUB3H9/pjkxGFlTKv5Y7V94NpTGZZDFi
1gquKI8BJzie0dafW99Jt0lo+6K/W5h1MULK0imK8tCDjC/0P3OnzKnWqCzwI0rf
eGfhYIwotlK622QxStby4B65tEaF3Tbj9T/zvs3wmCzjg2CL6CXiC/UKQsD0vUUG
tECTMR9TLnBikNBuebd5Tfm+loHIjUNtwT4NioCdcp79oJblFKsrZnZXrLIsWRaN
uWl6P30eBVqFokFL/GbNRyZJ2uWtRQ==
=eVWm
-----END PGP SIGNATURE-----

--Ywcan+wgjpNp2zB0--

