Return-Path: <devicetree+bounces-13413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5674C7DE08C
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 12:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD78E2812D6
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9665111720;
	Wed,  1 Nov 2023 11:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7gYke/C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7760E111B9
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 11:53:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02D7AC433CB;
	Wed,  1 Nov 2023 11:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698839579;
	bh=kT+HA+zDzpFBdPHZSCST/qs7bSjbi8b7+JQSnoifHqc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7gYke/CXiKI6sE+NGcUo/Cwih/+kR9UBpPGsQRyJhEHFrzHVo/pEga4OQS2k7Z9W
	 gb6E/qb91m4td9dXkgvTLNvBpW1F5s6/8rBQOv1xvhkkVigbCFKkYXqODI4kYLCZ+6
	 UY7DQS9VWZNIXh4xddKkC1SPAnvYitevBwIzdf8/1NvHX6/hR4O3rVOV3viWUVl+3b
	 i9G5PD5idJJCpWRgmgNcke14CStmZJnuUO4uzPB2u9URSo/aSeTknCQXWl3a3lhkqW
	 4j+ZmWN/fQfpCyI6h8cFTphp+vlopUGOaWVowCKMjy914W+Owp5H3ZGtveaHnX1l2C
	 +c3neLnzUa79w==
Date: Wed, 1 Nov 2023 11:52:55 +0000
From: Conor Dooley <conor@kernel.org>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v2 0/2] soc: sifive: ccache: Add StarFive JH7100 support
Message-ID: <20231101-random-overlord-1315a03183fc@spud>
References: <20231031141444.53426-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XOUMIggm0qSyhk5k"
Content-Disposition: inline
In-Reply-To: <20231031141444.53426-1-emil.renner.berthing@canonical.com>


--XOUMIggm0qSyhk5k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2023 at 03:14:42PM +0100, Emil Renner Berthing wrote:
> This series adds support for the StarFive JH7100 SoC to the SiFive cache
> controller driver. The JH7100 was a "development version" of the JH7110
> used on the BeagleV Starlight and VisionFive V1 boards. It has
> non-coherent peripheral DMAs but was designed before the standard RISC-V
> Zicbom extension, so it neeeds support in this driver for non-standard
> cache management.
>=20
> Since v1:
> - Fix email threading, hopefully.
> - Drop sifive,ccache-ops device tree property and just match on the
>   compatible. (Conor)

I'll grab these after the mw, presuming nothing comes up in the interim.

--XOUMIggm0qSyhk5k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUI8FwAKCRB4tDGHoIJi
0rPZAP923JPVEAE08sFKAd03mK5oK6G8QtIf3DWmwCgjl6rJgQD/beuiko2z//i2
B35OMBkkNMjeAunNJpSTmY/KXCQbxA4=
=l5J+
-----END PGP SIGNATURE-----

--XOUMIggm0qSyhk5k--

