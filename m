Return-Path: <devicetree+bounces-9535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A947CD5CC
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:57:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D546BB20F7D
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 07:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCB51173D;
	Wed, 18 Oct 2023 07:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c57W3SXA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2552015BF
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 07:57:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83285C433C7;
	Wed, 18 Oct 2023 07:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697615842;
	bh=hHnGKBe2emsDrWB85Q2GbtTeoWz6TCrEfOKba41zLeQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c57W3SXA7Y9CMEosf1v+TYWdgEbo3PwPpebiZbvKfHrgqx9cvxX4LpkjcXA6AV0yb
	 khr1zYLsF/vOQ9aE2zGEAav+xgOf9P7Dc4DieAsAM0W269+0E8KpGp2xgcvyeMLqRN
	 i9sHLM/TmTdVBhFdWfFY6kbEBlDcbUDhGBkwQyMudUi8Xmx6sx3a3u2G0Q3FDEP4aV
	 lFzwOUDwH9/7fvVr48e/NqNnOLdoCe6r5yd0zQK/dY1qeCM3HoACS5NmySFZshW0uz
	 7X0MD2Hb6DpfJlarXpaquBhnW4ZPyelLPq7MUlrf548eTj/0ZUC3hX3ZzB4y4+fRoW
	 PS4LcbgBddMiw==
Date: Wed, 18 Oct 2023 08:57:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Mark Brown <broonie@kernel.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <20231018-object-renewable-6e03bce41ff4@spud>
References: <877cnsy6bl.wl-kuninori.morimoto.gx@renesas.com>
 <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>
 <20231012-storage-directory-548905001d10@spud>
 <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
 <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>
 <20231013-planner-irate-8e411cc54a48@spud>
 <874jirxul6.wl-kuninori.morimoto.gx@renesas.com>
 <20231017-darkness-jackknife-5cf32246a079@spud>
 <871qdskbuu.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+PVmEthYiTJgsBmG"
Content-Disposition: inline
In-Reply-To: <871qdskbuu.wl-kuninori.morimoto.gx@renesas.com>


--+PVmEthYiTJgsBmG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 12:34:01AM +0000, Kuninori Morimoto wrote:
>=20
> Hi Conor
>=20
> > That seems like a very unintuitive interface. If there were 32 CPUs and
> > 30 codecs, then it'd be very inconvenient for a human reader to grok the
> > configuration.
>=20
> I don't think such huge number connection will be used...

Your binding allows for that though!
I really don't like the number of elements inverting the meaning of the
property.

Also, this was not the only item in my mail. Why did you not respond to
the other comments?

Cheers,
Conor.

> Thank you for your help !!
>=20
> Best regards
> ---
> Kuninori Morimoto

--+PVmEthYiTJgsBmG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS+P3QAKCRB4tDGHoIJi
0tCFAQD0V51gPF8vA/PWe7k5s+YCmPinkuodkdq5yw4ww1P4eQEAoMQ/Pu66tViV
pp29y4YWrYzXn4I3JMz0tIdQw9rTpQ4=
=1MPg
-----END PGP SIGNATURE-----

--+PVmEthYiTJgsBmG--

