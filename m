Return-Path: <devicetree+bounces-311015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bXvSET8jLGpKMAQAu9opvQ
	(envelope-from <devicetree+bounces-311015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:18:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AB467A79C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 17:18:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N74h59wL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311015-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311015-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCCE1329D67C
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 15:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3431D37D104;
	Fri, 12 Jun 2026 15:13:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214EF319852;
	Fri, 12 Jun 2026 15:13:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781277230; cv=none; b=Xg3wOgu4vxcX29dhaQaNN5acIiGl/mVs+kbWykSW8TtNflZcspJix4rFjAsGDsv32KdNOIR4JngEolqg6EE9+N3AicEAy0VoqRN/b3jcFIq8IeSVQCmx0DDDFSt8NUHV1bZMiIV25iybYxWy+y0zb9tirlilObYG0luMIG1e81Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781277230; c=relaxed/simple;
	bh=vcYFYrdiTBSQmyb7+fe1/EvgY/j1i3d16AGxw+D+kwg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ftYfDqq1ZfRmW/o5kemJtfyn5ZZvA5JCny4lJzDbraWG2EBBDQEyqNxw7lKpIk50f9lrFE2BSZucBcfMfld3twZUTpb931ttBQ8LmjGh9J3ln9vFqKPmleyYy7K3Ps7WQq0W9YPjlHsMDJTVIoYTxCFYevSmOWRgLExEycZpHGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N74h59wL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7A7E1F00A3A;
	Fri, 12 Jun 2026 15:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781277229;
	bh=UkC9wJNbN8DWnV+rIxALikJhH7vxyoleW0S5SIbWfqo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=N74h59wLwlqfrzAJekopnPa+gmpQzuGPAV/NjVuNYkkUpHMFbJjYTblZt3QKz8Frn
	 dPHFgYQbb0/q92ELOMM1uDBeMmxiuJfQi6YphMyeBkebR1GGugtVUq6E7gk1JyoQxM
	 RYJo8tAV2TjZIxyDqrP1OilD6wdrYgUaubSNulPQOX3gDLIokw2/bMRpmxLjSYOtl7
	 RyeYmrMcs7ayFhj0qh/cDuU7jGo4apK2nIez1AXeWjpjnusSuNT0Sxsn9ndQBfByM7
	 fkoj1dVUUceJ9DWKu6AcI7c+HalCFRovDVLPPDJPraM10jfLB8TcKFhO7bj2wYN2iz
	 duYpTWextcEqQ==
Date: Fri, 12 Jun 2026 10:13:48 -0500
From: Rob Herring <robh@kernel.org>
To: hongxing.zhu@oss.nxp.com
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com,
	frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org,
	kwilczynski@kernel.org, mani@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org, Richard Zhu <hongxing.zhu@nxp.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: imx6q-pcie: Add optional
 intr/aer/pme interrupts for i.MX95
Message-ID: <20260612151348.GA1040341-robh@kernel.org>
References: <20260603062510.3767610-1-hongxing.zhu@oss.nxp.com>
 <20260603062510.3767610-2-hongxing.zhu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260603062510.3767610-2-hongxing.zhu@oss.nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311015-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hongxing.zhu@oss.nxp.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bhelgaas@google.com,m:frank.li@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:hongxing.zhu@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[i.mx:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95AB467A79C

On Wed, Jun 03, 2026 at 02:25:08PM +0800, hongxing.zhu@oss.nxp.com wrote:
> From: Richard Zhu <hongxing.zhu@nxp.com>
> 
> The i.MX95 PCIe controller introduces three additional dedicated hardware
> interrupt lines for specific events:
> - intr: general controller events
> - aer: Advanced Error Reporting events
> - pme: Power Management Events
> 
> These interrupts are optional on i.MX95. PCIe basic functionality
> (enumeration, configuration, and data transfer) works correctly without
> them, as the controller can operate using only the existing msi interrupt.
> 
> Earlier i.MX PCIe variants (imx6q, imx6sx, imx6qp, imx7d, imx8mm, imx8mp,
> imx8mq, imx8q) do not have these three dedicated interrupt lines.
> 
> Update the binding to allow up to 5 interrupts for i.MX95, while
> restricting earlier variants to a maximum of 2 interrupts using
> conditional constraints (if/then schema). This ensures the schema
> accurately reflects the hardware capabilities of each SoC variant.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../bindings/pci/fsl,imx6q-pcie.yaml          | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> index e8b8131f5f23..9b5d4e59dfff 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
> @@ -58,12 +58,18 @@ properties:
>      items:
>        - description: builtin MSI controller.
>        - description: builtin DMA controller.
> +      - description: PCIe event interrupt.
> +      - description: builtin AER SPI standalone interrupt line.
> +      - description: builtin PME SPI standalone interrupt line.
>  
>    interrupt-names:
>      minItems: 1
>      items:
>        - const: msi
>        - const: dma
> +      - const: intr
> +      - const: aer
> +      - const: pme
>  
>    reset-gpio:
>      deprecated: true
> @@ -248,6 +254,29 @@ allOf:
>              - const: pcie_aux
>              - const: ref
>              - const: extref  # Optional
> +        interrupts:
> +          maxItems: 5
> +        interrupt-names:
> +          maxItems: 5

5 is already the max.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - fsl,imx6q-pcie
> +            - fsl,imx6sx-pcie
> +            - fsl,imx6qp-pcie
> +            - fsl,imx7d-pcie
> +            - fsl,imx8mm-pcie
> +            - fsl,imx8mp-pcie
> +            - fsl,imx8mq-pcie
> +            - fsl,imx8q-pcie
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 2
> +        interrupt-names:
> +          maxItems: 2
>  
>  unevaluatedProperties: false
>  
> -- 
> 2.34.1
> 

