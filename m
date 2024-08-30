Return-Path: <devicetree+bounces-98537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A1D96678F
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 19:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7ECF1C22CCB
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 17:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F6521B86D2;
	Fri, 30 Aug 2024 17:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOGqfcoH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4E64B5AE
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 17:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725037446; cv=none; b=bptzkWJEWf0KTldNjn5ET3jDxsz2rHWpf4GmyMDXD0tTENYV8YHWJkvmg7bgRLvD6+kWn7XCwRbB++ThlP328tiehewW9cqJJURZmo4w5s5fYXHzun+YqarDGB5WdLQ0aycOiJI/NjjJ+lTqsSa5k4DbmjX0+qjpoQG6tPIEhOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725037446; c=relaxed/simple;
	bh=lAx0zO96bneoXnGjvwWk6B5DMCeWpvCV9qGbbiX3WE4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Yp2m5KqBPysFa65kqMQIo38zD+OkXbLyb46Zm1m56qQ5Q8/1iNXzqvHmTrjNiHj5O1kl4ngsQqAol/0kiLjsWBmGSbPmSajHUNICXOR74S3XxIis7m3TloZJ/6cMX7MCvwAY5spGFNW/C1jT7uiWFDNFi3qc/yV3w5WoR41b06o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOGqfcoH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9FC7C4CEC2;
	Fri, 30 Aug 2024 17:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725037446;
	bh=lAx0zO96bneoXnGjvwWk6B5DMCeWpvCV9qGbbiX3WE4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZOGqfcoHQt6xDyIefu7cm07ioT8p59pu0ECyQCiwHoMiUz3p9VfdGTwIBfyEJdgw5
	 9UG44C8aHpYm6FMt5aYjuzTI3FrN4sumCojgIABTsQivYfUb58jgwrdfeq57iwUXak
	 WGD3VolT18oAj4cT4I+EhcNmYrY6EBl2iKGAuOBVX5Yol+SUuxRrh2wjdm5bhFUCe7
	 ZX+AH1TbNaXm0SV5YprXVwDfjZKqcRcFtSXVDCeen9eX7izpZqYtrjvf9sqYaHm5be
	 rd1Sc9ScD6rhGfIbB8x0wpfnpfu6tji7gaJLxSY/mWfrBlbhJ2XT8ipnL+ESUDBGOw
	 +FbeZ3S3Bbm+A==
Date: Fri, 30 Aug 2024 12:04:04 -0500
From: Rob Herring <robh@kernel.org>
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: saravanak@google.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] of: device: Do some clean up with use of __free()
Message-ID: <20240830170404.GA418406-robh@kernel.org>
References: <20240830020626.115933-1-zhangzekun11@huawei.com>
 <20240830020626.115933-2-zhangzekun11@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240830020626.115933-2-zhangzekun11@huawei.com>

On Fri, Aug 30, 2024 at 10:06:24AM +0800, Zhang Zekun wrote:
> __free() provides a scoped of_node_put() functionality to put the
> device_node automatically, and we don't need to call of_node_put()
> directly. Let's simplify the code a bit with the use of __free().
> 
> Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
> ---
>  drivers/of/device.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index edf3be197265..7a71ef2aa16e 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -35,7 +35,7 @@ EXPORT_SYMBOL(of_match_device);
>  static void
>  of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
>  {
> -	struct device_node *node, *of_node = dev->of_node;
> +	struct device_node *of_node = dev->of_node;
>  	int count, i;
>  
>  	if (!IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL))
> @@ -54,17 +54,16 @@ of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
>  	}
>  
>  	for (i = 0; i < count; i++) {
> -		node = of_parse_phandle(of_node, "memory-region", i);
> +		struct device_node *node __free(device_node) =
> +			of_parse_phandle(of_node, "memory-region", i);
>  		/*
>  		 * There might be multiple memory regions, but only one
>  		 * restricted-dma-pool region is allowed.
>  		 */
>  		if (of_device_is_compatible(node, "restricted-dma-pool") &&
>  		    of_device_is_available(node)) {
> -			of_node_put(node);
>  			break;
>  		}
> -		of_node_put(node);
>  	}

Actually, I'd re-write this function like this (untested):

static void
of_dma_set_restricted_buffer(struct device *dev, struct device_node *np)
{
	struct device_node *of_node = dev->of_node;
	struct of_phandle_iterator it;
	int rc, match = -1, i = 0;

	if (!IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL))
		return;

	/*
	 * If dev->of_node doesn't exist or doesn't contain memory-region, try
	 * the OF node having DMA configuration.
	 */
	if (!of_property_present(of_node, "memory-region"))
		of_node = np;

	of_for_each_phandle(&it, of_node, rc, "memory-region", NULL, 0) {
		/*
		 * There might be multiple memory regions, but only one
		 * restricted-dma-pool region is allowed.
		 */
		if ((match < 0) && of_device_is_compatible(it.node, "restricted-dma-pool") &&
		    of_device_is_available(it.node)) {
			match = i;
			if (of_reserved_mem_device_init_by_idx(dev, of_node, i))
				dev_warn(dev, "failed to initialise \"restricted-dma-pool\" memory node\n");
		}
		i++;
	}
}


of_parse_phandle() is implemented using of_for_each_phandle(), so every 
call to of_parse_phandle() is iterating i times.

Rob

