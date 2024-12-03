Return-Path: <devicetree+bounces-126634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E90759E201C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34AAF1653D8
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 14:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72981F7545;
	Tue,  3 Dec 2024 14:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sX4mAhip"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401A71F666B
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 14:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733237650; cv=none; b=d9uLwUWl4CIK82MKhK0VgkY7FpVT+WhAISa9ls0Pbi2YoFK4MoDF33shHMD0gUYr2+bDC5M1AlQJO4+fMTnXnj4eGSmVcuAiC7C7nVl3Y7EH54XOpyHMOByKERGvEYuvv9iiY8BOJJVoD9qXBglR8x5Xne3DtIY8m9+yMKYpt6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733237650; c=relaxed/simple;
	bh=3I67rMMe+vODDhqZTiQxaM4wt9T7Ty4kLEO+IS9uPeA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gSdjVwM629wcZu326lg0NbgaursP8WXplUozkHxER82ovwWmoEKqNbH2yIqHGWjvDph4aa0bOozh7ur7yv8kzJHBC119yvlb/0rCDU8fvK6g3WziOuxmeZYHvS6oyUXrUcAxzSnv7Gbg6D3FeubtB4e+kq57dWUz1hBAuUIi03o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sX4mAhip; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-21539e1d09cso52588955ad.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 06:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733237647; x=1733842447; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NxRWvpRh/XATlPemsVPOp1C/WgHKNO3eQaKjWVu9JCw=;
        b=sX4mAhip+zEXrfYltgIdHRgCxeewcytEWOwp9cCbh9VcbzOVrdWlA5KH13bwqOYyRn
         mtslYi6EeAEsYXASwXIHxp1idU8LUPChVSsnkSbEQJ46cm49bTwXabcjUPKi2/D1E2PU
         VwblT4g/uDSYZbwIkxwgib6hiwwJ1q6s80CGrf7Y1wnar3vqGrVBpfHj1Zl6zJ35oK4Q
         cCMeL5dUfokq75h2Q5+Qzjqlcg7Oq0ffFmx85HqywlA2qF+HqyC2Tf0x45GX7+3WXfHt
         Z2f+R+8T2JL2x1qwmoxdue0RKQ99J7paKs/NyneNL63ZL4bUQ95LwvW+nGHp9kUxRPN8
         scsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733237647; x=1733842447;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NxRWvpRh/XATlPemsVPOp1C/WgHKNO3eQaKjWVu9JCw=;
        b=Hrqlred3Ji3NF9CWE/GL6Gxi+eiS8K6i4FD19R5e7eeQmUpq2qqgGGRkxkEvqnjiJG
         pJRgbZ4otG8/w2fvlFN9eYF1YVhsjuTZV86VCUFYRnqYBCguQULLCfBHJa+PNRdq2fWI
         EtHVhjrIrgVijxg/o91KANSReFAiL4L9FmZBZLwrHUTjjnQ9BHwfM1bXg/PBmhQRzdM+
         QeP4pDpKMjGjQIH4ITkvkPXgvd2IVVbOTKgQyn7Thl4nktu2hfPpg8/LQTOSj312Gh7W
         +hWWnoSzbji0NKQz0h7jOfPV7BB0gxtrfP+I6OFpXp3WcRAZ7Y5JeGCgMWUCYrp2sMtf
         5Rfg==
X-Forwarded-Encrypted: i=1; AJvYcCXhUL9E//8NLba0pMgF1Yn8i+ZQklAF3WwwCbv7Z83EEiVM6q0ECJaIxSLzLzcWjLM5ff8dEJjdlLnv@vger.kernel.org
X-Gm-Message-State: AOJu0YzV7fows/D1dkJczXbHAJhBsCXEISXmQosn7R8qZA3O55d7jJEg
	joX2W4pDdXbdhY0DbbLAgVDifXI9IejGzC9KaSVGEiPlgNhZyRX2YQS8fDSFTg==
