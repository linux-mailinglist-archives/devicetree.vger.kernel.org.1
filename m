Return-Path: <devicetree+bounces-18397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A69D77F650E
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 18:17:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D92E71C20C9D
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6F93FE3E;
	Thu, 23 Nov 2023 17:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4+pi29b"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEC246B2
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 17:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B184FC433CC;
	Thu, 23 Nov 2023 17:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700759840;
	bh=eW+CaP4BT2sNRyEoRgqQyByj/UxBL0nOsR4Sy6KWAB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b4+pi29bIwN67/0/212NMFo+i0rNMY2++XhQ3BSe0x7cAv7zqJlXtL4V3ReslEQW1
	 XaJxbGtNBNmPyY5wGbWd9MSXUrCUN9q2c51w2+nQU2jwTmj5db8sJbgxyz4OlFbYQm
	 Mf4kM1iB5+MKa/xpJUf9Sgc6waDiauIIuibWUXcwAyVO0RQc0St1TMbH7V7sOeF2eI
	 hj/nu7RC4ckUBO0tgiVH+csJMCV9WN/OsoRMVF4AvKSG6LcZVetRPzE9zjBNBmgvVb
	 nfJ8fdqaexbkuL0CIv/PXR5KjfjMohP6mPtkBP+pnqqOUI4vgTw5yDvwdoI4vkQO0W
	 1cqkQ52sCsXFw==
Date: Thu, 23 Nov 2023 17:17:14 +0000
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
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display: mediatek: dsi: remove Xinlei's mail
Message-ID: <20231123-reply-runny-87d16e39f9f5@spud>
References: <20231123134927.2034024-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BrmG9mhQOAkPRD4C"
Content-Disposition: inline
In-Reply-To: <20231123134927.2034024-1-mwalle@kernel.org>


--BrmG9mhQOAkPRD4C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 23, 2023 at 02:49:27PM +0100, Michael Walle wrote:
> Xinlei Lee's mail is bouncing:
>=20
> <xinlei.lee@mediatek.com>: host mailgw02.mediatek.com[216.200.240.185] sa=
id:
>     550 Relaying mail to xinlei.lee@mediatek.com is not allowed (in reply=
 to
>     RCPT TO command)
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--BrmG9mhQOAkPRD4C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV+JGgAKCRB4tDGHoIJi
0pFxAQCyKVuk2eJSY49HrTBq2484vkMJ8MFxC/6EHrUG8IP+jQEAvJ6e6guZQQ5H
M4/Y0irGropjfjLwrA8b4j9bXOhM8AI=
=9maz
-----END PGP SIGNATURE-----

--BrmG9mhQOAkPRD4C--

