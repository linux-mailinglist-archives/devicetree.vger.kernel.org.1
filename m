Return-Path: <devicetree+bounces-255643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBD3D251BA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4E9303019483
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 14:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E523A1A4E;
	Thu, 15 Jan 2026 14:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVP99+sV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E6A3A0E9A;
	Thu, 15 Jan 2026 14:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768488854; cv=none; b=tQoaKHw8GLQt9b3Qp5DQ3J8/FteOx010gccJmHeSMdVlKI0sUGLr9I4U3CA2eei4M8s7UQcj23p/116uXR7n6Sx43QJfr/VCaNZie+Q0piSDfDVikbl8zJb0tZ45hE+h/puCY502K4c+pHgb9LnMvmJOuDiGa8+UaP/Fxe+HteI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768488854; c=relaxed/simple;
	bh=yJ9GqM1gOFD0ndQugmXUKz0yy2pEJJfQ0+pAcG+HjUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t3h2v/mbV/ZuZOGuUUFuSUq55KfnVJzM5/M4Na2IWMKvcvGqIKm3wZsBVl38uNVsqX7Bc3dJd0UzhtfbGmT2PBjGwCHW8Y7uCJJseY7BexTFJ0l82qphmJLA4WJn9BqtqHEArYc1o2LAKe0Az6sp0ox4mL2J1dDMJ0dtrfdgQGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVP99+sV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 884E9C116D0;
	Thu, 15 Jan 2026 14:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768488853;
	bh=yJ9GqM1gOFD0ndQugmXUKz0yy2pEJJfQ0+pAcG+HjUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nVP99+sVpVRfPr6kBrKkoKCwr3XeuE7I+EUQ/95geaFsvnoZcOM1HABIoOIsTCPOt
	 oD2XyDILOoBGmT76LRBkfcS4xADkAl8PTXkkDIU66a4cArsrtXfV509ADZEKRmwxTz
	 eQq+MqTT0H+RXdpFnGKRlO1hSuvwg7LGp3oE8p+9PwUxX1+vT3dSwLTIjR35+RqP8N
	 FqTV7+YzeDhoL7tHDpATJHKJev34gpyWyolzAEf5eqsiJzMlX6E2+aY8V53vVP8u+0
	 OSMkbTpVej3FPSjEEu7Eqye8SOJPlN4NlXfKtKHrrQDrarUaE/eq6P590Ct5r72np1
	 915GD8GhHqboA==
Date: Thu, 15 Jan 2026 08:54:12 -0600
From: Rob Herring <robh@kernel.org>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Srinivas Kandagatla <srini@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: add STM32 TAMP NVRAM
Message-ID: <20260115145412.GA621905-robh@kernel.org>
References: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107194541.1843999-1-dario.binacchi@amarulasolutions.com>

On Wed, Jan 07, 2026 at 08:45:32PM +0100, Dario Binacchi wrote:
> Add devicetree bindings for TAMP backup registers. These 32-bit
> registers are retained in all low-power modes and in VBAT mode. As a
> result, they can also be used to store sensitive data because their
> content is protected by a tamper detection circuit.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> ---
> 
>  .../bindings/nvmem/st,stm32-tamp-nvram.yaml   | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml
> new file mode 100644
> index 000000000000..e03469fbe436
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/st,stm32-tamp-nvram.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/st,stm32-tamp-nvram.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 TAMP's NVRAM
> +
> +description: |

Don't need '|' if no formatting.

> +  The TAMP peripheral integrates, amongst others, Non Volatile RAM

What others? Are you saying this binding is incomplete?

> +  (NVRAM) with 32/128 32-bit backup registers which can be used by
> +  software to store information or communicate with a boot loader.

Wrap lines at 80 char.

> +
> +maintainers:
> +  - Dario Binacchi <dario.binacchi@amarulasolutions.com>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32mp15-tamp-nvram
> +      - st,stm32mp25-tamp-nvram
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    nvram: nvram@46010100 {
> +        compatible = "st,stm32mp25-tamp-nvram";
> +        reg = <0x46010100 0x200>;
> +
> +        nvmem-layout {
> +            compatible = "fixed-layout";
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +
> +            fwu_info: tamp-bkp@c0 {
> +                reg = <0xc0 0x4>;
> +            };
> +
> +            boot_mode: tamp-bkp@180 {
> +                reg = <0x180 0x4>;
> +            };
> +        };
> +    };
> +...
> -- 
> 2.43.0
> 
> base-commit: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1
> branch: stm32-tamp-nvram

