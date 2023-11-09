Return-Path: <devicetree+bounces-14845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6325F7E6FF5
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 18:15:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B24C1C2092D
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 17:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD6120338;
	Thu,  9 Nov 2023 17:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe0bB+At"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED4619464
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 17:15:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F37E3C433CA;
	Thu,  9 Nov 2023 17:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699550114;
	bh=VrmtHvFIFAf4vhLknqzGY4CAC0ddBJN+OXw9FKzqRB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qe0bB+AtLMXEM85wddl2mDF6P2tPMcQptGsAbroFpDiBoVeaIErEExxtxEXZuxjT+
	 A0gx9bKZDMfrUgsvZAiPVXpVrlIp6pgzuVovXV7sJs1HG1rShXjZMJ9qhdj7UHyIXq
	 +8IP5ArYXANUZjyciVG/N0L2IlQwGe2bKrJfIaGFjhQ8Eu8uJ1atocQ7A3O0a9VJVI
	 gfCiVtJ37OqASUEhhmB5+sOtz+csR/Hkj8+W4KfzJGTnPIl7Rbc043+F1jHstN1Eun
	 zIDFuEpYHUYQQWsZnrbDjgb97Zoi+jiXpoJvcVNukd2Z5NXwkBnttMzDkGf+Bjlpmh
	 wSnul6nNo9jrA==
Date: Thu, 9 Nov 2023 17:15:09 +0000
From: Conor Dooley <conor@kernel.org>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
	git@xilinx.com, Albert Ou <aou@eecs.berkeley.edu>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: riscv: cpus: Add AMD MicroBlaze V compatible
Message-ID: <20231109-hardcore-empathic-dd95ccb2c878@spud>
References: <d442d916204d26f82c1c3a924a4cdfb117960e1b.1699270661.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7xwT4XJ225knA3hD"
Content-Disposition: inline
In-Reply-To: <d442d916204d26f82c1c3a924a4cdfb117960e1b.1699270661.git.michal.simek@amd.com>


--7xwT4XJ225knA3hD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 06, 2023 at 12:37:47PM +0100, Michal Simek wrote:
> MicroBlaze V is new AMD/Xilinx soft-core 32bit RISC-V processor IP.
> It is hardware compatible with classic MicroBlaze processor.
>=20
> Signed-off-by: Michal Simek <michal.simek@amd.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
I thought I had already done so, but must have forgot to actually send
the email.

Cheers,
Conor.

> ---
>=20
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 97e8441eda1c..7b077af62b27 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -32,6 +32,7 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - amd,mbv32
>                - andestech,ax45mp
>                - canaan,k210
>                - sifive,bullet0
> --=20
> 2.36.1
>=20

--7xwT4XJ225knA3hD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZU0TnQAKCRB4tDGHoIJi
0tgeAQCQdC+QAWJRhWvWwoAoN/Msq0G/jpWZOlReGX4cEyxHXwEA9pkjRVCwq0ZR
BsGc3oeMsnsa+gsJ7GuY0Ecjh3T7qgM=
=TmUg
-----END PGP SIGNATURE-----

--7xwT4XJ225knA3hD--

