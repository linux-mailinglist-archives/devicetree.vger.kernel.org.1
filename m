Return-Path: <devicetree+bounces-9205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E24C7CC10A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 12:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F53B1C20847
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 10:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3293B3FB1B;
	Tue, 17 Oct 2023 10:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCSzJHab"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1713338FA7
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 10:51:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7994CC433C8;
	Tue, 17 Oct 2023 10:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697539863;
	bh=I+hZXCRSadJ6Ma6lmW3r6cYmgD3Kp3hZpu79EC10yHM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TCSzJHabUzcbY0Ftxmk3DZ934hJeRo43luzPuEcl4P6rQyrO5+Q/M+JTXRGHLpT31
	 9w5+DxCbryRStjrKzka2iSyCYCSfjUyh3sWm7f2Dcotq3qz4hBytpx3LYESSzNUv1h
	 6bZnXgGbsTdGPzV91qkyvlG5gRshzbQlRk4hxe5E/mboxjAcMD8WX1ud+07KdDnraq
	 hus+MJuWPEDOnS+tA97VidHfGhdwMtfkvVNBNLC//7pzkE/sUzU4ErnZVoBr24qw7h
	 byBUsQ6PvuI+f/0eM0DXyAgsqTBNeKAJn5RltNAYAOH2JfyRsmgsbmiY694Sdn0Hu8
	 YI2tSSJp9wvzA==
Date: Tue, 17 Oct 2023 11:50:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ata: tegra: Disallow undefined properties
Message-ID: <20231017-headscarf-reenact-0a5f589cc0a8@spud>
References: <20231016155555.2974051-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="D+7CrOTvugCnq/Gc"
Content-Disposition: inline
In-Reply-To: <20231016155555.2974051-1-robh@kernel.org>


--D+7CrOTvugCnq/Gc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 10:55:54AM -0500, Rob Herring wrote:
> Device specific bindings should not allow undefined properties. This is
> accomplished in json-schema with 'additionalProperties: false'.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml=
 b/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml
> index 3c7a2425f3e6..a17297cbefcb 100644
> --- a/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml
> @@ -151,7 +151,7 @@ allOf:
>          - interconnects
>          - power-domains
> =20
> -additionalProperties: true
> +additionalProperties: false
> =20
>  examples:
>    - |
> --=20
> 2.42.0
>=20
>=20

--D+7CrOTvugCnq/Gc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZS5nEwAKCRB4tDGHoIJi
0qzPAPwPTStgsGxo3i7fsXQp2OINfuKyEV3O6xG5wvRqPuUZ1QEA0a/b4tlrqCso
Xdvq0NzJCTV9apOqJbMlYt7JIXavZwQ=
=lhzd
-----END PGP SIGNATURE-----

--D+7CrOTvugCnq/Gc--

