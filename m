Return-Path: <devicetree+bounces-291228-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDObEShT8WkLgAEAu9opvQ
	(envelope-from <devicetree+bounces-291228-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:39:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D69AC48DC94
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:39:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A72A63016F34
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 00:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79EB71FC10C;
	Wed, 29 Apr 2026 00:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itsv+Qos"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565551EB5E3;
	Wed, 29 Apr 2026 00:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777423141; cv=none; b=s1D7ObxvgBLPw3VSvFGlpF9ly/f0WMKE2DY13Owunmo5skUIlQrUP/iWuSSCn0Nrh6WJMQJX8JCgcVk9ntYo86XA6izktrlyG+dkDQuFD8OGOQ75rHEDekSz1VDCDqADSOfhE1k0ln+zQM4y6Wop8riZK9q8CT3E925C4fFioaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777423141; c=relaxed/simple;
	bh=PLxw4Jy6AHuopHGBLt3yni84hC4BG3YGcPMr078UOy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HTjxhWSAgALOoc6gIMAXpv9OXxq37ox0uRRmh5/ajlmcYVQvrcZux13aVhCDV7rbfsV07d9tgGhHhI+hXZPR1Lmvfgar/d3xblLXG6htXM7wxe3lo3MIqa3OEOb6Z+uRrovm3CBF/wAb+Veqr4LPybVoktzivpW6QgED0wr74Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itsv+Qos; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1CBCC2BCAF;
	Wed, 29 Apr 2026 00:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777423141;
	bh=PLxw4Jy6AHuopHGBLt3yni84hC4BG3YGcPMr078UOy8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=itsv+QosjjMh1B7121Q/9KGSkBGcaDYXrzGwZM6c/hTRxCshqrs/9f7ZF67TxHoZt
	 1b2VujA4b9U2L4fTW5sENnMyH/dfNYm3lTLfuEW6uSQ4W25GtGy7JoCuVenngMs86h
	 1Rm+YLjzZxkT73sVB0H4FFZ+msJghcULtvxPxijIikC1E7Qm/kse2MSHowXHBcgBaR
	 ezP+P79mcD3ps+c8LpA7fZmAtHkODf6LiwIKZ8QD5mUG7PJVrpl1lX8V53cjIR1XWk
	 S1RNiB+G/LwUFX+bnEALPZc8fBBtmE6d2NRQkaEWZv8oo/zsYkl1mBlIVEhULt7sFl
	 vT+3NgI0LvwTA==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id B4FDB1AC584A; Wed, 29 Apr 2026 01:38:58 +0100 (BST)
Date: Wed, 29 Apr 2026 09:38:58 +0900
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH 1/2] dt-bindings: regulator: document the SGM3804 Dual
 Output regulator
Message-ID: <afFTIlkS7Vg_2Eah@sirena.co.uk>
References: <20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-0-1d8dc7620256@linaro.org>
 <20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-1-1d8dc7620256@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A2F2hL8ZkVaCF8Yb"
Content-Disposition: inline
In-Reply-To: <20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-1-1d8dc7620256@linaro.org>
X-Cookie: 667:
X-Rspamd-Queue-Id: D69AC48DC94
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	TAGGED_FROM(0.00)[bounces-291228-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sirena.co.uk:mid]


--A2F2hL8ZkVaCF8Yb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 28, 2026 at 03:52:05PM +0200, Neil Armstrong wrote:
> Document the SG Micro SGM3804 Single Inductor Dual Output Buck/Boost
> Converter used to power LCD panels a provide positive and negative
> power rails with configurable voltage and active discharge function
> for each output.

> +  enable-gpios:
> +    maxItems: 2
> +    description:
> +      GPIO specifiers to enable the positive and negative outputs.

The driver requires both to be provided, either it should relax it's
requirements during probe() and allow only one of the regulators to be
instantiated or if that's not a realistic setup the binding should set
minItems too.

--A2F2hL8ZkVaCF8Yb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnxUyEACgkQJNaLcl1U
h9APNwf+I0K8Iy/gbdF62v0V6zkOMyr8kRRWNRoKKeFDQz2q9r9gNpg1PeJqkwhn
95iHyYtiKLLnluZI+XbM+mzD7c+j0js9pjvM5C+G7m4E6VazcjiT6FfXvZBf53w5
GZ7FwDbr7MrUUhHqHIALMmKmRx/RfeWY+tF6gzG/QSP+V8QgM7Oax+dORbou3klm
x/QQCKa+SFZCl9Pqfm8Q+svZ+Ucc1eYFFaQ2E+eCVCicEOCVGl8GQLRp/IXn0LZB
WribdjPtfG2WhfDEptFdfXPIhUctcou/u6uee3rQx4ZQcwBgW78gYw+sJxCPk+Ox
hwa+MGarUznOq/PfNtBXUzePYYMilg==
=SksQ
-----END PGP SIGNATURE-----

--A2F2hL8ZkVaCF8Yb--

