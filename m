Return-Path: <devicetree+bounces-38368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AF7848C63
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6F5B281154
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBE40171AD;
	Sun,  4 Feb 2024 09:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="fOSmEHyn"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BAC16429
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707038179; cv=none; b=cnNhT4X0NcqEnLdkjHTR789+z8sZNSKYWrIXhtzVQXywCujw097lGdmeJy+MN3T4qgsqVrN5hkalCItzLJ7/pN+PwbxKyQHVYSWWnlJGfj94Ut1RQ+h+nRkKLQxumuXgWH1/SFcNyfFqEAhCf3yyJt21/BCTt4pmwHm/4IFdJlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707038179; c=relaxed/simple;
	bh=82X0NI12O7oeVqXArgsDcMS1UdpxOkYE1FbmQgedXJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qr+50vjoYMSGyINR9KmKAh5g2QJND/ypaXhBPgijBosqDWhw+jdlNZEZAVpMCuD3O5poG2P6K5NyMRmJgf3T853dD7YYsQA6iWFmRZU5Ot7ehjZtQpI2yvymbueGN0Ma3cRv2v7QngFdDPHTFsC3eraJh0JwOd813jHU9nostwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=fOSmEHyn; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (unknown [109.128.141.99])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4F4B86F2;
	Sun,  4 Feb 2024 10:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1707038094;
	bh=82X0NI12O7oeVqXArgsDcMS1UdpxOkYE1FbmQgedXJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fOSmEHyn0LpoPrtzUPG9Th/n0knuj2beFi0pXXSLK2HHqA/vnK3b8D/uGuXcSZWOC
	 L2xJAyhAe2UA4aeqWUCEgclR320JjeWiJsgxsy9O5PYvtACLWudGqZfyb8MamHMICq
	 vIUlmITf0gKNUPZovcKxUD3Oxi+7qy1GYjdquJkM=
Date: Sun, 4 Feb 2024 11:16:16 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 1/2] of: property: add missing kerneldoc for
 of_graph_get_endpoint_count()
Message-ID: <20240204091616.GH3094@pendragon.ideasonboard.com>
References: <87il37s8fz.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87il37s8fz.wl-kuninori.morimoto.gx@renesas.com>

Hello Morimoto-san,

Thank you for the patch.

On Fri, Feb 02, 2024 at 06:10:08AM +0000, Kuninori Morimoto wrote:
> of_graph_get_endpoint_count() doesn't have kerneldoc. Add it.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  drivers/of/property.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index afdaefbd03f6..4e879faa1710 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -811,6 +811,12 @@ struct device_node *of_graph_get_remote_port(const struct device_node *node)
>  }
>  EXPORT_SYMBOL(of_graph_get_remote_port);
>  
> +/**
> + * of_graph_get_endpoint_count() - get count of endpoint

s/endpoint/endpoints/

or, possibly better,

 * of_graph_get_endpoint_count() - get the number of endpoints in a device node

> + * @np: pointer to the parent device node

Let's use the same parameter description as for the
for_each_endpoint_of_node() macro, for consistency:

 * @parent: parent device node containing ports and endpoints

With these small changes,

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

> + *
> + * Return: count of endpoint of this device node
> + */
>  int of_graph_get_endpoint_count(const struct device_node *np)
>  {
>  	struct device_node *endpoint;

-- 
Regards,

Laurent Pinchart

