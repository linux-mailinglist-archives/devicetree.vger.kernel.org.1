Return-Path: <devicetree+bounces-157917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E014A63671
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 17:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F5527A3BF4
	for <lists+devicetree@lfdr.de>; Sun, 16 Mar 2025 16:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E5761A7262;
	Sun, 16 Mar 2025 16:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXQLq4Ql"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAD3EED6
	for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 16:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742143436; cv=none; b=Z6SmTCzshgXFMAYbqPz94sPgxmgCxHtGT8YxPrRvsCbPV0BIsow/IfX+9hr40VB1EJ6yYHbU9zyi0yxxx4cmO3qT/nGB3vTfEE5gxzqiQ/8RyjGd3q1JrgHEf8w0KX7Y+HSgV8Sos3KHXGEpLxi5yFLpDDtQUWRs2E72eksUN5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742143436; c=relaxed/simple;
	bh=BCk88QVM/gnjky6nvXtsT155VA83xP6SDRxjTuCJ700=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UftFI4lpVjNjkxk4uqRZoS70zjjI4u26srrRnEh8R1plxxw2lr/bekcD720gsBs665QRWjrPgUCF5Qd1IGkpKeMwqnpaKfBpOXvSDsqjyXvTeG0cySrPMBI+8x6IFBFf44B/1P1hAVacVT2amUTpf5FfVpaXFyaNzB4daKFot0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXQLq4Ql; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D27E9C4CEDD;
	Sun, 16 Mar 2025 16:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742143435;
	bh=BCk88QVM/gnjky6nvXtsT155VA83xP6SDRxjTuCJ700=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oXQLq4Qlw4SD7HcH1DpE7NLUqV/+nkgit4KJzgr8/vmKLfMKHgG7qBNgPrNSR2KQS
	 08NG9TPteRh6UxbdcEUoeAQEhq3vWhLUgf5/YnaZ9/U+5C7DCnneWxl6Ij8nqxMEvb
	 /hWnaCCuag8W8rM0L2Hbqtv6jrgr7XBwPMoqDO7iiOJoyvyJYL9CWVvmdH1fmR2KSJ
	 G4xoxEi1AxfpG3QugtQFKbKpLoEp2lPzmNxPfSdamAcWgps4D4dxyUj2EIm6tr8bxr
	 5VnnCXncFEhSm70D0gO8haqdLZbUlsPhUlbIgOt7HKdSAPl7huhuXO8D9Q6Ey4PsHl
	 QO5zs2vH0LfTA==
Date: Sun, 16 Mar 2025 17:43:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>
Cc: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Nicolas Saenz Julienne <nsaenz@kernel.org>, Stefan Wahren <wahrenst@gmx.net>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Phil Elwell <phil@raspberrypi.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, kernel-dev@igalia.com
Subject: Re: [PATCH v5 4/6] dt-bindings: gpu: v3d: Add additional examples to
 improve binding checks
Message-ID: <20250316-abiding-badger-of-joy-0acd4c@krzk-bin>
References: <20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com>
 <20250316-v3d-gpu-reset-fixes-v5-4-9779cdb12f06@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250316-v3d-gpu-reset-fixes-v5-4-9779cdb12f06@igalia.com>

On Sun, Mar 16, 2025 at 11:15:11AM -0300, Ma=C3=ADra Canal wrote:
> To prevent future changes that might inadvertently break the ABI, add
> more examples to the binding. These examples improve coverage and help

Examples are not related to ABI at all.

> ensure `make dt_binding_check` produces more robust validation results.

No, don't add more examples differing by one property. Keep one/two
examples.

>=20
> Signed-off-by: Ma=C3=ADra Canal <mcanal@igalia.com>
> ---
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 34 ++++++++++++++++=
++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml b/Do=
cumentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> index 766a310ab653855d7cc9a80f18c2083218fe307e..39b8f0ee1f727628307d75884=
4008ae1189902b2 100644
> --- a/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> +++ b/Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> @@ -123,6 +123,38 @@ allOf:
>  additionalProperties: false
> =20
>  examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/soc/bcm2835-pm.h>
> +
> +    gpu@7ec00000 {
> +      compatible=3D "brcm,2711-v3d";
> +      reg =3D <0x7ec00000 0x4000>,
> +            <0x7ec04000 0x4000>;
> +      reg-names =3D "hub", "core0";
> +
> +      power-domains =3D <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;

That's the only notable difference - one new property.

> +      resets =3D <&pm BCM2835_RESET_V3D>;
> +      interrupts =3D <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/soc/bcm2835-pm.h>
> +
> +    gpu@2000000 {
> +      compatible =3D "brcm,2712-v3d";
> +      reg =3D <0x02000000 0x4000>,
> +            <0x02008000 0x6000>,
> +            <0x02030800 0x0700>;
> +      reg-names =3D "hub", "core0", "sms";
> +
> +      power-domains =3D <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
> +      resets =3D <&pm BCM2835_RESET_V3D>;
> +      interrupts =3D <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> +                   <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;

No differences here at all.

Best regards,
Krzysztof


