Return-Path: <devicetree+bounces-9186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3FC7CC01C
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 055921C2092A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8535A4122A;
	Tue, 17 Oct 2023 10:05:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzWiZmVb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6846A41226
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:05:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCAAFC433C7;
	Tue, 17 Oct 2023 10:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697537100;
	bh=ORx4TiHbziD8NTKPwE8OIL+NEWrOQyZcTLBjWa2HhFY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bzWiZmVblW+dKRRPci1CWqNE/MpTQ7bdISzBXNTRIeF7P98FNsDlQQmZbqIqIZjfg
	 5pCaDS006V42rbl4xZFemx7S1ITFkpYOn70MLbCsdcnOZaJuUUpR7OkvCwcLi+oySi
	 aqTBIw12FIDJkcDdw+/GM0iOOeE3RUxyAxpfjk/f1gCc1fUytiQ31A5kCo/sAywbsw
	 yTKP49tEmU8HDhStyuWUR4tjNFEHDLFiK2/jKlz8Bgh0iMHRC0R/RSw3mDTJl9EIXa
	 UdF2TFB5qOmR1GF22V6Y1vK4+u3LZwS/BtGgou7Pm0qrC7xjx36o6GCACQD2JHIY+p
	 JruPNGujk+9rQ==
Date: Tue, 17 Oct 2023 11:04:56 +0100
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
Message-ID: <20231017-darkness-jackknife-5cf32246a079@spud>
References: <877cnsy6bl.wl-kuninori.morimoto.gx@renesas.com>
 <871qe0y6aq.wl-kuninori.morimoto.gx@renesas.com>
 <20231012-storage-directory-548905001d10@spud>
 <87wmvr8ioy.wl-kuninori.morimoto.gx@renesas.com>
 <ZSllNtm4ZnUnkiV2@finisterre.sirena.org.uk>
 <20231013-planner-irate-8e411cc54a48@spud>
 <874jirxul6.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mK+KFz/ZbekWv+fv"
Content-Disposition: inline
In-Reply-To: <874jirxul6.wl-kuninori.morimoto.gx@renesas.com>


--mK+KFz/ZbekWv+fv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 12:46:29AM +0000, Kuninori Morimoto wrote:
>=20
> Hi Conor
>=20
> > > Some of this explanation needs to go into the binding - someone readi=
ng
> > > the binding should really be able to figure out what numbers to put in
> > > there without looking at the code.
> >=20
> > Absolutely :)
>=20
> Indeed :) will do in v4
>=20
> > > > ch-maps =3D <0 0 1> means,=20
> > > > 	cpu0 <-> codec0
> > > > 	cpu1 <-> codec0
> > > > 	cpu2 <-> codec1
> >=20
> > What happens when you want to convey that codec0 & codec1 are both
> > connected to cpu0 & codec2 is connected to cpu1?
> > How would that be described in a DT?
> > Or is that not something anyone would even want to do?
>=20
> In such case, ch-maps is from codec. it will be like below.
> It is judged by number of cpu vs codec. [PATCH 3/4] has both case sample.
>=20
> 	cpu >=3D codec : CPU   base
> 	cpu <  codec : Codec base
>=20
> 	ch-maps =3D <0 0 1>
> 	codec0 <-> cpu0
> 	codec1 <-> cpu0
> 	codec2 <-> cpu1

That seems like a very unintuitive interface. If there were 32 CPUs and
30 codecs, then it'd be very inconvenient for a human reader to grok the
configuration. CPUs were to be disabled in the DT, could the meaning of
the property invert?

I am not really the best when it comes to audio (or media) bindings, but
I am wondering if a phandle based approach would be better, where the
codecs have phandles for their associated CPUs. Maybe Mark, Rob etc could
comment if doing that sort of thing is not feasible.

Cheers,
Conor.


--mK+KFz/ZbekWv+fv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS5cSAAKCRB4tDGHoIJi
0mMMAP9g7XeYeu+IjQ9VTU/Ky8piEtPBsAymq6J4HNo8rFtciAD/chwXcCzMp49B
DMP2Bf4p73/0wUi4X7vBX6zGRrN2Jg8=
=Un8b
-----END PGP SIGNATURE-----

--mK+KFz/ZbekWv+fv--

