Return-Path: <devicetree+bounces-185125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAB1AD6904
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:30:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29A4F1BC270D
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2B7221420F;
	Thu, 12 Jun 2025 07:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFK3WFod"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE5520FA84
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:29:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749713392; cv=none; b=WTm9vCGbt171Ky2KVcdnWTsqTH5wtye9nT5Z/RhzjYMmylKskvYnLXZTN0B2QAwNuXHx/U0yEL8kZzM30AqdIdxGqkxc3SStkaV1L8iAxDePRE5N4y9aZB3b+KHhIstTqwD9XagksJssjGED8QQfNls2P/kEVveeORO8Es4t4hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749713392; c=relaxed/simple;
	bh=PFWm5YyYdGwiXY+2lK9JCGHu6Y0dVdQU7cl1djEpu1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MaUFIqBtACgbKPJ7Z1iojDCc2vhdDd/6sl3tp3hPB41Z3ZA4WCags70llF/GX65YWYEIc8kSnfCOBVFSQgAXxg5zRD7c9G2kWIPTZhKcSau3W9xqdMrV86ZqW2Wkz5Tq+TsGw9TkF8tmlNLk0nhcdnFhYMdAAxjYsUoFRw8TYZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFK3WFod; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1904C4CEEA;
	Thu, 12 Jun 2025 07:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749713392;
	bh=PFWm5YyYdGwiXY+2lK9JCGHu6Y0dVdQU7cl1djEpu1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hFK3WFod1SakMEhUmgaDnS/wdAAI5h6Pw8K7jbsDCpI7WILjHZow9Z1BCr8+JmNSO
	 AV8NBubE+q8Q3ZZmmcLuFhCKcoa6tS/Y0kdHI2wYDz2Ef/HGaiCeIxE8Hp/pLZ/rA7
	 mX7ew/7bTqQT2v2mRK3PHm25HlLcrT7MXE9HH+KVukgtW6d2bUxHv7uwBKC++0SGG1
	 OmYGE1bksagAmX4uXn4X8aKPdmitlL+StQ3KnHerZzJggenLpRcWJFb8HQkcNH2QhZ
	 HupjI9J2z0jVlHsiEyoVUHRzfMu0PvC4zsF0oq06Ji8BE28jC5PvEFG2oNl3fMekwM
	 ax8i+qvcrg0kg==
Date: Thu, 12 Jun 2025 09:29:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shankari Anand <shankari.ak0208@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthew.gerlach@altera.com
Subject: Re: [PATCH v4 1/1] dt-bindings: arm: Convert Altera SDRAM EDAC .txt
 to YAML
Message-ID: <20250612-mahogany-salamander-of-excitement-5552ae@kuoka>
References: <20250612063700.874830-1-shankari.ak0208@gmail.com>
 <20250612063700.874830-2-shankari.ak0208@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250612063700.874830-2-shankari.ak0208@gmail.com>

On Thu, Jun 12, 2025 at 12:07:00PM GMT, Shankari Anand wrote:
> -Example:
> -	sdramedac {
> -		compatible = "altr,sdram-edac";
> -		altr,sdr-syscon = <&sdr>;
> -		interrupts = <0 39 4>;
> -	};
> diff --git a/Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml
> new file mode 100644
> index 000000000000..320eb7fbcbff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/socfpga-sdram-edac.yaml

Filename matching compatible, so altr,sdram-edac.yaml


> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/socfpga-sdram-edac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SoCFPGA SDRAM EDAC Controller
> +
> +maintainers:
> +  - Matthew Gerlach <matthew.gerlach@altera.com>
> +
> +description: |
> +  EDAC-compatible controller for SDRAM error detection and correction on
> +  Altera (Intel) SoCFPGA platforms.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - altr,sdram-edac
> +      - altr,sdram-edac-a10
> +      - altr,sdram-edac-s10

This wasn't in old binding and your commit msg is silent on it. You must
explain all changes done to the binding with explanation WHY.

> +
> +  altr,sdr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the SDRAM system controller (SDR) syscon node.
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +    description: |
> +      One or two interrupt specifiers for ECC error interrupt(s).
> +      Arria 10 SoCs use two interrupt lines.

So you need allOf:if:then restricting it per variant. Drop free-form
text.

> +
> +  reg:

reg follows compatible. Look at DTS coding style and 99% of other
bindings.

Anyway, this was not in previous binding - also not explained.

> +    maxItems: 1
> +    description: Memory-mapped base address and size of the SDRAM EDAC controller.

Drop description.

> +
> +required:
> +  - compatible
> +  - altr,sdr-syscon
> +  - interrupts
> +  - reg

reg follows compatible.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    edac@ffb90000 {
> +    compatible = "altr,sdram-edac-a10";
> +    reg = <0xffb90000 0x1000>;
> +    altr,sdr-syscon = <&sdr>;
> +    interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> +                 <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;

You alrady got comment here - messed indentation. How did you resolve
that comment? I don't see any improvements.

Best regards,
Krzysztof


