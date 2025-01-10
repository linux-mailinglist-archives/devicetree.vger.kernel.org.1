Return-Path: <devicetree+bounces-137596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73365A09D91
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:04:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 926733A2C97
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB431213E84;
	Fri, 10 Jan 2025 22:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="VU6wzF3m"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF94524B254
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 22:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736546692; cv=none; b=DOF7IDCMs/Btas1N5piBWRJYfVB0ZDi8gYadzy/6GAA2v41UPL57Tir6qclvp95yz+hR34UiQavCUxej6bcHOAqWf5zRDQADvWHB/0SuLzTuAZ6XYXWAzgVIT67eo3r2tQ5kQH6u5PaqakwF5eOOlLRMoPKOsUWBgiqvmpjkq2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736546692; c=relaxed/simple;
	bh=b9WKBQ8NuViU/bZ0HeL+7P1wKdEpWaLgYphdVF4bMoE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Izd1EGSeQbudrSFxZKrlSTzs/6vDRzRBeDn+75KMiRuNByWzQ1gLEmL+gcgP6s+kVWFaV9WiN7WBjely26WnPCvjQ13Dj5XFPaW3aiVxsRL1kpVJo0r3m3tTNvhcJCLoKui8/irBpRynAZDkL2AiJ5JXOO9R9H12b3Ls92HUuc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=VU6wzF3m; arc=none smtp.client-ip=95.215.58.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <ba885c8c-c5f0-4902-8515-3c133a00d7f1@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1736546679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2x5BxF/3ZkUkZ+08VxDfgNb3JHhNGdhbGCSwU27BGaM=;
	b=VU6wzF3mE866i1no/6U66csETxez/bREQM53MmiNGv1XnD0PmIbPMQpAz7P1cHr+ry40jW
	6RMUzfnkgYIoplHz5iotr5rTv8Kd9snuwjrJqwmLPxQE4200bmPgNzApeRG79EpcFVqIDY
	oWOrLT1Lseiz3xI8SPo8HyEsEA8aMP4=
Date: Fri, 10 Jan 2025 17:04:34 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] of/address: Fix WARN when attempting translating
 non-translatable addresses
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Saravana Kannan <saravanak@google.com>
Cc: linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250110215030.3637845-1-robh@kernel.org>
 <20250110215030.3637845-2-robh@kernel.org>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <20250110215030.3637845-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT

On 1/10/25 16:50, Rob Herring (Arm) wrote:
> The recently added WARN() for deprecated #address-cells and #size-cells
> triggered a WARN when of_platform_populate() (which calls
> of_address_to_resource()) is used on nodes with non-translatable
> addresses. This case is expected to return an error.
> 
> Rework the bus matching to allow no match and make the default require
> an #address-cells property. That should be safe to do as any platform
> missing #address-cells would have a warning already.
> 
> Fixes: 045b14ca5c36 ("of: WARN on deprecated #address-cells/#size-cells handling")
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  drivers/of/address.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index c1f1c810e810..8770004d9b08 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -340,6 +340,15 @@ static int of_bus_default_flags_match(struct device_node *np)
>  	return of_property_present(np, "#address-cells") && (of_bus_n_addr_cells(np) == 3);
>  }
>  
> +static int of_bus_default_match(struct device_node *np)
> +{
> +	/*
> +	 * Check for presence first since of_bus_n_addr_cells() will warn when
> +	 * walking parent nodes.
> +	 */
> +	return of_property_present(np, "#address-cells");
> +}
> +
>  /*
>   * Array of bus specific translators
>   */
> @@ -384,7 +393,7 @@ static const struct of_bus of_busses[] = {
>  	{
>  		.name = "default",
>  		.addresses = "reg",
> -		.match = NULL,
> +		.match = of_bus_default_match,
>  		.count_cells = of_bus_default_count_cells,
>  		.map = of_bus_default_map,
>  		.translate = of_bus_default_translate,
> @@ -399,7 +408,6 @@ static const struct of_bus *of_match_bus(struct device_node *np)
>  	for (i = 0; i < ARRAY_SIZE(of_busses); i++)
>  		if (!of_busses[i].match || of_busses[i].match(np))
>  			return &of_busses[i];
> -	BUG();
>  	return NULL;
>  }
>  
> @@ -521,6 +529,8 @@ static u64 __of_translate_address(struct device_node *node,
>  	if (parent == NULL)
>  		return OF_BAD_ADDR;
>  	bus = of_match_bus(parent);
> +	if (!bus)
> +		return OF_BAD_ADDR;
>  
>  	/* Count address cells & copy address locally */
>  	bus->count_cells(dev, &na, &ns);
> @@ -564,6 +574,8 @@ static u64 __of_translate_address(struct device_node *node,
>  
>  		/* Get new parent bus and counts */
>  		pbus = of_match_bus(parent);
> +		if (!pbus)
> +			return OF_BAD_ADDR;
>  		pbus->count_cells(dev, &pna, &pns);
>  		if (!OF_CHECK_COUNTS(pna, pns)) {
>  			pr_err("Bad cell count for %pOF\n", dev);
> @@ -703,7 +715,7 @@ const __be32 *__of_get_address(struct device_node *dev, int index, int bar_no,
>  
>  	/* match the parent's bus type */
>  	bus = of_match_bus(parent);
> -	if (strcmp(bus->name, "pci") && (bar_no >= 0))
> +	if (!bus || (strcmp(bus->name, "pci") && (bar_no >= 0)))
>  		return NULL;
>  
>  	/* Get "reg" or "assigned-addresses" property */

Tested-by: Sean Anderson <sean.anderson@linux.dev>

