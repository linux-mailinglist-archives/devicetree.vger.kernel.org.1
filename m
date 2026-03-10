Return-Path: <devicetree+bounces-273705-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGCNMhV0sGnejQIAu9opvQ
	(envelope-from <devicetree+bounces-273705-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:42:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 400F725714E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:42:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B0C4305554E
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44122355F58;
	Tue, 10 Mar 2026 19:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijjLGhNy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AE7349B15;
	Tue, 10 Mar 2026 19:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773171731; cv=none; b=Z7y8KN10W1itYvvjqi94167TBYhHbNCj6Vh0QzLjSa3hioEPwVJx+r22byZrW3wacJcVgShfAtkJ0WmL+LvtKNDIMEBEr/CQ1KeTvuhOr2rJa72vh61892I/d99eNr+5s2IzJnvKEVI3J12pe1x70vLD0vckNBHCloFPmmyjhaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773171731; c=relaxed/simple;
	bh=CigGH6JiI8W8KJKapguNODR/msvRj40XB6BkvqNHkKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tn66Gm3H4gaeyM8TbWnxgoccEDXzWJj84EXfiHu/CKXLcFyLHFe2a6ZmpKX8avKV8IoLfaSpBgD33SPXPvESs1LoS0Nr1AvZ4jRtnfIaRuxtC3cLPgVqqW74XiWsK6b9mTCL671YqxCuzcaXHqBQFdSApGnfhMxOuU6i4lwHAGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijjLGhNy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8618BC19423;
	Tue, 10 Mar 2026 19:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773171730;
	bh=CigGH6JiI8W8KJKapguNODR/msvRj40XB6BkvqNHkKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ijjLGhNyEcPEqHKDIl15varq8Q2E/Oh5l/VOD4WQfcGfEnglkEaSWsMijccA1v4Vz
	 ijAb08LXcTM/VrneSBWQ0aq0RRFMPul1NWf4gfhA9gy5SRBAAO0sv86SVNmoEy/Ufl
	 7RNTEEUMcr8ATsO8A9PeYQJh3oXquoIFXlfAtci4Y7SU79MDWBcbmVtCzpXU+4kJ/D
	 WRV9OSYmWfkngIimkKyJ0eJ9qYEx9+TjQHkyM0qp39daqquH5NYgpZ5CY/Sgz6yPPA
	 mCnjhn0dEftZu5YrRgmbQoD8b22TzdpLUHsq7qTrSBBmGAxAAoRSLUkBgCdFcROJ2u
	 fQsJOmXW8uIqg==
Date: Tue, 10 Mar 2026 19:42:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: allwinner: sun55i-t527: avaota-a1: Add SPI
 NAND
Message-ID: <f3ed7b81-4e43-4baa-8a56-b18fa7f56436@sirena.org.uk>
References: <20260302153559.3199783-1-wens@kernel.org>
 <177317166704.379398.1719490251066452420.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HEq4wRQDZZFl5gi9"
Content-Disposition: inline
In-Reply-To: <177317166704.379398.1719490251066452420.b4-ty@kernel.org>
X-Cookie: A fool and his honey are soon parted.
X-Rspamd-Queue-Id: 400F725714E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273705-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


--HEq4wRQDZZFl5gi9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 11, 2026 at 03:41:07AM +0800, Chen-Yu Tsai wrote:

> [1/3] spi: dt-bindings: sun6i: Allow Dual SPI and Quad SPI for newer SoCs
>       commit: e2f93f45d38f7b6dacb44203cfc7bb5d7e287b8e

I'd have expected to take this one?

--HEq4wRQDZZFl5gi9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmwdA0ACgkQJNaLcl1U
h9Byhwf/S7pGaDNtUJP08GdwI+ftl6eicg2ff8c5/ZBis8+eTVl0rPWoSjWzjq/H
uZg96h/gr+O4QYPKgmVeZqDWt93mDNpveN4bpD6OmVBxRjRiKBP2Sn+KiCiPe2bU
F0cwm6KO5LxJq756b5K9s+HoGXMsLf2GMq5P4CSuukLsJP73bqc8Ca/1DmbdGWVk
jk+txsG9vQ8Lu/iwu+bF7TrlCu62jlOWQ7Ea2EDgYfMRM8mA5ugtLfd1cHOu78BQ
Dsjubd4TjVIpg4s3DrPdmvWPP0I0//BJ09R+037oh4UzIR2XiO3OgNMo/LNQvgb5
0OPd5Of1BySEEHkcXaQpLIfhthE5ZA==
=U8r6
-----END PGP SIGNATURE-----

--HEq4wRQDZZFl5gi9--

