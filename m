Return-Path: <devicetree+bounces-1941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D81B7A92FE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 11:17:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C22CAB2095E
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 09:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7388D8F64;
	Thu, 21 Sep 2023 09:16:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D8F8F55
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 09:16:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C52C8C32777;
	Thu, 21 Sep 2023 09:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695287817;
	bh=L+vZhOZ+kADCdlkNh/ewNubAwKMK2F34h8/SL9SRhQE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aKwFLd0jXAMRuLlul0c7VWcfGPByInmWP9KdPOz1MKQ1gd5QXckHnTdP0YYEeWceh
	 DjIlUty4xIaEJqfl0PTnLlfU0/Zm4fyf7hSugAD4u6Khs3T+6FEI4TmOSSvndtfNoA
	 FcRl75SSu//v5N6Yzm/5uTnBvmUsX4yRIs21Af8BYv0RL2fUSqeNpPbp7e3fnJ5nyL
	 lPDqaFY2VXA9FG/KtikMTNuYOiiiNQapMA+/jEdL/LghBhbOMJtNXaO+70IMbKn8ew
	 8jJwFAp5GrxCTtKnjoH8V9/nMZStYWqRv/TVdfgVRbrUyDhlb2d/K43pTqtedLCYT5
	 0RbVJIPSbCGiA==
Date: Thu, 21 Sep 2023 10:16:52 +0100
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/4] dt-bindings: thermal: mediatek: Add LVTS thermal
 sensors for mt7988
Message-ID: <20230921-552234bd29791cbdcd037a2c@fedora>
References: <20230920175001.47563-1-linux@fw-web.de>
 <20230920175001.47563-3-linux@fw-web.de>
 <31fbdae8-d41c-358b-c8ea-6ee31b158dfd@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Yu54HnRP5ZgUSnoq"
Content-Disposition: inline
In-Reply-To: <31fbdae8-d41c-358b-c8ea-6ee31b158dfd@collabora.com>


--Yu54HnRP5ZgUSnoq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 09:55:46AM +0200, AngeloGioacchino Del Regno wrote:
> Il 20/09/23 19:49, Frank Wunderlich ha scritto:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >=20
> > Add sensor constants for MT7988.
> >=20
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>=20
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.


--Yu54HnRP5ZgUSnoq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQwJ/gAKCRB4tDGHoIJi
0miwAQCKJ0wVlAlz1nuHioGwDLUxrjxPyHOl3leR4myna8AQdAD/eX7X9YhwjllL
Nsb24tuvDQAHgMvN/gj+zYyrG9Nevw0=
=7RDp
-----END PGP SIGNATURE-----

--Yu54HnRP5ZgUSnoq--

