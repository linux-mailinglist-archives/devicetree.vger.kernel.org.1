Return-Path: <devicetree+bounces-55864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8713896B27
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 11:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D907B216DC
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 985EF1353E4;
	Wed,  3 Apr 2024 09:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mHJDPhfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B90871353EF
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 09:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712137730; cv=none; b=M+XRQKm3+/bzOpqSITkdv7WfF2DEjtr/zMMXk+TfWH8eJK5zr3JrqHeMJFcdgHKnOiqm+qoKTJRIJNuzwKws5x/D43ozBpseDwEzikoTGU7F+IoC3CHFKxU2fu1UcYElUNX9CngfOwW2u9BNtjAumDY5rokbKxAuYWD0VzGK3qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712137730; c=relaxed/simple;
	bh=VZVjk4Lg+32DYX1V0hHFzAoXwy2zWj8ikBfocb2aiao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tWzu4t8HoY2xA6RtQut9YenlMxkkhK4JvtgNoa/F76CQa7iT9ti7cf3nrfQqIOrYsy1is4p9iRhL2b8Lsrv9qdKVdtBQylCEnO6eMvBmtURlrqoPCXerRopnc2XHeVHBFZSrh8C0YpyG32NcNs7Nb/5CTYP6M8I9hSIBcFLhkS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mHJDPhfQ; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-7d0486cf91aso337831039f.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 02:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712137727; x=1712742527; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EPXFh7gsPyAU+iXcewtYZIELGdFkMytovmlJfVGNhNo=;
        b=mHJDPhfQel320iBKatX5c98HlzL0+RusBU927Aguf3ZWD+PLIChNO0C0bIGBtxi1e0
         7WsKbKV/pcnU9+iPPiW/33xY1+aCbBoh3bp2iC0n9IBoPx8kqk/xiEDpZVJbDGQjfZyG
         gZheo0KYEG6HoQMe9yrzBn+6nrBDhN1myjir+nGtNXMilN4Dmpzh9i21/rf5Ybsm5GQ5
         aSNMLLtoMMqX4EO/8n1+wOCfu77mKzil+54g9QiG+RUUAqSyYerhe8TmXymrcWezwAtr
         O/d7K5/eQYZJOMLd2LVmT0dWWRjTTFbimtD7OyKVuSIVUsCnDKOYGDLI3Ld8Wv4qZ6jz
         Talg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712137727; x=1712742527;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EPXFh7gsPyAU+iXcewtYZIELGdFkMytovmlJfVGNhNo=;
        b=OweY4b2ScncPSh7Qxepgx8j5NtBUibsmqT+n4+A4Qp/bUvuqFGQAW0cr5J0dYIawFD
         HadYUTOu3qotWdSoWyAmN8zqCUXG2kP3NBdCNUhIgADHr//Yag0r20uR1ZRUq3lTkmNz
         IpQIESBpVR8AgJYONclMOdADztya5DlYJ9UILJ99Q8uiAKWqkjyK0rs1s601GnT7EEDs
         G9UH7TFjPQSQyJP5GTn4Pyjk4M/9A8Hg54dEqPv0afoeaS0yFcip3Zg/8VFaK9SI+pvu
         joKd6pA25u+OHyXN9fT2HFC4uOCMKOTjHvwz64zGaG0B+ZbVbBtSBg0aNqln3DYb2kDc
         7rWw==
X-Forwarded-Encrypted: i=1; AJvYcCW+YBLrNwrFDrCxqMUsUCdCk1BfcAm/eWAwZsHgcx3s+6AlCOCFtKwJykP6v4T6GJoG7Ot13ZdYMww+eRa42uxcFOqWt7GXc7tFng==
X-Gm-Message-State: AOJu0YxPpOK2Ap5Oa0VFugAeL03N7C5sECTLjihYQBO1CGfsH3fmraEw
	7IxGWtnKpbs9OUsajqjWiwFSmouwttq/tuemxWdLV/2JztRvwQWD/SBeLftXOw==
X-Google-Smtp-Source: AGHT+IEbUkv1YVum64pYJ7p3hjvBN8WVLeTTz4TjDHu3j5DUSh/cjz4maB41kqZEWFfHUMT1vj9VFA==
X-Received: by 2002:a05:6e02:1c08:b0:369:efba:71c1 with SMTP id l8-20020a056e021c0800b00369efba71c1mr1638352ilh.16.1712137726677;
        Wed, 03 Apr 2024 02:48:46 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id d21-20020a634f15000000b005dbd0facb4dsm10931377pgb.61.2024.04.03.02.48.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 02:48:46 -0700 (PDT)
Date: Wed, 3 Apr 2024 15:18:40 +0530
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
Subject: Re: [PATCH v2 03/18] PCI: endpoint: Introduce
 pci_epc_mem_map()/unmap()
Message-ID: <20240403094840.GI25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-4-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240330041928.1555578-4-dlemoal@kernel.org>

