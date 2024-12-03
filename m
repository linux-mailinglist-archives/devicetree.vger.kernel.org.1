Return-Path: <devicetree+bounces-126594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BB89E1EC6
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D5CDB242FF
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356491EF08F;
	Tue,  3 Dec 2024 13:34:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sPu0uqL5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC991E5710
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 13:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733232884; cv=none; b=r29Heka0T5IMlP4pERLSRO7izAlDhoJ1kfUejXu5zKBwds7BBLxj5a8b28Ke+vZYA3Vz7drpg7EicYhibgV1oqguuDYqtzWpZpg+TMy2MTW/DHx8qgp2pbI+8sCyOLTSKPwvkKaww/fpI2W9ptOMtjHPwi5x7oJYZLKkoKKDlkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733232884; c=relaxed/simple;
	bh=l/peGxhZMnqAZuO+94dMeGSC0y2BYBgXbWhsFNetd4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjy4nfedByZz27DxkVuLaLkNQqbUoYhzrEpBionPPvuTsQiR2WmufyjRfzkOU7Si/F4fWeRfBc2IpBCaCDlbSwYTdJm0QmOFRrTuTctIX9FQS16zy5VBbGQc2mKYs16q1+KIxylwDCR46zh1X3TjYXl1EE6h2Nk6QRCnCxucHJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sPu0uqL5; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-724fee568aaso5309014b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 05:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733232882; x=1733837682; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VM0b+TuYNA5dZ5GF7J4Mkq+u9rwoaZ/qL/ReFdXCGzk=;
        b=sPu0uqL5sNNnWI5Ln3op1aqh4ZSfbp84E7RVTVWPtx88Mj8hn7HKfOi3SGlvLPbDy0
         gga7wUn3Cd0388BMXtRUZHd9DmHEHOHr7J6JcGzIksFT94q5i51Qnuly8NJw7fU9NREv
         LwmmhR/7UYEpp6fRTVTgHQx0daYGQsUU0S3CuUTsiAbZLmtEqNgmrEHXXr+9UF0UZimz
         JwTba1t9gjVywHWdyvSHxczH+Llm9O2rZPzPXTnoIQbUEwhtBvlqsHUc03VePDg/Y9yg
         hN8OrsgvBJuJ1/T0foTUJWYaJXTxShl53/NXr0422yiNXAOHkXjat5uadzr+JRhFR463
         EeMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733232882; x=1733837682;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VM0b+TuYNA5dZ5GF7J4Mkq+u9rwoaZ/qL/ReFdXCGzk=;
        b=d11Hq/TxOVU2rwqebtR4Ai76AW9YsaEsOUiH3Jx/WeNL7QEC7K57zDD4UDDRE/6McR
         oXFnNOa6wRT0774/4tg7G65ZDTl4iqznr8TqxeWunbF05dRirtrDlxetJ63dsSt6W4Uv
         +E6OzWOEX/zEWFu4gHuMuak4DfgekbI2G0avEH/wv6RVIbyc89Ie9lkYhVewRGqroNQ6
         6tr/lBJcXCMj+BlOydNeXOFlRVjR5wpUHgfDQusXwjxKIsCAyij8K0PC1EZPqfSEkG3a
         MSZm0LHUhBB5sOeeJgkhpJfqwGTltAMgsuortYaDuWqznkJhni8m1g66iID9Mw81DwcF
         PjGw==
X-Forwarded-Encrypted: i=1; AJvYcCVRn0HWVVjD/iXx0eibZbq6DtT2wQm4T8AV8JlSnYy7HOQUmyhjB/93w35IADSpqX/E8LSZiZmDxIFi@vger.kernel.org
X-Gm-Message-State: AOJu0YzIwM5jLZwO+bK5eYhK7G8mPjHABNzlPu8vfuuXiiortOi7cpn9
	BSkXmk6zXMPjr8/HXY7FiRrToiTJYNzX6Woy0+VfNDeK12Q4Cs9wLkwTzoegVA==
X-Gm-Gg: ASbGncv2VhUWQ+P+fyMUOOlboq3GuSsDWt0BbxSE+jbYMpQvvAC9BBpgQIzYLOti/Qp
	AqFpBRYsb9vfz4GrjffwahIec/JVnJCZSEqzSL/aXdOKNsKhAXeR7OgTcChJBI79iKy47If3Np/
	a+jsgj8dypZEBkledLLkhnUKhpA5bNA0ww0pGA6wYDEnvx1agxeZqieIZ4YIiGIKLhwvNNXvGzG
	OsCAS8PWRmjPvrIVBYfKVSTSj1dASPEEfSQGZGUB5EV9N0h6TzqIFpn0f2Y
X-Google-Smtp-Source: AGHT+IHayNjuQ1X29URUJCX9sq0e/A4DCoC/llYxuth0yx0/0uBpnijEWmYVIRWVw90O9w6CjRmR2Q==
X-Received: by 2002:a17:902:ce08:b0:212:e29:3b2f with SMTP id d9443c01a7336-215bd250316mr28172835ad.44.1733232881563;
        Tue, 03 Dec 2024 05:34:41 -0800 (PST)
