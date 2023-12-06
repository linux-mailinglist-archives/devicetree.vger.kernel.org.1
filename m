Return-Path: <devicetree+bounces-22351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CBA8072F8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B57B2B20C15
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7729D37144;
	Wed,  6 Dec 2023 14:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbJE358G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C69B883D
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 14:48:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCF77C433C8;
	Wed,  6 Dec 2023 14:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701874083;
	bh=e2mBg63B3Rxem2QPpMvPu2MtbeR1WTob4G8+Mhk2ajk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KbJE358GgB3e/NSmbwLLfs6klqfMdvQzaJXn4Emk5D1LaL6n55uhmCETJrGmKaF4e
	 FT/tMQDmlqC/CWd/+d4q/TOErmAcYHuZPHjhK0ijkRkXOAXoflXfGC3rVMY2X/M3Hj
	 VVL4DrjOXskVahnhwbgZmJoobTQT4RQlQcXdk8jpkBvDgk2dhoaN8NVg8mPxLl45cd
	 oKNQrCBal0krZY+c+dmeqR36g/MrXwYtRJ+afpQYpp08Y7eUoUhlsvzq59RyRQoOAe
	 Dy+1H6Y9uB2n1tHvGUbeh8jVMv0uItuFfv+R6bLWOVAc1YFU4ocei0G9Q5K2pSQb8e
	 neiCbZhSHEK8w==
Date: Wed, 6 Dec 2023 14:47:59 +0000
From: Conor Dooley <conor@kernel.org>
To: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add TQ-Systems LX2160A based
 boards
Message-ID: <20231206-turban-comma-97e617bcc46c@spud>
References: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>
 <20231206-for-ml-tqmlx2160a-v1-1-622e41ae4d8e@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TNFO97P/ZqDKZ/Nb"
Content-Disposition: inline
In-Reply-To: <20231206-for-ml-tqmlx2160a-v1-1-622e41ae4d8e@ew.tq-group.com>


--TNFO97P/ZqDKZ/Nb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 06, 2023 at 03:01:01PM +0100, Gregor Herburger wrote:
> TQMLX2160A is a TQ-Systems GmbH SoM using the LX2160A SoC.
> MBLX2160a is the starterkit baseboard for TQMLX2160A.
>=20
> Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--TNFO97P/ZqDKZ/Nb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXCJnwAKCRB4tDGHoIJi
0hQcAQDQTtIi80WGv2x4EXEfDjGZOrhV0juu0qqOLZD/ivV2UgEAwyO1Q8MlwP0e
bCEnZL7KcywQ/7flWblpTb/z5rvZ3A8=
=fgya
-----END PGP SIGNATURE-----

--TNFO97P/ZqDKZ/Nb--

