Return-Path: <devicetree+bounces-38369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB14848C65
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A36E31C20D1C
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B6114298;
	Sun,  4 Feb 2024 09:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="UFmVO67y"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E931864A
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707038405; cv=none; b=N0Clt0pGQRs53WN3dDFTR8idchLcVkqB7Up11lB2enqLX7fPZCag5HCIekVKfMsgRr/2aaVBNKXHOyAqoEFFGajlI0m7nS6r4m0bnu+NrLrC8czjljqiu8+nNRumd+hhFn5VTSIdmGxkhuEQ/5QCWr/UDVTe0xjczmFe2zybIOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707038405; c=relaxed/simple;
	bh=srcuvDybSB4vWcfJrGGHFyQY5/5RM8WRODVvGcLc1Cc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NLIBDUnmbRIVuaNIbQpb+axFh00/N1hlw1d0pMU8GuMYW+Ik3uJ/KCEF/USAYhWmNfvECivGjBWV4dg0Zmgj3YTcgpZJtxUxYniZeoiT+Imf6rp9Q/UBYrtC/3Ailr5+A/yw7VhEwthQNBOf5EbCam5AOe0MpFYmDndKT9WOUCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=UFmVO67y; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (unknown [109.128.141.99])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 72B7F6F2;
	Sun,  4 Feb 2024 10:18:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1707038320;
	bh=srcuvDybSB4vWcfJrGGHFyQY5/5RM8WRODVvGcLc1Cc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UFmVO67yYsFpMV80koTp63E+Akb2CeCRaJ6AVU4g67hZQQijfajV9bXkDwmdHbSIB
	 EkCfv+9w9hj1nLqlQEIiKU8+aK5wX5gCWB7jyYa9K5PGOOgs8X3Lp7XVu/RCOGU/5c
	 r6rxNewbff97zy1BuMEJTsKJ24QH3ilp6vsJX0Oo=
Date: Sun, 4 Feb 2024 11:20:02 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 2/2] of: property: use unsigned int return on
 of_graph_get_endpoint_count()
Message-ID: <20240204092002.GI3094@pendragon.ideasonboard.com>
References: <87h6irs8fp.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87h6irs8fp.wl-kuninori.morimoto.gx@renesas.com>

Hello Morimoto-san,

Thank you for the patch.

On Fri, Feb 02, 2024 at 06:10:19AM +0000, Kuninori Morimoto wrote:
> Because of of_graph_get_endpoint_count() doesn't report error,
> just return count of endpoint, the return type should be unsigned.
> Tidyup it.

I've briefly checked the callers and none of them seem to check if the
return value is < 0. We may want to update them to store the returned
value in an unsigned int variable, but that could be done separately.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  drivers/of/property.c    | 4 ++--
>  include/linux/of_graph.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 4e879faa1710..66834f85b0ff 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -817,10 +817,10 @@ EXPORT_SYMBOL(of_graph_get_remote_port);
>   *
>   * Return: count of endpoint of this device node
>   */
> -int of_graph_get_endpoint_count(const struct device_node *np)
> +unsigned int of_graph_get_endpoint_count(const struct device_node *np)
>  {
>  	struct device_node *endpoint;
> -	int num = 0;
> +	unsigned int num = 0;
>  
>  	for_each_endpoint_of_node(np, endpoint)
>  		num++;
> diff --git a/include/linux/of_graph.h b/include/linux/of_graph.h
> index 4d7756087b6b..a4bea62bfa29 100644
> --- a/include/linux/of_graph.h
> +++ b/include/linux/of_graph.h
> @@ -41,7 +41,7 @@ struct of_endpoint {
>  bool of_graph_is_present(const struct device_node *node);
>  int of_graph_parse_endpoint(const struct device_node *node,
>  				struct of_endpoint *endpoint);
> -int of_graph_get_endpoint_count(const struct device_node *np);
> +unsigned int of_graph_get_endpoint_count(const struct device_node *np);
>  struct device_node *of_graph_get_port_by_id(struct device_node *node, u32 id);
>  struct device_node *of_graph_get_next_endpoint(const struct device_node *parent,
>  					struct device_node *previous);
> @@ -68,7 +68,7 @@ static inline int of_graph_parse_endpoint(const struct device_node *node,
>  	return -ENOSYS;
>  }
>  
> -static inline int of_graph_get_endpoint_count(const struct device_node *np)
> +static inline unsigned int of_graph_get_endpoint_count(const struct device_node *np)
>  {
>  	return 0;
>  }

-- 
Regards,

Laurent Pinchart

