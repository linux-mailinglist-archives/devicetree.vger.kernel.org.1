Return-Path: <devicetree+bounces-1960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B448F7A94C0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 15:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A0D6B209B0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 13:27:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60466B65F;
	Thu, 21 Sep 2023 13:26:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E6EB641
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:26:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28234C4E688;
	Thu, 21 Sep 2023 13:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695302818;
	bh=tNaMqXlX6gWQEtFXsOSS3Bt8DqFxrB36y2GWLAlRgU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Low1o3cxRNpJ+kr+RcB2p0+vtcRmOjeEZ5P2bevbRwsunSHaR5pZWYq4IcLCu67qx
	 L5yUgJ6BOQe+qMaRmOrojjr5ejjpeu6hbCfA+8KhjV6DM+TAqwZHlf+FR96W4No555
	 bUnhPQdgRsSsO3z/2lTdLtQ762ENXxcTzxEcxNjuCAbaFXvQai6TeNXh31fMv8e65G
	 +pv/5xKBSLUhWWu+zHAr41etwjNMvAGYgEvucYu3XhnmcDoyKhyQAjfV/NGINDG8CM
	 hoUakUFn53O7Elu03wt+RqCncdqW46+CyGoD6oKd4IYQKWW1iev+Zb24ldSjikADNv
	 oztVuagd8RLBQ==
Date: Thu, 21 Sep 2023 14:26:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: serial: mxs: Fix compatible list
Message-ID: <20230921-abide-humped-e1bc12732e1c@spud>
References: <20230921005258.184705-1-festevam@gmail.com>
 <20230921-75ba68806e21c96531ea2d70@fedora>
 <CAOMZO5AYTe1mJTvR=2zWCVrYqVVdmP7A9fCCrCPqgisXYQpeYw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IcqB6TI9/rs/79Pq"
Content-Disposition: inline
In-Reply-To: <CAOMZO5AYTe1mJTvR=2zWCVrYqVVdmP7A9fCCrCPqgisXYQpeYw@mail.gmail.com>


--IcqB6TI9/rs/79Pq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 09:53:44AM -0300, Fabio Estevam wrote:
> Hi Conor,
>=20
> On Thu, Sep 21, 2023 at 6:14=E2=80=AFAM Conor Dooley <conor@kernel.org> w=
rote:
>=20
> > Dumb question maybe, but it is not mentioned here - they are actually
> > compatible devices, right? I see that they have some different match
> > data in the driver (relating to some DMA erratum on the 23 seemingly),
> > so it's not immediately obvious to me.
>=20
> That's correct.
>=20
> imx23 and imx28 are SoCs from the same family (mxs) and they share the
> same AUART block, so the same programming model.

Right. I wasn't sure if the erratum workaround would also work on the
28, but sounds like it does.

> imx23 is the first member of this family. It had an AUART erratum.
> imx28 is the second member of this family and had this erratum fixed.
>=20
> This means that using:
>=20
> compatible =3D "fsl,imx28-auart", "fsl,imx23-auart";
>=20
> is valid.
>=20
> Would you like me to improve the commit log with the information above?

Your call.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--IcqB6TI9/rs/79Pq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQxEngAKCRB4tDGHoIJi
0nuMAP937mO9VNRWDf1l/gDGbqmC05x4T5SZgkaxd+5Z/QYBXwD/RqFy5rSwNJ4n
iHPI5CivOvZwyHkf4Rxv8ZNcmMGy7QM=
=+hsj
-----END PGP SIGNATURE-----

--IcqB6TI9/rs/79Pq--

