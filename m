Return-Path: <devicetree+bounces-287891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJSwDAjS4GkkmQAAu9opvQ
	(envelope-from <devicetree+bounces-287891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 14:11:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 817AB40DE9F
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 14:11:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 182933043F89
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 12:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0018734DB4F;
	Thu, 16 Apr 2026 12:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThIvKKCI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D207C2E2852;
	Thu, 16 Apr 2026 12:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776341508; cv=none; b=SbWh07mj6inEdRLvgbHYFY3vWIUbbrOv64OJZjWIEj+whdyiOsEzS31LqtE9LX7u4TyYkwciM5hXzQcpHVGb/SJU3bvSxUaJ1xVSouoTDSAEIXfg2jnVUfcTamckTNvUVdjakxWao4Z/6TyGGDds+arrdZzM3fXEtKdGoLGZyRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776341508; c=relaxed/simple;
	bh=G/ZOfwn4xRS/lG0O2EK4Ai08HHVkXUmq9KdtaDg5v5w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pDrMT3wR20MyqGHh1SxLTZhLVRbBM18iDeghUA+dCSksYUHjF4+xGOcph3XwU/C5135PzxUoNfxtme4Y6ymJBsUeOGFYm9Lt/K4r6gLlGNX3TrHEECZ3V9JURfMjlRmhw6yrJqTnCnQLvoGMXUQhdN5+RX1YHqBkobDDY3DnZsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThIvKKCI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AC6DC2BCAF;
	Thu, 16 Apr 2026 12:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776341508;
	bh=G/ZOfwn4xRS/lG0O2EK4Ai08HHVkXUmq9KdtaDg5v5w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ThIvKKCIybtUgEJT1YM8xw7G99TisDIF9oIIX2J5iag8Fj9v0veZJIZNT9TtVlq5h
	 9P7FQR0V8CLktCzBhf+pLiJtqVHkHS1yBchLtyA7tAT6R1aM3/df4sA1sl0hhvNC7W
	 Jy3Di2XfS4YUtHrvekwGLaU5IUXgwjaVf3L9QoEPzIxxsaNe84R43D3e2dSMOBMqon
	 1+tn57KSMDGO/SRh8n8x71+sHNDWltbX+E1QMxD474Tf7YhYCiBTG6Byv0lhhzc6on
	 bxYiqDoFKsTZJaDJaeWh7SrfGM+qZlJZAcUbaa78iFQHVcRsyIlh+TqFj7Jrhv/4ti
	 3UPIW9XKr9EFQ==
Date: Thu, 16 Apr 2026 07:11:46 -0500
From: Rob Herring <robh@kernel.org>
To: Sudeep Holla <sudeep.holla@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: interrupt-controller: Add support for
 secure donated SGIs
Message-ID: <20260416121146.GA2736962-robh@kernel.org>
References: <20260412-b4-ffa_ns_sgi_gicv3-v1-0-af61243eb405@kernel.org>
 <20260412-b4-ffa_ns_sgi_gicv3-v1-1-af61243eb405@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260412-b4-ffa_ns_sgi_gicv3-v1-1-af61243eb405@kernel.org>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287891-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 817AB40DE9F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Apr 12, 2026 at 06:04:37PM +0100, Sudeep Holla wrote:
> In GICv3, SGI security is defined by interrupt grouping and configuration
> rather than by SGI number alone. Linux conventionally reserves SGIs 0-7
> for non-secure internal kernel IPIs, while higher SGIs is assumed to be
> owned/stolen by the Secure world unless explicitly made available.
> 
> Document secure donated SGI interrupt specifiers for the GICv3 binding.
> It describes "arm,secure-donated-ns-sgi-ranges" for SGIs donated by the
> secure world to non-secure software. It excludes SGIs 0-7, which are
> already used by the kernel for internal IPI purposes.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@kernel.org>
> ---
>  .../bindings/interrupt-controller/arm,gic-v3.yaml  | 27 +++++++++++++++++++++-
>  include/dt-bindings/interrupt-controller/arm-gic.h |  1 +
>  2 files changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
> index bfd30aae682b..664727d071c9 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
> @@ -45,17 +45,24 @@ description: |
>  
>        The 1st cell is the interrupt type; 0 for SPI interrupts, 1 for PPI
>        interrupts, 2 for interrupts in the Extended SPI range, 3 for the
> -      Extended PPI range. Other values are reserved for future use.
> +      Extended PPI range, and 4 for SGI interrupts. Other values are
> +      reserved for future use.
>  
>        The 2nd cell contains the interrupt number for the interrupt type.
>        SPI interrupts are in the range [0-987]. PPI interrupts are in the
>        range [0-15]. Extended SPI interrupts are in the range [0-1023].
>        Extended PPI interrupts are in the range [0-127].
>  
> +      SGI interrupts are in the range [8-15] which overlaps with the SGIs
> +      assigned to/reserved for the secure world but donated to the non
> +      secure world to use. Refer "arm,secure-donated-ns-sgi-ranges" for
> +      more details.
> +
>        The 3rd cell is the flags, encoded as follows:
>        bits[3:0] trigger type and level flags.
>          1 = edge triggered
>          4 = level triggered
> +      SGIs are edge triggered and must be described as such.
>  
>        The 4th cell is a phandle to a node describing a set of CPUs this
>        interrupt is affine to. The interrupt must be a PPI, and the node
> @@ -136,6 +143,24 @@ description: |
>        - $ref: /schemas/types.yaml#/definitions/uint32
>        - $ref: /schemas/types.yaml#/definitions/uint64
>  
> +  arm,secure-donated-ns-sgi-ranges:
> +    description:
> +      A list of pairs <sgi span>, where "sgi" is the first SGI INTID of a
> +      range donated by the secure side to non-secure software, and "span" is
> +      the size of that range. Multiple ranges can be provided.
> +
> +      SGIs described by interrupt specifiers with type 4 (SGI) must fall
> +      within one of these ranges. SGIs(0-7) reserved by non-secure world
> +      for internal IPIs must not be listed here. "sgi" must be in the
> +      range [8-15], "span" must be in the range [1-8], and the range must
> +      not extend past SGI 15.
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    items:

As a matrix, you need:

items:
  items:
    - ...
    - ...

However, given this is at most 8 entries, I would just do an array:

minItems: 1
maxItems: 8
uniqueItems: true
items:
  minimum: 8
  maximum: 15

Unless we need more flexibility in GICv5?

Is there an example we can stick this property into so it gets tested?

> +      - minimum: 8
> +        maximum: 15
> +      - minimum: 1
> +        maximum: 8
> +
>    ppi-partitions:
>      type: object
>      additionalProperties: false
> diff --git a/include/dt-bindings/interrupt-controller/arm-gic.h b/include/dt-bindings/interrupt-controller/arm-gic.h
> index 887f53363e8a..52c2f3f090c5 100644
> --- a/include/dt-bindings/interrupt-controller/arm-gic.h
> +++ b/include/dt-bindings/interrupt-controller/arm-gic.h
> @@ -14,6 +14,7 @@
>  #define GIC_PPI 1
>  #define GIC_ESPI 2
>  #define GIC_EPPI 3
> +#define GIC_SGI 4
>  
>  /*
>   * Interrupt specifier cell 2.
> 
> -- 
> 2.43.0
> 

