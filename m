Return-Path: <devicetree+bounces-250353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B42BCE88C7
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1AA103008D5F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:27:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CA82DFA5B;
	Tue, 30 Dec 2025 02:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orP6bLqM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2102DFA3A;
	Tue, 30 Dec 2025 02:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767061663; cv=none; b=ZBqN69FX1LCvqHpX8jZ9v166b8TJwr+hvqwpP+lLlsdB/SS5hEQohcXlrecSPkeyWyj6grvwiXF9eLqNoWbFS0yVaMi/EsFfC03WNfwhl47NTFNrKwvrZDle/0BrRwuukjIWUX/kJd5I6ZNxCE9kMrwT7rBC1QU9QBVaXB3qXsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767061663; c=relaxed/simple;
	bh=YZhKdnIWvyphz/ZPlkVHSeDMS3reT0HQs3XijtNSUbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jv0Zzuz+A+VjJeXDFZjb86fOniE+/mofS4eh/hzcTcCQszZkpfRcYEkTzFcVD+O0nPeHJa3sk8k2HjOFUeJeeF+pOYqs66tDiooIqRwzI+Byiujh2XM5RlfrMy+nBTLB/enYdExhIQ7uP5/b36jctZt8jzyMCWjw3XQnPgtp4+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orP6bLqM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D511C19424;
	Tue, 30 Dec 2025 02:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767061662;
	bh=YZhKdnIWvyphz/ZPlkVHSeDMS3reT0HQs3XijtNSUbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=orP6bLqMPVxgtgILLbmuDvRxHNqtBuhm/cUil4j745FS4ziqIrNSHH3lLOVJYGjyD
	 T8lIybONj5MbF8QXpXvBSUrsK2Wc0dXvpH2vifhyv4c+9x/IMmF7q9YQd7tVLOqJxy
	 GDw9iBV49nPyfSW6BHPYNiho89X6QA0JynU59ZQyit5RrpwJ+6snjpIL2I0RT9QXH0
	 AKp1zXP+9w3KsRXgAu/6Bs7wYm7zdmfBdZSomulClvRBG9Rgw8/NeijECrYRV6YPUh
	 oWyyJSNFlm5qEYVa4L2zZ9LqNAtQ5yV4AYVPIQfHOVMbsVxvKwuSN/Y9Pz9aQIe13L
	 YWC96vCZo902w==
Date: Mon, 29 Dec 2025 20:27:41 -0600
From: Rob Herring <robh@kernel.org>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, krzk+dt@kernel.org,
	conor+dt@kernel.org, devarsht@ti.com, praneeth@ti.com, bb@ti.com,
	vigneshr@ti.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: ti,am65x-dss: Add AM62L DSS support
Message-ID: <20251230022741.GA3217586-robh@kernel.org>
References: <20251224133150.2266524-1-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251224133150.2266524-1-s-jain1@ti.com>

On Wed, Dec 24, 2025 at 07:01:50PM +0530, Swamil Jain wrote:
> Update the AM65x DSS bindings to support AM62L which has a single video
> port. Add conditional constraints for AM62L.
> 
> Signed-off-by: Swamil Jain <s-jain1@ti.com>
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml     | 95 +++++++++++++++----
>  1 file changed, 76 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> index 38fcee91211e..ce39690df4e5 100644
> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> @@ -36,34 +36,50 @@ properties:
>    reg:
>      description:
>        Addresses to each DSS memory region described in the SoC's TRM.
> -    items:
> -      - description: common DSS register area
> -      - description: VIDL1 light video plane
> -      - description: VID video plane
> -      - description: OVR1 overlay manager for vp1
> -      - description: OVR2 overlay manager for vp2
> -      - description: VP1 video port 1
> -      - description: VP2 video port 2
> -      - description: common1 DSS register area
> +    oneOf:
> +      - items:
> +          - description: common DSS register area
> +          - description: VIDL1 light video plane
> +          - description: VID video plane
> +          - description: OVR1 overlay manager for vp1
> +          - description: OVR2 overlay manager for vp2
> +          - description: VP1 video port 1
> +          - description: VP2 video port 2
> +          - description: common1 DSS register area
> +      - items:
> +          - description: common DSS register area
> +          - description: VIDL1 light video plane
> +          - description: OVR1 overlay manager for vp1
> +          - description: VP1 video port 1
> +          - description: common1 DSS register area
>  
>    reg-names:
> -    items:
> -      - const: common
> -      - const: vidl1
> -      - const: vid
> -      - const: ovr1
> -      - const: ovr2
> -      - const: vp1
> -      - const: vp2
> -      - const: common1
> +    oneOf:
> +      - items:
> +          - const: common
> +          - const: vidl1
> +          - const: vid
> +          - const: ovr1
> +          - const: ovr2
> +          - const: vp1
> +          - const: vp2
> +          - const: common1
> +      - items:
> +          - const: common
> +          - const: vidl1
> +          - const: ovr1
> +          - const: vp1
> +          - const: common1
>  
>    clocks:
> +    minItems: 2
>      items:
>        - description: fck DSS functional clock
>        - description: vp1 Video Port 1 pixel clock
>        - description: vp2 Video Port 2 pixel clock
>  
>    clock-names:
> +    minItems: 2
>      items:
>        - const: fck
>        - const: vp1
> @@ -84,7 +100,8 @@ properties:
>      maxItems: 1
>      description: phandle to the associated power domain
>  
> -  dma-coherent: true
> +  dma-coherent:
> +    type: boolean
>  
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
> @@ -195,6 +212,46 @@ allOf:
>              port@0:
>                properties:
>                  endpoint@1: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62l-dss
> +    then:
> +      properties:
> +        clock-names:
> +          maxItems: 2
> +        clocks:
> +          maxItems: 2
> +        reg:
> +          maxItems: 5

           reg-names:
             minItems: 8
       else:
         properties:
           reg:
             minItems: 8
           reg-names:
             minItems: 8

clocks needs similar constraints...

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62l-dss
> +    then:
> +      properties:
> +        reg-names:
> +          items:
> +            - const: common
> +            - const: vidl1
> +            - const: ovr1
> +            - const: vp1
> +            - const: common1
> +    else:
> +      properties:
> +        reg-names:
> +          items:
> +            - const: common
> +            - const: vidl1
> +            - const: vid
> +            - const: ovr1
> +            - const: ovr2
> +            - const: vp1
> +            - const: vp2
> +            - const: common1

Why are you defining the names twice?

Rob


