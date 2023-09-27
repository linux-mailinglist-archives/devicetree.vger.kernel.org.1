Return-Path: <devicetree+bounces-3900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E65F7B075C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:53:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 784EF1C20878
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0196031A9B;
	Wed, 27 Sep 2023 14:53:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A2F1846
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 14:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3B76C433C7;
	Wed, 27 Sep 2023 14:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695826419;
	bh=ks2l+BMDg4lCkkBqKC04Z5qzTIgadGUiaB5wSsEhvyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HzjiIzhDYsdkCUPN6FyfHTAS7J2NFOl34P8gwGVXQdi/0QXMWc/dgM40gP9Vfk+jk
	 SJfba7q+KVwJV0fAUBeTM/goy1UJCbTDmrj+JN854tsdRlRDKN1nLYCaRzIDPq1uAg
	 nQVFE9tZ/TGbXNdqQTOsJ78aSFL8GUkoy9ZvuXvWB8j/7RUaCjF3NnEsIyOUAdYYux
	 vaXI+p8DQnQyhv1N9kTw7poG2+HRtPQ1rXj7ljvivJg1hZwdsNbVKQyT5G3RKOK6jd
	 XEOhMUsYbQstAm3muGYxSfVTyPgymVHnuQ7IU1muRoMrjLqjS2DPnglK80/ie9ZYLa
	 ILjkZI/ugHl3A==
Date: Wed, 27 Sep 2023 15:53:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Walker Chen <walker.chen@starfivetech.com>,
	Hal Feng <hal.feng@starfivetech.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [-next v1 1/2] dt-bindings: power: Update prefixes for AON power
 domain
Message-ID: <20230927-unselfish-relapsing-a087cf6135c6@spud>
References: <20230927130734.9921-1-changhuang.liang@starfivetech.com>
 <20230927130734.9921-2-changhuang.liang@starfivetech.com>
 <20230927-coma-flashback-07d2e7b34f96@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XBVBzVPHfwlmd97t"
Content-Disposition: inline
In-Reply-To: <20230927-coma-flashback-07d2e7b34f96@spud>


--XBVBzVPHfwlmd97t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 03:52:44PM +0100, Conor Dooley wrote:
> On Wed, Sep 27, 2023 at 06:07:33AM -0700, Changhuang Liang wrote:
> > Use "JH7110_AON_PD_" prefix for AON power doamin for JH7110 SoC.
> >=20
> > Reviewed-by: Walker Chen <walker.chen@starfivetech.com>
> > Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Also, It'd have been worth mentioning that there are no ABI issues here
due to this stuff not yet being in Linus' tree.

>=20
> Thanks,
> Conor.
>=20
> > ---
> >  include/dt-bindings/power/starfive,jh7110-pmu.h | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/include/dt-bindings/power/starfive,jh7110-pmu.h b/include/=
dt-bindings/power/starfive,jh7110-pmu.h
> > index 341e2a0676ba..7b4f24927dee 100644
> > --- a/include/dt-bindings/power/starfive,jh7110-pmu.h
> > +++ b/include/dt-bindings/power/starfive,jh7110-pmu.h
> > @@ -14,7 +14,8 @@
> >  #define JH7110_PD_ISP		5
> >  #define JH7110_PD_VENC		6
> > =20
> > -#define JH7110_PD_DPHY_TX	0
> > -#define JH7110_PD_DPHY_RX	1
> > +/* AON Power Domain */
> > +#define JH7110_AON_PD_DPHY_TX	0
> > +#define JH7110_AON_PD_DPHY_RX	1
> > =20
> >  #endif
> > --=20
> > 2.25.1
> >=20



--XBVBzVPHfwlmd97t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRB7wAKCRB4tDGHoIJi
0lTiAP9qoPZX/TGvi8wHXi8+VftfRNK/r9TwhvddwUcmy5JqtwEAgoQJf8YI+4Lu
VGL+agnsi5p+wbzE+jBDzOSKL9u0jwc=
=HUZb
-----END PGP SIGNATURE-----

--XBVBzVPHfwlmd97t--

