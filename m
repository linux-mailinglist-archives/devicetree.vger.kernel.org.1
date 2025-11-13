Return-Path: <devicetree+bounces-238351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B17BC5A43D
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 67F844E06B2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 22:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E453164C2;
	Thu, 13 Nov 2025 22:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L//Nr7PN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5B7244679;
	Thu, 13 Nov 2025 22:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763071438; cv=none; b=lsMnd4qTz+hWWkLOyIlWa8/EYQYZUliDJbp3Ee81XJ1mIOa0v/hwZh4BH8bibS83H1uLU79zz4rhJjE0qHKyvD7oKBcUOnYMuIZ1qjooucPIT9nPvC/oQYgZ/yPEGxxrC1DB3zpl1h1n91tJgKSvRJ2PELyjoxsCEfWXzos3hMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763071438; c=relaxed/simple;
	bh=+q6R5ADEst/IJRlT0HeoA2Qb1YnoiNZiNGQkk5WQMWE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lnbqUrqLIk4w/fhAlgLJtKIzayrwaDKnhtmo+6Xob8wnd6N3G2w40M8is2IHSkJHkfYNix7Ef+WeBkcpaxAIeG7gol1kPrnR5HO8Tj93EgggKvWDmAjCSgBJaIJxChjFA7Nx+npSmOe654Yl6aFDQHagJQVo+rRUZCvaDVeAbpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L//Nr7PN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A009C4CEF5;
	Thu, 13 Nov 2025 22:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763071437;
	bh=+q6R5ADEst/IJRlT0HeoA2Qb1YnoiNZiNGQkk5WQMWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L//Nr7PNObVuWD2mUcZ+vYgF66VZzt9fCieFyPY1q5L/gP3lXHtYpug3X35V+Ex4O
	 4IA/zMzZesPed5TsR1ad0pcGvi5hUmp2Ghs6q3Qvat0Yhqum9dTfAnCimBCv7KiHTp
	 az9w2vyn+fx4hVlbY+kuJmcD8aja0sJGo+Je18iKJPWMjTca0CPtiDlTRvjGdC6NyB
	 IqlO7282TiP8bxGgtSJW5tfBX1vWOFXa/sUqVbjcEi6v8e7vj128BgLLBi4nUk3/On
	 wDc83/BNf9G7vX5xDY6vtVjbTG+/8/hZMRow5GDnHHNJVHdHJg6ku+Z8NYuCA1XoxL
	 8RZhPm7mqjOLA==
Date: Thu, 13 Nov 2025 16:03:56 -0600
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
Subject: Re: [PATCH v2 5/7] of/fdt: Simplify the logic of
 early_init_dt_scan_memory()
Message-ID: <20251113220356.GA800052-robh@kernel.org>
References: <20251113155104.226617-1-yuntao.wang@linux.dev>
 <20251113155104.226617-6-yuntao.wang@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113155104.226617-6-yuntao.wang@linux.dev>

On Thu, Nov 13, 2025 at 11:51:02PM +0800, Yuntao Wang wrote:
> Use the existing helper functions to simplify the logic of
> early_init_dt_scan_memory()
> 
> Signed-off-by: Yuntao Wang <yuntao.wang@linux.dev>
> ---
>  drivers/of/fdt.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 4c45a97d6652..b6b059960fc2 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1027,7 +1027,7 @@ int __init early_init_dt_scan_memory(void)
>  
>  	fdt_for_each_subnode(node, fdt, 0) {
>  		const char *type = of_get_flat_dt_prop(node, "device_type", NULL);
> -		const __be32 *reg, *endp;
> +		const __be32 *reg;
>  		int l;
>  		bool hotpluggable;
>  
> @@ -1038,23 +1038,21 @@ int __init early_init_dt_scan_memory(void)
>  		if (!of_fdt_device_is_available(fdt, node))
>  			continue;
>  
> -		reg = of_get_flat_dt_prop(node, "linux,usable-memory", &l);
> +		reg = of_fdt_get_addr_size_prop(node, "linux,usable-memory", &l);
>  		if (reg == NULL)
> -			reg = of_get_flat_dt_prop(node, "reg", &l);
> +			reg = of_fdt_get_addr_size_prop(node, "reg", &l);
>  		if (reg == NULL)
>  			continue;
>  
> -		endp = reg + (l / sizeof(__be32));
>  		hotpluggable = of_get_flat_dt_prop(node, "hotpluggable", NULL);
>  
> -		pr_debug("memory scan node %s, reg size %d,\n",
> +		pr_debug("memory scan node %s, reg {addr,size} entries %d,\n",
>  			 fdt_get_name(fdt, node, NULL), l);
>  
> -		while ((endp - reg) >= (dt_root_addr_cells + dt_root_size_cells)) {
> +		while (l-- > 0) {
>  			u64 base, size;
>  
> -			base = dt_mem_next_cell(dt_root_addr_cells, &reg);
> -			size = dt_mem_next_cell(dt_root_size_cells, &reg);
> +			of_fdt_read_addr_size(reg, &base, &size);

This doesn't work. of_fdt_read_addr_size() needs to take an entry index 
to read each entry.

Rob

