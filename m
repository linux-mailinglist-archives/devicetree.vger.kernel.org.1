Return-Path: <devicetree+bounces-15703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 347147EB5E3
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 18:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7A631F25494
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 17:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC5E2C1AD;
	Tue, 14 Nov 2023 17:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+symr6M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A072C1AA
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 17:57:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40AB3C433C7;
	Tue, 14 Nov 2023 17:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699984638;
	bh=TA5MITJHC2T13fQnufVaK7/sIlajF1q5F1aF0YWeztQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o+symr6MkA9aQtcw1bYamXK14WvN66KoLpemZUMdLpN8Qbn0Gd4LmHGlxICWnnK+I
	 bLQSlMekeZ6g3DRpfnA5Cia2b0XOaEbBldtmYQ/3FY/F0rrGNEXKZZmePsxa7iZKVl
	 oM81pFh3xQR35RdndIs+oxCDXQSopGzNfvf9oTOeqZ2bIGE856FGsoyVkToG+hdDc0
	 e4HUi80KaAVnP5D5umNzo8s6fbiH7U/87nR9gpRv1e9UZ9q2IBs5QMkQJ7uFOnzHEe
	 2V2gGdA9aW7NOqCvI6yX6qnThXGPCf7GizmMno6zzg54i1sFfRwMx39VjZNCcwWDBr
	 21VwijL1bAl0Q==
Date: Tue, 14 Nov 2023 17:57:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>,
	Ley Foon Tan <leyfoon.tan@starfivetech.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: perf: starfive: Add StarLink PMU
Message-ID: <20231114-policy-routing-8df2607e76cf@squawk>
References: <20231114021254.3009799-1-jisheng.teoh@starfivetech.com>
 <20231114021254.3009799-3-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GVUN6CsEXv0BSbNb"
Content-Disposition: inline
In-Reply-To: <20231114021254.3009799-3-jisheng.teoh@starfivetech.com>


--GVUN6CsEXv0BSbNb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 10:12:54AM +0800, Ji Sheng Teoh wrote:
> Add device tree binding for StarFive's StarLink PMU (Performance
> Monitor Unit).
>=20
> Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> ---
>  .../bindings/perf/starfive,starlink-pmu.yaml  | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/starfive,starl=
ink-pmu.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/perf/starfive,starlink-pmu=
=2Eyaml b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> new file mode 100644
> index 000000000000..b164f6849055
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/starfive,starlink-pmu.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/starfive,starlink-pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive StarLink PMU
> +
> +maintainers:
> +  - Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> +
> +description:
> +  StarFive's StarLink PMU integrates one or more CPU cores with a shared=
 L3
> +  memory system. The PMU support overflow interrupt, up to 16 programmab=
le
> +  64bit event counters, and an independent 64bit cycle counter.
> +  StarLink PMU is accessed via MMIO.
> +
> +properties:
> +  compatible:
> +    const: starfive,starlink-pmu

This compatible (in isolation) is far too generic. Please add a device
specific compatible for the device that has this PMU.

Thanks,
Conor.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        l3_pmu: pmu@12900000 {
> +            compatible =3D "starfive,starlink-pmu";
> +            reg =3D <0x0 0x12900000 0x0 0x10000>;
> +            interrupts =3D <34>;
> +        };
> +    };
> --=20
> 2.25.1
>=20

--GVUN6CsEXv0BSbNb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVO09wAKCRB4tDGHoIJi
0oKyAQDMGNLblbWwPrbf2IDZPlUbqUp3cf3FJJlST27PCfSlPAD3fxa4mjKlBXxF
rBGin84XnMj9T1tFSy1yt3KRXzJsCA==
=5OaB
-----END PGP SIGNATURE-----

--GVUN6CsEXv0BSbNb--

