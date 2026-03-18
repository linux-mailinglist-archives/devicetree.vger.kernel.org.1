Return-Path: <devicetree+bounces-277499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMrSI6Isu2mRgAIAu9opvQ
	(envelope-from <devicetree+bounces-277499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 23:52:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F02D82C3A58
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 23:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B349301BF7B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 22:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65CB92C027B;
	Wed, 18 Mar 2026 22:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrNQFW8q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B349460;
	Wed, 18 Mar 2026 22:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773874335; cv=none; b=HswKfGRYcQDJt7FMAjC4jfQDTMk/3rCHUYK6H72AKqEUbywovOKjIWHN9KgufUFdOjSJxSydKbhBgtVsqHrQWhAsHlIIrqI7mpEghIOGjQB25ICxs2IAzlg871Y41rstkIRUD3zAPCW46E+hVhPs0oBSM/IiVcR4n4iz0kVoA1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773874335; c=relaxed/simple;
	bh=vEW+5Rlcz83bpTL6L2NmD5eXowsBFkHpcNjfS2kXynk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ir6KJBUhODhUX0I0ekHr/YpvVDgWbhKTLXnlK+pnB+Pc4yBbGOj4L8VixBVOD6E231glghBGJApHxJeD6fHBlHWZF+IBABwnAjZ5T0WYXAwUTc6nyoHNhdpC0+urDxuctSGFGrk0uCKAJXSBNdK9aFhy963g8HdqRDy7nlfIkF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrNQFW8q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B45A9C19421;
	Wed, 18 Mar 2026 22:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773874334;
	bh=vEW+5Rlcz83bpTL6L2NmD5eXowsBFkHpcNjfS2kXynk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DrNQFW8qNlX6JYkmXRJ62gRdNCmpLI7csVRur4//NUovMiVZlTOclSb7gfUFIa7Ax
	 ZR+2FvqMT+rHVzT5uTo1Nbf34gqoDz1NmUc7/nd02iicc8l9cFJd/G2Dy/wJrSF6LI
	 Ne+VJ0oIene4CkOwY6Tbd/KQseH8Z9MbuixX4Pxa6dc3XeBfEIcw6tg0rAf6DS3ILM
	 6TRYIXAadBEvewdUnIyMbNzE6NjwH/yvTJkXBh6HRGIafeX7TrDRbMigwQW7czIft+
	 C+5BtrwyUb31movnBWHXXV6SN8D3vRVOS9ErQGRZNp9GY6ZjTtX+nPR5gt42Jxh2FO
	 Au0NRQ3zlNt9w==
Date: Wed, 18 Mar 2026 17:52:13 -0500
From: Rob Herring <robh@kernel.org>
To: Florian Eckert <fe@dev.tdt.de>
Cc: Thomas Gleixner <tglx@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Eckert.Florian@googlemail.com,
	ms@dev.tdt.de
Subject: Re: [PATCH 1/2] dt-bindings: Add Lightning Mountain MSI interrupt
 controller bindings
Message-ID: <20260318225213.GA631106-robh@kernel.org>
References: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
 <20260318-irq-intel-soc-msi-v1-1-0e8cdf844fa8@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318-irq-intel-soc-msi-v1-1-0e8cdf844fa8@dev.tdt.de>
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277499-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,googlemail.com,dev.tdt.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F02D82C3A58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 02:10:40PM +0100, Florian Eckert wrote:
> Add device tree bindings for the Lightning Mountain (LGM) MSI interrupt
> controller.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
>  .../interrupt-controller/intel,soc-msi.yaml        | 45 ++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.yaml b/Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..5ab295c7dd000059817ae411abe3d57713a83ee8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/intel,soc-msi.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2025 TDT AG.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/intel,soc-msi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel LGM Interrupt Controller
> +
> +maintainers:
> +  - Florian Eckert <fe@dev.tdt.de>
> +
> +description: |

Don't need '|' if no formatting.

> +  This interrupt controller is found in the Intel LGM.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - intel,soc-msi.yaml

Besides the obvious problem here, compatibles should be SoC specific.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +  '#interrupt-cells':
> +    const: 2

This is an interrupt controller that generates MSIs from interrupts, or 
an MSI controller that receives MSIs and generates an interrupt. I can't 
tell. The description sounds like the latter. The schema looks like the 
former.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +  - '#interrupt-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    soc_msi: soc_msi@e00e0000 {

msi-controller@... or interrupt-controller@...

depending on the above answer.

> +        compatible = "intel,soc-msi";
> +        reg = <0xe00e0000 0x800>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +    };
> 
> -- 
> 2.47.3
> 

