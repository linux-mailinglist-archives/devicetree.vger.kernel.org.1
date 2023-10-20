Return-Path: <devicetree+bounces-10375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC87D0F41
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:58:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45F521C20F21
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 11:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF448199CD;
	Fri, 20 Oct 2023 11:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJfbIk+b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92133199C9
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 11:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D424FC433C8;
	Fri, 20 Oct 2023 11:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697803103;
	bh=hgzML6+OkKEZo9orZ2B4XMz4xyPZIW1HsH8NObcq26Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lJfbIk+bODkAScfSGDHEq+PLNjXPWWSsU+m/xUitudtsy5RhTn38Y403l0mmABOQ7
	 aktFocybnTVSYyGpsCX0JqQtQU97Djc3QILHLLCMvO844SodK5UfHPEYTzNMsMP9wL
	 7HaEm+i48Acl+5fbosR8Ag9paz2Od7QKAQBYuQZtDL8Mdk3q4gz9iTLR2o3BIq2ebm
	 Xmcvcyvn20O5Bo84NGFE1Awj7lG54eVFa6eWE1bBrgTalLeVb9joOHzU/x52BCXcP8
	 dSt9Fc+5IrRaORbgozVFunhDsjvrxacYtP6lTzHrXGIFfbVcdFSjL4yq3NXVNO91X2
	 IxUCJneVxvayA==
Date: Fri, 20 Oct 2023 12:58:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor@kernel.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <ad696b38-3bca-4cc9-8e9d-81dce9686de4@sirena.org.uk>
References: <20231012-storage-directory-548905001d10@spud>
 <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
 <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>
 <20231013-planner-irate-8e411cc54a48@spud>
 <874jirxul6.wl-kuninori.morimoto.gx@renesas.com>
 <20231017-darkness-jackknife-5cf32246a079@spud>
 <871qdskbuu.wl-kuninori.morimoto.gx@renesas.com>
 <20231018-object-renewable-6e03bce41ff4@spud>
 <77d3d1e5-7120-4a5b-99c0-c34407f63d5b@sirena.org.uk>
 <878r7yqeo4.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="esXYev3zreSbHTkV"
Content-Disposition: inline
In-Reply-To: <878r7yqeo4.wl-kuninori.morimoto.gx@renesas.com>
X-Cookie: teamwork, n.:


--esXYev3zreSbHTkV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 20, 2023 at 01:13:31AM +0000, Kuninori Morimoto wrote:

> DT
> 		(A)						(B)
> 		<- port ->   <- port ->       <- port ->      <- port ->
> 			          ax(ep) <--> (ep)bx
> 	map=<0>	cpu0(ep) <--> (ep)a0		  b0(ep) <--> (ep)codec0  map=<0>
> 	map=<1>	cpu1(ep) <--> (ep)a1		  b1(ep) <--> (ep)codec1  map=<1 2>
> 	map=<2>	cpu2(ep) <--> (ep)a2					  ~~~~~~~~~

I think that looks like what I was thinking of, yes.  Might be
misreading it though!

--esXYev3zreSbHTkV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUya1kACgkQJNaLcl1U
h9BN8gf/f/SHp+53AbjL9/at/+jwsiphdCM3VMOemva8S7CsKEpjdSFr9MfZtRVR
78obwdoyzDD+ZZn58KUnuPC+Uh0092rLKx+CG8SzvMCLpD+BWZysK98dmP5AYk8F
ZjvZpX/z4MhTtkDBPaHfLDQ0T8itq7FwlsGYnvl/fXHDc2wqPV22gkcYLBFoOEtl
e81NELusQ0eCvAWn22Efqnmu5bYY7gvd2FjV8W0AOqW1Mq7wictoL+DnXP5blTHY
w6Uow+hZRH9jdIBxyFU/vePaW5iswWze5lGcWXSi2cDUT/cosaaLQ0S8GKcWhR5l
qRUJeioHr1FsTkUs3+S8Vn3kRS6t5w==
=X52B
-----END PGP SIGNATURE-----

--esXYev3zreSbHTkV--

