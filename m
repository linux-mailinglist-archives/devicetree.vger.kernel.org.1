Return-Path: <devicetree+bounces-135373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAEDA00C19
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 17:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 848F21642BF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 16:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3F4E1F9EA4;
	Fri,  3 Jan 2025 16:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEB0OThN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C3459B71;
	Fri,  3 Jan 2025 16:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922091; cv=none; b=TC4a4Cs31UA742ULMCVIRpcfgEcfwrYtvE2+QT4ZHBTIO4lFgdyGJymSpsE/PUdv4TsdlEglajgJERPr7sHastwpHfq/DSSKnCHkgu78iVujOgOuS115EBdO/WP4hD4FkSTIpPugSKAivIaCuvnAK2EoshvELbDoRNn2fyCDkn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922091; c=relaxed/simple;
	bh=83DIF3mFLGw5ydl0IM2PKCB3azWLkypjNn+5xAAuKf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hj9O0cXE+IVClRl4+kptdxnxC+7miAaYakZ6w9A2xhkQlRKFZW6x0TjwFs6bQB5eu8eAs7bfMU5Jx0LyMXrmr+WhQTI8eyRlm75xcWGPFrc43Iju5A3HdSy1i5rloubIqdTtZXGt3eUFcB1RWDzPtjHd7UZvEUlUk6WkupThkfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEB0OThN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB947C4CECE;
	Fri,  3 Jan 2025 16:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735922091;
	bh=83DIF3mFLGw5ydl0IM2PKCB3azWLkypjNn+5xAAuKf0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pEB0OThNpNMl8LgLujdnkXrUmKE5Wb85k8l+FG7RzmbH3Ubi+tomlN4HOJ3oAbCpb
	 8NNNougV5UcWMlVTsJZprC0S/f1eyedEj0eKguSag9pqfsxFzGQalgR5RUsZM95YHz
	 2oHkaFSH0s5QbcO+tV5tDk2yAmpxedA7yzNISkqPiqDNFsWfIq8AWgV7VsPN01j9DJ
	 gTQtLVStdEAtSLBzLwqf1bB+ca971cz0ocekt35XEnKNB305Px2OPchhGksj6xBCLv
	 BeruJQPpAOvK7QQmuSKCMueJvkDj2mCrC7oEYbMXOJ7kJlq7Mh31BZEdmVl1LOT1Zx
	 U0O1fBazmP2Bg==
Date: Fri, 3 Jan 2025 10:34:49 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v8 8/9] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <20250103163449.GA2382623-robh@kernel.org>
References: <20241231090802.251787-1-andyshrk@163.com>
 <20241231090802.251787-9-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241231090802.251787-9-andyshrk@163.com>

On Tue, Dec 31, 2024 at 05:07:51PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v8:
> - Fix dt_binding_check errors
> - ordered by soc name
> - Link to the previous version:
>   https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u
> 
> Changes in v4:
> - describe constraint SOC by SOC, as interrupts of rk3576 is very
>   different from others
> - Drop Krzysztof's Reviewed-by, as this version changed a lot.
> 
> Changes in v3:
> - ordered by soc name
> - Add description for newly added interrupt
> 
> Changes in v2:
> - Add dt bindings
> 
>  .../display/rockchip/rockchip-vop2.yaml       | 81 ++++++++++++++-----
>  1 file changed, 63 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 2531726af306..4cdd9cced10c 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -20,6 +20,7 @@ properties:
>      enum:
>        - rockchip,rk3566-vop
>        - rockchip,rk3568-vop
> +      - rockchip,rk3576-vop
>        - rockchip,rk3588-vop
>  
>    reg:
> @@ -37,10 +38,21 @@ properties:
>        - const: gamma-lut
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>      description:
> -      The VOP interrupt is shared by several interrupt sources, such as
> -      frame start (VSYNC), line flag and other status interrupts.
> +      For VOP version under rk3576, the interrupt is shared by several interrupt
> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
> +      For VOP version from rk3576 there is a system interrupt for bus error, and
> +      every video port has it's independent interrupts for vsync and other video
> +      port related error interrupts.
> +
> +  interrupt-names:
> +    items:
> +      - const: vop-sys
> +      - const: vop-vp0
> +      - const: vop-vp1
> +      - const: vop-vp2

Drop 'vop-' as it is redundant.

>  
>    # See compatible-specific constraints below.
>    clocks:
> @@ -120,43 +132,76 @@ allOf:
>        properties:
>          compatible:
>            contains:
> -            const: rockchip,rk3588-vop
> +            enum:
> +              - rockchip,rk3566-vop
> +              - rockchip,rk3568-vop
>      then:
>        properties:
>          clocks:
> -          minItems: 7
> +          minItems: 5
>          clock-names:
> -          minItems: 7
> -

Keep the blank line between DT properties

> +          minItems: 5
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> -            - port@3
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-vop
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 5

blank line

> +        clock-names:
> +          minItems: 5

blank line, and so on.

> +        ports:
> +          required:
> +            - port@0
> +            - port@1
> +            - port@2
> +        interrupts:
> +          items:
> +            - description: vop system interrupt, such as axi bus error
> +            - description: interrupts for video port0, such as vsync, dsp_hold.
> +            - description: interrupts for video port1, such as vsync, dsp_hold.
> +            - description: interrupts for video port2, such as vsync, dsp_hold.

These descriptions belong at the top level.

> +        interrupt-names:
> +          items:
> +            - const: vop-sys
> +            - const: vop-vp0
> +            - const: vop-vp1
> +            - const: vop-vp2

Why are these names defined twice?

You just need 'minItems: 4' in both of these.

>        required:
>          - rockchip,grf
> -        - rockchip,vo1-grf
> -        - rockchip,vop-grf
>          - rockchip,pmu
>  
> -    else:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-vop
> +    then:
>        properties:
> -        rockchip,vo1-grf: false
> -        rockchip,vop-grf: false
> -        rockchip,pmu: false

How is there no long a case without these properties?

> -
>          clocks:
> -          maxItems: 5
> +          minItems: 7
>          clock-names:
> -          maxItems: 5
> -
> +          minItems: 7
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> +            - port@3
> +      required:
> +        - rockchip,grf
> +        - rockchip,vo1-grf
> +        - rockchip,vop-grf
> +        - rockchip,pmu
>  
>  additionalProperties: false
>  
> -- 
> 2.34.1
> 

