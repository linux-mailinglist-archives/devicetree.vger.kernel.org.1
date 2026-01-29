Return-Path: <devicetree+bounces-260937-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFCHM26Je2mlFQIAu9opvQ
	(envelope-from <devicetree+bounces-260937-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:23:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DFAB21D9
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 17:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36F673008503
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D9BF342C9E;
	Thu, 29 Jan 2026 16:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YN0ns6rR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F4C3314C4;
	Thu, 29 Jan 2026 16:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769703785; cv=none; b=aD8GeBF+ZDbLtU+J+0e4MSzINzw/BLLIGcYt5OLmADN+o1zaGgsUg/o4QnLLglP9FvRQxvK9bkh5hLbT+kYIJw6iEXsuzpgRgdAuQaBV/y+lYOTZot65iZLvkXuNxa45OqqzSwS4WkuNNcaH9XoUf3eBYNWdiD3185nUzPrLFWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769703785; c=relaxed/simple;
	bh=H0JUGjT6UJGPBNFYGcqjXsbNql7WKYh6KMyId7b2fSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R8Te/smH7bY9pOdwpIdGr1a6C81l59fVqRIm0F7uqEgj7Iu5vWus8DGCkuGfBALOctb3Ck0ps8eIwlvkT0oOaxO59i+isz+/BVsFelK5axoGUlHjbitP1q0bFIcqlnlOddfNItPtipxaYqV0EKyQ8iIbY2zENtauMPp3cs9rfJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YN0ns6rR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 020F0C4CEF7;
	Thu, 29 Jan 2026 16:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769703785;
	bh=H0JUGjT6UJGPBNFYGcqjXsbNql7WKYh6KMyId7b2fSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YN0ns6rRb3X2NOFT1ENrEeGq0XJ3ODDb5Lmqm9mw27GBicS6hPyO5IaFQUyefIfYZ
	 r7DtoV6wRH6vbFB/5ulaf6RDna0QjwW/umEx9EQSLkXBoo2ZCsER8oH4t5fTkWRS7O
	 BiYoixWd01AHfLAwXCvQCT5+TuUf7DmT1pUy1cLJi+AjG4WISrIGw5gM1WyyISun0F
	 96Jy4rJn/W1Pr6KQAsOGBGD6ALQqMHJtgq7YFVxBPdxUo/xqkiFsao8hjkoeQlogkp
	 rvx9HpqoxADnaQHLYV67UCgtrpNogD9qnvxG4ZonyR36+cdJ0bR2iJ3uMWO0bCV0YY
	 Jwn+y6lj258VA==
Date: Thu, 29 Jan 2026 10:23:04 -0600
From: Rob Herring <robh@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: lee@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	p.zabel@pengutronix.de, peter.chen@cixtech.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH v5 1/3] dt-bindings: reset: add sky1 reset controller
Message-ID: <20260129162304.GA1209761-robh@kernel.org>
References: <20260129070046.2601503-1-gary.yang@cixtech.com>
 <20260129070046.2601503-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129070046.2601503-2-gary.yang@cixtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260937-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.244.36.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 46DFAB21D9
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 03:00:44PM +0800, Gary Yang wrote:
> There are two reset controllers on Cix sky1 Soc. One is located in S0
> domain, and the other is located in S0 and S5 domain.

The comments on v4 still apply... Repeated below...

> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> Signed-off-by: Peter Chen <peter.chen@cixtech.com>
> ---
>  .../bindings/reset/cix,sky1-rst.yaml          |  41 +++++
>  .../soc/cix/cix,sky1-system-controller.yaml   |  48 +++++
>  include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
>  include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
>  4 files changed, 295 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
>  create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> new file mode 100644
> index 000000000000..b52791e2b18e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: CIX Sky1 Reset Controller
> +
> +maintainers:
> +  - Gary Yang <gary.yang@cixtech.com>
> +
> +description: |
> +  CIX Sky1 reset controller can be used to reset various set of peripherals.
> +  There are two reset controllers, one is located in S0 domain, the other
> +  is located in S0 and S5 domain.
> +
> +  See also:
> +  - include/dt-bindings/reset/cix,sky1-rst.h
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - cix,sky1-rst
> +          - cix,sky1-rst-fch
> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    reset-controller {
> +      compatible = "cix,sky1-rst";
> +      #reset-cells = <1>;
> +    };
> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
> new file mode 100644
> index 000000000000..913e77fc522a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cix Sky1 SoC system controller register region
> +
> +maintainers:
> +  - Gary Yang <gary.yang@cixtech.com>
> +
> +description:
> +  An wide assortment of registers of the system controller on Sky1 SoC,
> +  including resets and usb.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - cix,sky1-system-controller
> +          - cix,sky1-s5-system-controller
> +      - const: syscon
> +      - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^reset(-controller)?$":
> +    type: object
> +    $ref: /schemas/reset/cix,sky1-rst.yaml#

This is not a separate device.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscon@16000000 {
> +      compatible = "cix,sky1-s5-system-controller", "syscon", "simple-mfd";
> +      reg = <0x16000000 0x1000>;
> +      reset-controller {
> +        compatible = "cix,sky1-rst";
> +        #reset-cells = <1>;

Move #reset-cells to the parent node and drop this node. And then drop 
"simple-mfd". Or perhaps the definition for what's in the 
"cix,sky1-s5-system-controller" is incomplete? If so, please define all 
the binding.

Rob

