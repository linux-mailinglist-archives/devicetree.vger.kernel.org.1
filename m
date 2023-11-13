Return-Path: <devicetree+bounces-15381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD9C7E9DC6
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FAF91C203B7
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617A1208A8;
	Mon, 13 Nov 2023 13:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ3miYrb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFE91D555
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:50:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8833BC433C8;
	Mon, 13 Nov 2023 13:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883401;
	bh=qhyALmG42/AQmB5Z41yLwINy+Y9Ggr/s8g4n3K7PPig=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OJ3miYrbR1FHCDQqp99GzBvvh8EqNkjgMmet6VngYo9QVGM0f55xKDs8zRqNz4Aw8
	 sGaKujEzuBfjS6FLEJU0zFAT7jyMhk4I+NwdyNYrPos7xhSt2NJYuzkLgbyUrC08fX
	 P+M7j4XFhhmHlJe0LB2ysC9SbrI8WvB5E+iT+5+jnyXWGXOoCaoTFY2s4azkTIYAkt
	 cCpB/I4rWaLkgvpd4v9I2I7wefuINYiGeZgj6JHjvEsg+MS2MoyV2siveM9twApx0t
	 6uMMRz0Js+q35SQrzZgMOvM/wf4yLabEzde+U4YXazR7cOJEWFBVMi+6sOkgE+ejd/
	 GO+YxeZulhFxg==
Date: Mon, 13 Nov 2023 13:49:58 +0000
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
Subject: Re: [PATCH 4/5] dt-bindings: gpu: samsung-g2d: constrain iommus and
 power-domains
Message-ID: <20231113-showbiz-onyx-abaf76317c31@squawk>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
 <20231112184403.3449-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wuAMwvZz2Mwnz2Kh"
Content-Disposition: inline
In-Reply-To: <20231112184403.3449-4-krzysztof.kozlowski@linaro.org>


--wuAMwvZz2Mwnz2Kh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 12, 2023 at 07:44:02PM +0100, Krzysztof Kozlowski wrote:
> Provide specific constraints for iommus and power-domains, based on
> current DTS.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--wuAMwvZz2Mwnz2Kh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIpgwAKCRB4tDGHoIJi
0utDAQCjLlryiqd4C5tAN7mBPG1Vtfy9ryR5V2NwUzIP1hUgsQEA0YnDszj+kC63
aQVdBf7uSCJ/2QVNbdJYlyJnfCBIxgM=
=3qea
-----END PGP SIGNATURE-----

--wuAMwvZz2Mwnz2Kh--

