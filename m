Return-Path: <devicetree+bounces-15383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF4C7E9DD2
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A961B208C8
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:51:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C41B208DA;
	Mon, 13 Nov 2023 13:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/qKU1sC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC33208CE
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE4F0C433C7;
	Mon, 13 Nov 2023 13:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699883492;
	bh=iFqPahuoh83wumWgleLiz2RLpBmfYMkmR7DyuX8vPYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d/qKU1sCTST4XCiq2rnBXveYW9qQv+zyGbLqewoNKnkNUTQYTCrnxvw3cnfVsdRYu
	 HoIJ+1lHWFyd5GfHuUunvKpCg35IgwF6E3DgwOsCGClSFyqsXHlfq0j97ZOqqP7VnI
	 7OZy/0oBD0457n7ZPn/jdueNcgZSCMaaosxZmPebs3pQP0ju0HPRAREaoW3dH653ge
	 ZatDRycD+NBm2MOub1wOjm4/Oj613dGYgWa9Lpg0FjqQQsCh740xWYSKJwCVNaHXvH
	 N3N0Pey5zr9hO5pm+8og1XzRR6qOq6V6CCqyQFoQG44LPHnWxOsZ7I5y6qifnTUZ6W
	 AWKD0ZCrMZkBQ==
Date: Mon, 13 Nov 2023 13:51:30 +0000
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
Subject: Re: [PATCH 3/5] dt-bindings: gpu: samsung: constrain clocks in
 top-level properties
Message-ID: <20231113-sultry-cold-d63dd9f015d9@squawk>
References: <20231112184403.3449-1-krzysztof.kozlowski@linaro.org>
 <20231112184403.3449-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LALutWf/IvU4IogO"
Content-Disposition: inline
In-Reply-To: <20231112184403.3449-3-krzysztof.kozlowski@linaro.org>


--LALutWf/IvU4IogO
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 12, 2023 at 07:44:01PM +0100, Krzysztof Kozlowski wrote:
> When number of clock varies between variants, the Devicetree bindings
> coding convention expects to have widest constraints in top-level
> definition of the properties and narrow them in allOf:if:then block.
>=20
> This is more readable and sometimes allows to spot some errors in the
> bindings.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


=C5cked-by: Conor Dooley <conor.dooley@microchip.com>

--LALutWf/IvU4IogO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVIp3gAKCRB4tDGHoIJi
0v+fAQD7A3JOI53hTzh+WUXEKjg8LoR6kIE2f8e+LkynWk0urAD/YTToVxHZBwiP
mGKW+HpWeaaFQ+b4lscNPK2HRgp58gc=
=gltR
-----END PGP SIGNATURE-----

--LALutWf/IvU4IogO--

