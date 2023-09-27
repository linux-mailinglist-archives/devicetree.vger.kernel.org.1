Return-Path: <devicetree+bounces-3713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1C57AFF1C
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:56:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 701B8B20AB8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5043A1D6B9;
	Wed, 27 Sep 2023 08:56:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F46213ADF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52132C433C7;
	Wed, 27 Sep 2023 08:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695805005;
	bh=Cao/bocpgqpFeJIKvW5opyJ4/rHkM9Gq7550IJgQQDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qe6KTU7Sn8Hs0MapzvaEx7O/dKZhmloYikn5MDNsYhg/AbGi8CTbhVwZZZ/yV63TW
	 NrJlCYAghT2nraItdlDQmhX/ERO/CfbOZE/aV1/fLY6QSvjprJ/7u9gKHHYRXAgliH
	 inT6TzQzp1Gn1lFvUWMhqgM5FDzs3tsSOmLzXMHH0EsztxOsW36EGbeajGwKKU6vXQ
	 rEP/i7/ACILKb0kmxJoWRyQt85wfUgXgaoT9OebJqq/h+sCXUzqyRNKbHB6HQ5/34i
	 T6b9CEhgpMOZUlNJMC9+zyKjsTej6d0XbEcoS36VI12Lbk+H/wKPCK37tDXdzU5AEt
	 hkDIHF7mctJ0Q==
Date: Wed, 27 Sep 2023 10:56:42 +0200
From: Mark Brown <broonie@kernel.org>
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 1/2] spi: renesas,rzv2m-csi: Add SPI Slave related
 properties
Message-ID: <ZRPuSidGd5zO6pXf@finisterre.sirena.org.uk>
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-2-fabrizio.castro.jz@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NweErwwnK6vf4dVT"
Content-Disposition: inline
In-Reply-To: <20230926210818.197356-2-fabrizio.castro.jz@renesas.com>
X-Cookie: Save energy:  Drive a smaller shell.


--NweErwwnK6vf4dVT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 26, 2023 at 10:08:17PM +0100, Fabrizio Castro wrote:
> The CSI IP found inside the Renesas RZ/V2M SoC can also work
> in SPI slave mode.
> When working in slave mode, the IP can make use of the SS
> (Slave Select) pin, with "low" as default active level.
> The active level of SS can be changed to "high" upon configuration.
> This patch adds two new properties, one to make use of the
> SS pin when in slave mode, and one to make the SS pin active high.

Please avoid the use of outdated terminology like this, prefer "device
mode" or similar.

> +  renesas,csi-ss:
> +    type: boolean
> +    description:
> +      Use CSI Slave Selection (SS) pin to enable transmission and reception when
> +      in slave mode.

When would this ever not be true when in device mode?

--NweErwwnK6vf4dVT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUT7kkACgkQJNaLcl1U
h9AMqgf/ZuFxoWKxQxzkjvFfE0DOLwBfbcS17S+hLEbttlrCE5+4EBd224qBeKYQ
iRQpyNVbPXfCJesuwKzplzK1EMJ3bmgtf2JksGIEwxchjCPEcAB3MakWimJyRfeN
CunfmZ6US/62Xg+X8ZTO2F9IYpwfxK2xcT2bwuF1iDNMaYuuH0ohYN8TyRJ1P/d6
2mrkBs367ZBYilYKWICHV3HxBy8HlkAqGG8v5HdoUd5CrJVCyUpuW9NVTbNerSru
XQhvx3DVdPzpBKDv+d7XPsAGD4UhbBBsUKyUsV8l15wgqBy/bzscRM5Qx6nhW4qA
2Ni1w+aITJRQnwtge9UPpruggz0cQA==
=aQdy
-----END PGP SIGNATURE-----

--NweErwwnK6vf4dVT--

