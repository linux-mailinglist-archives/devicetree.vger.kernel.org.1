Return-Path: <devicetree+bounces-15700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C216B7EB5C7
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 18:47:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBD591C20954
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 17:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BA4515BC;
	Tue, 14 Nov 2023 17:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M043fNWl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6C22C194
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 17:46:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 906DDC433C8;
	Tue, 14 Nov 2023 17:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699984018;
	bh=eCMU4RF9OJ4X7mcA2D6kVETfj8p7WKrVJJV5XZuQ5Xs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M043fNWlZFaDO4W2DaRdnW/Zkgbizurx86jTKDsqEKY1+6ayXvXouPLX3RaMWw3aW
	 ea0bmPGghraL+VzuSZ8rwjzIU0IAbRV5+nHN75PxxDGubFW9peZ9/S4bmrMLcX+wtA
	 VeIndsF78jfozk3B4yRZ1I8gSwWZAJl2LA5sUH9GEhyNmvFefkDf056z99OgKvCth0
	 6O2uh5CtMEFGEUV3gLLMYvGMdTKi3lhSmz/UWywxVisV/VRLbIT0ATz6lBnVXQZnJw
	 29TPCQ8KzEwNcF/Gw35VQwjEistoju409/jXK0d8Vi70G9QsTVKC4PxjPKmMVRmqgQ
	 FS9AjhGBnaQLQ==
Date: Tue, 14 Nov 2023 17:46:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: meson-g12a-power: document ISP
 power domain
Message-ID: <20231114-tremor-deftly-9e0df4aa6dc9@squawk>
References: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
 <20231114-topic-amlogic-upstream-isp-pmdomain-v1-1-f01e6fca67a0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PwYF9EZeZpf3gj+q"
Content-Disposition: inline
In-Reply-To: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-1-f01e6fca67a0@linaro.org>


--PwYF9EZeZpf3gj+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:19:50AM +0100, Neil Armstrong wrote:
> Add MIPI ISP power domain ID to the G12A Power domains bindings header
>=20
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor,

> ---
>  include/dt-bindings/power/meson-g12a-power.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/include/dt-bindings/power/meson-g12a-power.h b/include/dt-bi=
ndings/power/meson-g12a-power.h
> index 44ec0c50e340..01fd0ac4dd08 100644
> --- a/include/dt-bindings/power/meson-g12a-power.h
> +++ b/include/dt-bindings/power/meson-g12a-power.h
> @@ -10,5 +10,6 @@
>  #define PWRC_G12A_VPU_ID		0
>  #define PWRC_G12A_ETH_ID		1
>  #define PWRC_G12A_NNA_ID		2
> +#define PWRC_G12A_ISP_ID		3
> =20
>  #endif
>=20
> --=20
> 2.34.1
>=20

--PwYF9EZeZpf3gj+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVOyiwAKCRB4tDGHoIJi
0rmuAP962Bb9llHANd7qrsMYBmKgYiRTEy5nus69HQ/DSFFWngEA5WgpUUCCOIRm
vSTfY/PJbbSulsYVa7P1iCnUYaoERQI=
=gjcN
-----END PGP SIGNATURE-----

--PwYF9EZeZpf3gj+q--

