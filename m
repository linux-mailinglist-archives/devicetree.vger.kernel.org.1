Return-Path: <devicetree+bounces-55816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C23EF896732
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E526B1C209DE
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 07:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E849E5D74C;
	Wed,  3 Apr 2024 07:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sPz8nm66"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA655D73D
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 07:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712130642; cv=none; b=W7mtvDGvaI8n3h6DbBmWgZQJJoWcUMoXLdINxCfv1r9MWKe0/UhHY0ofqXDzVebr3CpWjawFR7EyLhBSUd746kfJ+1cBcdDnRpzNwrOIKt88IevCq5y7jg4nOhoE+oTo382lrKejbhrp7qpDJLK7JCFIL5pWebvD0T6cK7Jy3C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712130642; c=relaxed/simple;
	bh=ut1sxqvB3b/HbqUP1v7D+mFfXIsosevL57FgdmoAXho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lq8t/yx1RWeol6sj33NibdzLI4yWu+GS4sWkpjgM+GzZd5RmoM6QehIIywlHcma38MjU8rpLgQrRGD6AM/qnkIez7rrHvcT4KHQMjGAb7XVMF+EujEa9xQzz66I6nUC37vK9W5CY2GOYDpJmKFQh9+h9rKSC69MQ0djz+i4sXcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sPz8nm66; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1e0878b76f3so5611995ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 00:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712130640; x=1712735440; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hyHSDC/vVjVH3KtBQTZvNF7eu/gn8gGU1GGy/JDCDjk=;
        b=sPz8nm668l2HyIGIFjKcepO2alT8DrbDtuqFIULDdqaDSxeJ+cg4+e8+OhJW/j3Qs8
         n13LYUm9tB0h7/ZE9i0I1IC80WAsnaAEP+CQXZWDlusgfEO14iKL9wmICvc3dvEXgjyY
         mLsjKA78YFZ1ddLfWnu/EB+/1LXTzXil8menbN0GZshGxWkrhB/hw2IOF5QvpULLDot5
         XpAyJ8XcPEd9IoxdYHHkc7OVvELSibevktkgboXaN5yhNLKqqj6pvqwDzcp70KMuloVi
         b7mK5IvXIEOyINGseMK9A9Zjevk2DfHhiZnPOPs9S6CmNkcdGlshWRRWjla0wG+IDD0N
         0hdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712130640; x=1712735440;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyHSDC/vVjVH3KtBQTZvNF7eu/gn8gGU1GGy/JDCDjk=;
        b=NvjOMmTj5Ho2rwjxGD2/l1lVm4DvpjwrHomwpMFP452pYcly7J/SfG/HflpTAJegFL
         oERXW6Knp8xFlVqdbGWG0vygd96c27ndW/qvuZJHAKWGXu0yAoR3IIStvxvBMzHYoudE
         GfMyuj4+2NWOJW/2w0ACldG4L8HdDMGdOL3cQtCt4DW3J9haMzFaZb5XfRsoCGdCjHhO
         9hcY1P5+Y7kJ6XcdbrsIwGesGOIWjKzQxalHZqhQLw7bF/Yb698zKdOdXxjQtbqsuyJj
         1ClIKH2OkQKthhyu1CaeDWN4BY9e/i4UKwWQ6mqk+4h8ukK0T0pr00Copt7IkRg5bOIo
         kJhg==
X-Forwarded-Encrypted: i=1; AJvYcCX8X1eA67RvR8DpbEdU5HV+LSS5gMpclxGkuw5/BfAOwfeb8LJXX6+uz5z6K6JEzqnGttIDfej0Lui7XkHSiMXFXedNFTJqgKEMJQ==
X-Gm-Message-State: AOJu0YwnP+p7HYHS9/KGWqf0T+NUC+cH53wnlvyaeX9tjgyKJssRIUWZ
	RFQNS26c3AxgbkTB+AkGkDKidLFRfmcvh7YWEEF0FSBxkdWJh6PaQCo0imBWSQ==
