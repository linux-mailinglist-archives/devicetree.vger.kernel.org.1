Return-Path: <devicetree+bounces-55805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5618966F0
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 09:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 537FD286BDC
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 07:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B280A5D467;
	Wed,  3 Apr 2024 07:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XeteDm/y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2225CDE1
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 07:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712130329; cv=none; b=mSs8AiwY0tPtiRPWkrA/w6IQ9ZScISNs1et598v2RBxX8+/+OR8foLF8M5DQ4eJEqMt9Fppdn6nF9SAfdqNhkZYGYQ/WJtsmeFRcySJqF0S7lMlSSPdjEF0HgFYcA+hCtBXhJnNPQQmvLugTJ3H2RQDV7/wlsUacqMsx5QcjYK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712130329; c=relaxed/simple;
	bh=Aww32PZqcrKI+74yjaQgLehm8AcPZpUS6mONnwAizNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W8nbCIJBdM79A/vB39pP9MW7Ddg8nbY6vEWlGbsj5vz8ME6FOaSq6bwDERjTbBRQurjjkR9scK/oqB5L5JtSgIwT+XB4nwT/OUilpKHF1oKlUDGoOwkhmfRdPATluAXIW8YS/Qb9cs4Z6Omb18FbZGnSfqK2j4EPmnRof2x9pts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XeteDm/y; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6e68d358974so2911531a34.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 00:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712130327; x=1712735127; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZWk9El4Lm3wepAZ5sfSyl/9NPNe+Zi8lm5GB50a25NM=;
        b=XeteDm/yqg31FdrLWTORGxuRN8W1+VR4cAeLJklR67ZeYJ+mfhNx1HZoqcSt76RB1J
         qLKauyOe7gFewUcFfKdG8RFDIXNV+PqbGjgZPA/+yj6ws0QsDO5Cpksal3CC2J3zNcPq
         M7EY0pJ2413ToGmyh5uU0Is5dSvr3lEJ3Wn5BRzprK+UrkGM48LU4PkT9a8V0VHg+Me7
         LMmqz/434ilmyrcVrLG+OqrybZxGM5XRukCj7Wcos8u7tdUuoWdkrk3fhRlrUXoRioJQ
         hcNgE/Rp8xqjOo/beMIZYTlFoZrrPGtbY8gaVd/bL7EMifaaKrD4jb6EyrcxaoU8jVDd
         A2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712130327; x=1712735127;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZWk9El4Lm3wepAZ5sfSyl/9NPNe+Zi8lm5GB50a25NM=;
        b=lxd0OVvNCRrTxVeGqYMAXV2dQhGecjJbXvOSswWhHlSuPcyObSwj8zdqxA7jmLK3Sa
         +wrlLXsKn9jpG0wA6jCLzha3xUheWtmR0wCz6pa7QGp6ElyzodX9EbWwjb8kTumHMsLD
         329+Xaxzz9k4+MMGoXfpkdU5QOVm2y7HGus69ON6SibEfPpIM7MgoYF8wkiiaSxr7rp4
         x7q7D9bW5nIFpMX3ZHxtsFioVYWwwk+EOFfPTRpGtMdRptVngsNtU23SSFwp/sHs4CEN
         PrVRdxjnakb5kuC9NaNuiL90MBNjqG99ultYYJBF4EkC+Oxs7pDnRGMn1cAfwyV36twE
         cpog==
X-Forwarded-Encrypted: i=1; AJvYcCVk4X2b6rxIp9yOvzo6iGmip3MgYQWr0fBYiBnHFINaniaIENbFASk8vLc21TEjN1TU3vH1O9vDNz4qN/ix1l9sSFt1u5wbZDQjnw==
X-Gm-Message-State: AOJu0Yy2bkgksNZ3DBM6Rf8R2NynQpN8U0iLFD0Qdw2yEfq9Ri5SYyAv
	IJTHeZAhW4nqDVrsNmchLtAku1AMI25dJF8aQdKTrdcHumxT58R2ZacfOFymrw==
X-Google-Smtp-Source: AGHT+IH1o7euhPMeJu1aV4prKfsRLmXBWFYLQAmv0oAcS137zWtzJ3rt386Xo4IhuwD9OZNuO6sdgg==
X-Received: by 2002:a05:6830:1e10:b0:6e8:9f1b:6e03 with SMTP id s16-20020a0568301e1000b006e89f1b6e03mr1994894otr.7.1712130326654;
        Wed, 03 Apr 2024 00:45:26 -0700 (PDT)
