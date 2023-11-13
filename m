Return-Path: <devicetree+bounces-15374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 133EC7E9D4F
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 14:37:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 987A2280CFC
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8CF208A5;
	Mon, 13 Nov 2023 13:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4oELlsf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81746208A3
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:36:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF26CC433C7;
	Mon, 13 Nov 2023 13:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699882617;
	bh=7XqO95u4Ap+QRuJXd6EyepWelg/diNFZubTgB9saIII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g4oELlsfbrOfRr8QoFxjUm+ZUpvO+8U5+2BG2aEqR+Rr9e23eHttQf4CDk4bnu7Mz
	 5qlBFjJ0/ydlei6F3M5HRadYBylYF9Wb+34XvpK8Uj58PXNpwSgeMpRPwV/NxHeCQF
	 M0f2Tu6kcyeAbDjNlF/LhXScNuTCpmicsQBYM256Geueedha3ljdliigBgSPYHap3V
	 MYdBNnM+FpjoxZTUwNX59otGiToVn47/5GWpHH958NsfVsdKs5bWQDoQkgIBy7zWo7
	 v+vF4ZYzswFt0/gwo5Pe/lasbWwVvHbYe5l90ra7NRRNYamZW2fYn00BmZzox3cte/
	 UgtrytPKKqXkA==
Date: Mon, 13 Nov 2023 13:36:54 +0000
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add binding for Sophgo CV1800B
 reset controller
Message-ID: <20231113-washable-elbow-629bf42b9be1@squawk>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tzFxyJuc7xawNjzv"
Content-Disposition: inline
In-Reply-To: <20231113005503.2423-2-jszhang@kernel.org>


--tzFxyJuc7xawNjzv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 08:55:00AM +0800, Jisheng Zhang wrote:
> Add devicetree binding for Sophgo CV1800B SoC reset controller.
>=20
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

With the unterminated ifndef that was pointed out by the robots fixed,
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

> +/*				0-1	*/
> +/*				10	*/
> +/*				13	*/
> +/*				15	*/
> +/*				17	*/
> +/*				36-39	*/
> +/*				53-57	*/
> +/*				59-60	*/
> +/*				63-73	*/
> +/*				90	*/
> +/*				94	*/
> +/*				102-292	*/

There are quite a lot of gaps here, do you know why that is?

Thanks,
Conor.

--tzFxyJuc7xawNjzv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVImcgAKCRB4tDGHoIJi
0u9kAP46DfhtAfiGORBa22Q/gUV3tOz4iPG66mKpSXiWP887uQEA91//1i0UddnN
GAWSlENHPm1tZPfnKSq4WqLpkJVhTw8=
=THoT
-----END PGP SIGNATURE-----

--tzFxyJuc7xawNjzv--

