Return-Path: <devicetree+bounces-9767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3487CE657
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:25:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFF381C20848
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 18:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C614F41228;
	Wed, 18 Oct 2023 18:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY9p+aUw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A746E41221
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 18:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE47EC433C9;
	Wed, 18 Oct 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697653508;
	bh=97E3yC4BQi+fmr4qzJQxTJ5rxTwt5RTXRGszFzVrnzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WY9p+aUwVDj4FKNmX4fn0l7t9KvSIKR+Skerlsrm2aRfjVeQIBS5/qloXWzYJAi06
	 mJ8/XaNnSiVN+ozyUO5qNfIl+hupnUVwAUX0LXHhaaq1Rd5DxcX8hTOpuqjRoFBQ5k
	 l73MaDt0vlbR765bg8evALISkDv4PyJ8vujwjMNG2nRAgMzgkOeohSZIHToGrV2y0v
	 n3+XRLDOo0UV1/Oot3LVgkLCwGarOe+q2g7dYP/n3sgoNgxpABYahFe2oBtor/Owjg
	 FsT1dXL7PuAl2DcICUOCI0a9GE0G3m6ro1K4HxXpo8dD2sx42iG8/Ea4i/zTtBlwXO
	 0ZT+/YnwlCc4Q==
Date: Wed, 18 Oct 2023 19:25:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: audio-graph-port: add ch-maps
 property
Message-ID: <77d3d1e5-7120-4a5b-99c0-c34407f63d5b@sirena.org.uk>
References: <877cnsy6bl.wl-kuninori.morimoto.gx@renesas.com>
 <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>
 <20231012-storage-directory-548905001d10@spud>
 <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
 <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>
 <20231013-planner-irate-8e411cc54a48@spud>
 <874jirxul6.wl-kuninori.morimoto.gx@renesas.com>
 <20231017-darkness-jackknife-5cf32246a079@spud>
 <871qdskbuu.wl-kuninori.morimoto.gx@renesas.com>
 <20231018-object-renewable-6e03bce41ff4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6a3rttStc9U4TCn4"
Content-Disposition: inline
In-Reply-To: <20231018-object-renewable-6e03bce41ff4@spud>
X-Cookie: Santa Claus is watching!


--6a3rttStc9U4TCn4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 18, 2023 at 08:57:17AM +0100, Conor Dooley wrote:
> On Wed, Oct 18, 2023 at 12:34:01AM +0000, Kuninori Morimoto wrote:

> > > That seems like a very unintuitive interface. If there were 32 CPUs a=
nd
> > > 30 codecs, then it'd be very inconvenient for a human reader to grok =
the
> > > configuration.

> > I don't think such huge number connection will be used...

I suspect that if we run into systems with very large numbers of devices
on a single bus they'll either want to do something more dynamic and use
it as a switch or be very regular which makes writing things a lot more
manageable.

> Your binding allows for that though!
> I really don't like the number of elements inverting the meaning of the
> property.

I have to say I'm not a big fan of that either.  It might be easier to
map each channel to a slot number on the link, each DAI could then have
an independent map and the kernel could compare DAI slots to join things
up. =20

--6a3rttStc9U4TCn4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUwIv4ACgkQJNaLcl1U
h9D+8Af/S4jMsPVirXuX4PyvmGux12iiyC7NaZ+7jP4zLFKHWVhrm4DWkGe9bNiW
iGeelPWcgE17AVNBkIPLdb6EP6GNiaESxJl4j2RgzHbKY0VQkrKZdqK2Mnm9RMAa
n2KQ2+7xM7JvspApaG+yu6TvLFqKPxCUS/VV65dfdcbei6lI4aKmt/aQFd8ZuhvC
cvSFH7/d1YnvYKB8YI+7DBFcoG5ZiXfKe1kVNUaMmfYGM+6KTvIV5y/7aSqzLApp
BO7B3o1YwCO4K2JKV4vg0keZNopxufaKAD2T8xmrZZmmiXouUdidHlbHEOex9621
wyBsHSbMHCkABSmEijwdVJjitIZzpg==
=+teJ
-----END PGP SIGNATURE-----

--6a3rttStc9U4TCn4--