Received: from thinkpad ([103.28.246.48])
        by smtp.gmail.com with ESMTPSA id b20-20020a631b14000000b005cfb6e7b0c7sm10974501pgb.39.2024.04.03.00.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 00:45:26 -0700 (PDT)
Date: Wed, 3 Apr 2024 13:15:20 +0530
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
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Message-ID: <20240403074520.GC25309@thinkpad>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-3-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240330041928.1555578-3-dlemoal@kernel.org>

On Sat, Mar 30, 2024 at 01:19:12PM +0900, Damien Le Moal wrote:
> Some endpoint controllers have requirements on the alignment of the
> controller physical memory address that must be used to map a RC PCI
> address region. For instance, the rockchip endpoint controller uses
> at most the lower 20 bits of a physical memory address region as the
> lower bits of an RC PCI address. For mapping a PCI address region of
> size bytes starting from pci_addr, the exact number of address bits
> used is the number of address bits changing in the address range
> [pci_addr..pci_addr + size - 1].
> 
> For this example, this creates the following constraints:
> 1) The offset into the controller physical memory allocated for a
>    mapping depends on the mapping size *and* the starting PCI address
>    for the mapping.
> 2) A mapping size cannot exceed the controller windows size (1MB) minus
>    the offset needed into the allocated physical memory, which can end
>    up being a smaller size than the desired mapping size.
> 
> Handling these constraints independently of the controller being used in
> a PCI EP function driver is not possible with the current EPC API as
> it only provides the ->align field in struct pci_epc_features.
> Furthermore, this alignment is static and does not depend on a mapping
> pci address and size.
> 
> Solve this by introducing the function pci_epc_map_align() and the
> endpoint controller operation ->map_align to allow endpoint function
> drivers to obtain the size and the offset into a controller address
> region that must be used to map an RC PCI address region. The size
> of the physical address region provided by pci_epc_map_align() can then
> be used as the size argument for the function pci_epc_mem_alloc_addr().
> The offset into the allocated controller memory can be used to
> correctly handle data transfers. Of note is that pci_epc_map_align() may
> indicate upon return a mapping size that is smaller (but not 0) than the
> requested PCI address region size. For such case, an endpoint function
> driver must handle data transfers in fragments.
> 

Is there any incentive in exposing pci_epc_map_align()? I mean, why can't it be
hidden inside the new alloc() API itself?

Furthermore, is it possible to avoid the map_align() callback and handle the
alignment within the EPC driver?

- Mani

