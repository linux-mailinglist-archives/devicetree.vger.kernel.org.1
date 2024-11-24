Return-Path: <devicetree+bounces-124009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E8E9D7621
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 17:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21327C4318E
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 15:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52F41B4130;
	Sun, 24 Nov 2024 14:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EDQXtLg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAD91B0F27
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 14:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732459132; cv=none; b=mqmK7B7QgvKPhS/hTdnLuV/I8D+PMAY+5ejUawv2ybSdmEXl09h9A8Nji8pUQeWkh55A6Jr6joBjZQIAwMfPLO2+iwN7PamKePgYTJVOrmP98VX4Dru/g+2j0I5RYKugEGq/Uh2PmzcGn2QBVg6HbQgdJVMdD0jmFcYtFUXcy8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732459132; c=relaxed/simple;
	bh=isjGjqlidHC79ZLTF03jv/21hLxdq7ghhqNq50AP0SI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EWJ8yppcwnVWG8uUBC45X7YwM+eYcWbu3hr5a2LzM6dsGO0CSAmFTFoCgdAoGurSxsuG+a5LUQXTF9dKCtISyZaFX1bVafEYp920AzgSTBGLhNhTH6YVzQ16DOoWEyqcPzk9ABfKKfwSFv1s/dpXe41tXoDL0KgblJvQKMYMNGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EDQXtLg1; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-724f42c1c38so789529b3a.1
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 06:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732459128; x=1733063928; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MXCY6EyQ5ICJyfv/tJQrr5Lem3XCz+vNyHRaV4HuQGs=;
        b=EDQXtLg1YXfOBj/shliQbp1MYkIlAHn/iB2jEmoTfzmbwj1KkO7g31ZqqiUWZZ0ET/
         zUXPdaM+BGzLmSz2gIr4btJQaNOvoewW43GIpvznPw1S8F5n3x/6soyNL2JAy12fxejX
         +pM+L/XrV1iVP3cktEJs4yHbVLBXQ6HOE/Mu4DBHwTEiv4okXNpoeCyx78qbPGEuCCun
         gUOvGbnQqLtZ7ee1NylXKGNR0nTrbiLpB6zlm7t1SEPOTvEU/a0+2cTJHXIVodoVVDiP
         pr2EGmGX3f5YqclZ9C2mZMABP3F8abQp1Ks0bHUNoOK4Z6jQiIvfp0duvYEdYF484yTx
         v5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732459128; x=1733063928;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MXCY6EyQ5ICJyfv/tJQrr5Lem3XCz+vNyHRaV4HuQGs=;
        b=Okc07yRBp9/umf/2MJX1QIoawyQ+FVcoFfDwYMAXVjPE8+17fllruItMlRgMv9p10M
         C1VhoODvMSRYUXG8s6x0cJzWv4RupMOBbORUgeMoy0BYfjMc+PuA/R559FehOgD1//vx
         1xsCek1zD9mtCRmmBffnqjbLMxBy8BxsxqYz+pgD1aDq1eXoDGtHUFueXhClwOwxHhRm
         52JFXJL8OrRGCoucDfj8AR9VZWTrCxQNjXPDa5h+Ajzsk+jn0aiy/D/9GDPUEZeNyyZt
         AejvJpMJkw7HgKgT/2tP3k7rpA8aZYmOkvgzgjd6NGiLTymVt3mRdY6GYEX85zFT3VI9
         HwtQ==
X-Forwarded-Encrypted: i=1; AJvYcCX940tFzreRuc9DU91zASDwuzLbFSZZ/8PsJ7rOOjmwpNJfCZxpUDxXhA4EK7dH6Tsi6ONjnwpJ5U21@vger.kernel.org
X-Gm-Message-State: AOJu0YxMoZ8w65ozuFhxqIDmmq0m+nLl2kjxrfgcA1Ovof+BAOPxhQnd
	WNs5Gw54nEG770qRPSKTAvgCYOjDJH82C+ZNRF788ZLQR1oaE0OqOzbFzDTRwg==
