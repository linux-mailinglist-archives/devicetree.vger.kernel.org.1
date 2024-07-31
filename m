Return-Path: <devicetree+bounces-89963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDF89434FF
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 19:26:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1375F1C2292E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 17:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCE8B1BD51B;
	Wed, 31 Jul 2024 17:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nGYrFD6G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514011BD503
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 17:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722446790; cv=none; b=KK2lGQPsXodp5TI/R7/WpELQUryiZexpM1RDjlCE/nXY8WmM5PRe/4l4cttteurf0cpmwFBoEsIY5IzXw+Rp2qenPlf9pHr/7F/PH8Ri8tRjweRojd+1/s0kSve2tbsgxjdSAPCRxFdD9TrqMmylWmEkMTBcI+sKPy2BTJC2PNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722446790; c=relaxed/simple;
	bh=MoR6qvuRJ6W2kiERl45U/NlNMjM2KZfjtse2SQ8m5nM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UgGnR8eMLuT2ZXche83udwq+KC2z4+VN3q3aXUIYNL4I7SAyrj0Ib6d39X+KgWOuFL0hQIi69exlwdtcwo7Lfr7oNkNGLeAgw+w6A5h3uM5aSNrdBs0txb0qp6rAunW9667JexYjPZF4uG5la/MlIBvuG6HUFX1wAN1NiSh8kao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nGYrFD6G; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-71871d5e087so4601504a12.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 10:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722446788; x=1723051588; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vEMM7SgZ6wraHzWF5zEN2rW8ls6Wr2VKfJmgGXu1icU=;
        b=nGYrFD6GmSKGF0lPXX3vlTniskuN14ApEsrlxGGNfTJo7MZG3xi0xEHs0z9sNA+SC7
         rh4VNKMlDW7RYR4+J0RHQWd4dKz9ao/oFBAnguFy/2H/c98w/KsC0qRis55JYmXQ5bOi
         sNoQSr/P7Nam26LgOwsby0TgsdUpmy2atXcMQWiFELD1ocNkGOx6pMTF44fq4FvTOKeB
         rq6HQ5vY85ynzdtjKfbV3uhlBKuhiuCNbenQQmqgXAadF5eNl8JHvqUbwWDN1lRPRQvA
         OwgoTYteqQr93NHrqPSwyUN7jF8zm+u9cBfY3SHwPZNe7vB2tct+oA6zCh0uX0/46oM2
         epag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722446788; x=1723051588;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vEMM7SgZ6wraHzWF5zEN2rW8ls6Wr2VKfJmgGXu1icU=;
        b=HaBKgIIiu1XpQxKoIDjnNudhI8KTjiT/8X7RYkRDGWMgphrp18KVuBOleoRqmM3Up/
         Iac2ufTaiHyhoKoLJ7uFsXa1S3ABya4Fcn6zxPOG25Ydfmh+1kgsA25Lxjga/IbvJWls
         7uQl9u01thpjEDpt5HYLlUksABRB84Hb5rmpZ5q6cGfbmjihPKd/1W+zIHXyV5Ff5Hir
         TYYZJ6wwiKCrRyhCqB5X7qRCRT+SskMU8kvrFV1Xg+/7DE79wQv1v6IUlMIW3mFnNNhb
         misaM2OVaovRdr/jtq8NBmCvE0bUZuiEwFUB/3aE+w5h6TbbZajTyDpNSICTrlA5KvHQ
         KZGw==
X-Forwarded-Encrypted: i=1; AJvYcCX0BlwReNRKln/BO0a85Fha04qXoMoV4haKJi4bs8s1UqtKJQ/JZ4Rl6wKaD2193y5BgGa8nw3suhac9HNw8g15wi2WDCdscQTVtg==
X-Gm-Message-State: AOJu0YygLQSYUoAireOTXLA38ReZ8qwLVreD5GDuSC3EJmlebQzwc7Bh
	aJs48PY0SnzZ1CYimr7sKOn1d94VZHQH7T+Ig4yW/I0giYDmNfy7sMwRO6BEjg==
X-Google-Smtp-Source: AGHT+IHh7J+plk/ZeBbKoubQPybF86l1i9/WVmkAlxLUoLz7b4LW6DNPKQz1FsXfyAQPGw0VU7j9UA==
X-Received: by 2002:a17:90b:380f:b0:2c8:e43b:4015 with SMTP id 98e67ed59e1d1-2cfe775542bmr3109a91.6.1722446788491;
        Wed, 31 Jul 2024 10:26:28 -0700 (PDT)
