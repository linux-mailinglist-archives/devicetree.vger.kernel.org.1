Return-Path: <devicetree+bounces-175473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B39AB0FAB
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:57:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9C991BC6F1D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E2028DF53;
	Fri,  9 May 2025 09:57:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9BA27465C
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 09:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746784648; cv=none; b=oNI3EuUwKPw9w7mHDO/voGh0SK/yWrEjryWBZIT1Z2HcELMzZh2jPOaFrc6Cffe9cB3L+gc7zo6LhOljcsyVmrWHupuGA5F3RzAF7wGwgoNii8cshdbimuQL4cDHH62rX2WLfqx3PeqSCIs1FrJCP2kUCFmiKNqM9JKNpvumxvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746784648; c=relaxed/simple;
	bh=N0kOXiZhGX1q39WSp08kbdSOZeR89HROVZ7Jcr4A3oQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ay9d5N0GTWOPrhBO7VS7FjCu/BHV/Edha6TtQ/2wmEQ1Z/4E2BbEDOWGtyAGjo7DhqV53XrycQQ0GrYGXRqJ0SNc7jRarHJmGlyMOeN858pvHGTs5EWt32EzLiC6b4/KkciZOAD06pTWYv34AGOAXAlCx51s5XLx7JFLJdpyyZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2B311595
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 02:57:14 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 95DAD3F673
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 02:57:25 -0700 (PDT)
Date: Fri, 9 May 2025 10:57:15 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: timer: Convert arm,mps2-timer to DT schema
Message-ID: <aB3Re4ZR85jJkMH8@e110455-lin.cambridge.arm.com>
References: <20250506022210.2586404-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250506022210.2586404-1-robh@kernel.org>

On Mon, May 05, 2025 at 09:22:09PM -0500, Rob Herring (Arm) wrote:
> Convert the Arm MPS2 Timer binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
>  .../bindings/timer/arm,mps2-timer.txt         | 28 -----------
>  .../bindings/timer/arm,mps2-timer.yaml        | 49 +++++++++++++++++++
>  2 files changed, 49 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/arm,mps2-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/arm,mps2-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/arm,mps2-timer.txt b/Documentation/devicetree/bindings/timer/arm,mps2-timer.txt
> deleted file mode 100644
> index 48f84d74edde..000000000000
> --- a/Documentation/devicetree/bindings/timer/arm,mps2-timer.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -ARM MPS2 timer
> -
> -The MPS2 platform has simple general-purpose 32 bits timers.
> -
> -Required properties:
> -- compatible	: Should be "arm,mps2-timer"
> -- reg		: Address and length of the register set
> -- interrupts	: Reference to the timer interrupt
> -
> -Required clocking property, have to be one of:
> -- clocks	  : The input clock of the timer
> -- clock-frequency : The rate in HZ in input of the ARM MPS2 timer
> -
> -Examples:
> -
> -timer1: mps2-timer@40000000 {
> -	compatible = "arm,mps2-timer";
> -	reg = <0x40000000 0x1000>;
> -	interrupts = <8>;
> -	clocks = <&sysclk>;
> -};
> -
> -timer2: mps2-timer@40001000 {
> -	compatible = "arm,mps2-timer";
> -	reg = <0x40001000 0x1000>;
> -	interrupts = <9>;
> -	clock-frequency = <25000000>;
> -};
> diff --git a/Documentation/devicetree/bindings/timer/arm,mps2-timer.yaml b/Documentation/devicetree/bindings/timer/arm,mps2-timer.yaml
> new file mode 100644
> index 000000000000..64c6aedd7e8e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/arm,mps2-timer.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm,mps2-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM MPS2 timer
> +
> +maintainers:
> +  - Vladimir Murzin <vladimir.murzin@arm.com>
> +
> +description:
> +  The MPS2 platform has simple general-purpose 32 bits timers.
> +
> +properties:
> +  compatible:
> +    const: arm,mps2-timer
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    description: Rate in Hz of the timer input clock
> +
> +oneOf:
> +  - required: [clocks]
> +  - required: [clock-frequency]
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
> +    timer@40000000 {
> +        compatible = "arm,mps2-timer";
> +        reg = <0x40000000 0x1000>;
> +        interrupts = <8>;
> +        clocks = <&sysclk>;
> +    };
> -- 
> 2.47.2
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

