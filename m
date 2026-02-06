Return-Path: <devicetree+bounces-263398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kN8DCl8EhmmyJAQAu9opvQ
	(envelope-from <devicetree+bounces-263398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 16:10:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C0866FF80E
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 16:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A383B3009094
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 15:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73893279907;
	Fri,  6 Feb 2026 15:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0wL+JOp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512FD26FA60;
	Fri,  6 Feb 2026 15:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770390602; cv=none; b=QeP892JY2kC3KCRZkf3w3iL0aIiFf4JSR92fT1pJAF85/GcXryIHmJCpq+NkgDXxS3HeViwujwqyBkfz7hdDSIjdoHJ1wwCiixsk0jZ5YipZngStzHiQmkjjlhR340IphcQocV40L+cRL8wQNW0+ANxR5Igg/M6i0Hi8J0sb/Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770390602; c=relaxed/simple;
	bh=tylKFPizBFVHR9SQ9HkBo1IBdDn9pqMpWIkRgxIWJuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KtELUujlkBw0keETmzM8lHnm1TnI0o2ottDucUdeaOlYL7SRL10iNB4tXYIL8ILItA6a424nhdOyUua442EJ8Opz9L1pkMysOFjiF8rUdroyAmg3KKaDzi7rOR1wygd1wE3m6kXtifWgDf1C94DEkSK/JUN0OK9bbrR3t3ggnV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0wL+JOp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF579C19424;
	Fri,  6 Feb 2026 15:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770390601;
	bh=tylKFPizBFVHR9SQ9HkBo1IBdDn9pqMpWIkRgxIWJuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s0wL+JOpf4m6DBLk3QGw8E79VmC1tNhNtCDGKAd4y8cAnvqr39AMG+4UKdH+3a26N
	 ArDR9hjuAxLDk+vTxzAM9WGcQg4JqTziRy6k9r34BJ207E2IE8YLnlW0t2yOJYjIMo
	 N/EpCU4cK6PJ8LbuQdVXmc3wm117WGpmavwABteoPG0lOqNHuaocRKyYgOCqQTjQCJ
	 C8YLxa/b+l8LtKXiVy/9G5uqpkLdUmX2M6mzQ97aU6Ynk3wx4BNqwy5MYYKGuL471M
	 erDaTnykxuc4loJTiAb6EeErD9xvCRdAiKex6ldokdgidmyGD7mLSUNo5rYisyg3yY
	 T5GHyhPvFeXtg==
Date: Fri, 6 Feb 2026 09:10:01 -0600
From: Rob Herring <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: power: ti,omap3-smartreflex-core: convert
 to DT schema
Message-ID: <20260206151001.GA229184-robh@kernel.org>
References: <20260128-smartreflex-v1-1-2ab7a35169ed@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-smartreflex-v1-1-2ab7a35169ed@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263398-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: C0866FF80E
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 08:11:55AM +0000, Akhila YS wrote:
> Convert Texas Instruments SmartReflex module binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../bindings/power/ti,omap3-smartreflex-core.yaml  | 75 ++++++++++++++++++++++
>  .../devicetree/bindings/power/ti-smartreflex.txt   | 47 --------------
>  2 files changed, 75 insertions(+), 47 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
> new file mode 100644
> index 000000000000..ad4094f15a63
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/ti,omap3-smartreflex-core.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/ti,omap3-smartreflex-core.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments SmartReflex module
> +
> +maintainers:
> +  - Tony Lindgren <tony@atomide.com>
> +
> +description:
> +  Texas Instruments SmartReflex is an on-chip adaptive power management
> +  technology integrated into TI's OMAP and other SoCs. It dynamically
> +  adjusts voltage and frequency for different chip domains in real time
> +  to compensate for process, voltage, and temperature (PVT) variations.
> +  Dedicated hardware sensors and control logic continuously monitor
> +  conditions and apply the lowest safe voltage for the required performance
> +  level.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,omap3-smartreflex-core
> +      - ti,omap3-smartreflex-mpu-iva
> +      - ti,omap4-smartreflex-core
> +      - ti,omap4-smartreflex-mpu
> +      - ti,omap4-smartreflex-iva
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  ti,hwmods:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    deprecated: true
> +    description:
> +      It was required by the OMAP interconnect/PRCM code to automatically
> +      initialize hardware modules using TI's internal database.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    smartreflex@4a0db000 {
> +        compatible = "ti,omap4-smartreflex-iva";
> +        reg = <0x4a0db000 0x80>;
> +        interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
> +        ti,hwmods = "smartreflex_iva";

IIRC, ti,hwmods has been removed on omap4.

> +    };
> +
> +  - |
> +    smartreflex@4a0dd000 {
> +        compatible = "ti,omap4-smartreflex-core";
> +        reg = <0x4a0dd000 0x80>;
> +        interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +        ti,hwmods = "smartreflex_core";
> +    };
> +
> +  - |
> +    smartreflex@4a0d9000 {
> +        compatible = "ti,omap4-smartreflex-mpu";
> +        reg = <0x4a0d9000 0x80>;
> +        interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +        ti,hwmods = "smartreflex_mpu";
> +    };

Just one example is enough.

Rob