> The controller operation ->map_align is optional: controllers that do
> not have any address alignment constraints for mapping a RC PCI address
> region do not need to implement this operation. For such controllers,
> pci_epc_map_align() always returns the mapping size as equal
> to the requested size and an offset equal to 0.
> 
> The structure pci_epc_map is introduced to represent a mapping start PCI
> address, size and the size and offset into the controller memory needed
> for mapping the PCI address region.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---
>  drivers/pci/endpoint/pci-epc-core.c | 66 +++++++++++++++++++++++++++++
>  include/linux/pci-epc.h             | 33 +++++++++++++++
>  2 files changed, 99 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> index 754afd115bbd..37758ca91d7f 100644
> --- a/drivers/pci/endpoint/pci-epc-core.c
> +++ b/drivers/pci/endpoint/pci-epc-core.c
> @@ -433,6 +433,72 @@ void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  }
>  EXPORT_SYMBOL_GPL(pci_epc_unmap_addr);
>  
> +/**
> + * pci_epc_map_align() - Get the offset into and the size of a controller memory
> + *			 address region needed to map a RC PCI address region
> + * @epc: the EPC device on which address is allocated
> + * @func_no: the physical endpoint function number in the EPC device
> + * @vfunc_no: the virtual endpoint function number in the physical function
> + * @pci_addr: PCI address to which the physical address should be mapped
> + * @size: the size of the mapping starting from @pci_addr
> + * @map: populate here the actual size and offset into the controller memory
> + *       that must be allocated for the mapping
> + *
> + * Invoke the controller map_align operation to obtain the size and the offset
> + * into a controller address region that must be allocated to map @size
> + * bytes of the RC PCI address space starting from @pci_addr.
> + *
> + * The size of the mapping that can be handled by the controller is indicated
> + * using the pci_size field of @map. This size may be smaller than the requested
> + * @size. In such case, the function driver must handle the mapping using
> + * several fragments. The offset into the controller memory for the effective
> + * mapping of the @pci_addr..@pci_addr+@map->pci_size address range is indicated
> + * using the map_ofst field of @map.
> + */
> +int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +		      u64 pci_addr, size_t size, struct pci_epc_map *map)
> +{
> +	const struct pci_epc_features *features;
> +	size_t mask;
> +	int ret;
> +
> +	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
> +		return -EINVAL;
> +
> +	if (!size || !map)
> +		return -EINVAL;
> +
> +	memset(map, 0, sizeof(*map));
> +	map->pci_addr = pci_addr;
> +	map->pci_size = size;
> +
> +	if (epc->ops->map_align) {
> +		mutex_lock(&epc->lock);
> +		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
> +		mutex_unlock(&epc->lock);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Assume a fixed alignment constraint as specified by the controller
> +	 * features.
> +	 */
> +	features = pci_epc_get_features(epc, func_no, vfunc_no);
> +	if (!features || !features->align) {
> +		map->map_pci_addr = pci_addr;
> +		map->map_size = size;
> +		map->map_ofst = 0;

These values are overwritten anyway below.

> +	}
> +
> +	mask = features->align - 1;
> +	map->map_pci_addr = map->pci_addr & ~mask;
> +	map->map_ofst = map->pci_addr & mask;
> +	map->map_size = ALIGN(map->map_ofst + map->pci_size, features->align);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(pci_epc_map_align);
> +
>  /**
>   * pci_epc_map_addr() - map CPU address to PCI address
>   * @epc: the EPC device on which address is allocated
> diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
> index cc2f70d061c8..8cfb4aaf2628 100644
> --- a/include/linux/pci-epc.h
> +++ b/include/linux/pci-epc.h
> @@ -32,11 +32,40 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
>  	}
>  }
>  
> +/**
> + * struct pci_epc_map - information about EPC memory for mapping a RC PCI
> + *                      address range
> + * @pci_addr: start address of the RC PCI address range to map
> + * @pci_size: size of the RC PCI address range to map
> + * @map_pci_addr: RC PCI address used as the first address mapped
> + * @map_size: size of the controller memory needed for the mapping
> + * @map_ofst: offset into the controller memory needed for the mapping
> + * @phys_base: base physical address of the allocated EPC memory
> + * @phys_addr: physical address at which @pci_addr is mapped
> + * @virt_base: base virtual address of the allocated EPC memory
> + * @virt_addr: virtual address at which @pci_addr is mapped
> + */
> +struct pci_epc_map {
> +	phys_addr_t	pci_addr;
> +	size_t		pci_size;
> +
> +	phys_addr_t	map_pci_addr;
> +	size_t		map_size;
> +	phys_addr_t	map_ofst;
> +
> +	phys_addr_t	phys_base;
> +	phys_addr_t	phys_addr;
> +	void __iomem	*virt_base;
> +	void __iomem	*virt_addr;
> +};
> +
>  /**
>   * struct pci_epc_ops - set of function pointers for performing EPC operations
>   * @write_header: ops to populate configuration space header
>   * @set_bar: ops to configure the BAR
>   * @clear_bar: ops to reset the BAR
> + * @map_align: operation to get the size and offset into a controller memory
> + *             window needed to map an RC PCI address region
>   * @map_addr: ops to map CPU address to PCI address
>   * @unmap_addr: ops to unmap CPU address and PCI address
>   * @set_msi: ops to set the requested number of MSI interrupts in the MSI
> @@ -61,6 +90,8 @@ struct pci_epc_ops {
>  			   struct pci_epf_bar *epf_bar);
>  	void	(*clear_bar)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  			     struct pci_epf_bar *epf_bar);
> +	int	(*map_align)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +			    struct pci_epc_map *map);
>  	int	(*map_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  			    phys_addr_t addr, u64 pci_addr, size_t size);
>  	void	(*unmap_addr)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> @@ -234,6 +265,8 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  		    struct pci_epf_bar *epf_bar);
>  void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  		       struct pci_epf_bar *epf_bar);
> +int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
> +		      u64 pci_addr, size_t size, struct pci_epc_map *map);
>  int pci_epc_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  		     phys_addr_t phys_addr,
>  		     u64 pci_addr, size_t size);
> -- 
> 2.44.0
> 

-- 
மணிவண்ணன் சதாசிவம்

