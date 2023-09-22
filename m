Return-Path: <devicetree+bounces-2478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A247AAF2B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7B4262829A0
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C685F1EA84;
	Fri, 22 Sep 2023 10:10:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6664EAC7
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:10:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 414A5C433C7;
	Fri, 22 Sep 2023 10:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695377416;
	bh=qs6BuWtU48wuJV1hE2FTPkk1Gp3WAFAPmGlZE30SDtk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pqqGDqA84PemrzoFyHVx8rz37BMj3iNrdZJXtYP6pIR4gpcn5DUZk92WSSS2XQk4a
	 ARQILOyvPvBptaRiNIqPZiCSjKZwmZvsiQJ7qizCebai5dFqC/DtN0FrbipbTnm9GY
	 L0n807vXhpLbgVTVVuwX+z3fOKlPscV6cP/sUN/Peq5Z++UhdTRE/KRnFUInYUUk4O
	 D5yYWrpi9bamvkJ0vvq7FQMFQt81MLzSNnYGdrVuHAwX/xtORauLMDpLVBJuID1qto
	 I5GPva9QkOnWtY9ZR3js7SyJmqCragXR0/Z1pJXdhC+sTNGZtvRXnH3mC1zW+uuzZw
	 B+8SiBiXTVuqg==
Date: Fri, 22 Sep 2023 11:10:10 +0100
From: Conor Dooley <conor@kernel.org>
To: shravan chippa <shravan.chippa@microchip.com>
Cc: green.wan@sifive.com, vkoul@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, conor+dt@kernel.org, palmer@sifive.com,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	nagasuresh.relli@microchip.com, praveen.kumar@microchip.com
Subject: Re: [PATCH v1 0/3] dma: sf-pdma: various sf-pdma updates for the
 mpfs platform
Message-ID: <20230922-uninstall-catchy-0986e5b03ae5@spud>
References: <20230922095039.74878-1-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RO6bI1l+vKniNdqv"
Content-Disposition: inline
In-Reply-To: <20230922095039.74878-1-shravan.chippa@microchip.com>


--RO6bI1l+vKniNdqv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

On Fri, Sep 22, 2023 at 03:20:36PM +0530, shravan chippa wrote:
> From: Shravan Chippa <shravan.chippa@microchip.com>
>=20
> This series does the following
> 1. Adds a PolarFire SoC specific compatible and code to support for
> out-of-order dma transfers=20
>=20
> 2. Adds generic device tree bindings support by using=20
> of_dma_controller_register()
>=20
> Shravan Chippa (3):
>   dmaengine: sf-pdma: Support of_dma_controller_register()
>   dt-bindings: dma: sf-pdma: add new compatible name
>   dmaengine: sf-pdma: add mpfs-pdma compatible name

It looks like you're missing a patch here that adds this new set of
compatibles to the devicetree?

Thanks,
Conor.

--RO6bI1l+vKniNdqv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ1oAgAKCRB4tDGHoIJi
0hETAQD3M7YmAYcVjH2SfvhEE8ixW2UyQGqhtPDtF4p+qJZUlQD+PK9qylqRlXx7
sWZDm79u7daNsqBrQd5W434CWITDHgg=
=wohC
-----END PGP SIGNATURE-----

--RO6bI1l+vKniNdqv--