X-Gm-Gg: ASbGncupU2B/qcfGHe/Zo0t88vLDPOGpe5/Bdhe+rRcH9rfteOgKWaA8D2SLM9D7wvk
	xWZPC16vz8jrWJ9XPe7kKOIypE+Ge8wKxMqz4TeBhL3ZvY9pKsiuaNSrEZX+heDN2T6xOs/DigD
	8E+fWSyJIq5VCfnZ/zZhQ7ZY1nckshDvZqWfTxi/W8o4cdwZYgKjHwcqiF8PLCmJgbkfnNa2+Wr
	UZd6Y9NfKPNzjWuZP6NMtbi4DVLll2npwj+DhU/aBOSFNy2fI5FfQsYNUI6
X-Google-Smtp-Source: AGHT+IG1jXS9xGAq/FRf8FrbfE+7Y1wmH9mz8EtqoFxLQOYNOcGvJFOa6X0SdbkbLcjrMI9kzEqtkw==
X-Received: by 2002:a17:902:f543:b0:20c:a44b:3221 with SMTP id d9443c01a7336-215bd1cb76emr33584985ad.15.1733237647391;
        Tue, 03 Dec 2024 06:54:07 -0800 (PST)
Received: from thinkpad ([120.60.48.217])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21565f24c59sm56675255ad.125.2024.12.03.06.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 06:54:06 -0800 (PST)
Date: Tue, 3 Dec 2024 20:24:01 +0530
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
Subject: Re: [PATCH v2 3/5] dt-bindings: PCI: Add STM32MP25 PCIe endpoint
 bindings
Message-ID: <20241203145401.7snlxk3sybufaqp2@thinkpad>
References: <20241126155119.1574564-1-christian.bruel@foss.st.com>
 <20241126155119.1574564-4-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126155119.1574564-4-christian.bruel@foss.st.com>

On Tue, Nov 26, 2024 at 04:51:17PM +0100, Christian Bruel wrote:
> STM32MP25 PCIe Controller is based on the DesignWare core configured as
> end point mode from the SYSCFG register.
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  .../bindings/pci/st,stm32-pcie-ep.yaml        | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/st,stm32-pcie-ep.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/st,stm32-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/st,stm32-pcie-ep.yaml
> new file mode 100644
> index 000000000000..0da3ee012ba8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/st,stm32-pcie-ep.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/st,stm32-pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32MP25 PCIe endpoint driver
> +
> +maintainers:
> +  - Christian Bruel <christian.bruel@foss.st.com>
> +
> +description:
> +  PCIe endpoint controller based on the Synopsys DesignWare PCIe core.
> +
> +allOf:
> +  - $ref: /schemas/pci/snps,dw-pcie-ep.yaml#
> +  - $ref: /schemas/pci/st,stm32-pcie-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: st,stm32mp25-pcie-ep
> +
> +  reg:
> +    items:
> +      - description: Data Bus Interface (DBI) registers.
> +      - description: PCIe configuration registers.
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: addr_space
> +
> +required:
> +  - reset-gpios
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/st,stm32mp25-rcc.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/phy/phy.h>
> +    #include <dt-bindings/reset/st,stm32mp25-rcc.h>
> +
> +    pcie-ep@48400000 {
> +        compatible = "st,stm32mp25-pcie-ep";
> +        num-lanes = <1>;
> +        reg = <0x48400000 0x400000>,
> +              <0x10000000 0x8000000>;
> +        reg-names = "dbi", "addr_space";
> +        clocks = <&rcc CK_BUS_PCIE>;
> +        phys = <&combophy PHY_TYPE_PCIE>;
> +        phy-names = "pcie-phy";
> +        resets = <&rcc PCIE_R>;
> +        pinctrl-names = "default", "init";
> +        pinctrl-0 = <&pcie_pins_a>;
> +        pinctrl-1 = <&pcie_init_pins_a>;
> +        reset-gpios = <&gpioj 8 GPIO_ACTIVE_LOW>;
> +        access-controllers = <&rifsc 68>;
> +        power-domains = <&CLUSTER_PD>;
> +    };
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

