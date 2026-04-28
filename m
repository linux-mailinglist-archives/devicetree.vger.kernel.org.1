Return-Path: <devicetree+bounces-290790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ps1E3YF8GlmNQEAu9opvQ
	(envelope-from <devicetree+bounces-290790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 02:55:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6F947C44A
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 02:55:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10B06302BE2F
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 00:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 548D0282F3F;
	Tue, 28 Apr 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1wGIO5M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FE4224AF9;
	Tue, 28 Apr 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777337693; cv=none; b=N2T8utRUFI9lPS87MFIEvjH2vxZkZSk9v8l2xT7BLDMhY+bZeqZKzdgAh9UQfe1rJsPJOrGzwz3AyfvV/kiJa6bqQiHckwn3bi3i9HIqk4hygrTU6fWhlFcB5B4DYOoUr3LclmUWVBD3QzLcmkmhVf62YlgWAUt8atWmuz0l1d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777337693; c=relaxed/simple;
	bh=iSr/Ppm8+c7cV6VQDb+wp0F2kSDaEN7BMnfcFv3iVlU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HoXtrPF5tNL/IeKUj62yosr3iz7vppV2oDmKOPmJ9v4HffJF2c/67nst++BChL1g4NrxGAznTZ264EeS2zWZp3LfKD1Mes5WnF3UMVYl9kXFqq9cqmZBP/cx230mNYE2DIer/GFTwMODi6goQiBTNfMd1+NfsK9qT2UIZcwu+Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1wGIO5M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E10C6C2BCB4;
	Tue, 28 Apr 2026 00:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777337693;
	bh=iSr/Ppm8+c7cV6VQDb+wp0F2kSDaEN7BMnfcFv3iVlU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p1wGIO5MXdFmySBGJRf3PlFzLHcurWYklM+eApAVm/2Fua8j4/6dDp8+ceT9XlNx1
	 cRiJaiWBCsa+UKWSxHGYydpNsUzzu8oqcLwQP3gi6E8sbYmlCobZGsoXjFZI0gZXpp
	 Uf466439rrfyFp3tQUqlsguc/qfV7nKkMLazahkz42mO7dPtxuNnomLM1BHHkvqugj
	 FkrIMY61xjcv44rJuJV8PQ6V9/a1qJVffctV7oPSZC+TPOuultJb/WFifl9gnyfmIf
	 ML5qwZaCK6SFbe0kVlXOL4twuHwwHY7H9E0rHCKMeHhZigc/SeYSmZlkZoV4IwsQ1q
	 twf/7sNlFQPKQ==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 10C051AC583F; Tue, 28 Apr 2026 01:54:51 +0100 (BST)
Date: Tue, 28 Apr 2026 09:54:50 +0900
From: Mark Brown <broonie@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: regulator: fcs,fan53555: Remove vsel-gpios
 property
Message-ID: <afAFWslafi1KZbe3@sirena.co.uk>
References: <20260427115443.3224840-1-eagle.alexander923@gmail.com>
 <20260427-smartly-sullen-509e3d5e1967@spud>
 <CAP1tNvRHqoq==tehB5vKxH41BXG54Y9s+JMZt66o__SMTekHeg@mail.gmail.com>
 <20260427-dodgy-anything-0afc388d2c6d@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n7F7cCulHikvsdFV"
Content-Disposition: inline
In-Reply-To: <20260427-dodgy-anything-0afc388d2c6d@spud>
X-Cookie: Victory uber allies!
X-Rspamd-Queue-Id: 9C6F947C44A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,sntech.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290790-lists,devicetree=lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.co.uk:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--n7F7cCulHikvsdFV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 27, 2026 at 08:59:01PM +0100, Conor Dooley wrote:

> Rob's 2023 patch that added the property even says "Add the undocumented
> 'vsel-gpios' property used to control the VSEL pin.", so having it was
> an intentional decision by the main binding maintainer!

Also sounds like the property was used by the code at some point in the
past...

--n7F7cCulHikvsdFV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnwBVoACgkQJNaLcl1U
h9D6+Qf+PoLKE6bQbcyIiMCcTpoMdIZA8bOLv5r8kpt3Pxa1wwHEK+ICV/JfKscX
GbxHRielZRkq1Cov4ROAGKaLdsFo+tMkZcpzFM3BsyEkbrcNCz77r/o/0nkCq9W2
zVfTdWdgnmo+5Gj9DXKHrVyQjbhLPT0mhPYgp4Xo/Y2Qe2WF96EdTUpP6EAiC2XR
pDnZGlMQiFLMWZkztIPPb/SStT4+ajV/Jvs4dqX9JPEasSzML7q6D/Ky2/8FBb32
5bc4XekbUmunEP5HhOIH4y7MIfYkcSAKqXQTpwXfrByIj+D7RVywEF4H+WGIP4n4
q208tUmB5qlgBZ4sar+PPFIs8bKTBw==
=JFXc
-----END PGP SIGNATURE-----

--n7F7cCulHikvsdFV--

