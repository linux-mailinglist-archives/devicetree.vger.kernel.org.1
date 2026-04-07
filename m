Return-Path: <devicetree+bounces-285163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJ+CDJC31GnQwgcAu9opvQ
	(envelope-from <devicetree+bounces-285163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 09:51:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8832B3AAFD1
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 09:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1288E3021E50
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 07:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA5A3A3835;
	Tue,  7 Apr 2026 07:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPXw++5u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4629A3A3831;
	Tue,  7 Apr 2026 07:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775548244; cv=none; b=apeULu1j7mkTn9G4xJlJhgdtA1PHuZgMdwHbpO97z17qis9S8Y7n4+a9Shv5CgMLD/FI9tVx92pnT8KpG5moGqj/kqgFipnmUHyf44V/PyMYQW8Y3sHJxDsud4bi01Eg3prNJv4TdxzYQsppjKFXzlWqfKbdcI4/9hZqCrcRHT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775548244; c=relaxed/simple;
	bh=V9L0KgtiKRhBAbkYtOsVEM62GU0dI0FGYEnsgKtc70Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f7wHnmSc/ZvGdBcIHIaOQfqgnYJ+hACgqu+uITzcYCbS+XqovOKjmBgutDECXgxrev2nL40FwAKVxrp25fwttRF31mp8yEnxFF6ohaVOFssGY7w1DpKCb9bmQpxJV1mS7fYpNEoZF8f2QlwW3a6h+pVq+GqCmRxNh0VKrUafqXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPXw++5u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BD90C116C6;
	Tue,  7 Apr 2026 07:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775548243;
	bh=V9L0KgtiKRhBAbkYtOsVEM62GU0dI0FGYEnsgKtc70Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oPXw++5uE3nR3/HNEy5uVeVDsAFaPTiiKKqGHTjB4Rn22ReQsMHvGC/mi78bptaXw
	 w7SeJfUJy8pui3uEJLY+/QNbZsP8bBvrgvWvCsK42E4lU2+aKLFSS3LAZTWvE+yoLB
	 aiUFlPUSHLs6ydgC5O6V30QmiHiK5jQOeBeutcouIdNVlzoHD1QHVIieIj/B76z9r1
	 oGEfUQIlHyvebi3G8m4oOKTKbXJB3l5d0JarBHW9+bHIJWWir+kTIZJX8dVbilx3y8
	 4KJmzAFEJpRvi0mIV4d91tejY8s4mfl105Kz/Qqw1IPNo00G+tDNcmt4Cd3QHKkfsz
	 PC5YzSAe7r93w==
Date: Tue, 7 Apr 2026 09:50:41 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jia Wang <wangjia@ultrarisc.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Xincheng Zhang <zhangxincheng@ultrarisc.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: PCI: Add UltraRISC DP1000 PCIe
 controller
Message-ID: <20260407-uptight-tody-of-weather-ae1e35@quoll>
References: <20260407-ultrarisc-pcie-v2-0-2aa2a19a7fb3@ultrarisc.com>
 <20260407-ultrarisc-pcie-v2-3-2aa2a19a7fb3@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407-ultrarisc-pcie-v2-3-2aa2a19a7fb3@ultrarisc.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285163-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,google.com,gmail.com,ultrarisc.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,ultrarisc.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.64.111.64:email]
X-Rspamd-Queue-Id: 8832B3AAFD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 10:40:54AM +0800, Jia Wang wrote:
> Add UltraRISC DP1000 SoC PCIe controller devicetree bindings.
> 
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> ---
>  .../bindings/pci/ultrarisc,dp1000-pcie.yaml        | 103 +++++++++++++++++++++
>  1 file changed, 103 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml b/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> new file mode 100644
> index 000000000000..d0517130e127
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/ultrarisc,dp1000-pcie.yaml
> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/ultrarisc,dp1000-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: UltraRISC DP1000 PCIe Host Controller
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  UltraRISC DP1000 SoC PCIe host controller is based on the DesignWare PCIe IP.
> +  This binding describes the UltraRISC specific extensions to the base
> +  DesignWare PCIe binding.

Drop sentence. Do not describe in description what the binding
describes. It's circular / repetitive. Just describe that.

> +
> +maintainers:
> +  - Xincheng Zhang <zhangxincheng@ultrarisc.com>
> +  - Jia Wang <wangjia@ultrarisc.com>
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +
> +properties:
> +  compatible:
> +    const: ultrarisc,dp1000-pcie
> +
> +  reg:
> +    items:
> +      - description: Data Bus Interface (DBI) registers.
> +      - description: PCIe configuration space region.
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: config
> +
> +  num-lanes:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [4, 16]
> +    description: Number of lanes to use.
> +
> +  max-link-speed:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    const: 4

If const then deducible from the compatible. Drop the property.

> +    description: Maximum PCIe link speed supported.
> +
> +  interrupts:
> +    description: List of interrupt specifiers used by the controller

Drop description. Obvious.

> +    items:
> +      - description: MSI interrupt
> +      - description: Legacy INTA interrupt
> +      - description: Legacy INTB interrupt
> +      - description: Legacy INTC interrupt
> +      - description: Legacy INTD interrupt
> +
> +  interrupt-names:
> +    items:
> +      - const: msi
> +      - const: inta
> +      - const: intb
> +      - const: intc
> +      - const: intd
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - interrupt-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      pcie_x16: pcie@21000000 {

Drop unused label

> +        compatible = "ultrarisc,dp1000-pcie";

reg, names and ranges go here. Please follow DTS coding style.

> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +        #interrupt-cells = <1>;
> +        reg = <0x0 0x21000000 0x0 0x01000000>,
> +              <0x0 0x4fff0000 0x0 0x00010000>;
> +        reg-names = "dbi", "config";
> +        device_type = "pci";
> +        dma-coherent;
> +        bus-range = <0x0 0xff>;
> +        num-lanes = <16>;
> +        ranges = <0x81000000  0x0 0x4fbf0000  0x0 0x4fbf0000  0x0 0x00400000>,
> +                 <0x82000000  0x0 0x40000000  0x0 0x40000000  0x0 0x0fbf0000>,
> +                 <0xc3000000 0x40 0x00000000 0x40 0x00000000  0xd 0x00000000>;
> +
> +        max-link-speed = <4>;

Drop, compatible defines this.

Best regards,
Krzysztof


