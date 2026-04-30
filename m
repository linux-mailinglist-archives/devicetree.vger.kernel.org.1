Return-Path: <devicetree+bounces-292055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3tTSLPbp82kA8wEAu9opvQ
	(envelope-from <devicetree+bounces-292055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 01:47:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4F94A8EE9
	for <lists+devicetree@lfdr.de>; Fri, 01 May 2026 01:47:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B0F93009CF1
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 23:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5683D8915;
	Thu, 30 Apr 2026 23:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPtAZcjh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0DB26ACC;
	Thu, 30 Apr 2026 23:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777592819; cv=none; b=ro3sG21vYbAsAp8sRE9kJcPP4fEiEhSay04MEOW4SL/HFCrECQGA1NvBWh/pDCa+BIMUNU+kQrXe3uWf6/nSgky7RrcUNeU6T71jtwvXmEQQZH9AmYh6zO1PqMyX68P/J3Mm8vMueHVyl4IfwwShCT40MgpUG5MGmcxdkPk7fJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777592819; c=relaxed/simple;
	bh=KAo6srgNAU5MM+WDSP/3BC2/BmABB70FgH9jVqdJVkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pA8+hrDTh0M6meU7A7K7+T3EQE74FSrN6R1eCuYLw69qgm77uGCwXCJub02aRu+OgQypMW5+J+SZjTWKi4jgkolzjtEzlZ3M1Q4DnwlXfdjhGiM0pT2WwOrBns7Ga/rDbNT9+QbXeq3bheX24IeQdT0oKNdwOCd/XeewQtcykV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPtAZcjh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0ED4C2BCB3;
	Thu, 30 Apr 2026 23:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777592819;
	bh=KAo6srgNAU5MM+WDSP/3BC2/BmABB70FgH9jVqdJVkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GPtAZcjh+ePKeNNd6bTzqHiICamfny8TsGowp9Gbo2AAVqEuM5P/Ix8asLlAchICv
	 rIm7Njuy8hkK4zfIcqfQJfRQ6UrQeagSpg1Wdn9UfzYNGTIkORQPzNBpPraV15RjZt
	 t5X9GSao74pOYLf/SQmFXsmZCPOb9zC6r27YAwnL0poWjjKklNtPTXz58JLHZKrR9R
	 /wq6BNu/3Xv70TrTM8qeE30CDJARivYKPIgqozuuYHnjnrHhWfMNFfer9mMfoAZh+Y
	 +FN/sJo+1wyw5MkfMOiOhLBvaV/SPglGi1o2jTC3oe85z9gYkqoP+9xmYRGSksFgTb
	 XfnKiV8+JDxKQ==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 67C6A1AC585F; Fri, 01 May 2026 00:46:56 +0100 (BST)
Date: Fri, 1 May 2026 08:46:56 +0900
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH v2 2/2] regulator: add SGM3804 Dual Output driver
Message-ID: <afPp8DXSLQIkQNaK@sirena.co.uk>
References: <20260430-topic-sm8650-ayaneo-pocket-s2-sgm3804-v2-0-76108c65a560@linaro.org>
 <20260430-topic-sm8650-ayaneo-pocket-s2-sgm3804-v2-2-76108c65a560@linaro.org>
 <afMwIVRDxl11Ty_P@sirena.co.uk>
 <150cdb85-d0ac-4802-a09b-9dab1b9b805a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BPssGiq9rDVorsrZ"
Content-Disposition: inline
In-Reply-To: <150cdb85-d0ac-4802-a09b-9dab1b9b805a@linaro.org>
X-Cookie: 667:
X-Rspamd-Queue-Id: 0D4F94A8EE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	TAGGED_FROM(0.00)[bounces-292055-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[outlook.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.co.uk:mid]


--BPssGiq9rDVorsrZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 30, 2026 at 03:28:43PM +0200, Neil Armstrong wrote:
> On 4/30/26 12:34, Mark Brown wrote:
> > On Thu, Apr 30, 2026 at 10:48:47AM +0200, Neil Armstrong wrote:

> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * SGMicro SGM3804 regulator Driver
> > > + *
> > > + * Copyright (C) 2025 Kancy Joe <kancy2333@outlook.com>
> > > + * Copyright (C) 2026 Linaro Limited
> > > + * Author: Neil Armstrong <neil.armstrong@linaro.org>
> > > + */

> > Please make the entire comment block a C++ one so things look more
> > intentional.

> Sure, converted into:
> + * Copyright (C) 2026 Linaro Limited (Neil Armstrong <neil.armstrong@linaro.org>)

That's not the issue - that's not converting into a C++ comment.

--BPssGiq9rDVorsrZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnz6eoACgkQJNaLcl1U
h9Bjcgf/cVuaNhdE5f043AzAh2Y30JJPMlKTIEb1Cz4raPO6SpPHA6R92GY1rPWj
yq7HPLX7bJ/A7KdDJ/TK5xPMIwacUtqXJ0U6DvYL99zylCAFsTFZdv+04Ty2RNDg
T6l/w0D7zBr5vEK7o+c67h1funXQiR6/xPPXmGu391t1fUW1u2mPpo9zcajE9JOu
zudy6r6jjtOp/S/R7fOZG2u5/cFF1Yhywep3C10119aaqo1obEKbDzrtlsEyv7m4
YIReoo6NPf1QS9CZtso2KH+KhB2lf0PUbJhB3JgfsXjjUkJVNxwYQAU4Y30bCx8H
ACGnjEH2ShEM89ULF5OO/diR/DrTMA==
=7rQE
-----END PGP SIGNATURE-----

--BPssGiq9rDVorsrZ--

