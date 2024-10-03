Return-Path: <devicetree+bounces-107386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5C298E960
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:34:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8166C1C22083
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 05:34:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2EAA40879;
	Thu,  3 Oct 2024 05:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GLpogeTX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E09928F7
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 05:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727933690; cv=none; b=SyOvaSI6pMswwPYtVIz5j7ksEVeyuX503gs6XTu5BILOgdgAYwhVv4qZAmZgEfbGKCMWc280evTGl0vsiVcHUr5tp1FdjEKn4SfVgL/iYlDb4l5WKXDxO7tIMNi8Fsbbzc/6I3UKZZ0pNvBKZ46nt5avD0mKNdLtpFSu9e8lWQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727933690; c=relaxed/simple;
	bh=EDm+/tkGzYiUBi8ZkmlBNjgzxGpygo9gAhp62ALZ35Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SNW2JGWUMqrsngjV8GKbG/JWHY4igAsx+XVtinWRFj39UFnzeTrqZFwoWFvI9gX7SaMMz9fxzmu49kDoU+i5+kZcD6lMAbQd8/R3FOWvmF6t5vLiBO6Tf/Gm485KsBt9n6uK0KpBfHlE38O4t6pW5mYPB8096ef4rCClfcgW/0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GLpogeTX; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71b0d9535c0so439385b3a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 22:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727933689; x=1728538489; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HSml+1r4bZzAkwRWts40vTN9SrEXop2A63UnX854Gxc=;
        b=GLpogeTXyapHGOFywv2Y/F4FfCJ4RNG7GtSHTxipIF7FFFklw/eY4ZWJzi2LFykMeh
         TTCqhkt/+LK3pyDZ0RckYLgZiEKxGP4t6D9JYmYROqQBwh/y6qahqEKBbdeTfgIL5r5C
         rBTLqYKcgGwz7EqWTeX5ja5pCWFlr9y+B8timJ/9fegI9NMM7Or650uiDGdOBckhNLdF
         oYidljEkDtTWnVAx05S+0kIxQIGWy9uI6JkD9Lr+pu32kWe602gnXyCt6YjAc8dHUMQA
         oBrbeHi9XSR2WPnX/29ZQ00je52q0lN7Y6HClv7xVhkqQiW22GfKM4ciiAx5umPt8kDh
         jWtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727933689; x=1728538489;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HSml+1r4bZzAkwRWts40vTN9SrEXop2A63UnX854Gxc=;
        b=XsTCLYaKGCSnLf7YzTEx0h8kqf5UMhVa+v2y76TYbOAbXegRSDZoOwS7dp8cTkx3eG
         YNYUtOlRXEETEgjStmV76yFyJ8xeH7N1QPamCeGUaErx8bgncZC3x7yGsmK/yQ2dapvs
         7HKOebHIRGb+yEjvuGCsUe2ZhvCT25kG8T336phIGn06w4TkhtvjKQV1lMhh4T5f2YUb
         M91FEfr5mwvor4lTlCixHsoqfZ97OTaCRppJ4iPK3vHABWflSCtVcS1vpu6/MW04c3OP
         FwkgzXlEiDM5NmpZXYDtZjhHeiTz6DMN/SJhZyPBHg9IqzYOK8xzHgLfb36Zbp8I1o3j
         bmSg==
X-Forwarded-Encrypted: i=1; AJvYcCWEtil2q2QJT1RPEdOvM6oW7md6HhesnB8P3JdKKwLPFfZEe13UraBMf8I8/r7iU0kzQYKSo7dSxZif@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa1Lw9iP+KGGH4tNtwHRs9VAxD9S2PLfzrLi+OC46eY8bwrXl4
	UdQkLzQek/rStV661frx4CohAEQoDrzdqryc7TAI6/EdwiqrCsYpEisgWfIcdw==
X-Google-Smtp-Source: AGHT+IEhnqAJQDNpXwUuNi0Kwr7kqnn3sBdkE/2mLCX4Dd9WV3ch5BfYf8udYxNwIYPKwjCCMKEivQ==
X-Received: by 2002:a05:6a00:acb:b0:71c:5b8a:ae0b with SMTP id d2e1a72fcca58-71dc5d71766mr9243388b3a.24.1727933688500;
        Wed, 02 Oct 2024 22:34:48 -0700 (PDT)
