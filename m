Return-Path: <devicetree+bounces-3725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDC37AFF4A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:02:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 77B61283922
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687A31F60A;
	Wed, 27 Sep 2023 09:02:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584EE1F604
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:02:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 661CAC433C7;
	Wed, 27 Sep 2023 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695805325;
	bh=NV3CQINOR3lLeasFFHKqaebi0Y2ZJ3Da2K0ghEVndvk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U+C5aCr1b1Pf9qpCyCXMWmkBS4e9877ocdcpipFjyK2AlldG6OQvIc5Lh/66hIj1p
	 gMrANA0eF5mYhtiaR4lk/afnIWB/8cl0D1lN2ywOFolD6dYkbTDVsGtGfE+go8gkKE
	 AuLIJcLoCgcmkXkCnMaIrZ04hBOmteJq/ttIrOeWqb2F8fr+d7a61wmoEUoVVCpQ1w
	 g5fGartvWQ7MJ9dkpTrW1R9oHKCVa9MTS7yNoTPfdZ91mBLaWYHpzSQIWZ+L+45st9
	 vDu0MSsnm9d80g/khvDnm57KqJNtdrkq/0q4OKnUZlc1u9wv1IlWq/vhLJUsOKOHrh
	 4z0/Rf9Ay9SXg==
Date: Wed, 27 Sep 2023 11:02:02 +0200
From: Mark Brown <broonie@kernel.org>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 2/2] spi: rzv2m-csi: Add Slave mode support
Message-ID: <ZRPvikYWgbeDdz4X@finisterre.sirena.org.uk>
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-3-fabrizio.castro.jz@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ndibdbb3gqomR4sh"
Content-Disposition: inline
In-Reply-To: <20230926210818.197356-3-fabrizio.castro.jz@renesas.com>
X-Cookie: Save energy:  Drive a smaller shell.


--ndibdbb3gqomR4sh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 26, 2023 at 10:08:18PM +0100, Fabrizio Castro wrote:

> The CSI IP found inside the Renesas RZ/V2M SoC supports
> both SPI Master and SPI Slave roles.

Prefer controller and device.

--ndibdbb3gqomR4sh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUT74kACgkQJNaLcl1U
h9Adigf/W/m1Rw76Vg/MRALbchpkwHaF1X8IjwY3MiTylXCr9/Vp3+sPNfN35chM
M8XO+EXNl/AjW8MSCR7JsXs6QnVFnmsMbEH6VKrvJZignLmLDrPdnx7vf812A1oV
daIlWmBe7ZpUFgi59NF2VTCRgjQaBd46dde+QZTcvlxa0LHgDSYttgl2/hbjVcPx
mxJiLT+oSmjX+emHsbKiX1n0gRs70v924UlFayu/AjkmljQFNVeNOBdQ9Cl5bcFA
kyB6pJuoy2ZwItuzeeEMzSKz/X/82+53EnTX6ohi2j1LKFrRq3XlwPvsuegtYCzY
ER81kWz7Q3Fb49bfhKaCJRN4m6rWJA==
=c/bL
-----END PGP SIGNATURE-----

--ndibdbb3gqomR4sh--

