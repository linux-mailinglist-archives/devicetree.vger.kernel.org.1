Return-Path: <devicetree+bounces-15380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 470817E9DC0
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 762761C2094A
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ADCB208CE;
	Mon, 13 Nov 2023 13:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMa+rh+k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA0D208B9
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C46D5C433C8;
	Mon, 13 Nov 2023 13:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883374;
	bh=l6fOgzs+gRaEoFTmKLmNpHazwRq9v6934z3SOTaUCyc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MMa+rh+k1FLP/dpZGb/+ODoA8QjIaENmmfEToillG80CMfSVwM0qb2laozQ8CMe30
	 u0MDyQuxJyY7/0eFkro3u0hHRXWFv7DHoOGiFbL+ew4yB/UAwpVidA86gGLsvrzsbM
	 p8eA7qaYqFeIEVsOIierZfSWuU/BoIEwduma5ZiHn8gvHHovpXxzOYS46uLPcy/RuC
	 MGoSyIMlVFDvkTzc/nyLshlGoFFvZlZrv1eJkCQ3lbtzyHPpNjqu49vsp/mNVLPz0i
	 gVrrDTDVOnJZ9Ftyn/niLZsc8RbAeFjenKyUdZMLAtSNL+jlVsRVbTHbE9QOTuIKTj
	 wGxKZ8sTU5yuQ==
Date: Mon, 13 Nov 2023 13:49:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Inki Dae <inki.dae@samsung.com>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/5] dt-bindings: gpu: samsung-scaler: constrain iommus
 and power-domains
Message-ID: <20231113-retool-reckless-970ed7808b92@squawk>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
 <20231112184403.3449-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vTwnha2EFbEr3bLJ"
Content-Disposition: inline
In-Reply-To: <20231112184403.3449-5-krzysztof.kozlowski@linaro.org>


--vTwnha2EFbEr3bLJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 12, 2023 at 07:44:03PM +0100, Krzysztof Kozlowski wrote:
> Provide specific constraints for iommus and power-domains, based on
> current DTS.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>


--vTwnha2EFbEr3bLJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIpaAAKCRB4tDGHoIJi
0vdsAP9xzBEZfiwgQCchCiSAfgeayon8ZF+VGCkgyFOC7rrwCAEAnN4FItn+dkBg
Xr6OX2JuydUY/+gpRl7ykQ7fiXJRawo=
=da/7
-----END PGP SIGNATURE-----

--vTwnha2EFbEr3bLJ--

