Return-Path: <devicetree+bounces-238357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C77C9C5A591
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:39:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B2C43A750D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AD852E6127;
	Thu, 13 Nov 2025 22:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwjLvrXE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBAF2E427C;
	Thu, 13 Nov 2025 22:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763073541; cv=none; b=P85DdI/9JpBHwWUoyeCxddk1DLhp7iM0NXr7Vrrhufl1wy0kAegwCJDY4UjeXLp0+IWHtGQLx+FtNrV2xrTA6GILovvrnQYo7yUJN2WZGe3DkoTgSyBvkX7vEv7Km46txD6+WGgTFtyD0kDwsH72j5kQSusd8CswHil+HmyKGw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763073541; c=relaxed/simple;
	bh=bJO7lRAgZthhVJtPBrw2yr+3dHNBPSri1nazhYZnFAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tiJnF1v3MUnTz/e9LZUUipP83XP9Eg0lc/jjjGUQ9ZUVjzYZRG3uhTLTgnp+R5QsKrEWgDyalE6nb64woABbI3G4EBM/OG9R5eCjPOfEJe8uvzFScv5aqewCH2ueXWkNd9yDkNVKqsMJM4eCpeKfapuo9NefUhLrLgO1jsDFDQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwjLvrXE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0E40C4CEF7;
	Thu, 13 Nov 2025 22:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763073540;
	bh=bJO7lRAgZthhVJtPBrw2yr+3dHNBPSri1nazhYZnFAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rwjLvrXExA5HeJQIsNZssAT4ITH9y/lJqSPHnBR/BVIkUnqaEaXq9QFbfWYeVc9n6
	 JNo60lRVxbXIivf9UCs6KAsAekvPXEwIJxt2UACfJa4TvZ8NKtiq4w+VFRLoZZYkhz
	 K9zcXq85JUro42ztEU9gU/N2mvzp8XP355YvGhz/Hmz0+a775OxFbCGKkbVhPs6mu6
	 BRKBlyCgDsX3HvCX0Spsx4iHWHVe3pP5SfoSlX9hoZF9048fKiTLcrWIJBNBcDdTKb
	 /VC2yqoprCOHwETy5AOLzpf/ee1yhiqwklDWjMdIp/cPqrUCN6nd21JgN7QMxGdE6y
	 P+mWP45HXm9VQ==
Date: Thu, 13 Nov 2025 16:38:59 -0600
From: Rob Herring <robh@kernel.org>
To: Yuntao Wang <yuntao.wang@linux.dev>
Cc: Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>, Baoquan He <bhe@redhat.com>,
	Zhen Lei <thunder.leizhen@huawei.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Geoff Levand <geoff@infradead.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Changyuan Lyu <changyuanl@google.com>,
	Alexander Graf <graf@amazon.com>,
	"Mike Rapoport (Microsoft)" <rppt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/7] of/fdt: Consolidate duplicate code into helper
 functions
Message-ID: <20251113223859.GB800052-robh@kernel.org>
References: <20251113155104.226617-1-yuntao.wang@linux.dev>
 <20251113155104.226617-2-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113155104.226617-2-yuntao.wang@linux.dev>

On Thu, Nov 13, 2025 at 11:50:58PM +0800, Yuntao Wang wrote:
> Currently, there are many pieces of nearly identical code scattered across
> different places. Consolidate the duplicate code into helper functions to
> improve maintainability and reduce the likelihood of errors.
> 
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> ---
>  drivers/of/fdt.c       | 41 +++++++++++++++++++++++++++++++++++++++++
>  include/linux/of_fdt.h |  5 +++++
>  2 files changed, 46 insertions(+)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 0edd639898a6..5e0eabc1449f 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -625,6 +625,47 @@ const void *__init of_get_flat_dt_prop(unsigned long node, const char *name,
>  	return fdt_getprop(initial_boot_params, node, name, size);
>  }
>  
> +const __be32 *__init of_fdt_get_addr_size_prop(unsigned long node,
> +                                               const char *name, int *entries)
> +{
> +	const __be32 *prop;
> +	int len, elen = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);
> +
> +	prop = of_get_flat_dt_prop(node, name, &len);
> +	if (!prop) {
> +		*entries = 0;
> +		return NULL;
> +	}
> +
> +	if (len % elen) {
> +		*entries = -1;

I don't think it's really important to distinguish a length error from 
any other error. Either we can read the property or we can't.

> +		return NULL;
> +	}
> +
> +	*entries = len / elen;
> +	return prop;
> +}
> +
> +bool __init of_fdt_get_addr_size(unsigned long node, const char *name,
> +                                 u64 *addr, u64 *size)
> +{
> +	const __be32 *prop;
> +	int len, elen = (dt_root_addr_cells + dt_root_size_cells) * sizeof(__be32);

Still have 2 locations to get the same calculation wrong...

> +
> +	prop = of_get_flat_dt_prop(node, name, &len);
> +	if (!prop || len < elen)
> +		return false;

Why doesn't calling of_fdt_get_addr_size_prop() work here? If 'len < 
elen', then 'len % elen' will also be true except in the 0 length case. 
For that case, of_fdt_get_addr_size_prop() needs to handle it too.

> +
> +	of_fdt_read_addr_size(prop, addr, size);
> +	return true;
> +}
> +
> +void __init of_fdt_read_addr_size(const __be32 *prop, u64 *addr, u64 *size)
> +{
> +	*addr = dt_mem_next_cell(dt_root_addr_cells, &prop);
> +	*size = dt_mem_next_cell(dt_root_size_cells, &prop);
> +}
> +
>  /**
>   * of_fdt_is_compatible - Return true if given node from the given blob has
>   * compat in its compatible list
> diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
> index b8d6c0c20876..3a0805ff6c7b 100644
> --- a/include/linux/of_fdt.h
> +++ b/include/linux/of_fdt.h
> @@ -55,6 +55,11 @@ extern int of_get_flat_dt_subnode_by_name(unsigned long node,
>  					  const char *uname);
>  extern const void *of_get_flat_dt_prop(unsigned long node, const char *name,
>  				       int *size);
> +extern const __be32 *of_fdt_get_addr_size_prop(unsigned long node,
> +                                               const char *name, int *entries);
> +extern bool of_fdt_get_addr_size(unsigned long node, const char *name,
> +                                 u64 *addr, u64 *size);
> +extern void of_fdt_read_addr_size(const __be32 *prop, u64 *addr, u64 *size);
>  extern int of_flat_dt_is_compatible(unsigned long node, const char *name);

Looks like of_flat_dt_* would be more consistent with existing naming.

>  extern unsigned long of_get_flat_dt_root(void);
>  extern uint32_t of_get_flat_dt_phandle(unsigned long node);
> -- 
> 2.51.0
> 