X-Gm-Gg: ASbGncsDnj2bxSUzc6dCkXg821ktrJQFgkfoOThEmQLzhga8oIjaZfXjkB6VRfm3vnV
	SQz1dHTGLKhrnUG7WlZIN4XfnbqP6KkcxRd5s17jOvL/Rldqvmijg61l2kCd2JWeimskJtRE1f0
	WCvKOOJLI3GQOQUcUqGQJk8KIpCiJFixz+kXoLanMMQlFUjrGjAezRUqUgKujG73lgYAoE+gt9b
	9o6k2YlBjve2XZA+gusF7aabpp43aV4gkdoknXsdktXEM3+Hcdw1iCM5Zt0
X-Google-Smtp-Source: AGHT+IGUYdNBQyl/4X7lky6FWTh3PlUIHJNEByI3IDGXwvkIIW1v1nfc0TsyL72NMdiksJeZISQVKA==
X-Received: by 2002:a05:6a00:1709:b0:71e:98a:b6b4 with SMTP id d2e1a72fcca58-724df5ef7f8mr10750073b3a.11.1732459128405;
        Sun, 24 Nov 2024 06:38:48 -0800 (PST)
Received: from thinkpad ([36.255.17.192])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724de532d59sm4653362b3a.130.2024.11.24.06.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 06:38:47 -0800 (PST)
Date: Sun, 24 Nov 2024 20:08:39 +0530
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
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v8 0/7] PCI: dwc: opitimaze RC Host/EP pci_fixup_addr()
Message-ID: <20241124143839.hg2yj462h22rftqa@thinkpad>
References: <20241119-pci_fixup_addr-v8-0-c4bfa5193288@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241119-pci_fixup_addr-v8-0-c4bfa5193288@nxp.com>

On Tue, Nov 19, 2024 at 02:44:18PM -0500, Frank Li wrote:
> == RC side:
> 
>             ┌─────────┐                    ┌────────────┐
>  ┌─────┐    │         │ IA: 0x8ff8_0000    │            │
>  │ CPU ├───►│   ┌────►├─────────────────┐  │ PCI        │
>  └─────┘    │   │     │ IA: 0x8ff0_0000 │  │            │
>   CPU Addr  │   │  ┌─►├─────────────┐   │  │ Controller │
> 0x7ff8_0000─┼───┘  │  │             │   │  │            │
>             │      │  │             │   │  │            │   PCI Addr
> 0x7ff0_0000─┼──────┘  │             │   └──► IOSpace   ─┼────────────►
>             │         │             │      │            │    0
> 0x7000_0000─┼────────►├─────────┐   │      │            │
>             └─────────┘         │   └──────► CfgSpace  ─┼────────────►
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
>             ranges = <0x80000000 0x0 0x70000000 0x10000000>;
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
> == EP side:
> 
>                    Endpoint
>   ┌───────────────────────────────────────────────┐
>   │                             pcie-ep@5f010000  │
>   │                             ┌────────────────┐│
>   │                             │   Endpoint     ││
>   │                             │   PCIe         ││
>   │                             │   Controller   ││
>   │           bus@5f000000      │                ││
>   │           ┌──────────┐      │                ││
>   │           │          │ Outbound Transfer     ││
>   │┌─────┐    │  Bus     ┼─────►│ ATU  ──────────┬┬─────►
>   ││     │    │  Fabric  │Bus   │                ││PCI Addr
>   ││ CPU ├───►│          │Addr  │                ││0xA000_0000
>   ││     │CPU │          │0x8000_0000            ││
>   │└─────┘Addr└──────────┘      │                ││
>   │       0x7000_0000           └────────────────┘│
>   └───────────────────────────────────────────────┘
> 
> bus@5f000000 {
>         compatible = "simple-bus";
>         ranges = <0x80000000 0x0 0x70000000 0x10000000>;
> 
>         pcie-ep@5f010000 {
>                 reg = <0x5f010000 0x00010000>,
>                       <0x80000000 0x10000000>;
>                 reg-names = "dbi", "addr_space";
>                 ...                ^^^^
>         };
>         ...
> };
> 
> Add `bus_addr_base` to configure the outbound window address for CPU write.
> The BUS fabric generally passes the same address to the PCIe EP controller,
> but some BUS fabrics convert the address before sending it to the PCIe EP
> controller.
> 
> Above diagram, CPU write data to outbound windows address 0x7000_0000,
> Bus fabric convert it to 0x8000_0000. ATU should use BUS address
> 0x8000_0000 as input address and convert to PCI address 0xA000_0000.
> 
> Previously, `cpu_addr_fixup()` was used to handle address conversion. Now,
> the device tree provides this information.
> 
> The both pave the road to eliminate ugle cpu_fixup_addr() callback function.
> 