On Sat, Mar 30, 2024 at 01:19:13PM +0900, Damien Le Moal wrote:
> Introduce the function pci_epc_mem_map() to facilitate controller memory
> address allocation and mapping to a RC PCI address region in endpoint
> function drivers.
> 
> This function first uses pci_epc_map_align() to determine the controller
> memory address alignment (offset and size) constraints. The result of
> this function is used to allocate a controller physical memory region
> using pci_epc_mem_alloc_addr() and map it to the RC PCI address
> space with pci_epc_map_addr(). Since pci_epc_map_align() may indicate
> that a mapping can be smaller than the requested size, pci_epc_mem_map()
> may only partially map the RC PCI address region specified and return
> a smaller size for the effective mapping.
> 
> The counterpart of pci_epc_mem_map() to unmap and free the controller
> memory address region is pci_epc_mem_unmap().
> 
> Both functions operate using struct pci_epc_map data structure which is
> extended to contain the physical and virtual addresses of the allocated
> controller memory. Endpoint function drivers can use struct pci_epc_map
> to implement read/write accesses within the mapped RC PCI address region
> using the ->virt_addr and ->size fields.
> 
> This commit contains contributions from Rick Wertenbroek
> <rick.wertenbroek@gmail.com>.
> 

Adding 'Co-developed-by && Signed-off-by' tags would give the due credit.

> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/endpoint/pci-epc-core.c | 68 +++++++++++++++++++++++++++++
>  include/linux/pci-epc.h             |  6 +++
>  2 files changed, 74 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index 37758ca91d7f..0095b54bdf9e 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -530,6 +530,74 @@ int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_map_addr);
>  
> +/**
> + * pci_epc_mem_map() - allocate and map CPU address to PCI address

How about, 'pci_epc_alloc_map()'? I think the 'mem' prefix was added to the
existing APIs since the function definitions are in pci-epc-mem driver, but
not needed here.

> + * @epc: the EPC device on which the CPU address is to be allocated and mapped
> + * @func_no: the physical endpoint function number in the EPC device
> + * @vfunc_no: the virtual endpoint function number in the physical function
> + * @pci_addr: PCI address to which the CPU address should be mapped
> + * @size: the number of bytes to map starting from @pci_addr
> + * @map: where to return the mapping information
> + *
> + * Allocate a controller physical address region and map it to a RC PCI address

"Allocate an EPC address space region..."

> + * region, taking into account the controller physical address mapping
> + * constraints (if any). Returns the effective size of the mapping, which may

Return value should be specified separately for Kdoc.

> + * be less than @size, or a negative error code in case of error.
> + */
> +ssize_t pci_epc_mem_map(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +			u64 pci_addr, size_t size, struct pci_epc_map *map)
> +{
> +	int ret;
> +
> +	ret = pci_epc_map_align(epc, func_no, vfunc_no, pci_addr, size, map);
> +	if (ret)
> +		return ret;
> +
> +	map->virt_base = pci_epc_mem_alloc_addr(epc, &map->phys_base,
> +						map->map_size);

It'd be nice to move pci_epc_map_align() inside the existing
pci_epc_mem_alloc_addr() API to make sure that the allocated memory follows the
constraints of the EPC.

Would that make sense?

- Mani

> +	if (!map->virt_base)
> +		return -ENOMEM;
> +
> +	map->phys_addr = map->phys_base + map->map_ofst;
> +	map->virt_addr = map->virt_base + map->map_ofst;
> +
> +	ret = pci_epc_map_addr(epc, func_no, vfunc_no, map->phys_base,
> +			       map->map_pci_addr, map->map_size);
> +	if (ret) {
> +		pci_epc_mem_free_addr(epc, map->phys_base, map->virt_base,
> +				      map->map_size);
> +		return ret;
> +	}
> +
> +	return map->pci_size;
> +}
> +EXPORT_SYMBOL_GPL(pci_epc_mem_map);
> +
> +/**
> + * pci_epc_mem_unmap() - unmap from PCI address and free a CPU address region
> + * @epc: the EPC device on which the CPU address is allocated and mapped
> + * @func_no: the physical endpoint function number in the EPC device
> + * @vfunc_no: the virtual endpoint function number in the physical function
> + * @map: the mapping information
> + *
> + * Allocate and map local CPU address to a PCI address, accounting for the
> + * controller local CPU address alignment constraints.
> + */
> +void pci_epc_mem_unmap(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +		       struct pci_epc_map *map)
> +{
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
> +		return;
> +
> +	if (!map || !map->pci_size)
> +		return;
> +
> +	pci_epc_unmap_addr(epc, func_no, vfunc_no, map->phys_base);
> +	pci_epc_mem_free_addr(epc, map->phys_base, map->virt_base,
> +			      map->map_size);
> +}
> +EXPORT_SYMBOL_GPL(pci_epc_mem_unmap);
> +
>  /**
>   * pci_epc_clear_bar() - reset the BAR
>   * @epc: the EPC device for which the BAR has to be cleared
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index 8cfb4aaf2628..86397a500b54 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -304,4 +304,10 @@ void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
>  				     phys_addr_t *phys_addr, size_t size);
>  void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
>  			   void __iomem *virt_addr, size_t size);
> +
> +ssize_t pci_epc_mem_map(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +			u64 pci_addr, size_t size, struct pci_epc_map *map);
> +void pci_epc_mem_unmap(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +		       struct pci_epc_map *map);
> +
>  #endif /* __LINUX_PCI_EPC_H */
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

