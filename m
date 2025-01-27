Return-Path: <devicetree+bounces-141088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13360A1D5D5
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:11:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D8AA7A2615
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 12:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29D571FECC7;
	Mon, 27 Jan 2025 12:11:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBCB1FC107;
	Mon, 27 Jan 2025 12:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737979904; cv=none; b=tRgDDUPe++WM9UCElAA5+mAlKLZXvR3bYMN7vSKXTmbxu4HsJOCMHFTc1Qg5LA0l7qMRfFD3aUKCS2agp7iTZnfEykCY8WY4MqbEqvLkqD4SHZZk7enrGQ3STljouMH0VfBapmEkAgfr0IUIyG8pcJMzH309HE0cuKkvYkr7sgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737979904; c=relaxed/simple;
	bh=k9ZLEoH9HATkGyHWH0/l6mW3YDdG57zQKHP6gvOKtCo=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=klGSzK1/MmnhqQyaYLfkKSDzTs8Pl5YnrRDV0dbDWcpesHE4BJz5Rt80hGXrxCE8RjJkXPT/TR5GYDcfdTp659WCG2HLeOzbBZuHzi/MoaTey1Az8Xz6pKsTXyWROzX0B9f3wdw2tEN8NEP0zzOjWClgQ6g8MBtp/+fgOsX3YW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.231])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4YhS1m40Bbz6K9C8;
	Mon, 27 Jan 2025 20:11:08 +0800 (CST)
Received: from frapeml500008.china.huawei.com (unknown [7.182.85.71])
	by mail.maildlp.com (Postfix) with ESMTPS id B26401400C8;
	Mon, 27 Jan 2025 20:11:38 +0800 (CST)
Received: from localhost (10.203.177.66) by frapeml500008.china.huawei.com
 (7.182.85.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Mon, 27 Jan
 2025 13:11:38 +0100
Date: Mon, 27 Jan 2025 12:11:36 +0000
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Alireza Sanaee <alireza.sanaee@huawei.com>
CC: <robh@kernel.org>, <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH v1 1/1] base/of/cacheinfo: support l1 entry in dt
Message-ID: <20250127121136.00007f14@huawei.com>
In-Reply-To: <20250124152008.313-2-alireza.sanaee@huawei.com>
References: <20250124152008.313-1-alireza.sanaee@huawei.com>
	<20250124152008.313-2-alireza.sanaee@huawei.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: lhrpeml500009.china.huawei.com (7.191.174.84) To
 frapeml500008.china.huawei.com (7.182.85.71)

On Fri, 24 Jan 2025 15:20:08 +0000
Alireza Sanaee <alireza.sanaee@huawei.com> wrote:

> This commit simply assumes that CPU node entries may point to a cache
> node that basically act as a l1-cache and there are some CPU nodes
> without describing any caches but a next-level-cache property that
> points to l1-cache.
> 
> Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> ---
>  drivers/base/cacheinfo.c | 54 +++++++++++++++++++++++++++-------------
>  1 file changed, 37 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
> index cf0d455209d7..d119228fc392 100644
> --- a/drivers/base/cacheinfo.c
> +++ b/drivers/base/cacheinfo.c
> @@ -83,7 +83,31 @@ bool last_level_cache_is_shared(unsigned int cpu_x, unsigned int cpu_y)
>  
>  #ifdef CONFIG_OF
>  
> -static bool of_check_cache_nodes(struct device_node *np);
> +static bool of_check_cache_node(struct device_node *np) {
> +	if (of_property_present(np, "cache-size")   ||
> +	    of_property_present(np, "i-cache-size") ||
> +	    of_property_present(np, "d-cache-size") ||
> +	    of_property_present(np, "cache-unified"))
> +		return true;
> +	return false;
> +}
> +
> +static bool of_check_cache_nodes(struct device_node *np)
> +{
> +	if (of_property_present(np, "cache-size")   ||
> +	    of_property_present(np, "i-cache-size") ||
> +	    of_property_present(np, "d-cache-size") ||
> +	    of_property_present(np, "cache-unified"))
> +		return true;

	if (of_check_cache_node(np))
		return true;
> +
> +	struct device_node *next __free(device_node) = of_find_next_cache_node(np);
> +	if (next) {

Hmm. Was like this before, but general kernel style is no brackets for single statement
if block.

> +		return true;
> +	}
> +
> +	return false;
> +}
> +
>  
>  /* OF properties to query for a given cache type */
>  struct cache_type_info {
> @@ -218,11 +242,23 @@ static int cache_setup_of_node(unsigned int cpu)
>  	while (index < cache_leaves(cpu)) {
>  		this_leaf = per_cpu_cacheinfo_idx(cpu, index);
>  		if (this_leaf->level != 1) {
> +			/* Always go one level down for level > 1 */
>  			struct device_node *prev __free(device_node) = np;
>  			np = of_find_next_cache_node(np);
>  			if (!np)
>  				break;
> +		} else {
> +			/* For level 1, check compatibility */
> +			if (!of_device_is_compatible(np, "cache") &&
> +			    !of_check_cache_node(np)) {
> +				struct device_node *prev __free(device_node) = np;
> +				np = of_find_next_cache_node(np);
> +				if (!np)
> +					break;
> +				continue; /* Skip to next index without processing */
> +			}
>  		}
> +
>  		cache_of_set_props(this_leaf, np);
>  		this_leaf->fw_token = np;
>  		index++;
> @@ -234,22 +270,6 @@ static int cache_setup_of_node(unsigned int cpu)
>  	return 0;
>  }
>  
> -static bool of_check_cache_nodes(struct device_node *np)
> -{
> -	if (of_property_present(np, "cache-size")   ||
> -	    of_property_present(np, "i-cache-size") ||
> -	    of_property_present(np, "d-cache-size") ||
> -	    of_property_present(np, "cache-unified"))
> -		return true;
> -
> -	struct device_node *next __free(device_node) = of_find_next_cache_node(np);
> -	if (next) {
> -		return true;
> -	}
> -
> -	return false;
> -}
> -
>  static int of_count_cache_leaves(struct device_node *np)
>  {
>  	unsigned int leaves = 0;