X-Google-Smtp-Source: AGHT+IGHxQcAvNq1SVAZKqs98Q6Tn8kDvER6z4KgHIbUtFfBKz7ADPqs9lBDYFyL3DdTX4eDyCwPow==
X-Received: by 2002:a17:902:ce8c:b0:1e0:c88f:654f with SMTP id f12-20020a170902ce8c00b001e0c88f654fmr2580878plg.33.1712130640300;
        Wed, 03 Apr 2024 00:50:40 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id z10-20020a170903018a00b001e0a8812ccesm12480324plg.262.2024.04.03.00.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:50:39 -0700 (PDT)
Date: Wed, 3 Apr 2024 13:20:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 00/18] Improve PCI memory mapping API
Message-ID: <20240403075034.GF25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>

On Sat, Mar 30, 2024 at 01:19:10PM +0900, Damien Le Moal wrote:
> This series introduces the new functions pci_epc_map_align(),
> pci_epc_mem_map() and pci_epc_mem_unmap() to improve handling of the
> PCI address mapping alignment constraints of endpoint controllers in a
> controller independent manner.
> 
> The issue fixed is that the fixed alignment defined by the "align" field
> of struct pci_epc_features assumes that the alignment of the endpoint
> memory used to map a RC PCI address range is independent of the PCI
> address being mapped. But that is not the case for the rk3399 SoC
> controller: in endpoint mode, this controller uses the lower bits of the
> local endpoint memory address as the lower bits for the PCI addresses
> for data transfers. That is, when mapping local memory, one must take
> into account the number of bits of the RC PCI address that change from
> the start address of the mapping.
> 
> To fix this, the new endpoint controller method .map_align is introduced
> and called from pci_epc_map_align(). This method is optional and for
> controllers that do not define it, the mapping information returned
> is based of the fixed alignment constraint as defined by the align
> feature.
> 
> The functions pci_epc_mem_map() is a helper function which obtains
> mapping information, allocates endpoint controller memory according to
> the mapping size obtained and maps the memory. pci_epc_mem_map() unmaps
> and frees the endpoint memory.
> 
> This series is organized as follows:
>  - Patch 1 tidy up the epc core code
>  - Patch 2 and 3 introduce the new map_align endpoint controller method
>    and related epc functions.
>  - Patch 4 to 6 modify the test endpoint driver to use these new
>    functions and improve the code of this driver.

While posting the next version, please split the endpoint patches into a
separate series. It helps in code review and can be applied separately.

- Mani

>  - Finally, Patch 7 to 18 fix the rk3399 endpoint driver, defining a
>    .map_align method for it and improving its overall code readability
>    and features.
> 
> Changes from v1:
>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
>    1.
>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
>    (former patch 2 of v1)
>  - Various typos cleanups all over. Also fixed some blank space
>    indentation.
>  - Added review tags
> 
> Damien Le Moal (17):
>   PCI: endpoint: Introduce pci_epc_function_is_valid()
>   PCI: endpoint: Introduce pci_epc_map_align()
>   PCI: endpoint: Introduce pci_epc_mem_map()/unmap()
>   PCI: endpoint: test: Use pci_epc_mem_map/unmap()
>   PCI: endpoint: test: Synchronously cancel command handler work
>   PCI: endpoint: test: Implement link_down event operation
>   PCI: rockchip-ep: Fix address translation unit programming
>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
>   PCI: rockchip-ep: Implement the map_align endpoint controller operation
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
>   PCI: rockchip-ep: Refactor endpoint link training enable
>   PCI: rockship-ep: Introduce rockchip_pcie_ep_stop()
>   PCI: rockchip-ep: Improve link training
>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
> 
> Wilfred Mallawa (1):
>   dt-bindings: pci: rockchip,rk3399-pcie-ep: Add ep-gpios property
> 
>  .../bindings/pci/rockchip,rk3399-pcie-ep.yaml |   3 +
>  drivers/pci/controller/pcie-rockchip-ep.c     | 393 ++++++++++++++----
>  drivers/pci/controller/pcie-rockchip.c        |  17 +-
>  drivers/pci/controller/pcie-rockchip.h        |  22 +
>  drivers/pci/endpoint/functions/pci-epf-test.c | 390 +++++++++--------
>  drivers/pci/endpoint/pci-epc-core.c           | 213 +++++++---
>  include/linux/pci-epc.h                       |  39 ++
>  7 files changed, 768 insertions(+), 309 deletions(-)
> 
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

