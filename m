Return-Path: <devicetree+bounces-98665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEA4966FCE
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 08:39:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A162C1F234DE
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 06:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895CD1531EC;
	Sat, 31 Aug 2024 06:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSNWWXp8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AA31758F
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 06:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725086339; cv=none; b=NvtnvG+Puz2dQDvvAZnrHzJOcwpfBHRtfWlz2AFxaay8wVaAa7flRU7gWSIIKoHcI2RyZ5X7qV9IvPgPhR3KNGz+EM6+kBrcPZOopvEGFDELrGo63aCuHHFEpR7OpBZ/2eg/emqHDdJTCEXU/XV8f/YR1GKm5peDrpXqZgO27So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725086339; c=relaxed/simple;
	bh=83HT7xcD6ouKLWX8WmowlumLToYd3xCB9pD8LSmmaao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mB3FEovFtHwWc9EsCk1qsem7xw9S6mBsEZDUl3n1LREebFKuVsMOGz8MjjuqncVxD1B2ZJqjxrjWQYaCi92Ecyt6FD28ou9AkH51Cx7Rxh3X3WOtnRUhTV3mN0zeTnnUu26qtogZ9v3+RdaICxMJtTa//rw6HIh360Yc9fcuY8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSNWWXp8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B974C4CEC0;
	Sat, 31 Aug 2024 06:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725086337;
	bh=83HT7xcD6ouKLWX8WmowlumLToYd3xCB9pD8LSmmaao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WSNWWXp8cbWLXBu0DPQgIbmXPV67Y7qXnbOzEyQtqExA/O8KXGoN4MEA/4E4YyrIH
	 kdGlCQZiHWz5faEATBSggJhIIpbeo33bX5SDNS7YU8SXoUJzEJH28Dx/0ivS8KGOWi
	 V3yfWILdjiVOpRb8zoStX2GXVqwFF0bEqR3dAtQhHN4YneV/kSlPPZ/JYk6iIhI0ZZ
	 HcjV3hmbsuQ6GJr9GyNYbtK/vYBTIsFoa+dwnSi1o2PsIv9K8e8ASWaZmxhb0JASj0
	 w8c7Yo3BBw2VZETUlPwKVXaRkpmk5q+Eg8wsENOU4OOIxvQ5XposDg69Z1y03tyXL1
	 D33F0R4OGHKLw==
Date: Sat, 31 Aug 2024 08:38:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: robh@kernel.org, saravanak@google.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] of: property: Do some clean up with use of __free()
Message-ID: <ufiaojb6rwsudlscasofcdawywzs7ci6rov3x4gmes5amttfuu@nzbip5ain67r>
References: <20240830020626.115933-1-zhangzekun11@huawei.com>
 <20240830020626.115933-4-zhangzekun11@huawei.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240830020626.115933-4-zhangzekun11@huawei.com>

On Fri, Aug 30, 2024 at 10:06:26AM +0800, Zhang Zekun wrote:
> __free() provides a scoped of_node_put() functionality to put the
> device_node automatically, and we don't need to call of_node_put()
> directly. Let's simplify the code a bit with the use of __free().
> 
> Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
> ---
>  drivers/of/property.c | 28 ++++++++--------------------
>  1 file changed, 8 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 164d77cb9445..940324225c34 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -773,16 +773,11 @@ EXPORT_SYMBOL(of_graph_get_port_parent);
>  struct device_node *of_graph_get_remote_port_parent(
>  			       const struct device_node *node)
>  {
> -	struct device_node *np, *pp;
> -
>  	/* Get remote endpoint node. */
> -	np = of_graph_get_remote_endpoint(node);
> -
> -	pp = of_graph_get_port_parent(np);
> +	struct device_node *np __free(device_node) =
> +		of_graph_get_remote_endpoint(node);
>  
> -	of_node_put(np);
> -
> -	return pp;
> +	return of_graph_get_port_parent(np);

Original code was obvious and simple. This is not an improvement.

>  }
>  EXPORT_SYMBOL(of_graph_get_remote_port_parent);
>  
> @@ -1064,19 +1059,15 @@ static void of_link_to_phandle(struct device_node *con_np,
>  			      struct device_node *sup_np,
>  			      u8 flags)
>  {
> -	struct device_node *tmp_np = of_node_get(sup_np);
> +	struct device_node *tmp_np __free(device_node) = of_node_get(sup_np);
>  
>  	/* Check that sup_np and its ancestors are available. */
>  	while (tmp_np) {
> -		if (of_fwnode_handle(tmp_np)->dev) {
> -			of_node_put(tmp_np);
> +		if (of_fwnode_handle(tmp_np)->dev)
>  			break;
> -		}
>  
> -		if (!of_device_is_available(tmp_np)) {
> -			of_node_put(tmp_np);
> +		if (!of_device_is_available(tmp_np))
>  			return;
> -		}
>  
>  		tmp_np = of_get_next_parent(tmp_np);
>  	}
> @@ -1440,16 +1431,13 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
>  		}
>  
>  		while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> -			struct device_node *con_dev_np;
> +			struct device_node *con_dev_np __free(device_node) =
> +				s->get_con_dev ? s->get_con_dev(con_np) : of_node_get(con_np);
>  
> -			con_dev_np = s->get_con_dev
> -					? s->get_con_dev(con_np)
> -					: of_node_get(con_np);
>  			matched = true;
>  			i++;
>  			of_link_to_phandle(con_dev_np, phandle, s->fwlink_flags);
>  			of_node_put(phandle);
> -			of_node_put(con_dev_np);

Neither is this.

Best regards,
Krzysztof


