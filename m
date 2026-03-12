Return-Path: <devicetree+bounces-274673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFJMNEXcsmlMQQAAu9opvQ
	(envelope-from <devicetree+bounces-274673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:31:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52906274815
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:31:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E55C130489B0
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB39384242;
	Thu, 12 Mar 2026 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFodYMLy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFFF364029;
	Thu, 12 Mar 2026 15:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773329332; cv=none; b=lLclyDaSCVTW4d1MnyzL82L8Vw5Cw6hWVCc3cVkk9ZmZYFSl/4aVx1ZZYeWnXz1zmJfKCI0sgBrmvumK4NbC+uLlhr6lYSd+CS5ys8oZDMNxKKCFpOZocrWqvb2+iv3cyua24CSxyDBu19qVOaTW72xs9tiDfh6Vrc88hK3/TMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773329332; c=relaxed/simple;
	bh=evlB7UmYgfXR0LeObfNN35XybfXOCZeXbvVto+3/lcI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3JvfPqu4rtGy0NCYE1YYhiypzodBMc/qaaUPYiLtvQUHnmglHsStrF7DVyQiqDAWAuelJtCKWH/mdcDOpVoyUVmwFO9+ffyovkAcS47J6GyeOQyK73M0W4IttTzjD87cSKVQtZbaPGB2sO7uKwYjOajFzH9+LKxE3QK4T2w7nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFodYMLy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C1E6C4CEF7;
	Thu, 12 Mar 2026 15:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773329332;
	bh=evlB7UmYgfXR0LeObfNN35XybfXOCZeXbvVto+3/lcI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gFodYMLyNAGPQXugwNFC72H1iGvqR3UrCJVMCOPPy8Mto5tlMsMz+Y0leMQsoppvi
	 FZBoZgaILr9+s0zmv6f1PTedIvH6FbNOYFjUS/sOfeBXJUHwvQ+qsDkA60SGKRptAW
	 WHB5A0kLVm7eDLMndht6nDye7g1VvFmOXkOMpLn+a/02eQ5OSVRecdXiDiennCAYep
	 MloOn9u7q3U9uDY5k6Zik/SqOFsbiFhvZwLxpMli8s2yPm6rEcbXi9o4OrzpoO3vqX
	 mCRgdGtbI/rjC7h0lQhuxM7FSabdYQiU5JB5CuX3x+PLfXnGy/xl0fXYeVDBukXewO
	 SvuEmIZxkQaTg==
Date: Thu, 12 Mar 2026 10:28:51 -0500
From: Rob Herring <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: hisilicon,504-nfc: convert to DT schema
Message-ID: <20260312152851.GA3190071-robh@kernel.org>
References: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274673-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.61.87.32:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,devicetree.org:url,0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nod.at:email]
X-Rspamd-Queue-Id: 52906274815
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 07, 2026 at 04:43:56PM +0000, Akhila YS wrote:
> Convert Hisilicon Hip04 Soc NAND controller DT binding to YAML format.
> 
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../devicetree/bindings/mtd/hisilicon,504-nfc.yaml | 90 ++++++++++++++++++++++
>  1 file changed, 90 insertions(+)

Convert implies the removal of the .txt binding. Where is that? Could be 
missing? If so, say that.

> 
> diff --git a/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml b/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml
> new file mode 100644
> index 000000000000..805ef0af0e04
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/hisilicon,504-nfc.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/hisilicon,504-nfc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon Hip04 NAND Flash Controller
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +  - Richard Weinberger <richard@nod.at>

This should be someone with the h/w. I would use the HiSilicon 
maintainer from MAINTAINERS.

> +
> +description:
> +  The HiSilicon 504 NFC is a NAND flash memory controller used in the
> +  Hip04 SoC. It supports hardware ECC for NAND devices and provides
> +  register and buffer regions for NAND operations.
> +
> +allOf:
> +  - $ref: nand-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: hisilicon,504-nfc
> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2

Need to define what each entry is.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  nand-bus-width:
> +    enum: [8, 16]
> +
> +  nand-ecc-mode:
> +    enum:
> +      - none
> +      - hw
> +
> +  nand-ecc-strength:
> +    const: 16
> +
> +  nand-ecc-step-size:
> +    const: 1024
> +

> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0

These can be dropped as the child (partitions) doesn't have an address.

> +
> +  partitions:
> +    $ref: /schemas/mtd/partitions/fixed-partitions.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - nand-bus-width
> +  - nand-ecc-mode
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    nand-controller@4020000 {
> +        compatible = "hisilicon,504-nfc";
> +        reg = <0x04020000 0x10000>, <0x05000000 0x1000>;
> +        interrupts = <0 379 4>;
> +        nand-bus-width = <8>;
> +        nand-ecc-mode = "hw";
> +        nand-ecc-strength = <16>;
> +        nand-ecc-step-size = <1024>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        partitions {
> +             compatible = "fixed-partitions";
> +             #address-cells = <1>;
> +             #size-cells = <1>;
> +
> +             partition@0 {
> +                 label = "nand_text";
> +                 reg = <0x0 0x400000>;
> +            };
> +        };
> +    };
> +...
> 
> ---
> base-commit: d4906ae14a5f136ceb671bb14cedbf13fa560da6
> change-id: 20260306-hisi504-1-d7aa09c70d93
> 
> Best regards,
> -- 
> Akhila YS <akhilayalmati@gmail.com>
> 

