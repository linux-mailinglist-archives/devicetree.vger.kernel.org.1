Return-Path: <devicetree+bounces-18401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E747F6527
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2273DB211A7
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B9A23FE53;
	Thu, 23 Nov 2023 17:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iahmJvGw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCDA3FE28
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 17:19:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88CF7C433C7;
	Thu, 23 Nov 2023 17:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700759942;
	bh=o2B91gSRao1cm4mdpvvnT+cSLBigCNcp+xOQKNDn4A4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iahmJvGwt/0+ze9HXyRn6fXTXrsOTmscoofcYH5cE64Jn+7Zl8OLC1CsQeuehJrOY
	 6Nj1HThnyqA4d+fAqJBUcrJxXD+QW0B5pIjUwP3GoYDMk0i2jNOWHXxCObeyDUEJPg
	 BK87uBg791nuLw0vqhA5LNrgFRDeXfzXCV28zeFMgyTI03tZoEtN5phBiD3/o1MaYP
	 bHJIRWj06VnuJSLrOEyQsSZGuoaf3eWlidsEtc1uc0u8MOPZOAt8EUGrYiwRaSEXjU
	 moXac9FzCSAkQ9lEp26WhADWaZJd124nbIfpyxM6Qqeo2RGdvvjSDZSG+dPnE3Kkhh
	 As2xxVshd2euA==
Date: Thu, 23 Nov 2023 17:18:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Michael Walle <mwalle@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Xinlei Lee <xinlei.lee@mediatek.com>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/4] dt-bindings: phy: add compatible for Mediatek MT8195
Message-ID: <20231123-atypical-gradation-d98b95e9c416@spud>
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-3-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ji3UuPhd3xxexBJ5"
Content-Disposition: inline
In-Reply-To: <20231123133749.2030661-3-mwalle@kernel.org>


--ji3UuPhd3xxexBJ5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 02:37:47PM +0100, Michael Walle wrote:
> Add the compatible string for MediaTek MT8195 SoC, using the same MIPI
> D-PHY block as the MT8183.
>=20
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--ji3UuPhd3xxexBJ5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV+JfwAKCRB4tDGHoIJi
0vWUAQCIxBJSBYQxfxnK0ADmbM0UaJC+Lie7AsTjs/2zhG8mjgEAjeZIyAzwtVtq
+xaFexacDMYRWoecls9a4vRISuN+1wE=
=mQTP
-----END PGP SIGNATURE-----

--ji3UuPhd3xxexBJ5--

