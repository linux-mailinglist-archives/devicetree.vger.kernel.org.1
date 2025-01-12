Return-Path: <devicetree+bounces-137737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 415C7A0A7F7
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 10:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C41803A5B4A
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 09:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9441922FA;
	Sun, 12 Jan 2025 09:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8KOck9q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325E4224D7;
	Sun, 12 Jan 2025 09:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736674042; cv=none; b=rRHe+JzHI+BqrIDIaCujKJZNZgj9PYxFG4994VC7Tavoyqm2wc0KgvCRGrClINGAZJIQgcdDHr41hzd1QaVoiHKFfxNBa0CI5x6Mbc3Eg2vqHq85epE2oAxWoyfweV11bqARHIoGG7naoop2ueXs14KXz+bxorHW2cYF4/JTHgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736674042; c=relaxed/simple;
	bh=S6+HEIIa0TC4zQcS76msgthENjx+/il9nhKI8WUIGnk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YIASGbaD4uJd5VCnh7cPx1au583DAHsk74JOf2XTWcgcR/Of4hDLJCSSiIsSAT7fz5u2isPTR2UelxZg+831puhXMyIkt6L9pUU7pYBcKXx9PIoejOWNwGcS/5JLcIrzr8cBFlxFfDqgDEGy4D6elPhGAwYJsToGn1GGl5/lEq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8KOck9q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDABFC4CEDF;
	Sun, 12 Jan 2025 09:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736674041;
	bh=S6+HEIIa0TC4zQcS76msgthENjx+/il9nhKI8WUIGnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P8KOck9q7pVtgoxZwSX0Ry4lFmGJrIj2j3Kx4bWyBvNfbfxVO7P1Bys2jmtmkxR+o
	 lhpmVKVMSLIV5nH4EieAa+E4gOgfS5EI8juagsOISl4qKNKirtZUztlyfjv3nGGevy
	 6IzkucMxB/RXAIuaxgt4pAo/mLNCMrrVpDL3ApdToSC86iPfrakKAbopJeCr2eEKCP
	 SWYSw5Vt4TPR91g4EiahnMJCInNVU/qeg0K89dYJDtASqIXg2lC5W6A0bU4dEyxNzW
	 9IdXuw8tp0MVPazCpeCvmbCxucFGqTYPyo/Gj8g+l+VVNYFAbPFQt4dQhG12HkANmr
	 rxG1oNrzzIJ/A==
Date: Sun, 12 Jan 2025 10:27:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, detlev.casanova@collabora.com, daniel@fooishbar.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v11 10/11] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <i5mp7wrogfc7w3fbmvqgqxsbgcx4xnfnjik4rpd35amdwgppan@fistrhikrrmd>
References: <20250111112614.432247-1-andyshrk@163.com>
 <20250111112614.432247-11-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250111112614.432247-11-andyshrk@163.com>

On Sat, Jan 11, 2025 at 07:26:08PM +0800, Andy Yan wrote:
>    # See compatible-specific constraints below.
>    clocks:
> @@ -120,43 +133,98 @@ allOf:
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

That's wrong, why maxItems became minItems? How is this related to rk3576?

> +
>          clock-names:
> -          minItems: 7
> +          minItems: 5

You are doing here way too much. You need to split reorganizing, so we
will see what comes new.

And of course you need to explain why you are changing EXISTING binding
(I am not talking about shuffling around - you change the binding).


> +
> +        interrupts:
> +          maxItems: 1
> +
> +        interrupt-names: false
>  
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> -            - port@3
> +
> +        rockchip,vo1-grf: false
> +        rockchip,vop-grf: false
> +        rockchip,pmu: false
>  
>        required:
>          - rockchip,grf
> -        - rockchip,vo1-grf
> -        - rockchip,vop-grf
> -        - rockchip,pmu
>  
> -    else:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3576-vop
> +    then:
>        properties:
> +        clocks:
> +          minItems: 5


Why minItems? Nothing in this patch makes sense for me. Neither changing
existing binding nor new binding for rk3576.

> +
> +        clock-names:
> +          minItems: 5
> +
> +        interrupts:
> +          minItems: 4
> +
> +        interrupt-names:
> +          minItems: 4
> +
> +        ports:
> +          required:
> +            - port@0
> +            - port@1
> +            - port@2
> +
>          rockchip,vo1-grf: false
>          rockchip,vop-grf: false
> -        rockchip,pmu: false
>  
> +      required:
> +        - rockchip,grf
> +        - rockchip,pmu
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3588-vop
> +    then:
> +      properties:
>          clocks:
> -          maxItems: 5
> +          minItems: 7

And again weird change to the binding.

Best regards,
Krzysztof


