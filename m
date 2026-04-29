Return-Path: <devicetree+bounces-291225-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEa0OqBP8WmGfwEAu9opvQ
	(envelope-from <devicetree+bounces-291225-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:24:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F3A48DBC5
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 02:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D785F301BCF7
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 00:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76BC718A6A8;
	Wed, 29 Apr 2026 00:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+F7zhby"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B85175A9C;
	Wed, 29 Apr 2026 00:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777422238; cv=none; b=T3H8K6J0Av/PM1kfJTmoGfc8skaDWozzU2xRbTRajRNPr+3/zNbd60KSpGibpdeCef2xGr9nz9ZOe0dkXUXXMxRiJq/bir6NmtvurT4bvQNRxWi25zoRxHbOulOEcd7KIT7VyW4jAFghrmFYNd4alu7axYbQecE4m3o/L2KAIE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777422238; c=relaxed/simple;
	bh=YcRgSx7RdBOF/znXu+5wS1Gz8hSobGRECpLsYfP5Wss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iKAPRHyoKvfhZIaBvdBfp6Z7UR8LvvYwVRXPHhCRbumBMvilCr/ab13NmrvEIWMhJqYj2WmaN73O9CU7Ypit5Pf0Jo4PTx8HNfdgY8cyRyxvTfsDrNjJlC/+YhphOnnRg+XRlT+RYOil5VUhF3wE2k45h/ysZ7QVYlAiza8+nG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+F7zhby; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFB4DC2BCAF;
	Wed, 29 Apr 2026 00:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777422237;
	bh=YcRgSx7RdBOF/znXu+5wS1Gz8hSobGRECpLsYfP5Wss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d+F7zhby5VePcFfrm91zfHHUjbndIevytPloJuH+7zj6BxbqVDlf21671i3cCZaAQ
	 mdgT3CU60hm0vfOAuOsObCfPHgMUDuPFhf2mXy07b+IPfzn44dxZ6zOo7g+EQ4wKqZ
	 /6Rpy+SSQJzr21m/0EBwsNPDq1E0W7SDhlfV7EzI9t4WIl+H56yyzgQnEWNEahbPJW
	 rHR1bNIUcQ8JtwIj05hudIrcopTSp8ViekGNbY7cTd8/Qg46AyzcbuwYMPxUWndUfR
	 JJ3jX+v5YEVbW0hi+/aNRKVFvA8SaIDkF91zq3YUH1ch0j2JKLSg6RRTus4EukamzU
	 ABZi+yuZ67Akg==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 927E61AC584A; Wed, 29 Apr 2026 01:23:55 +0100 (BST)
Date: Wed, 29 Apr 2026 09:23:55 +0900
From: Mark Brown <broonie@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, KancyJoe <kancy2333@outlook.com>
Subject: Re: [PATCH 1/2] dt-bindings: regulator: document the SGM3804 Dual
 Output regulator
Message-ID: <afFPmzqhXbVxZyCo@sirena.co.uk>
References: <20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-0-1d8dc7620256@linaro.org>
 <20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-1-1d8dc7620256@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nzWnEtDwxCA2v1GK"
Content-Disposition: inline
In-Reply-To: <20260428-topic-sm8650-ayaneo-pocket-s2-sgm3804-v1-1-1d8dc7620256@linaro.org>
X-Cookie: 667:
X-Rspamd-Queue-Id: 48F3A48DBC5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,outlook.com];
	TAGGED_FROM(0.00)[bounces-291225-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--nzWnEtDwxCA2v1GK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 28, 2026 at 03:52:05PM +0200, Neil Armstrong wrote:
> Document the SG Micro SGM3804 Single Inductor Dual Output Buck/Boost
> Converter used to power LCD panels a provide positive and negative
> power rails with configurable voltage and active discharge function
> for each output.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--nzWnEtDwxCA2v1GK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnxT5oACgkQJNaLcl1U
h9BYewf+JaHr9hPVFbQMpKEkneQl4HFdyBpERIzmFaCjrqznRG2iJTSlovgmYzjM
fcH99AY8WSh8Je/rFbZL//Io6v480DKMc06gKnvrWGiZbaLo/RAv4iGh6yYrUfYW
bs4O4PJ1+8/qZ5TnwB9Zm6PfgRE23v/LxXf61YKQacxR54FyFFH3LGyp5xkPWXDl
V9hdsAmO7bGGUYS+D68h+YaE+E/Ghc2IYUWckKLGHe3g7lQ+D9IjsfHc593yur30
E9SlKJdNeioceC8Y01DddnF0d1HjQy20dBjsMMH3VpfjKRntw9WWbHz6qGRQrK23
YygqBNg7a+YpgjhBAF+i4iP2/ZQZqQ==
=1Sw7
-----END PGP SIGNATURE-----

--nzWnEtDwxCA2v1GK--

