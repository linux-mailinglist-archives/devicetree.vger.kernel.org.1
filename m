Return-Path: <devicetree+bounces-13461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A13D7DE283
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C25AD2811E5
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 14:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79471134D7;
	Wed,  1 Nov 2023 14:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/3xG3SF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5900D134CD
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 14:57:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FDFCC433C8;
	Wed,  1 Nov 2023 14:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698850679;
	bh=qZ55fdHQk3fOUH7BBLwgg60kJywx1z///E8C4Ry7qcg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H/3xG3SFX7PDHOtADXzE4YbJjG/exugleZUqEh+ogcchr/T1P+qaR4u5fx6tswz1a
	 Lr/wzBxwavLPhmlJGbkN/SHJfZ7CwkshltihiLxtEdUDDPJS37Vv1bOamOTXfCzQWQ
	 9lVtV/DYv9xfEq0jMVSF9H/85mYxu+1Yeh9z2sqLEs8kcsR595AoJrG9EY5ReFzT9L
	 +Fynq9w70G60KsumPx2DqHpRfIuddA2xL28GRRp7wr/Egsa9D6g79Eb2HhzstaZBrG
	 7hxEnkIfECMh5jim+HCO8YB9XWp2WPYCerLJoyUt5wOZROZo1x9pHB6USpuAl0n7N2
	 y3WRNMzRBh2Vw==
Date: Wed, 1 Nov 2023 14:57:53 +0000
From: Conor Dooley <conor@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
	Umang Jain <umang.jain@ideasonboard.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	"Paul J. Murphy" <paul.j.murphy@intel.com>,
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/6] media: dt-bindings: media: imx335: Add supply
 bindings
Message-ID: <20231101-subscribe-massive-0a719216375d@spud>
References: <20231101131354.2333498-1-kieran.bingham@ideasonboard.com>
 <20231101131354.2333498-2-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lQ4u7dUvhW08tIKL"
Content-Disposition: inline
In-Reply-To: <20231101131354.2333498-2-kieran.bingham@ideasonboard.com>


--lQ4u7dUvhW08tIKL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 01, 2023 at 01:13:49PM +0000, Kieran Bingham wrote:
> Add the bindings for the supply references used on the IMX335.
>=20
> Reviewed-by: Umang Jain <umang.jain@ideasonboard.com>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
>=20
> ---
> v2:
>  - Remove the supplies from required properties to prevent ABI breakage.
>=20
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

FYI, double signoff, mb your tooling be acting up.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--lQ4u7dUvhW08tIKL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUJncQAKCRB4tDGHoIJi
0jZTAP0bt39/eWWvtTOSVDEayTA4j0xHSp8Iavc0vz1ukk7xCgD/UDcU1kFM8Quz
jMgQ0BcQwjWaSf6B4kT8z16SUQbUNwk=
=QzoB
-----END PGP SIGNATURE-----

--lQ4u7dUvhW08tIKL--

