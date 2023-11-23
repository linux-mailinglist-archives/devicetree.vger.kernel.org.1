Return-Path: <devicetree+bounces-18399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F687F651A
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:18:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1608C1C20F8A
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:18:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EBB23FE4C;
	Thu, 23 Nov 2023 17:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VciWPKaD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439573FE46
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 17:18:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B6FEC433C9;
	Thu, 23 Nov 2023 17:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700759914;
	bh=4uuYv4ivuEW0QNa8dUnLLuSPDWYlT69BIfr2llFRLnY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VciWPKaDUoyUh1FepWZVBgnEAvCej2jGYm2TSGV21kR6rxT2wHdKYHWulmTMoEseV
	 QJusH27Z2ZudBxQ1B7xUrUc9F4ScACAMaLstO7vxgwRI77pW+krMbgdRx0Rrp9b8Q1
	 PNEsnqINMuYcAspPMGU0UN0hwXfgGqIxek4NNPZ/xITtRw2uXqBEuyw7S+v9NBAcFo
	 L0HW1CeTZJra/bOWhtwwHUl9sKInrZ7VuduC4xYij7KkMbxYpWUawG84Z046Kzoo14
	 R4WVMicENkQ6N3XbwHcxg/0VgPHaVVXdNT7du6iXWx1pXsOn8M4QQRqCGmpN4EhRX6
	 VePnpFLDsd0nQ==
Date: Thu, 23 Nov 2023 17:18:28 +0000
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
Subject: Re: [PATCH 1/4] dt-bindings: display: mediatek: dsi: add compatible
 for MediaTek MT8195
Message-ID: <20231123-wipe-starch-741e674c1f54@spud>
References: <20231123133749.2030661-1-mwalle@kernel.org>
 <20231123133749.2030661-2-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gjaPXcNp/j7dUovY"
Content-Disposition: inline
In-Reply-To: <20231123133749.2030661-2-mwalle@kernel.org>


--gjaPXcNp/j7dUovY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 02:37:46PM +0100, Michael Walle wrote:
> Add the compatible string for MediaTek MT8195 SoC, using the same DSI
> block as the MT8183.
>=20
> Signed-off-by: Michael Walle <mwalle@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--gjaPXcNp/j7dUovY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV+JYwAKCRB4tDGHoIJi
0k5mAQDNhAGJgE8ZQcNenl97mgSMbjnMQQZT1j8Z6HsCMI1JeQEAm8dsDuvsCcp8
mPJKmSYIoy4Aes//J8lAQpbhat4N6wY=
=3Y9w
-----END PGP SIGNATURE-----

--gjaPXcNp/j7dUovY--