Series looks good to me. Thanks a lot for your persistence! But it missed 6.13
cycle. So let's get it merged early once 6.13-rc1 is out.

- Mani

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Changes in v8:
> - Add mani's review tages
> - use rename use_dt_ranges to use_parent_dt_ranges
> - Add dev_warn_once to reminder to fix their dt file and remove
> cpu_fixup_addr() callback.
> - rename dw_pcie_get_untranslate_addr() to dw_pcie_get_parent_addr()
> - Link to v7: https://lore.kernel.org/r/20241029-pci_fixup_addr-v7-0-8310dc24fb7c@nxp.com
> 
> Changes in v7:
> - fix
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202410291546.kvgEWJv7-lkp@intel.com/
> - Link to v6: https://lore.kernel.org/r/20241028-pci_fixup_addr-v6-0-ebebcd8fd4ff@nxp.com
> 
> Changes in v6:
> - merge RC and EP to one thread!
> - Link to v5: https://lore.kernel.org/r/20241015-pci_fixup_addr-v5-0-ced556c85270@nxp.com
> 
> Changes in v5:
> - update address order in diagram patches.
> - remove confused 0x5f00_0000 range
> - update patch1's commit message.
> - Link to v4: https://lore.kernel.org/r/20241008-pci_fixup_addr-v4-0-25e5200657bc@nxp.com
> 
> Changes in v4:
> - Improve commit message by add driver source code path.
> - Link to v3: https://lore.kernel.org/r/20240930-pci_fixup_addr-v3-0-80ee70352fc7@nxp.com
> 
> Changes in v3:
> - see each patch
> - Link to v2: https://lore.kernel.org/r/20240926-pci_fixup_addr-v2-0-e4524541edf4@nxp.com
> 
> Changes in v2:
> - see each patch
> - Link to v1: https://lore.kernel.org/r/20240924-pci_fixup_addr-v1-0-57d14a91ec4f@nxp.com
> 
> ---
> Frank Li (7):
>       of: address: Add parent_bus_addr to struct of_pci_range
>       PCI: dwc: Use devicetree 'ranges' property to get rid of cpu_addr_fixup() callback
>       PCI: dwc: ep: Add bus_addr_base for outbound window
>       PCI: imx6: Remove cpu_addr_fixup()
>       dt-bindings: PCI: fsl,imx6q-pcie-ep: Add compatible string fsl,imx8q-pcie-ep
>       PCI: imx6: Pass correct sub mode when calling phy_set_mode_ext()
>       PCI: imx6: Add i.MX8Q PCIe Endpoint (EP) support
> 
>  .../devicetree/bindings/pci/fsl,imx6q-pcie-ep.yaml | 38 ++++++++++++++-
>  drivers/of/address.c                               |  2 +
>  drivers/pci/controller/dwc/pci-imx6.c              | 46 +++++++++--------
>  drivers/pci/controller/dwc/pcie-designware-ep.c    | 18 ++++++-
>  drivers/pci/controller/dwc/pcie-designware-host.c  | 57 +++++++++++++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.c       |  9 ++++
>  drivers/pci/controller/dwc/pcie-designware.h       |  8 +++
>  include/linux/of_address.h                         |  1 +
>  8 files changed, 155 insertions(+), 24 deletions(-)
> ---
> base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
> change-id: 20240924-pci_fixup_addr-a8568f9bbb34
> 
> Best regards,
> ---
> Frank Li <Frank.Li@nxp.com>
> 

-- 
மணிவண்ணன் சதாசிவம்

