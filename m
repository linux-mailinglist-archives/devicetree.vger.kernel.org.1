Return-Path: <devicetree+bounces-11354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B037D564A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:28:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11657281968
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 343643715D;
	Tue, 24 Oct 2023 15:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BkB48Xno"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175CF3714C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:28:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CB84C433CD;
	Tue, 24 Oct 2023 15:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698161292;
	bh=J35XI7bU6ttNBm3hM0waZBN2we9c9svXeBc2p+k4H9k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BkB48XnoWs2ey2uivlhZks/pojihi622gzSH62ordG0xCGflHilX95W9BWOVaQXuW
	 PnNSp32/SpxIi9mnU88SIKTGaO7DNWiaA5NBUGC60F8EuozGeRqVhM3/NOMBQ224bp
	 0BXrCdrzfc9KdXIcf+pZwp7q1MvWD+AqJXaUU7V5HAd5n02oH1OsDkakaBBfK65Yed
	 LB0uG8mWx9vKoFgEgzVSHpyzsoPTYOUrzC+f/BHCE3T6WMgabgiJuhZ3yzEJT9JB/H
	 oUKpngsPDge0ti2IYdrCgjuJ7DDzwi5FVNlRPeHnlEma/PsgtU+f0O09+/2TBS0EKC
	 8PTApXU/sGfkg==
Date: Tue, 24 Oct 2023 16:28:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>, bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx
 property
Message-ID: <20231024-preheated-parasail-34d75ee63244@spud>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
 <87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
 <20231023-security-tadpole-8b4fd45a96da@spud>
 <87v8axj698.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YUL/vMUZS2IBektD"
Content-Disposition: inline
In-Reply-To: <87v8axj698.wl-kuninori.morimoto.gx@renesas.com>


--YUL/vMUZS2IBektD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 23, 2023 at 10:58:28PM +0000, Kuninori Morimoto wrote:
>=20
> Hi Conor
>=20
>=20
> > > +          CPU(N) / Codec(M) DAIs were not same in one dai-link. ch-m=
ap-idx is not needed if the
> > > +          numbers were 1:M or N:1 or N=3DM. see soc.h::[dai_link->ch=
_maps Image sample] and
> >=20
> > Again, relying on header files in an operating system to explain the
> > property is not a runner. You need to explain how to populate this
> > property in an operating system independent manner.
>=20
> Sample is not mandatory here, I will remove Linux header pointer from her=
e in v6.

Please don't just remove the reference to the header file, and actually
explain the property instead.

--YUL/vMUZS2IBektD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTfihwAKCRB4tDGHoIJi
0gnGAQDjJrIPJFfPXJhNbXUnGmwE+Ux4CrILw2zypNCCQa3y5gD8DyfHso0kybag
nnlxu3KYGrJ8akSqwxUc9hgzGmmEWQY=
=DTMj
-----END PGP SIGNATURE-----

--YUL/vMUZS2IBektD--

