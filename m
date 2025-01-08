Return-Path: <devicetree+bounces-136862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9372FA06973
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 00:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 988E13A7283
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 23:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5C6204C16;
	Wed,  8 Jan 2025 23:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuNtBX7g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108C922611;
	Wed,  8 Jan 2025 23:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736379084; cv=none; b=s4D1lDsYAsLg6oO1Wj8V31dR9Wwu++w4CyeWrH/PDu2bJGo2ZI6qYVswQh8YuQth7pp/kGg3I/BGLr6IobrT8Nej5zoFzbIBAVlIPXQ5O0HY2lj/K6sE4IuaoEZXFHcRevMdYi5JpAKnme5KP9HIBdIRWiq99mkEc3v1sX5jHao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736379084; c=relaxed/simple;
	bh=hGzh6Ux0equEOkz0+aeV+MQwWoU7zw3mDv7K/oHfxJA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BEe5dviX29oLoJLzyU8CwciBpT74R9Xc73w0j8qfP9T+U8iZQzEOONKX4aSsNLZbDMuOC5NoIa5US9mKHVxr5GhI9IkpescQt3+4TKZhC43XkR1pXBQzRumZJRZgg26rPC16RmwDNQzVKQvteTrm530635EtF3IPLLz6ltQZw8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuNtBX7g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7DDC4CED3;
	Wed,  8 Jan 2025 23:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736379083;
	bh=hGzh6Ux0equEOkz0+aeV+MQwWoU7zw3mDv7K/oHfxJA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VuNtBX7gO9+r+kRfw5uE/mylZqfhHuk6TrQGv6FcAiOMa/afIdcIwtJlAuUhxkqEJ
	 aL28jKgy+1KXiTElsi7FNtMlsaowk8YaId0DYdjfZO3NoGHAXRhn/5EHJTwcCPE7lk
	 Tyg0TcgFJ+iTbPexED2K1JjcIXIqf8dAri4hbc63Fb/npIm5uqIE50p32fXDw6KYCv
	 2/uXdqdceLDJOTMI3YCGve0lLtJ9vyAuvjXcvc7hFkhXNSiVt3jmHIKS0fcKEkFB1l
	 juFvd5ZsT0Z6QlSL6KFMGNlpnSZGwR0Y/7EF9HGHktEYyA0N1ngq2/wh7qylEjxWIA
	 qokiP1TX1M2rg==
Date: Wed, 8 Jan 2025 17:31:22 -0600
From: Rob Herring <robh@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v9 10/11] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <20250108233122.GA1227227-robh@kernel.org>
References: <20250108115233.17729-1-andyshrk@163.com>
 <20250108115233.17729-11-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108115233.17729-11-andyshrk@163.com>

On Wed, Jan 08, 2025 at 07:52:27PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v9:
> - Drop 'vop-' prefix of interrupt-names.
> - Add blank line between DT properties
> - Remove list interrupt-names in top level

That's the opposite of what we usually want...

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
>  .../display/rockchip/rockchip-vop2.yaml       | 83 +++++++++++++++----
>  1 file changed, 67 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 2531726af306..44256cdcb877 100644
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
> @@ -37,10 +38,17 @@ properties:
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
> +    maxItems: 4
>  
>    # See compatible-specific constraints below.
>    clocks:
> @@ -120,43 +128,86 @@ allOf:
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
> +
>          clock-names:
> -          minItems: 7
> +          minItems: 5
>  
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> -            - port@3
> +
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
> +
> +        clock-names:
> +          minItems: 5
> +
> +        ports:
> +          required:
> +            - port@0
> +            - port@1
> +            - port@2
> +
> +        interrupts:
> +          items:
> +            - description: vop system interrupt, such as axi bus error
> +            - description: interrupts for video port0, such as vsync, dsp_hold.
> +            - description: interrupts for video port1, such as vsync, dsp_hold.
> +            - description: interrupts for video port2, such as vsync, dsp_hold.
> +
> +        interrupt-names:
> +          items:
> +            - const: sys
> +            - const: vp0
> +            - const: vp1
> +            - const: vp2
>  
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
> -
>          clocks:
> -          maxItems: 5
> +          minItems: 7
> +
>          clock-names:
> -          maxItems: 5
> +          minItems: 7
>  
>          ports:
>            required:
>              - port@0
>              - port@1
>              - port@2
> +            - port@3
> +
> +      required:
> +        - rockchip,grf
> +        - rockchip,vo1-grf
> +        - rockchip,vop-grf
> +        - rockchip,pmu

Where do the existing platforms have a constraint of only 1 interrupt?

And now while rk3576 has defined interrupt-names, all the other can have 
4 entries with anything.

Rob

