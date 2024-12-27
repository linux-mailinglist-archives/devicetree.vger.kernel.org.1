Return-Path: <devicetree+bounces-134431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DDE9FD6AC
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 18:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE4A93A2850
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC0321F2373;
	Fri, 27 Dec 2024 17:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G55cB9ZD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9794F1FB3
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 17:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735321222; cv=none; b=AQyRxHbld3DgDmhnB6W0hd+eTxomXyPR/rLtP/30aMTSA6SaHT0cmHeCiYNqIV8TfCTzjNd1PlptFDTB9dUrWLxLtZEedUWBSsuAzfdxO+B5s7wL1PmP/KmwI0Eyn74q7VJZ4NwWxeZ8nhi8JRFfcMivSzywxnX+9DE2Cvpu8uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735321222; c=relaxed/simple;
	bh=J0ATrIW5UmsXjG0M+E3OY4XBnQlH/p5LBOiOgE9mP8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WtVTtDZvBUmPbmtwlbpexRStYzvUu6Sv+/hfqnrK2E+JYCxhCgyi2W6SC2yFBtaZ7hkq6U0qmE3+A2ayb1fPLRLvrH2L7slpU40CBTwS9CwYHqBCuOmJp7F73KJT19aZncoBL4S3A7kESnoUlFb1FZar4b76RFUizmmDIoblhrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G55cB9ZD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88DC9C4CED0;
	Fri, 27 Dec 2024 17:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735321222;
	bh=J0ATrIW5UmsXjG0M+E3OY4XBnQlH/p5LBOiOgE9mP8w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G55cB9ZD43x64IkyWPMSD3L75JCZ0fYzOiZr+xEyYDf0vJHiwYTyeKO4dNRNYhUCq
	 mqvrRP2oCQdUyDv4m2Lyacf9qb6ypjdeC2onHWErLX/wz01wmq8enpeNEofpHYWMJN
	 VejPCEItnHHbTDCFynWmFNNmC4uy3R/PaizM4Ck58+gLjERb2Hr3woWSa3aqUsaFTz
	 Ez2uLD1Lyrg7bre+ZJCVONe+VHLNNW6W7oPX2oFlXVdhcnm82ibi14wkXV9dHxOewF
	 1mLLdZF409LVDyzUlazGmGyXegRS9ieTJb9gyKnU17ZvitYHeZe78XFEAmCDMBdTEM
	 YJDgzda6Livog==
Date: Fri, 27 Dec 2024 17:40:18 +0000
From: Conor Dooley <conor@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/4] dt-bindings: arm: rockchip: Add Edgeble 6TOPS
 Automotive Edge AI CM
Message-ID: <20241227-tactile-recreate-9de95e933e49@spud>
References: <20241227133420.169714-1-jagan@edgeble.ai>
 <20241227133420.169714-2-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="V32klBqQoWD9BeHs"
Content-Disposition: inline
In-Reply-To: <20241227133420.169714-2-jagan@edgeble.ai>


--V32klBqQoWD9BeHs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 27, 2024 at 07:04:18PM +0530, Jagan Teki wrote:
> Edgeble Edge AI CM6C is an Edge AI Accelerator module based on Rockchip
> RK3588M.
>=20
> Edgeble Edge AI CM6 Industrial IO board is an evaluation board that
> would compatible with Edge AI CM6.
>=20
> Add bindings for it.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--V32klBqQoWD9BeHs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ27mggAKCRB4tDGHoIJi
0mE3AQC+09x5ioHgVwKJcDofflS/irAVJwe6Q9jkSmmlbO33dwEAwU4/+49hOw+6
ZN6DN17kLUxKDhF9diGKOEuJZM7ycQI=
=vQ8D
-----END PGP SIGNATURE-----

--V32klBqQoWD9BeHs--

