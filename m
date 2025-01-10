Return-Path: <devicetree+bounces-137573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 43281A098C7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 18:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D2323AA4BC
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 17:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6361D2135AA;
	Fri, 10 Jan 2025 17:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFmK3AYV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326662F3E;
	Fri, 10 Jan 2025 17:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736530985; cv=none; b=Q+9+d+6i40hMzPBoKX9bKdi1XfVhaLXzT80y8crlZM8L4kTZSDpAqOoVtRjraFW1P3bSTk31ipNxMlnyQ6W4USgUjcpDYfeXSbX3Wtpo/DblJEuN6C+IZIC45MdyNEb9uAncnKuaWeLtLlLhVrwHto1gDuNazoNhMpuDTBVlYDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736530985; c=relaxed/simple;
	bh=2WRZY+4hOq+5WFsgy4+m18590IhzHIKIf6dA8kwEgKA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oIGztr+LI/NhLv1AeoucVkc/ICFnxzo82Q7Rdvruv5PncSSxnIm2Thlufc2fAcTc4YS4ZqgyNRrHfL3GMF9cHbCWa9Np8H4UfyjOKZewOdC9MDPzi0aNSFq0PUrYyvgZxjElTNSA4XAIohZc908VOmZD4bgHDe4TrxKj4gGAeUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFmK3AYV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85DDCC4CEE0;
	Fri, 10 Jan 2025 17:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736530984;
	bh=2WRZY+4hOq+5WFsgy4+m18590IhzHIKIf6dA8kwEgKA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BFmK3AYVVMA7QpfZwxflHtcs07Ao5szcSW9sSA0r6Qb/EZbGmwlRCiNWnlvnA8s9i
	 kAS8Gps22nb83dd3vPP/HS8mHFMN0ptF78DR3Gzsvb2n1LIPQr1g35h148HEBskwjJ
	 y+fxnRvv7L2MFWWGmbsNuw5TDRCtLtaMxiv5jKkTjOvAbsb+AmzMuWWnKHaWUslxq7
	 geg2t0WgWiK0+9qmXnsLtfEqCQsDUdUoFYwOFQJ8WpIAQXNpI1MfdMh4hWUdc2dwSa
	 G9Zn9SvuvAm8UDbXsSrzrS/jfMjMdQ5cyZ+MOk2FzKKcI5jVuIqmtdq4LN8UdKR/gV
	 +IvEK/XFtGw1A==
Date: Fri, 10 Jan 2025 11:43:03 -0600
From: Rob Herring <robh@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Saravana Kannan <saravanak@google.com>,
	Maxime Ripard <mripard@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Marc Zyngier <maz@kernel.org>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v4 02/14] of: Do not expose of_alias_scan() and correct
 its comments
Message-ID: <20250110174303.GA3215581-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-2-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-2-db8a72415b8c@quicinc.com>

On Thu, Jan 09, 2025 at 09:26:53PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> For of_alias_scan():
> - Do not expose it since it has no external callers.
> - Correct its comments shown below:
>   1) Replace /* with /** to start comments since it is not a API.

You've got that backwards. However, in other places we leave this. I 
prefer if the comment is in kerneldoc format, then it should have '/**' 
to indicate that and so that it is checked by the tools.

>   2) Delete return value descriptions since it is a void function.
> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/base.c       | 5 ++---
>  drivers/of/of_private.h | 2 ++
>  drivers/of/pdt.c        | 2 ++
>  include/linux/of.h      | 1 -
>  4 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 969b99838655534915882abe358814d505c6f748..5485307e2a3a3d3a216d271c60bdfc346dd38460 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1806,14 +1806,13 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
>  		 ap->alias, ap->stem, ap->id, np);
>  }
>  
> -/**
> +/*
>   * of_alias_scan - Scan all properties of the 'aliases' node
>   * @dt_alloc:	An allocator that provides a virtual address to memory
>   *		for storing the resulting tree
>   *
>   * The function scans all the properties of the 'aliases' node and populates
> - * the global lookup table with the properties.  It returns the
> - * number of alias properties found, or an error code in case of failure.
> + * the global lookup table with the properties.
>   */
>  void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align))
>  {
> diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
> index ea5a0951ec5e107bab265ab5f6c043e2bfb15ecc..3433ccd330e84fd3a4b54638e0e922069757c8f0 100644
> --- a/drivers/of/of_private.h
> +++ b/drivers/of/of_private.h
> @@ -119,6 +119,8 @@ extern void *__unflatten_device_tree(const void *blob,
>  			      void *(*dt_alloc)(u64 size, u64 align),
>  			      bool detached);
>  
> +void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
> +
>  /**
>   * General utilities for working with live trees.
>   *
> diff --git a/drivers/of/pdt.c b/drivers/of/pdt.c
> index 7eda43c66c916198b1c2d8fc5043fcb1edaede7a..cb0cb374b21ff89323e11f34bd767b183e7a401e 100644
> --- a/drivers/of/pdt.c
> +++ b/drivers/of/pdt.c
> @@ -19,6 +19,8 @@
>  #include <linux/of.h>
>  #include <linux/of_pdt.h>
>  
> +#include "of_private.h"
> +
>  static struct of_pdt_ops *of_pdt_prom_ops __initdata;
>  
>  #if defined(CONFIG_SPARC)
> diff --git a/include/linux/of.h b/include/linux/of.h
> index f921786cb8ac782286ed5ff4425a35668204d050..d451c46132b01efe6d4e0b6cf83a3e2084bb3ec6 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -397,7 +397,6 @@ extern int of_phandle_iterator_args(struct of_phandle_iterator *it,
>  				    uint32_t *args,
>  				    int size);
>  
> -extern void of_alias_scan(void * (*dt_alloc)(u64 size, u64 align));
>  extern int of_alias_get_id(const struct device_node *np, const char *stem);
>  extern int of_alias_get_highest_id(const char *stem);
>  
> 
> -- 
> 2.34.1
> 

