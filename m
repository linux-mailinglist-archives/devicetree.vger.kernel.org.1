Return-Path: <devicetree+bounces-137585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E15BA09C6A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 21:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FB8F3ABBC7
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 20:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02E972144BC;
	Fri, 10 Jan 2025 20:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vK+0sq6P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBCC20DD43;
	Fri, 10 Jan 2025 20:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736540810; cv=none; b=QYt5d+gONl0DtKFxEHIkem/Sd3M4glxvwOJ+8suVg82/WOTzVzOr3c1rbx3XB3ChAnjeAYWbGwIdK1olgAQew9Pe/z815YCpp0aRHPm2+M7osnpmXOWhnHxefmdQZoL+g9uRg0EgyfWw44SFAhUuLGbLthosKijVlvLJ/z/E+K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736540810; c=relaxed/simple;
	bh=9sJhhLhbcY18Tf7+Gh1rbIJx51Zmsf3h1iDV5xcql8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e6QA8iTRaIuTb37PElcCY1uQPDC2eNmCQI6BPvx0IW3ivkXPOo/BZuGTHhxY5eU2lNo/3TXy6xGuDA9yD5CYBPv3OBuBxy1eBCpu9Qpe8iv9DvE1o1GWHBBWcG1UVJXtfq+6BzHoIb66AcGv21/G1IjnRPjopTWvcigI4QpLRVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vK+0sq6P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21CBEC4CED6;
	Fri, 10 Jan 2025 20:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736540810;
	bh=9sJhhLhbcY18Tf7+Gh1rbIJx51Zmsf3h1iDV5xcql8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vK+0sq6P0IHLDRsJVpcFuiWvwB+fMH96Ldot5bk7nU8OJuSwhnqYvgsipTA286DXA
	 4KY7yZJ8pR1rH7v9yz/qBn/FxAsw029v61y6A1SqD/sbUu2PxP9tmvIQ/DkBkWE8o/
	 4Lx5EvlW12EJ+UfX07O6dvsG2wD8P5EFfZvXb0TeTRW49zzMzkMptrvVJLDdNIhYhN
	 cXopzd1PNq5Fq9DGUTqctS5kAAs2P8Jk+mTW/JME/cFhgkgqGxLs93O+9G9FL9F5Gx
	 dA8mNYVwIF/e4FpG7/lhukTdPzVWea1uPG40Bddq79eAI/zW8fsInN8fX07s+TG9vp
	 oJ+V+3ElACwbg==
Date: Fri, 10 Jan 2025 14:26:49 -0600
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
Subject: Re: [PATCH v4 06/14] of: property: Avoiding using uninitialized
 variable @imaplen in parse_interrupt_map()
Message-ID: <20250110202649.GA3227291-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>

On Thu, Jan 09, 2025 at 09:26:57PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> parse_interrupt_map() will use uninitialized variable @imaplen if fails
> to get property 'interrupt-map'.
> 
> Fix by using the variable after successfully getting the property.
> 
> Fixes: e7985f43609c ("of: property: Fix fw_devlink handling of interrupt-map")
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/property.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index dca1a3ebccae1093b2b11f51e8e692bca854d0e3..6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1391,9 +1391,9 @@ static struct device_node *parse_interrupt_map(struct device_node *np,
>  	addrcells = of_bus_n_addr_cells(np);
>  
>  	imap = of_get_property(np, "interrupt-map", &imaplen);
> -	imaplen /= sizeof(*imap);
>  	if (!imap)
>  		return NULL;
> +	imaplen /= sizeof(*imap);

sizeof() is a compile time constant, there's not an actual dereference 
here.

>  
>  	imap_end = imap + imaplen;
>  
> 
> -- 
> 2.34.1
> 

