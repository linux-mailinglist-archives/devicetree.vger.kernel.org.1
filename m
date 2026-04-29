Return-Path: <devicetree+bounces-291247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBCsMTRt8WkIgwEAu9opvQ
	(envelope-from <devicetree+bounces-291247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:30:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6004448E528
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 04:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A36ED302383C
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980AD3815E3;
	Wed, 29 Apr 2026 02:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWyCWVT1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A493815D3;
	Wed, 29 Apr 2026 02:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777429709; cv=none; b=hb6LNzeTTwSSGLFs01mHRDLSnQsf4FPgS77x9xq5nih8trHulxNQVKMT+Lbrq9VcS7Rx4YTCnXxsl7xvOieoY/hLhnN6y3n5hQYGwZ6Jgx5ZHTopbxrfSoOKPS/teU5vD0ycOm5IETbpY201Nk8Xluxqs8pIZPioMLlflAZKMTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777429709; c=relaxed/simple;
	bh=U917FEeP1a65aybvARWiLBBMfAgnhdvtyR+oFIuOO7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uIR53excUoMXC51WPuZQu1Y9TC+39mVQxF4duKD3HlHgt/qkeoPcfqqeUAOQYcH4KCkHHvaCT9jf8UFgZY0pfUVvcH3jEWaQy3Z6EXQ0O0mCQ/66uS9+8PT0DqrUc5b4Kfu4fnM16f9p/AqG11UU697xzU3ZHmVMf1zreO8n/3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWyCWVT1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E251FC2BCB7;
	Wed, 29 Apr 2026 02:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777429709;
	bh=U917FEeP1a65aybvARWiLBBMfAgnhdvtyR+oFIuOO7A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uWyCWVT1Ar3mzr0oxmaCB36QUdEw5kMfe3jmzUVhavC8+NzT4xgbLioHp2nHM/7R9
	 pIy5cagrWv8W8878zgVZoEGMHwTxuTc8+PBhThOUC+6/V73QySfT2RHfZd6By0nZjv
	 9U8RjfUA+3r8TQ0dF0/6t+dlcmuUIjEITS5AwenOYlLsvb98rCvQvA3Pr/SJWPgqWc
	 Zt0ScKlSm/fqEIDlPKOk2k5t1M35QO4G9pXJYJxKZukLoI5JOK4RYOAS3yc85JXc7c
	 LsqnkCtiNb6FaK8CgQt49DXtXqXkW2a6ndqwGCJx7zM0Aj3dB4WHSCf3kDXe0WXlff
	 DNUmYUOlPMbRg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 55E151AC5850; Wed, 29 Apr 2026 03:28:26 +0100 (BST)
Date: Wed, 29 Apr 2026 11:28:26 +0900
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
Message-ID: <afFsyiSHrVBapQ9V@sirena.co.uk>
References: <20260429-k3-i2s-v1-0-2fe99db11ecb@linux.spacemit.com>
 <20260429-k3-i2s-v1-1-2fe99db11ecb@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6SEXtm4k7tE0lPs/"
Content-Disposition: inline
In-Reply-To: <20260429-k3-i2s-v1-1-2fe99db11ecb@linux.spacemit.com>
X-Cookie: 667:
X-Rspamd-Queue-Id: 6004448E528
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291247-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,perex.cz,suse.com,kernel.org,linux.spacemit.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.co.uk:mid]


--6SEXtm4k7tE0lPs/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 29, 2026 at 09:38:46AM +0800, Troy Mitchell wrote:

> +	val = readl(i2s->base + SSCR);
> +	if (val & SSCR_SSE)
> +		return 0;
> +
>  	val = readl(i2s->base + SSCR);
>  	val &= ~SSCR_DW_32BYTE;
>  	val |= data_width;

Very minor optimisation but those two SSCR reads could be combined.

--6SEXtm4k7tE0lPs/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnxbMkACgkQJNaLcl1U
h9DP0wf9FedyLiR2jbRQe052LYOVrGdSJyZFyiLrFiI/r3FDgyi5TzL8gejQm5DI
nYSEijJQO323eNHosl4l1xC3cqIr+q3XEbWw8Z1JSnUhvQbkyHpE+U/yBwNqsRnZ
HPPelZUia70N79+ff/6QKNjDuzJ2fLeRCxkUbgq79qdOaBQEQz69VrgrH3kG4Lah
aLpE1Iw/6fl5KC4vci2S5yIrp0tYv9jt+dI7t9A2BKZ0YBZkCdgbSEgFRBbJYJg1
ELGiysUjUwII8tO+GA7D8QiCegZEFHRKhPNNbE/ujVrUduyAuQGUkxriMwS9lFIC
XUtJuRWo/V1+ZMAzyfgugi8+fFaRaQ==
=H/sj
-----END PGP SIGNATURE-----

--6SEXtm4k7tE0lPs/--

