Return-Path: <devicetree+bounces-258646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJRlEmSycmnwogAAu9opvQ
	(envelope-from <devicetree+bounces-258646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:27:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BCD6E782
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:27:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFD39301174D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D841A3D332E;
	Thu, 22 Jan 2026 23:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz4B6+6D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6393876BE;
	Thu, 22 Jan 2026 23:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124436; cv=none; b=eg2KMEy13lZI66u1VwyHgiIozD2rn2yOHzf9jNqjJq9g/OK1u9TnTzGtYBwx2PTGigZT/Q9AIsDaJx5gWbEaOG/um54+6kMxeBwwX6XAASyRurb/l33zHH5OPHXGGi9T6Zm5d71KJag9bifPnH5StqQXzu6opBWFGTRR0ZBBYhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124436; c=relaxed/simple;
	bh=g4X4NiMw4g2aJIlWWZ8K6GREeTKA9Q39VjtINDFcpus=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GUdi2NdxUZl7+JKIcyu5sEPHwVwtuBjSFq/UlwcBk047Iu/8d0VrmRrJz96BwA95mD+yNXz5YOPxaFA/CF0aXAkF27H0Df93MLvCKVVZfceYisege70rzkqGoFF7dlNc7m7LXzbVil2e2jupU1pxTGz3pwhKP8dfVSeviInv8zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz4B6+6D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4DFDC116C6;
	Thu, 22 Jan 2026 23:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124435;
	bh=g4X4NiMw4g2aJIlWWZ8K6GREeTKA9Q39VjtINDFcpus=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bz4B6+6DnyfDwpOblmzI5vT+Ih4jJyusVTQsEqJpQatOqhBjRXvWgY4A4C+vy+bFR
	 8SOJ0xSaNtFLSIJjwz5Es1Op15kRs4n3EGcpbGsaJ70z76ywwfpNivN1sp+TyVFzLP
	 JeN7nX1R0Lhilh70ksL2HF2FVdFqfQWgCfpN1UoGkampentNwKPHfKhycqsETUco2c
	 hFHsKyPzh7cnwOcamotLjEKv+SPz/QZO5hAXJMzdC0XmxcdU0Ch8D/rzC9GgE+rUsl
	 vAcuKnKEDEJTHFR6VxCwsbu/MYbMbv9g6dSUAB+4ieerWfF1QBxRTjwQM+IOb6Pd18
	 1VG0sh70EukKw==
Date: Thu, 22 Jan 2026 17:27:14 -0600
From: Rob Herring <robh@kernel.org>
To: Aniket Limaye <a-limaye@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, u-kumar1@ti.com,
	Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, j-mcarthur@ti.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: interrupt-controller: ti,sci-intr:
 Per-line interrupt-types
Message-ID: <20260122232714.GA3721563-robh@kernel.org>
References: <20260122-ul-driver-i2c-j722s-v3-0-4ec3478f3866@ti.com>
 <20260122-ul-driver-i2c-j722s-v3-1-4ec3478f3866@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122-ul-driver-i2c-j722s-v3-1-4ec3478f3866@ti.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258646-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C4BCD6E782
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 10:49:13PM +0530, Aniket Limaye wrote:
> Update the bindings to allow setting per-line interrupt-types.
> 
> Some Interrupt Router instances can only work with a specific trigger
> type (edge or level), while others act as simple passthroughs that
> preserve the source interrupt type unchanged.
> 
> Make "ti,intr-trigger-type" property optional, with its absence
> indicating that the router acts as a passthrough. When absent,
> "#interrupt-cells" must be 2 to allow each interrupt source to specify
> its trigger type per-line.
> 
> Signed-off-by: Aniket Limaye <a-limaye@ti.com>
> ---
> Changes in v3:
> - Avoid new redundant value IRQ_TYPE_DEFAULT for "ti,intr-trigger-type"
>   when "#interrupt-cells"==2. Instead, make this property optional and
>   check for its absence to use the per-line interrupt-type setting.
> - Link to v2:
> https://lore.kernel.org/r/20260120-ul-driver-i2c-j722s-v2-1-832097c6b64f@ti.com
> 
> Changes in v2:
> - Reword Commit msg to better describe the patch
> - Link to v1:
> https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-1-c28e8ba38a9e@ti.com
> ---
>  .../bindings/interrupt-controller/ti,sci-intr.yaml | 44 +++++++++++++++++++---
>  1 file changed, 38 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> index c99cc7323c71..8156ce6d2ab4 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/ti,sci-intr.yaml
> @@ -15,8 +15,7 @@ allOf:
>  description: |
>    The Interrupt Router (INTR) module provides a mechanism to mux M
>    interrupt inputs to N interrupt outputs, where all M inputs are selectable
> -  to be driven per N output. An Interrupt Router can either handle edge
> -  triggered or level triggered interrupts and that is fixed in hardware.
> +  to be driven per N output.
>  
>                                     Interrupt Router
>                                 +----------------------+
> @@ -54,19 +53,28 @@ properties:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      enum: [1, 4]
>      description: |
> -      Should be one of the following.
> +      Optional property - should be one of the following:

optional or required is defined by the schema. No need to say it here.

>          1 = If intr supports edge triggered interrupts.
>          4 = If intr supports level triggered interrupts.
>  
> +      If this property is present, #interrupt-cells must be 1.
> +      If this property is absent, #interrupt-cells must be 2 and interrupt
> +      source must specify the trigger type in the second cell.

The schema says most of this too.

> +
>    reg:
>      maxItems: 1
>  
>    interrupt-controller: true
>  
>    '#interrupt-cells':
> -    const: 1
> +    enum: [1, 2]
>      description: |
> -      The 1st cell should contain interrupt router input hw number.
> +      Number of cells in interrupt specifier. Depends on ti,intr-trigger-type:
> +      - If ti,intr-trigger-type is present: must be 1
> +        The 1st cell should contain interrupt router input hw number.
> +      - If ti,intr-trigger-type is absent: must be 2
> +        The 1st cell should contain interrupt router input hw number.
> +        The 2nd cell should contain interrupt trigger type (preserved by router).
>  
>    ti,interrupt-ranges:
>      $ref: /schemas/types.yaml#/definitions/uint32-matrix
> @@ -82,9 +90,22 @@ properties:
>          - description: |
>              "limit" specifies the limit for translation
>  
> +if:
> +  required:
> +    - ti,intr-trigger-type
> +then:
> +  properties:
> +    '#interrupt-cells':
> +      const: 1
> +      description: Interrupt ID only. Interrupt type is specified globally
> +else:
> +  properties:
> +    '#interrupt-cells':
> +      const: 2
> +      description: Interrupt ID and corresponding interrupt type
> +
>  required:
>    - compatible
> -  - ti,intr-trigger-type
>    - interrupt-controller
>    - '#interrupt-cells'
>    - ti,sci
> @@ -105,3 +126,14 @@ examples:
>          ti,sci-dev-id = <131>;
>          ti,interrupt-ranges = <0 360 32>;
>      };
> +
> +  - |
> +    main_gpio_intr1: interrupt-controller1 {

Drop unused label and node name should be 'interrupt-controller'.

With those fixed,

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

> +        compatible = "ti,sci-intr";
> +        interrupt-controller;
> +        interrupt-parent = <&gic500>;
> +        #interrupt-cells = <2>;
> +        ti,sci = <&dmsc>;
> +        ti,sci-dev-id = <131>;
> +        ti,interrupt-ranges = <0 360 32>;
> +    };
> 
> -- 
> 2.52.0
> 