Received: from thinkpad ([36.255.17.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71dd9dee8b8sm480877b3a.145.2024.10.02.22.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 22:34:48 -0700 (PDT)
Date: Thu, 3 Oct 2024 11:04:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Subject: Re: [PATCH v3 0/3] PCI: dwc: opitimaze RC host pci_fixup_addr()
Message-ID: <20241003053440.5mv6kv27rxttekaq@thinkpad>
References: <20240930-pci_fixup_addr-v3-0-80ee70352fc7@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240930-pci_fixup_addr-v3-0-80ee70352fc7@nxp.com>

On Mon, Sep 30, 2024 at 02:44:52PM -0400, Frank Li wrote:
> ┌─────────┐                    ┌────────────┐
>  ┌─────┐    │         │ IA: 0x8ff0_0000    │            │
>  │ CPU ├───►│   ┌────►├─────────────────┐  │ PCI        │
>  └─────┘    │   │     │ IA: 0x8ff8_0000 │  │            │
>   CPU Addr  │   │  ┌─►├─────────────┐   │  │ Controller │
> 0x7ff0_0000─┼───┘  │  │             │   │  │            │
>             │      │  │             │   │  │            │   PCI Addr
> 0x7ff8_0000─┼──────┘  │             │   └──► CfgSpace  ─┼────────────►
>             │         │             │      │            │    0
> 0x7000_0000─┼────────►├─────────┐   │      │            │
>             └─────────┘         │   └──────► IOSpace   ─┼────────────►
>              BUS Fabric         │          │            │    0
>                                 │          │            │
>                                 └──────────► MemSpace  ─┼────────────►
>                         IA: 0x8000_0000    │            │  0x8000_0000
>                                            └────────────┘
> 
> Current dwc implimemnt, pci_fixup_addr() call back is needed when bus
> fabric convert cpu address before send to PCIe controller.
> 
>     bus@5f000000 {
>             compatible = "simple-bus";
>             #address-cells = <1>;
>             #size-cells = <1>;
>             ranges = <0x5f000000 0x0 0x5f000000 0x21000000>,
>                      <0x80000000 0x0 0x70000000 0x10000000>;
> 
>             pcie@5f010000 {
>                     compatible = "fsl,imx8q-pcie";
>                     reg = <0x5f010000 0x10000>, <0x8ff00000 0x80000>;
>                     reg-names = "dbi", "config";
>                     #address-cells = <3>;
>                     #size-cells = <2>;
>                     device_type = "pci";
>                     bus-range = <0x00 0xff>;
>                     ranges = <0x81000000 0 0x00000000 0x8ff80000 0 0x00010000>,
>                              <0x82000000 0 0x80000000 0x80000000 0 0x0ff00000>;
>             ...
>             };
>     };
> 
> Device tree already can descript all address translate. Some hardware
> driver implement fixup function by mask some bits of cpu address. Last
> pci-imx6.c are little bit better by fetch memory resource's offset to do
> fixup.
> 
> static u64 imx_pcie_cpu_addr_fixup(struct dw_pcie *pcie, u64 cpu_addr)
> {
> 	...
> 	entry = resource_list_first_type(&pp->bridge->windows, IORESOURCE_MEM);
> 	return cpu_addr - entry->offset;
> }
> 
> But it is not good by using IORESOURCE_MEM to fix up io/cfg address map
> although address translate is the same as IORESOURCE_MEM.
> 
> This patches to fetch untranslate range information for PCIe controller
> (pcie@5f010000: ranges). So current config ATU without cpu_fixup_addr().
> 
> EP side patch:
> https://lore.kernel.org/linux-pci/20240923-pcie_ep_range-v2-0-78d2ea434d9f@nxp.com/T/#mfc73ca113a69ad2c0294a2e629ecee3105b72973
> 
> The both pave the road to eliminate ugle cpu_fixup_addr() callback function.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Changes in v3:
> - see each patch

You should make the life easier for the reviewer, not hard. Please summarise
what has changed since the last version.

- Mani

> - Link to v2: https://lore.kernel.org/r/20240926-pci_fixup_addr-v2-0-e4524541edf4@nxp.com
> 
> Changes in v2:
> - see each patch
> - Link to v1: https://lore.kernel.org/r/20240924-pci_fixup_addr-v1-0-57d14a91ec4f@nxp.com
> 
> ---
> Frank Li (3):
>       of: address: Add parent_bus_addr to struct of_pci_range
>       PCI: dwc: Using parent_bus_addr in of_range to eliminate cpu_addr_fixup()
>       PCI: imx6: Remove cpu_addr_fixup()
> 
>  drivers/of/address.c                              |  2 ++
>  drivers/pci/controller/dwc/pci-imx6.c             | 22 ++----------
>  drivers/pci/controller/dwc/pcie-designware-host.c | 42 +++++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h      |  8 +++++
>  include/linux/of_address.h                        |  1 +
>  5 files changed, 55 insertions(+), 20 deletions(-)
> ---
> base-commit: 69940764dc1c429010d37cded159fadf1347d318
> change-id: 20240924-pci_fixup_addr-a8568f9bbb34
> 
> Best regards,
> ---
> Frank Li <Frank.Li@nxp.com>
> 

-- 
மணிவண்ணன் சதாசிவம்

