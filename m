Return-Path: <devicetree+bounces-139887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 587F5A1766F
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 05:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5856E3A7B47
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 04:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5788189F45;
	Tue, 21 Jan 2025 04:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VkTdXA3B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE0D2F5B
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 04:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737432613; cv=none; b=qIR1vfNJhwj69nFWeXn+rhyuY/++5Qdl3ZR8lxQGe9BMObzTdY6eNAzPcARd2OVsKD/sgQP4T+bQNFIjmrMs8Ej289FUkKnE0u7pKnfU2yZ4TOjEONkzV1XCLW9FiB7dJ9GXd/I9G6gdX9BfgFnuXBJiq+UsIvlz7H1LtTPiTgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737432613; c=relaxed/simple;
	bh=2677cB2cYRBn/ZI5F3BzpYB/tQDA6LdTZ9oH56N7Lpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bj8QwJ83ncALfr40w8cWOrhe4lAk0aNPquayQUFMjeMaMBxpDPFM+nNEf0RAr1Zjrx01r4+hgxTYksEbpZtegzDVLGXHDplWpCrd/yJ7p2VrXZXm5XxgwMek8iCSS5645TmPki7giq7EoznE1649xBxZvXTp4PhaOrHGwU/FLI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VkTdXA3B; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2f441791e40so6667389a91.3
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 20:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737432610; x=1738037410; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=25C9szHhX7J4MA6YES08ppeFphUsaevkSNkDCIhAMZk=;
        b=VkTdXA3BYtV4zQ62AbyAm2PqCWmXqZmBLWrhleoMMlzepB3aRjamwPEu7xXswlT3UL
         C48R4+3nwxQ3n/9kmummaBTv6tVFRCzCeSwpQIQpsJuQalWtUYeZrKVv1gdmioJ12m0Z
         dPxQxIk9AvN0Z+fRcCRg+15GlhzBFw4QduXt/NvtIOyieRF3CGQnlOCWcUC05eHZrs9q
         BCE2rXXVsp3UdI7opwLPWTcfHdt03xP/ubzulPW9k7bNsHJLwOXYmtGPfJivNZ4cSiUG
         S49GYsvWoLbbmS7H2bgtAQbl7PYO2wL9LAXWM/MTqYSYI/asTDj1ldHTXoU7ROhMMUVs
         uCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737432610; x=1738037410;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25C9szHhX7J4MA6YES08ppeFphUsaevkSNkDCIhAMZk=;
        b=iCtLQDI/TFEMltMHtTOfqW4C5kW0FnSLZt4K5hwvjP0ADZ9bjBeLVWcH8AgYVVzHtI
         yYzNzGLD5FWEYa60DhGt1TkLDYBsLgUDXDaJChd4M4oD3k7/sPR06XMhgQIq0m14OcYA
         ZmarXoexd2j/pWI5gaXwf8V/6YOxHGcStFH9HmsuaZ5eVFpACRAYckAyqPqTKuTn5tfs
         T5lTowYrsZII+lWjvcU49TTvzpWWEuIwHxaY7ZW4fKC1fogh/N8kUmxMhrKnWMOlAH/Q
         EPSPnAXDLnL4DSF7cy36+Vt6aHDUTU3/QL/rRxrKathhLLKowkrASOli1x00q8uWxqhg
         JHuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbtY1mNEeqpG0uRDeYJ6xwlPktiVAKaZ3e3PU12UXWrnmEI/5+FyZ0nJ+24hljrIhBqn5tVCvxbkIV@vger.kernel.org
X-Gm-Message-State: AOJu0YyaQ1CBwjkfJ+6tW79KzA2mD/XYfW8RMv7YxVnVZRIR9rPDHQ//
	mI4JJxAH6zTbPouoMZExxPRZw7vlHn0NY8puok//CQkbj+q+NdGmwrFHE1bpw7h3Tt/RlEn8xvE
	=
X-Gm-Gg: ASbGncuCrbjJl4eql64vpG4jTvB6LahA29TLy7XidTq0xHcVCd3RrnDMO1YWtfzk4oM
	8HAZ/nR5C/L7T8dpK8kYvjXpid3Yu1S2mZScOWnuuCbzGYnwxjZ6ndzJhk87w9Zu77dyjee8CAL
	DEmms4n49t45SlWUKtX+Y2oKoSsN1TZQwY8yoXVF3ECswkxNF4kz8JnRuKiOCu1pLbAs2egye7r
	UUijx+rM5XnRdKjiOzPLwujSgTVeLnMGU523GGw/WaEWS8aCqP9voCIl+w1oV3Nfs/2Kod6Hgd/
	TDXfLr4=
