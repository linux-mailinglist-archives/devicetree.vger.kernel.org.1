Return-Path: <devicetree+bounces-132033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CA39F55E8
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 19:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D31A3188563D
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 18:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171138F5A;
	Tue, 17 Dec 2024 18:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6PKfh+b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E638C1F869E
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 18:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734459452; cv=none; b=lJUqIMbxIeRJ5oj8hRO4pFXzhkhMttOyywV6ZCZUtu6wZZjh+LYu790O+ItV/g4gC39RYGCw60mhLPBxLxjpBPbOwm1RQtOY4pyZdNEpsQIq9Z6JNMaNQsljOw6Bkt4CfCUnMG5C1nBJ6e5sfHa8M4IMsE0LL6p5c7wDG69ku2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734459452; c=relaxed/simple;
	bh=Y29ea42Kp25MVyYUZK6G0WLpbBrAnSqVCNYtDQ7vaaI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P+5cUgZz7fJuirk/r53aRLIY3xXhyoNG9+0uhiytaVIpRwom6DQyyBBNly8NADKufMKueMA0/QeZAkddKN61wO8tO9q30iNHsF6ZI7yGXHriOWEmdgu3N20Bluy+qMWsLVC17O4nsJkCVeBOBkGstJZr72M7d4sfZvUyZxk0zek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6PKfh+b; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 985B6C4CED3;
	Tue, 17 Dec 2024 18:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734459451;
	bh=Y29ea42Kp25MVyYUZK6G0WLpbBrAnSqVCNYtDQ7vaaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l6PKfh+bM/d4y0SeF8oxPs6zR4k/+NKc52iaHoGFRb1PvHT/qfJuBFMwBVEQlb9OH
	 NEU3NGLGwO3AXWaXmZUI3pX6Lkd/9K1fcKJEG+RbSEFrrg6ifsKDqlWt7k/5zG+aAE
	 rvKCswAQwizznA3Iiwx8b4ZWEyjp0JEGN7KmT5igtCUs67MRiljYojUm8AXM9BbNmO
	 h/pr3R+vkN8CcamC+4D7n39Q+9bccCTGnTvQzWLJmIZKuIbG492cwgDtO3n/n/zZpR
	 0UVVdfxA7v3da3PP8UbwiuqBTm12tJfq/EQqF3bmIp487SWIvnOet50VQ3X53igpcf
	 SEKuDdtjRivlA==
Date: Tue, 17 Dec 2024 18:17:27 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: samsung,mipi-dsim: Document
 fsl,imx7d-mipi-dsim
Message-ID: <20241217-uninstall-tingly-c1341dc4615b@spud>
References: <20241217131431.1464983-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j+gk1rq+qln5YYSY"
Content-Disposition: inline
In-Reply-To: <20241217131431.1464983-1-festevam@gmail.com>


--j+gk1rq+qln5YYSY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2024 at 10:14:31AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The i.MX7D MIPI DSIM block is compatible with i.MX8MM.
>=20
> imx7s.dtsi uses the following compatible string:
>=20
> compatible =3D "fsl,imx7d-mipi-dsim", "fsl,imx8mm-mipi-dsim";
>=20
> Document "fsl,imx7d-mipi-dsim" to fix the following dt-schema warning:
>=20
> ['fsl,imx7d-mipi-dsim', 'fsl,imx8mm-mipi-dsim'] is too long
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--j+gk1rq+qln5YYSY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2HAIQAKCRB4tDGHoIJi
0k3MAQCt6jlstk4tiL4GQfRt0NMWT/uIMNSd5ArzTb3HL68aYQD/UK8vSZDHebjl
l3xTUJ+5CWOxKfdRrHiMnMiZjTK3cwY=
=/A6H
-----END PGP SIGNATURE-----

--j+gk1rq+qln5YYSY--

