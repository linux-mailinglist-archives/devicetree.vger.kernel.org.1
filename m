Return-Path: <devicetree+bounces-164667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF80A81E41
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 09:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B02093B758A
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 07:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD8B25A2AE;
	Wed,  9 Apr 2025 07:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fxpzZVf/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3793E1D618E
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 07:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744183635; cv=none; b=kNvBYmgVERw2owXGdYr/8TFpqOp44GU01i+Vz+4vx2GhDFlcmlLFvX3FF7VlbvHaecvjYjqgDXwEYF1qvUw/mbcmZ0bVdeCgKiXvjV11IJ4iUgDNzdaTiHIim/j4dITQN/c0ZOrImy/8m5VHP6uDFTyAuYFtM1ncRTh/7NJ/lzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744183635; c=relaxed/simple;
	bh=8Ts1vfTmlOH6tqq2vzk26pvMDa/NdwFzpsuvjn6Gqvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aQUE0CuNj8qArEAR4VdKePuJX3J79yNzaLKjI+umTMnT0W+J5ZJQGf/qUmJXJ9AlAq6DC2mD6emHzvuyqAiH3+RKfzmEwAYx/O/rIyt3PF4crzWo5EKIUXPResZ9++2FyQ4CU+N4FQeaBQCwJ+5qNZHxeG29Dqw9rOHDQ8+Phq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fxpzZVf/; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso6241423b3a.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 00:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744183633; x=1744788433; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bjtp5uxq5PJR8SPbumJFOhR6APtRTEBkqcgJtZZs/yI=;
        b=fxpzZVf/nn2mUcJeaSsFQzaEf8h+OWCg190ORWaxh78ccL7Z/zHRdUMyKPf17ynbeY
         P5ceAowkshR115+M5z/iogREkiSD8FWjHMraKQjlveVg4t+qDBF03S9l1a5YM0Jb8p35
         DNyIcGiclHMiwSx3ZErpQYJeRzyVegPL06+FuHH9KCIBdw56oixncV/mRXn13vPKtsqP
         PMQqs7UozjeXJcFQz6AXRLQtvf8WgCF8oJAZ4CN1n3SwDiUoOaHk7LGnd85gtJy1mFF8
         OMCSxkIWLdL4ZgvA/jU3R2zDpWVM7n6oD0x5+SlyY2VaKG2FwJJf1cLZDk5nDKuESR/I
         IuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744183633; x=1744788433;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bjtp5uxq5PJR8SPbumJFOhR6APtRTEBkqcgJtZZs/yI=;
        b=dKtH8Y2QAD+1RkC0hbzuQVE1Sv37e++OKXEYyshvy77DViNtWaXMc06k/stOeDtKRX
         vritQloeA36PPrZIF9NSVPkzaaAHQBqTRtzBi+Eah5xxM1CS5Zyc4bx+PgVN8my4ZVR4
         lDlNdJ8aunBzkm2N3atwhsbBl+8jOnUhJU+WjBWH8CFmlFbylrcphcksv2eXx/0x3YeX
         eH8cyt2EXClGQcNIp+VwFIHGMwCpkO2QLQmpjm1DHl0jaaTXr0mYKdOxDZKpSbXAQ6Po
         s/bFyL9c5P7/Lm+HwHtr8QPDxaYvoFyMLXtP+fAWBrWyRyH+5cXEJqS3JiOCRMa7lyH6
         RfkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUw0gf0kbhOMjunX9BPEyzovO55gLfD4zKlNZ0eJYerMlQjtXv+Q2ln0nByrsB6Rz4t2cZQ9g67sieT@vger.kernel.org
X-Gm-Message-State: AOJu0YxQioEntzH8fUlZYzayB9SKEGY5MgBnrHyRZ25bV8lisV8LKm+i
	sGl287FxAP+Xe20tfT/r/FFDb8QsMMxsPsIpmO74yBhkQVCY8dj6A0fZ40s7QA==
