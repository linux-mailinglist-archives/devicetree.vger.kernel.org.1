Return-Path: <devicetree+bounces-11353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D5A7D5641
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7566B20E8F
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AF6837144;
	Tue, 24 Oct 2023 15:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMuK4XqK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B8B36B16
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:27:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 687A8C433C8;
	Tue, 24 Oct 2023 15:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698161254;
	bh=GNUAyYjOwu8BN9znMTpBdiid662FC5xPlLGOISKRyuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rMuK4XqKXsWW4BL29we5LHshgIvMU47LumSprYnjnO7QM/Ty6ZxhNsz/4YSvd3PfK
	 RYtCYuo1Bwjj1yRpuZulzYHB08HmnCKHDDmL9TZRNEQM5egydZ2UWVUNsGGzuFvkad
	 rM0uq+WwrtrFmEHZcXKTJlN40++IusDOGj9wEWIIf45pWftWp8p79T7DSseTuSSuNc
	 Xd0jxvDwnFRu0JQq49yXpsHiag/mgLAICb9sgeW2CGb8DvmeqEbNLy891l1bTKrpeX
	 rIKeiJqsB/gxJsKVA4QdBXO07XuGytQl6KTLxlmeqDO38KshOXQWXmUANXDv/YbG5w
	 ytZB11/Frf1iA==
Date: Tue, 24 Oct 2023 16:27:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Mark Brown <broonie@kernel.org>
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
Message-ID: <20231024-tug-marbled-3302a66e4894@spud>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
 <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
 <20231023-security-tadpole-8b4fd45a96da@spud>
 <4565f60c-ee6b-442a-b509-e54e60cf77ae@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bYioqNurgkFRQ2WJ"
Content-Disposition: inline
In-Reply-To: <4565f60c-ee6b-442a-b509-e54e60cf77ae@sirena.org.uk>


--bYioqNurgkFRQ2WJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 07:47:09PM +0100, Mark Brown wrote:
> On Mon, Oct 23, 2023 at 05:50:42PM +0100, Conor Dooley wrote:
> > On Mon, Oct 23, 2023 at 05:36:09AM +0000, Kuninori Morimoto wrote:
>=20
> > > +      ch-map-idx:
>=20
> > I would rather this be spelt out as "channel-map-index" - although I
> > don't know if that is the best name for the property, as it seems very
> > tied to a single operating systems variable names.
> > I'll leave it to Mark as to whether there is a less linux implementation
> > coupled name for this property.
>=20
> It's not particularly Linux coupled, this is a fairly general concept.

You'd know better than I, it just seemed like a rip from the variable
name :)

--bYioqNurgkFRQ2WJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfiYQAKCRB4tDGHoIJi
0po1AQDzQ1Ix+8CUzjK5P7kN8kloRru5wiZyhFfBdKKjoQ03IwD/Rbxt1Smgw+GW
Er4FJl/82tD2s7rixz1KaEJKay0Nawg=
=p/xh
-----END PGP SIGNATURE-----

--bYioqNurgkFRQ2WJ--

