Return-Path: <devicetree+bounces-26070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E52815907
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 13:38:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D585285B2B
	for <lists+devicetree@lfdr.de>; Sat, 16 Dec 2023 12:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F35983C3C;
	Sat, 16 Dec 2023 12:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og+i9SxN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD63018EA1;
	Sat, 16 Dec 2023 12:38:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24DA1C433C7;
	Sat, 16 Dec 2023 12:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702730285;
	bh=gKEWEFJ/Nxaa3FAFUPIIzzOo4+o3xPfpL5RFJuC7WbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=og+i9SxNdM3gNZwBGi1eEC+NhBzvIiAkjNe0d9nYp/cqMaYsRW0zoK0FXlAyn7Wjs
	 c1E8vqDoJwOSf2nDG9tl3Xf15Q6t3S4ZBRVsZ4/jzmkfBlXo2TXX+VuW2ZWR0IG54y
	 S6fykalyUmZYdFg3ykHI8uzGzsggfB0WVzZDRC3ZlxHSPOhQWvxezxlwhdyxHtfWbV
	 kS8+GyOgQqmUj2PQ/m2II3kIVmlGNfwElhXUC6Q+hMWJCEu/zNjOHFD6ouCsQHpeEE
	 VlNwyqoomOUPTKo3FkKZV39OYT69hhXDLVXo2EVVOpB3drwxX6D7Q1ed/hEEx31Y4k
	 KnwW72bg2bFYg==
Date: Sat, 16 Dec 2023 12:37:59 +0000
From: Conor Dooley <conor@kernel.org>
To: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
Cc: git@amd.com, michal.simek@amd.com, gregkh@linuxfoundation.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	jirislaby@kernel.org, linux-arm-kernel@lists.infradead.org,
	radhey.shyam.pandey@amd.com, srinivas.goud@amd.com,
	shubhrajyoti.datta@amd.com, manion05gk@gmail.com
Subject: Re: [PATCH V6 1/3] dt-bindings: Add reference to rs485.yaml
Message-ID: <20231216-unbalance-ferry-50fa828a4d48@spud>
References: <20231215125627.1691573-1-manikanta.guntupalli@amd.com>
 <20231215125627.1691573-2-manikanta.guntupalli@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ntrmpl8a/hyi8QD7"
Content-Disposition: inline
In-Reply-To: <20231215125627.1691573-2-manikanta.guntupalli@amd.com>


--Ntrmpl8a/hyi8QD7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2023 at 06:26:25PM +0530, Manikanta Guntupalli wrote:
> Add rs485 support to uartps driver and Xilinx/AMD Kria SOM KD240
> board have rs485 support.

Please remove mention of drivers from commit messages for bindings.
Otherwise,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

>=20
> Signed-off-by: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
> ---
> Changes for V2:
> Modify optional gpio name to xlnx,phy-ctrl-gpios.
> Update commit description.
>=20
> Changes for V3:
> Modify optional gpio name to rts-gpios.
> Update commit description.
>=20
> Changes for V4:
> Update rts-gpios description.
>=20
> Changes for V5:
> Remove rts-gpios description.
> Update commit message and description.
>=20
> Changes for V6:
> Update commit description.
> ---
>  Documentation/devicetree/bindings/serial/cdns,uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/cdns,uart.yaml b/Do=
cumentation/devicetree/bindings/serial/cdns,uart.yaml
> index e35ad1109efc..2129247d7c81 100644
> --- a/Documentation/devicetree/bindings/serial/cdns,uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/cdns,uart.yaml
> @@ -55,6 +55,7 @@ required:
> =20
>  allOf:
>    - $ref: serial.yaml#
> +  - $ref: rs485.yaml#
>    - if:
>        properties:
>          compatible:
> --=20
> 2.25.1
>=20

--Ntrmpl8a/hyi8QD7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZX2aJwAKCRB4tDGHoIJi
0nYyAQD3YwA39zu9z7/P3d7KUHk+SPPbApAdckiCR0tGFv+9+QEA3/DK0+H8K+Ou
wIVay3Q2NCrMCLFt8TV5WDXUAIHdzAM=
=HBAl
-----END PGP SIGNATURE-----

--Ntrmpl8a/hyi8QD7--

