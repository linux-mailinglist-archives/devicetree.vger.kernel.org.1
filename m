Return-Path: <devicetree+bounces-238881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EADABC5ED1E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 19:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26B333A2336
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 18:20:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731D733B947;
	Fri, 14 Nov 2025 18:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEo8TR49"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9562D6E61;
	Fri, 14 Nov 2025 18:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763144399; cv=none; b=BCeUxyVtLy4OWWEDVa6/+MWcoXjzg2+8rPg3ebKJJ/Jr8yjZaowGmqcOfk9RWrTe2ZugP+QQTQp4Oqk0vglR+MeSRe0TaKvEcbXf3ZCkegfN1HrpNT2HSUtwc0i39SZf7mD7EW9PQtn6yBST/oJ1k1j3tzr9mevucG0U7+94ins=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763144399; c=relaxed/simple;
	bh=31ho7NgFrP+Cu3F8DeErms6DQfbqFR04lnbB+BtVWxs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M40/J+Jj5USCoejpdt0Yco5fYsJVX1ke2oFTlPrIFiL6XoJnRCSdnHCaO4aL73eIVL/xcpK+wEkEXYPBeRyv1hqhDF+jY9jrOvdgT9TqF8ZnM2/lY+PQYlTTq2Z6DJXFjPsO2JiUvMU42NaW9tqO3M0r1cFj5BIrQkUj7ZR6N0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEo8TR49; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA615C116D0;
	Fri, 14 Nov 2025 18:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763144398;
	bh=31ho7NgFrP+Cu3F8DeErms6DQfbqFR04lnbB+BtVWxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NEo8TR4903MLEnPg6IS+M38fnE2j2LVrUysRf6fiDuyYKyxeZcoA4vfiyd07p0jtx
	 PWGWjiDT5M+OUzgjJm0qhQTcDqNu0/pUgG4oL+rr9kNF5eF8X4Foj6rGhuisa5slcw
	 zubU2QsEf0kIwhWhLaRV8S9lrJ24zWvEiYWcwwtIFqMrsqO6Iocm+7sa1PWA3EB6ZL
	 rUCBNsorYa1IGTo+k4dL9qUDm3NohHxa+hy5JjWJrteTYBrFuaCZ+zCttpepnGDMxp
	 IpevnIj1/JJPYB4u98Bz9oxKvSoQ2JINBJ2MyT28iSmm4gqE9EIXypOor3M+En37hR
	 lMNQQ8Co12HUg==
Date: Fri, 14 Nov 2025 12:19:57 -0600
From: Rob Herring <robh@kernel.org>
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v2] of: reserved_mem: Add fixup function to amend
 corrupted reserved memory regions
Message-ID: <20251114181957.GA3815060-robh@kernel.org>
References: <625eee03632c6f5c4349d6f3cdfe3f85a8e4c466.1762356853.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <625eee03632c6f5c4349d6f3cdfe3f85a8e4c466.1762356853.git.andrea.porta@suse.com>

On Wed, Nov 05, 2025 at 05:08:18PM +0100, Andrea della Porta wrote:
> When parsing static reserved-memory DT nodes, any node with a reg property
> length that is not perfectly conformant is discarded.
> Specifically, any reg property whose length is not a multiple of the
> parent's (#address-cells + #size-cells) is dropped.
> 
> For example, in the following scenario:
> 
> / {
>     #address-cells = <0x02>;
>     #size-cells = <0x02>;
>     ...
> 
>     reserved-memory {
> 	    #address-cells = <0x02>;
> 	    #size-cells = <0x02>;
> 	    ...
> 
> 	    nvram {
> 		    reg = <0x00 0x3fd16d00 0x37>;
> 		    ...
> 	    };
>     };
> };
> 
> Even though the reg property of the nvram node is not well-formed from a DT
> syntax perspective, it still references a perfectly valid memory region of
> 0x37 bytes that should be reserved.
> 
> This has at least one real-world equivalent on the Raspberry Pi 5, for
> example, on which the firmware incorrectly overwrites the nvram node's reg
> property without taking into account the actual value of the parent's
> size-cells.
> 
> Add a fixup function that corrects the FDT in early stage by adding the
> missing cell in the size portion of the reg property, so that the resulting
> DT is well-formed and can be correctly parsed.
> Since it's searching for 'raspberrypi,bootloader-config' compatible
> node, this fix is specific for Raspberry PI.
> 
> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> ---
> This patch can be considered a followup version of [1] even though the
> commit subject has changed entirely and the approch has evolved from a
> general heuristic to a fixup handler specific for RPi5.
> 
> A couple of notes:
> 
> * The FDT region is precisely sized so I needed to copy it on a new
>   buffer big enough to contain it. Using memblock to dinamically allocate
>   the precise amount of memory is not feasible since memblock cannot
>   be used before paging is up. Also, AFAIK any memory allocated through
>   memblock will be reclaimed by the buddy allocator and we need that
>   memory to be preserved since it will be referenced by the live DT.
>   This could *may* be avoided via a clever usage of memblock_reserve()
>   and mapping the memory later, but we still have the former problem of
>   not being able to map the memory for immediate usage.
>   So I've just used a static buffer that should be big enough to
>   accomodate for the DTB + overlays.
>   For reference, those are the current sizes for the DTBs for RPi5:
> 
>   - upstream DTB: ~23Kb
>   - downstream DTB: ~85Kb
>   - size of the static buffer: 150Kb
> 
>   If this space is of concern to anyone we can maybe guard this fixup
>   handelr behind a CONFIG_ option.