X-Google-Smtp-Source: AGHT+IE5Kg66oBpFvdTLTvpI6AESwwe9wmyYxOKxkpoiHSTsg6rSQrQzze2gwE5JIYFIh5THYCZMeg==
X-Received: by 2002:a05:6a00:ad8d:b0:72a:ae66:3050 with SMTP id d2e1a72fcca58-72daf931cd0mr21985640b3a.1.1737432610592;
        Mon, 20 Jan 2025 20:10:10 -0800 (PST)
Received: from thinkpad ([117.213.102.234])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dabaa751asm7925904b3a.162.2025.01.20.20.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 20:10:10 -0800 (PST)
Date: Tue, 21 Jan 2025 09:40:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jingoohan1@gmail.com,
	michal.simek@amd.com, bharat.kumar.gogada@amd.com
Subject: Re: [PATCH v7 2/3] dt-bindings: PCI: amd-mdb: Add AMD Versal2 MDB
 PCIe Root Port Bridge
Message-ID: <20250121041002.d77m5hloydwqbrzp@thinkpad>
References: <20250119224305.4016221-1-thippeswamy.havalige@amd.com>
 <20250119224305.4016221-3-thippeswamy.havalige@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250119224305.4016221-3-thippeswamy.havalige@amd.com>

On Mon, Jan 20, 2025 at 04:13:04AM +0530, Thippeswamy Havalige wrote:
> Add AMD Versal2 MDB (Multimedia DMA Bridge) PCIe Root Port Bridge.
> 
> Signed-off-by: Thippeswamy Havalige <thippeswamy.havalige@amd.com>

Couple of comments below. With those fixed,

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> Changes in v2:
> -------------
> - Modify patch subject.
> - Add pcie host bridge reference.
> - Modify filename as per compatible string.
> - Remove standard PCI properties.
> - Modify interrupt controller description.
> - Indentation
> 
> Changes in v3:
> -------------
> - Modified SLCR to lower case.
> - Add dwc schemas.
> - Remove common properties.
> - Move additionalProperties below properties.
> - Remove ranges property from required properties.
> - Drop blank line.
> - Modify pci@ to pcie@
> 
> Changes in v4:
> -------------
> - None.
> 
> Changes in v5:
> -------------
> - None.
> Changes in v6:
> --------------
> - Reduce dbi size to 4k.
> - update register name to slcr.
> ---
>  .../bindings/pci/amd,versal2-mdb-host.yaml    | 121 ++++++++++++++++++
>  1 file changed, 121 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml b/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> new file mode 100644
> index 000000000000..db751a51e63c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/amd,versal2-mdb-host.yaml
> @@ -0,0 +1,121 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/amd,versal2-mdb-host.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMD Versal2 MDB(Multimedia DMA Bridge) Host Controller
> +
> +maintainers:
> +  - Thippeswamy Havalige <thippeswamy.havalige@amd.com>
> +
> +allOf:
> +  - $ref: /schemas/pci/pci-host-bridge.yaml#
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +
> +properties:
> +  compatible:
> +    const: amd,versal2-mdb-host
> +
> +  reg:
> +    items:
> +      - description: MDB System Level Control and Status Register (SLCR) Base
> +      - description: configuration region
> +      - description: data bus interface
> +      - description: address translation unit register
> +
> +  reg-names:
> +    items:
> +      - const: slcr
> +      - const: config
> +      - const: dbi
> +      - const: atu
> +
> +  ranges:
> +    maxItems: 2
> +
> +  msi-map:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-map-mask:
> +    items:
> +      - const: 0
> +      - const: 0
> +      - const: 0
> +      - const: 7
> +
> +  interrupt-map:
> +    maxItems: 4
> +
> +  "#interrupt-cells":
> +    const: 1
> +
> +  interrupt-controller:
> +    description: identifies the node as an interrupt controller
> +    type: object
> +    additionalProperties: false
> +    properties:
> +      interrupt-controller: true
> +
> +      "#address-cells":
> +        const: 0
> +
> +      "#interrupt-cells":
> +        const: 1
> +
> +    required:
> +      - interrupt-controller
> +      - "#address-cells"
> +      - "#interrupt-cells"
> +
> +required:
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - interrupt-map
> +  - interrupt-map-mask
> +  - msi-map
> +  - "#interrupt-cells"
> +  - interrupt-controller
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +        pcie@ed931000 {
> +            compatible = "amd,versal2-mdb-host";
> +            reg = <0x0 0xed931000 0x0 0x2000>,
> +                  <0x1000 0x100000 0x0 0xff00000>,
> +                  <0x1000 0x0 0x0 0x1000>,
> +                  <0x0 0xed860000 0x0 0x2000>;
> +            reg-names = "slcr", "config", "dbi", "atu";
> +            ranges = <0x2000000 0x00 0xa8000000 0x00 0xa8000000 0x00 0x10000000>,

I/O PCI address starts from 0.

Also use 0x0 instead of 0x00 for consistency.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