Received: from thinkpad ([120.60.66.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc4064d9sm1644762a91.8.2024.07.31.10.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 10:26:27 -0700 (PDT)
Date: Wed, 31 Jul 2024 22:56:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Mayank Rana <quic_mrana@quicinc.com>
Cc: will@kernel.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, jingoohan1@gmail.com, cassel@kernel.org,
	yoshihiro.shimoda.uh@renesas.com, s-vadapalli@ti.com,
	u.kleine-koenig@pengutronix.de, dlemoal@kernel.org,
	amishin@t-argos.ru, thierry.reding@gmail.com, jonathanh@nvidia.com,
	Frank.Li@nxp.com, ilpo.jarvinen@linux.intel.com, vidyas@nvidia.com,
	marek.vasut+renesas@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	quic_ramkri@quicinc.com, quic_nkela@quicinc.com,
	quic_shazhuss@quicinc.com, quic_msarkar@quicinc.com,
	quic_nitegupt@quicinc.com
Subject: Re: [PATCH V226/7] dt-bindings: PCI: host-generic-pci: Add
 snps,dw-pcie-ecam-msi binding
Message-ID: <20240731172619.GD2983@thinkpad>
References: <1721067215-5832-1-git-send-email-quic_mrana@quicinc.com>
 <1721067215-5832-7-git-send-email-quic_mrana@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1721067215-5832-7-git-send-email-quic_mrana@quicinc.com>

On Mon, Jul 15, 2024 at 11:13:34AM -0700, Mayank Rana wrote:
> To support MSI functionality using Synopsys DesignWare PCIe controller
> based MSI controller with ECAM driver, add "snps,dw-pcie-ecam-msi
> compatible binding which uses provided SPIs to support MSI functionality.
> 
> Signed-off-by: Mayank Rana <quic_mrana@quicinc.com>
> ---
>  .../devicetree/bindings/pci/host-generic-pci.yaml  | 57 ++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/host-generic-pci.yaml b/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
> index 9c714fa..9e860d5 100644
> --- a/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
> +++ b/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
> @@ -81,6 +81,12 @@ properties:
>                - marvell,armada8k-pcie-ecam
>                - socionext,synquacer-pcie-ecam
>            - const: snps,dw-pcie-ecam
> +      - description: |
> +         Firmware is configuring Synopsys DesignWare PCIe controller in RC mode with
> +         ECAM compatible fashion. To use MSI controller of Synopsys DesignWare PCIe
> +         controller for MSI functionality, this compatible is used.
> +        items:
> +          - const: snps,dw-pcie-ecam-msi

There is no MSI ECAM. You can have Qcom specific ECAM implementation. Even
generalising this as DWC ECAM is wrong, since it won't work on DWC based
systems (especially with SCMI power domain).

- Mani

>        - description:
>            CAM or ECAM compliant PCI host controllers without any quirks
>          enum:
> @@ -116,6 +122,20 @@ properties:
>        A phandle to the node that controls power or/and system resource or interface to firmware
>        to enable ECAM compliant PCIe root complex.
>  
> +  interrupts:
> +    description:
> +      DWC PCIe Root Port/Complex specific MSI interrupt/IRQs.
> +    minItems: 1
> +    maxItems: 8
> +
> +  interrupt-names:
> +    description:
> +      MSI interrupt names
> +    minItems: 1
> +    maxItems: 8
> +    items:
> +        pattern: '^msi[0-9]+$'
> +
>  required:
>    - compatible
>    - reg
> @@ -146,11 +166,22 @@ allOf:
>          reg:
>            maxItems: 1
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: snps,dw-pcie-ecam-msi
> +    then:
> +      required:
> +        - interrupts
> +        - interrupt-names
> +
>  unevaluatedProperties: false
>  
>  examples:
>    - |
>  
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>      bus {
>          #address-cells = <2>;
>          #size-cells = <2>;
> @@ -180,5 +211,31 @@ examples:
>              interrupt-map-mask = <0xf800 0x0 0x0  0x7>;
>              power-domains = <&scmi5_pd 0>;
>          };
> +
> +        pcie0: pci@1c00000 {
> +            compatible = "snps,dw-pcie-ecam-msi";
> +            reg = <0x4 0x00000000 0 0x10000000>;
> +            device_type = "pci";
> +            #address-cells = <3>;
> +            #size-cells = <2>;
> +            ranges = <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>,
> +                  <0x43000000 0x4 0x10100000 0x4 0x10100000 0x0 0x40000000>;
> +            bus-range = <0x00 0xff>;
> +            dma-coherent;
> +            linux,pci-domain = <0>;
> +            power-domains = <&scmi5_pd 0>;
> +            iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
> +                <0x100 &pcie_smmu 0x0001 0x1>;
> +
> +            interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
> +                    <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-names = "msi0", "msi1", "msi2", "msi3", "msi4", "msi5", "msi6", "msi7";
> +      };
>      };
>  ...
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