Can't we just ensure the FDT mapping has extra space. Just rounding up 
to the next page size should be plenty. 

Otherwise, the FDT is no longer where the arch thinks it is. Arm64 makes 
the FDT read-only after calling early_init_dt_scan(), but that would 
have no effect (perhaps read-only is pointless though). 

> 
> * This fixup is specific for RPi5 and I don't have in mind any other
>   use cases for other handlers, but in case we need to extend this for
>   other platforms it may be worth to setup a list of handlers to be
>   registered so that they can be called in sequence (and on specific
>   nodes).
> 
> Links:
> [1] - https://lore.kernel.org/all/aO-Q6xMDd8Bfeww2@apocalypse/
> ---
>  drivers/of/of_reserved_mem.c | 77 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 76 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 2e9ea751ed2d..2c278ab91b9d 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -148,6 +148,73 @@ static int __init early_init_dt_reserve_memory(phys_addr_t base,
>  	return memblock_reserve(base, size);
>  }
>  
> +static void * __init of_apply_rmem_fixups(const void *fdt, int node)
> +{
> +	int t_len = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> +	int parent_node, new_node, child;
> +	static char new_fdt[150000];
> +	int len, err, alloc_size;
> +	phys_addr_t base, size;
> +	__be32 new_reg_prop[4];
> +	const __be32 *prop;
> +	const char *uname;
> +
> +	fdt_for_each_subnode(child, fdt, node) {
> +		if (!of_fdt_device_is_available(fdt, child))
> +			continue;
> +
> +		prop = of_get_flat_dt_prop(child, "reg", &len);
> +		if (!prop ||
> +		    !of_flat_dt_is_compatible(child, "raspberrypi,bootloader-config") ||
> +		    (t_len - len) != sizeof(__be32) ||
> +		    t_len != 4 * sizeof(__be32))
> +			continue;
> +
> +		alloc_size = fdt_totalsize(fdt) + sizeof(__be32);
> +		err = fdt_open_into(fdt, new_fdt, alloc_size);
> +		if (err) {
> +			pr_err("Failed to open FDT\n");
> +			return ERR_PTR(err);
> +		}
> +
> +		base = dt_mem_next_cell(dt_root_addr_cells, &prop);
> +		size = dt_mem_next_cell(1, &prop);
> +		new_reg_prop[0] = cpu_to_be32(upper_32_bits(base));
> +		new_reg_prop[1] = cpu_to_be32(lower_32_bits(base));
> +		new_reg_prop[2] = 0;
> +		new_reg_prop[3] = cpu_to_be32(size);
> +
> +		parent_node = fdt_path_offset(new_fdt, "/reserved-memory");
> +		if (parent_node < 0) {
> +			pr_err("No reserved-memory node in the copied FDT\n");
> +			return ERR_PTR(parent_node);
> +		}
> +
> +		uname = fdt_get_name(fdt, child, NULL);
> +		if (!uname) {
> +			pr_err("Cannot retrieve the node name\n");
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		new_node = fdt_subnode_offset(new_fdt, parent_node, uname);
> +		if (new_node < 0) {
> +			pr_err("No %s node in the copied FDT\n", uname);
> +			return ERR_PTR(new_node);
> +		}
> +
> +		err = fdt_setprop(new_fdt, new_node, "reg", new_reg_prop, sizeof(new_reg_prop));
> +		if (err < 0) {
> +			pr_warn("Cannot fix 'reg' property for node %s: %s\n",
> +				uname, fdt_strerror(err));
> +			return ERR_PTR(err);
> +		}
> +
> +		return new_fdt;
> +	}
> +
> +	return NULL;

I think we should print some message along the lines of 'fix your 
buggy firmware'.

Rob

