Return-Path: <devicetree+bounces-16357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 609997EE5E5
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18474280D14
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6B2833CE3;
	Thu, 16 Nov 2023 17:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pONu6yLm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82BA48CE7
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 17:27:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28866C433C7;
	Thu, 16 Nov 2023 17:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700155641;
	bh=6xJVl3tG8xQiDfF9Mn97Ju4vyrnOY0j6sMIa/iZ/d+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pONu6yLm5qdaZO8+GU4png8O5H36f4+NhH5nz04l21e13PgcQTFnlQlvKTiWx1hOF
	 qiNhPVjA8KYroUkBopaakSavdkjh32xMPmVHYQyWUyQ3MbBz4V8OnqwbBioXZ6Qs6H
	 Xrr5mVHI5oxpQmrV6dHDTRyFQ41Sa3XpyBVT1we1kZSnuJLxUsM+0Y+WnOsOcwdpX7
	 ZQpDKGWCdIvxskkYRlkVvhEbggbLTWs3aZE01M9ZGmluWZPNVOQViZ/QzJpIbtUC8d
	 KmcOzMMVlUbMDnlccLjFSXJt+HvnrttVR+3tSsHkAE61REv5V8qtBdMHa3CId5qwsn
	 z6EWmp09HDw8g==
Date: Thu, 16 Nov 2023 17:27:17 +0000
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
Subject: Re: [PATCH v4 2/2] dt-bindings: perf: starfive: Add JH8100 StarLink
 PMU
Message-ID: <20231116-paycheck-upstairs-8147b6137f7a@squawk>
References: <20231116162330.1144983-1-jisheng.teoh@starfivetech.com>
 <20231116162330.1144983-3-jisheng.teoh@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1k9In4pZgZpTLh97"
Content-Disposition: inline
In-Reply-To: <20231116162330.1144983-3-jisheng.teoh@starfivetech.com>


--1k9In4pZgZpTLh97
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 17, 2023 at 12:23:30AM +0800, Ji Sheng Teoh wrote:
> Add device tree binding for StarFive's JH8100 StarLink PMU (Performance
> Monitor Unit).
>=20
> Signed-off-by: Ji Sheng Teoh <jisheng.teoh@starfivetech.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Generally, there's no need to submit new versions so quickly - you can
wait for feedback on multiple patches before resubmitting the entire
series.

Cheers,
Conor.

> ---
>  .../perf/starfive,jh8100-starlink-pmu.yaml    | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/starfive,jh810=
0-starlink-pmu.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/perf/starfive,jh8100-starl=
ink-pmu.yaml b/Documentation/devicetree/bindings/perf/starfive,jh8100-starl=
ink-pmu.yaml
> new file mode 100644
> index 000000000000..915c6b814026
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/starfive,jh8100-starlink-pmu=
=2Eyaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/starfive,jh8100-starlink-pmu.yam=
l#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive JH8100 StarLink PMU
> +
> +maintainers:
> +  - Ji Sheng Teoh <jisheng.teoh@starfivetech.com>
> +
> +description:
> +  StarFive's JH8100 StarLink PMU integrates one or more CPU cores with a
> +  shared L3 memory system. The PMU support overflow interrupt, up to
> +  16 programmable 64bit event counters, and an independent 64bit cycle
> +  counter. StarFive's JH8100 StarLink PMU is accessed via MMIO.
> +
> +properties:
> +  compatible:
> +    const: starfive,jh8100-starlink-pmu
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
> +        pmu@12900000 {
> +            compatible =3D "starfive,jh8100-starlink-pmu";
> +            reg =3D <0x0 0x12900000 0x0 0x10000>;
> +            interrupts =3D <34>;
> +        };
> +    };
> --=20
> 2.25.1
>=20

--1k9In4pZgZpTLh97
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVZQ8AAKCRB4tDGHoIJi
0sE1AQDvEwsxkZxMkpery+sEwRS4z7zuzauGuq2WZ91p2BfANAEAjMPUNitE5iR8
jkrlUg9xEeQy0zoLnvqBgq/cncFHVgY=
=Td7w
-----END PGP SIGNATURE-----

--1k9In4pZgZpTLh97--

