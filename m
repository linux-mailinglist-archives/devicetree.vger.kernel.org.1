Return-Path: <devicetree+bounces-3909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 593CE7B07BD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:09:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 128D9281B7D
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FDE737CB4;
	Wed, 27 Sep 2023 15:09:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33B31170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:09:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47C5DC433CA;
	Wed, 27 Sep 2023 15:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827368;
	bh=18/4dFAgUgsEk5jhxrPrtvf8Fx8XzBL1qYBgx+Qdfsc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=erWru3zkSmTH3lW04CjPiFOj/M2z0dE/r8/JD45VHNteyX2JyFuQh4xCu5RCTyGgy
	 UHzhrjsd9C5mVM6Wmcqy5SIPWY+WhzSPQzMXqbKh7CMxQn1DOHa5ttlEiTlPwlJgIe
	 DB4KT6A2RuTWwBQxHXSneGyB9zcgHPHZmIpdh/6hElcQAqCyIwT4QQ5Z+9pnhcYesQ
	 AXlOW2nR+S1KN7QHv6nVCSrGUBQE4MMqbr3AfHtdiIfn+aLBZ/OrVo6VC7xgXtyjHG
	 zkkKhVvDBYg/1ItLjtCUzavf7a3LMR4NvJmNO2Rtto+wilHqRBZrilKETQgnHuPMR2
	 y6f0Cwi1vlxzw==
Date: Wed, 27 Sep 2023 16:09:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-imx@nxp.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 7/8] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Message-ID: <20230927-consensus-tasty-5624aa53286f@spud>
References: <20230926122957.341094-1-festevam@gmail.com>
 <20230926122957.341094-7-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="WX4HV1vKLW7MroZ0"
Content-Disposition: inline
In-Reply-To: <20230926122957.341094-7-festevam@gmail.com>


--WX4HV1vKLW7MroZ0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--WX4HV1vKLW7MroZ0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRFowAKCRB4tDGHoIJi
0jMDAP9A2R9Xo0Na0dMTiVVHDRiH5dQEQRD/HwIW2G1ocx+E6AEAieFLlFGVfQY8
o1ga+r1tL+ihPRt98JoWQQ+x1U8hbwo=
=5Dar
-----END PGP SIGNATURE-----

--WX4HV1vKLW7MroZ0--

