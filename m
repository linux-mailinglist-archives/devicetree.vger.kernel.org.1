Return-Path: <devicetree+bounces-16919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BFC7F067F
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 14:42:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7965F280D31
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 13:42:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B58D4107B2;
	Sun, 19 Nov 2023 13:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9glATJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976E610A22
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 13:42:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B1AAC433C8;
	Sun, 19 Nov 2023 13:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700401351;
	bh=ivH/7a0rtuqIcC1N4qUHjlirk04W9i7zLpx25t7awaw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D9glATJ0gYLuYUOP72CaUWTQcNh7jgQeDfWy/0PxArKf+yDJa3EDf1zEQ6UBcPRhR
	 7o6kwvQS++aXZOm/lYMhhW2fqM7RrGqCazyFCDw+TbZk6tViEVzqIZ2EEzv4TmuL6u
	 V0O0B62UOPsCZe4Qamkg9azLa7Ueg+pRTqQI61BMFP+hWXmDPPlt5G9Q2J4GfBnSLb
	 fjRHFfk+s5zwuHll7BEfSLIYBIn2tAnZU9t3bzGVQIvH7J3Wp1zz1VAoPPnZH+fXFG
	 jJCmPHAQaStwAWPLNh7psTo1OtpcvyrFySgzq1h7VMG3cCZts5PL7jixC2tquF/17g
	 Q95KzKua8JX3A==
Date: Sun, 19 Nov 2023 13:42:26 +0000
From: Conor Dooley <conor@kernel.org>
To: Patrick Delaunay <patrick.delaunay@foss.st.com>
Cc: Alexandre TORGUE <alexandre.torgue@foss.st.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/4] dt-bindings: nvmem: add new stm32mp25 compatible for
 stm32-romem
Message-ID: <20231119-tree-improper-b031c2527128@spud>
References: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
 <20231117153310.1.I1784fc7f33cc928e9007d85354707d6382b48b72@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZoXxyyywsf/pWmKt"
Content-Disposition: inline
In-Reply-To: <20231117153310.1.I1784fc7f33cc928e9007d85354707d6382b48b72@changeid>


--ZoXxyyywsf/pWmKt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 03:33:34PM +0100, Patrick Delaunay wrote:
> Add a new compatible for stm32mp25 support.
>=20
> Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>


--ZoXxyyywsf/pWmKt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVoQwgAKCRB4tDGHoIJi
0tbrAQCyo2zim4XR1mSVguxU651KwBRSpJJNI10F0CMpk1jK0QD+PFecoGEbntYE
vyEZHgbChgX0fsQEChjuX5OZQb/CCg8=
=gFZr
-----END PGP SIGNATURE-----

--ZoXxyyywsf/pWmKt--

