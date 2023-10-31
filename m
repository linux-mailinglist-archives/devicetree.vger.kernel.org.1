Return-Path: <devicetree+bounces-13268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B735E7DD392
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 17:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E87CE1C20976
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 16:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AFAA20319;
	Tue, 31 Oct 2023 16:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpFt7Pbl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F450200D4
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 16:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3984BC433C8;
	Tue, 31 Oct 2023 16:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698771561;
	bh=mKGcn7R4nOzJ/7bvetTvuYzWfcgcPLJRUybDiFHL370=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kpFt7Pbl/emgwe30wMPCOP0nayL4uUkpaxty+FGoSU6Oy3UyNFtDughKPMyw47VZm
	 v9dQ1vGg7XMFgwN2lMBFAc9SjWLBQMabMX+gOm30AkRFOpfmXz8C5opwQNk3I1Frwn
	 ijxRfF+/8RTY0pHCGVi3BXv94yzBQwbAG32mZo2vysbXyrGpZ8ZjZx9xUx+zSoaqHh
	 i1zlb6msZDBg8luJy7L6nsZFrYJuL+9fP3GZV4udCZ5v59GjpMqo1gWgswVvwvYFya
	 fwGDtOaNcvIiprfvrkokVVnthRL62s1Ub8m0tdpoDBBBMSUp+YLDnxHxHXK82tDyV8
	 MCLmDAbmpFG9Q==
Date: Tue, 31 Oct 2023 16:59:13 +0000
From: Conor Dooley <conor@kernel.org>
To: Iago Toral Quiroga <itoral@igalia.com>
Cc: dri-devel@lists.freedesktop.org, Maira Canal <mcanal@igalia.com>,
	Emma Anholt <emma@anholt.net>, Melissa Wen <mwen@igalia.com>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v3 3/4] dt-bindings: gpu: v3d: Add BCM2712's compatible
Message-ID: <20231031-replace-quit-ecac72d24414@spud>
References: <20231031073859.25298-1-itoral@igalia.com>
 <20231031073859.25298-4-itoral@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MQiHgOyvs+Jhp68k"
Content-Disposition: inline
In-Reply-To: <20231031073859.25298-4-itoral@igalia.com>


--MQiHgOyvs+Jhp68k
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 08:38:58AM +0100, Iago Toral Quiroga wrote:
> BCM2712, Raspberry Pi 5's SoC, contains a V3D core. So add its specific
> compatible to the bindings.
>=20
> Signed-off-by: Iago Toral Quiroga <itoral@igalia.com>
> Reviewed-by: Ma=EDra Canal <mcanal@igalia.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Do=
cumentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index dae55b8a267b..dc078ceeca9a 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -17,6 +17,7 @@ properties:
>    compatible:
>      enum:
>        - brcm,2711-v3d
> +      - brcm,2712-v3d
>        - brcm,7268-v3d
>        - brcm,7278-v3d
> =20
> --=20
> 2.39.2
>=20

--MQiHgOyvs+Jhp68k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUEyYQAKCRB4tDGHoIJi
0nE7AQCw52kEthThrebujTTdNRQoLFnQMoyxvp6Kqz+KGrkVPgEA76dMVeuKHaHR
yNPSGG+N5t5tbpksMET+arL/A/vbegI=
=6UGw
-----END PGP SIGNATURE-----

--MQiHgOyvs+Jhp68k--