Received: from thinkpad ([120.60.48.217])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-215908ab2dcsm36529975ad.209.2024.12.03.05.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 05:34:41 -0800 (PST)
Date: Tue, 3 Dec 2024 19:04:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	p.zabel@pengutronix.de, cassel@kernel.org,
	quic_schintav@quicinc.com, fabrice.gasnier@foss.st.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: PCI: Add STM32MP25 PCIe root complex
 bindings
Message-ID: <20241203133434.2qbohwi3wrjjja5a@thinkpad>
References: <20241126155119.1574564-1-christian.bruel@foss.st.com>
 <20241126155119.1574564-2-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126155119.1574564-2-christian.bruel@foss.st.com>

On Tue, Nov 26, 2024 at 04:51:15PM +0100, Christian Bruel wrote:
> Document the bindings for STM32MP25 PCIe Controller configured in
> root complex mode.
> 
> Supports 4 legacy interrupts and MSI interrupts from the ARM
> GICv2m controller.
> 
> STM32 PCIe may be in a power domain which is the case for the STM32MP25
> based boards.
> 
> Supports wake# from wake-gpios
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> ---
>  .../bindings/pci/st,stm32-pcie-common.yaml    | 45 +++++++++
>  .../bindings/pci/st,stm32-pcie-host.yaml      | 99 +++++++++++++++++++
>  2 files changed, 144 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/st,stm32-pcie-common.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/st,stm32-pcie-host.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/st,stm32-pcie-common.yaml b/Documentation/devicetree/bindings/pci/st,stm32-pcie-common.yaml
> new file mode 100644
> index 000000000000..479c03134da3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/st,stm32-pcie-common.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/st,stm32-pcie-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32MP25 PCIe RC/EP controller
> +
> +maintainers:
> +  - Christian Bruel <christian.bruel@foss.st.com>
> +
> +description:
> +  STM32MP25 PCIe RC/EP common properties
> +
> +properties:
> +  clocks:
> +    maxItems: 1
> +    description: PCIe system clock
> +
> +  resets:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: pcie-phy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  access-controllers:
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description: GPIO controlled connection to PERST# signal
> +    maxItems: 1
> +
> +required:
> +  - clocks
> +  - resets
> +  - phys
> +  - phy-names
> +
> +additionalProperties: true
> diff --git a/Documentation/devicetree/bindings/pci/st,stm32-pcie-host.yaml b/Documentation/devicetree/bindings/pci/st,stm32-pcie-host.yaml
> new file mode 100644
> index 000000000000..18083cc69024
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/st,stm32-pcie-host.yaml
> @@ -0,0 +1,99 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/st,stm32-pcie-host.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32MP25 PCIe root complex driver
> +
> +maintainers:
> +  - Christian Bruel <christian.bruel@foss.st.com>
> +
> +description:
> +  PCIe root complex controller based on the Synopsys DesignWare PCIe core.
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +  - $ref: /schemas/pci/st,stm32-pcie-common.yaml#
> +
> +select:
> +  properties:
> +    compatible:
> +      const: st,stm32mp25-pcie-rc
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp25-pcie-rc
> +
> +  reg:
> +    items:
> +      - description: Data Bus Interface (DBI) registers.
> +      - description: PCIe configuration registers.
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: config
> +
> +  num-lanes:
> +    const: 1
> +
> +  msi-parent:
> +    maxItems: 1
> +
> +  wake-gpios:
> +    description: GPIO controlled connection to WAKE# input signal
> +    maxItems: 1
> +
> +  wakeup-source: true
> +
> +dependentRequired:
> +  wakeup-source: [ wake-gpios ]
> +
> +required:
> +  - interrupt-map
> +  - interrupt-map-mask
> +  - ranges
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/phy/phy.h>
> +    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
> +
> +    pcie@48400000 {
> +        compatible = "st,stm32mp25-pcie-rc";
> +        device_type = "pci";
> +        num-lanes = <1>;
> +        reg = <0x48400000 0x400000>,
> +              <0x10000000 0x10000>;
> +        reg-names = "dbi", "config";
> +        #interrupt-cells = <1>;
> +        interrupt-map-mask = <0 0 0 7>;
> +        interrupt-map = <0 0 0 1 &intc 0 0 GIC_SPI 264 IRQ_TYPE_LEVEL_HIGH>,
> +                        <0 0 0 2 &intc 0 0 GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>,
> +                        <0 0 0 3 &intc 0 0 GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>,
> +                        <0 0 0 4 &intc 0 0 GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>;
> +        #address-cells = <3>;
> +        #size-cells = <2>;
> +        ranges = <0x01000000 0 0x10010000 0x10010000 0 0x10000>,

PCI address of I/O region should start from address 0x00000000.

Also use hex notation for all values.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

