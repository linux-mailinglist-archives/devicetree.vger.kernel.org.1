Return-Path: <devicetree+bounces-280677-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJqNMjAWxGlAwQQAu9opvQ
	(envelope-from <devicetree+bounces-280677-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:06:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D161C32996F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 18:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ABF393005335
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 16:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BE9E3FB055;
	Wed, 25 Mar 2026 16:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUmZoGmE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F0C53FA5D9
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 16:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774457705; cv=none; b=F3/7zRTmonqAWEC4JdpPmKngZ8O3fuWu33QasTSi1dy0IALL+OTLh2QP8Z1NCvMvcU+nCuMwGI8vLwunvU9HvF8x3jAQNOcslm7zEGUhzI37zILPS8P1qesVADTy1B7lLKSi/9cFODkDfdSSpfYdg0dw5qJZuQW656w876uLuVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774457705; c=relaxed/simple;
	bh=RKKiiq8BF8Gnss15GyLrbCZ1nQZVCizvsceHIkQybeY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eYsYd49pMZcjria55FX91pI1vgo8znnbee/WZC4sRmKBwJRQ+MWNLeOSgEbUIrcewhEoa+a56WsTnW5fgHbiM4Ge6OmwT+gfRjH4VDfPoA7ZbR0do4ERc6niIzOoZu+/XnZ1WIVG7WS0omOpm+AJrMOeGNLVcddfcVln0dM4MVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUmZoGmE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFB62C4CEF7;
	Wed, 25 Mar 2026 16:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774457705;
	bh=RKKiiq8BF8Gnss15GyLrbCZ1nQZVCizvsceHIkQybeY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fUmZoGmEOFgd86CDps+cN4uba4Z8k0RbTFUgOkt4vajosQUVDMjIwFN9CDpxm5RYr
	 hxBLzLwoS861MUC0M22kcTkbhvNNE0TxmpPEB8PTRQDxPSCmkFS/nFXIBqG5qQp5Ry
	 QiR0645ytteVjCwi/8/pmydejBFyvxu1LUVvWRzHDNnC+VlAXP9zcA0gSHS5r3wYus
	 mjIJ5GADmJ0m70/jwlDNGwr7MGCxpvXj0sHXQTXBpaAeZdT+J1Oi2R6VhFZ82Lk7rw
	 2QdZcVNjPzQA/bE/9lA/B4Gem45JFrTc9Fc3fgl1D3/mHD+g7eStV6briapV+yKL6N
	 ito5CWuspA+Jg==
Date: Wed, 25 Mar 2026 16:55:00 +0000
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RESEND 1/2] regulator: dt-bindings: mt6315: Add regulator
 supplies
Message-ID: <32638731-8f33-4203-9e68-1170cff99280@sirena.org.uk>
References: <20260324053030.4077453-1-wenst@chromium.org>
 <20260324053030.4077453-2-wenst@chromium.org>
 <20260325-uncovered-carp-of-inquire-8a7acf@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="waZYWKl2+xYeqLDx"
Content-Disposition: inline
In-Reply-To: <20260325-uncovered-carp-of-inquire-8a7acf@quoll>
X-Cookie: Question authority.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280677-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[chromium.org,gmail.com,kernel.org,collabora.com,lists.infradead.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: D161C32996F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--waZYWKl2+xYeqLDx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 25, 2026 at 09:56:00AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Mar 24, 2026 at 01:30:28PM +0800, Chen-Yu Tsai wrote:

> > +      pvdd4-supply:
> > +        description: Supply for vbuck4

> These all look per-regulator supplies, so I think they should be in each
> regulator node (see also regulator.yaml).

> Or in top-level, but not in "regulators" node. The regulators is only
> wrapping node for children.

> I wonder what should be our preference - have supplies per regulator or
> in top-level node. @Mark, any preference from your side?

The top level, so people can figure out where to describe supplies
without having to read the bindings so much - the supplies go into the
chip, even if they're distributed within it.

Please don't add random characters to my name.

--waZYWKl2+xYeqLDx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnEE2MACgkQJNaLcl1U
h9BbaAf+OWrcsJ1vWJ5LNMOJFWdpauabUdohO1MiXidlGIsmN2yzEM3MfF9lQFNs
Sv49o8uJQLbaVz3Abgtn4eTj0uD5zyP+QWWO1MGnfca17vRjy2PVg92Rp5GQzOWt
TCU0jGuxbBy9flaSJ1qFyzocxSD6PQh88K2fJ3ksKBc/AUb/LlCYQqTxOaYm25Xo
C13pwZf8CI4BqfV1T2p4h0wPQqaUwNQGi/s5h1KnhYV7H6BI4+WTjR28PpaplHD9
g5/FIRSvoQlyz4QcyfmoCPlOhMQVq2AwuIvXEy/X+tNfVHetDX6NvHs1lPmNdJit
w4hnfdiYl4hBXRqSFNcqwKCAsiDVkg==
=VW8o
-----END PGP SIGNATURE-----

--waZYWKl2+xYeqLDx--

