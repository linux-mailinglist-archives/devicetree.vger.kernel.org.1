Return-Path: <devicetree+bounces-11069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 688167D3F7D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 20:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 996351C209AB
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 18:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA7720317;
	Mon, 23 Oct 2023 18:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMaIbhT9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2391D4C97
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 18:47:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C872AC433C7;
	Mon, 23 Oct 2023 18:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698086835;
	bh=a/Xz0HDBkYNts4VwVAiPTWCIxUNlPTz08F7wjXZ7R6c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FMaIbhT92gQicOE0RaU+MomlzKqDUDWqJyFyNI6vv2nvgcLxzX4OrBbrblun9bVRt
	 Qpy9plL6kXIwUNtUVFPXJ0Pi3F7ddmLt6wKNoppso5jCkasrL7fzziczCHLvMcyazu
	 UtfObdMXYMtacNNXK9f5ZMPBgfTsg1Xa6prt+WA9IxGsagL1q4zotG24ZiUI+Mu/Yt
	 F77btmTK5cfTGPV/8I1qM2E1OMPAdYPvPdsHcjG+z8knLZFwptcEHgRuAGhShWSEmz
	 Jiy0Wv2cqtrgd7seYvYwZqKsAhK6gMrZM5FWI5fMQaTI8AqSQ87lXRLvFvKSGjJurU
	 ixwX2SW2yeUDA==
Date: Mon, 23 Oct 2023 19:47:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx
 property
Message-ID: <4565f60c-ee6b-442a-b509-e54e60cf77ae@sirena.org.uk>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
 <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
 <20231023-security-tadpole-8b4fd45a96da@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XwBwEXjWxYuqPtGK"
Content-Disposition: inline
In-Reply-To: <20231023-security-tadpole-8b4fd45a96da@spud>
X-Cookie: Never reveal your best argument.


--XwBwEXjWxYuqPtGK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 23, 2023 at 05:50:42PM +0100, Conor Dooley wrote:
> On Mon, Oct 23, 2023 at 05:36:09AM +0000, Kuninori Morimoto wrote:

> > +      ch-map-idx:

> I would rather this be spelt out as "channel-map-index" - although I
> don't know if that is the best name for the property, as it seems very
> tied to a single operating systems variable names.
> I'll leave it to Mark as to whether there is a less linux implementation
> coupled name for this property.

It's not particularly Linux coupled, this is a fairly general concept.

--XwBwEXjWxYuqPtGK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmU2v60ACgkQJNaLcl1U
h9BO1Af+Im6NJd2L0W8mO6oRNcZSrhse7QemDP7SfjBM6bFGBKMFD6Tcn0zAjB8c
2xblx9ExlOtai797tCAKEaApwAscvP1Vl82p2cWCDqqObiXzerpvPFn4rJ9n2JS1
llSr2FHd+dQ4bnnJgtzBAS9gln2V11MpQYc5ep7Hp3gXAsXabHQutQo8nTjf4nfX
XCLcQjL2i+FNJc1mMWVgE4mojXZZj8AARUV/eytEvN377GGAcW/lDx4bNXLTot8/
Ox6vNu8YsAlJQgax+bS/eKdNEqcC8xy2yqsR/JL+aLWKAqy1/0ezYGgPUNZQgXRQ
FsYbcUMNSRrJlXQQNmvmy/gv8956tQ==
=msxI
-----END PGP SIGNATURE-----

--XwBwEXjWxYuqPtGK--