X-Gm-Gg: ASbGncul+WTy/qMgaiH3fLJO6qtTW3s2G7BlDpNlPFm1fWzsC+AMHV/oCYsjewY/AGx
	BPOOkANVjGfyHb3DUbs2Cmxd72T0URdNTJaxHSz37kjB8wemzwxpZJh28EA7YHgA+gBfsX0f0w+
	EVTJP29GPItPIvj+CU3IrP5Hu/BBp1ZlRe2tVVqkbv0qOFhBjl7NmxOhaxbB51LBFq+wBHEitGv
	5/e6qXGhPUsy5SGe147hyUMThu+OUjuP+oe+RniN4VxNhz3nY4np44D8qMeNXOYPjtF0AsShRMV
	0fNQV2+NOt0kycN42YwFLWAJYqFdp2OKrtAOVy0HK8SqqEbENC78oCBjyblsew==
X-Google-Smtp-Source: AGHT+IFJNOB7FQRc/Tw1WyrEz0Y4erL5DJ65iCK7Rvye19VpLIDU8oQWce0axOQ4lCLAH8Qrt4ZW7g==
X-Received: by 2002:a05:6a20:c88f:b0:1f5:6d00:ba05 with SMTP id adf61e73a8af0-201592e1b96mr2765473637.38.1744183633456;
        Wed, 09 Apr 2025 00:27:13 -0700 (PDT)
Received: from thinkpad ([120.56.198.53])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a322117bsm469422a12.64.2025.04.09.00.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 00:27:12 -0700 (PDT)
Date: Wed, 9 Apr 2025 12:57:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, 
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, p.zabel@pengutronix.de, 
	johan+linaro@kernel.org, cassel@kernel.org, quic_schintav@quicinc.com, 
	fabrice.gasnier@foss.st.com, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/9 RESEND] dt-bindings: PCI: Add STM32MP25 PCIe Root
 Complex bindings
Message-ID: <ku3lsolnbbwwlngi54lpe4j6s476rhxi662vqvlwwua4sos4du@b6j6zofrpuuy>
References: <20250325065935.908886-1-christian.bruel@foss.st.com>
 <20250325065935.908886-2-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250325065935.908886-2-christian.bruel@foss.st.com>

On Tue, Mar 25, 2025 at 07:59:27AM +0100, Christian Bruel wrote:
> Document the bindings for STM32MP25 PCIe Controller configured in
> root complex mode with one root port.
> 
> Supports 4 INTx and MSI interrupts from the ARM GICv2m controller.
> 
> STM32 PCIe may be in a power domain which is the case for the STM32MP25
> based boards.
> 
> Supports WAKE# from wake-gpios
> 
> Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

One comment below.

> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../bindings/pci/st,stm32-pcie-common.yaml    |  33 ++++++
>  .../bindings/pci/st,stm32-pcie-host.yaml      | 112 ++++++++++++++++++
>  2 files changed, 145 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/st,stm32-pcie-common.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/st,stm32-pcie-host.yaml
> 

[...]

> +    pcie@48400000 {
> +        compatible = "st,stm32mp25-pcie-rc";
> +        device_type = "pci";
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
> +        ranges = <0x01000000 0x0 0x00000000 0x10010000 0x0 0x10000>,
> +                 <0x02000000 0x0 0x10020000 0x10020000 0x0 0x7fe0000>,
> +                 <0x42000000 0x0 0x18000000 0x18000000 0x0 0x8000000>;
> +        dma-ranges = <0x42000000 0x0 0x80000000 0x80000000 0x0 0x80000000>;
> +        clocks = <&rcc CK_BUS_PCIE>;
> +        resets = <&rcc PCIE_R>;
> +        msi-parent = <&v2m0>;
> +        access-controllers = <&rifsc 68>;
> +        power-domains = <&CLUSTER_PD>;
> +
> +        pcie@0,0 {
> +          device_type = "pci";

Indentation is off by 2 spaces.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

