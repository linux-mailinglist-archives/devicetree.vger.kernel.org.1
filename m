Return-Path: <devicetree+bounces-141398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9532A209E6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A1B91885E2B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283111A0712;
	Tue, 28 Jan 2025 11:44:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A12319F111;
	Tue, 28 Jan 2025 11:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.176.79.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738064684; cv=none; b=di6fkEv7dH1XoT6421N4F1Uq6rVlyw6YptleGllaHhk67j6yxzs50whLsuffIJ9aHV1vSSqJufb83jBPO9ELKE1QnxeBL+3OIA9HaW5ftjeX6fEe5CZ/S18VXIPNY3CjucSL0ZPensZ1hwJRnmwG1uX174qIjBA3XUUIn8l6f3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738064684; c=relaxed/simple;
	bh=VO5XKJrLihIupHrkfI+ziQhUQJrbS4+2BFAOkV5IR9s=;
	h=Date:From:To:CC:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DGyEJyF9Nj/I8pEET5XsFsf0+z6Vbpq0RF78/+RcXPZkWTelzhzxAyYN/OB2UPXcwAijF4WxH7VK9d6YJe2pTZ/HCAKRprlB3I6uy5Ieyr3g+Te8eKMES/wPJ1XrNPIKH7XfVypFm7ffF+BxxrqDi4YRuYYOP4nWQgI8O/r30Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com; spf=pass smtp.mailfrom=huawei.com; arc=none smtp.client-ip=185.176.79.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=huawei.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huawei.com
Received: from mail.maildlp.com (unknown [172.18.186.31])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Yj3LB4q6qz6L4tC;
	Tue, 28 Jan 2025 19:42:26 +0800 (CST)
Received: from frapeml500003.china.huawei.com (unknown [7.182.85.28])
	by mail.maildlp.com (Postfix) with ESMTPS id 0982014051A;
	Tue, 28 Jan 2025 19:44:39 +0800 (CST)
Received: from localhost (10.48.150.41) by frapeml500003.china.huawei.com
 (7.182.85.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Tue, 28 Jan
 2025 12:44:38 +0100
Date: Tue, 28 Jan 2025 11:44:30 +0000
From: Alireza Sanaee <alireza.sanaee@huawei.com>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
CC: <robh@kernel.org>, <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<shameerali.kolothum.thodi@huawei.com>, <zhao1.liu@intel.com>,
	<yangyicong@hisilicon.com>, <rrendec@redhat.com>, <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH v1 1/1] base/of/cacheinfo: support l1 entry in dt
Message-ID: <20250128114430.00007ccc.alireza.sanaee@huawei.com>
In-Reply-To: <20250127121136.00007f14@huawei.com>
References: <20250124152008.313-1-alireza.sanaee@huawei.com>
	<20250124152008.313-2-alireza.sanaee@huawei.com>
	<20250127121136.00007f14@huawei.com>
Organization: Huawei
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: lhrpeml500006.china.huawei.com (7.191.161.198) To
 frapeml500003.china.huawei.com (7.182.85.28)

On Mon, 27 Jan 2025 12:11:36 +0000
Jonathan Cameron <Jonathan.Cameron@huawei.com> wrote:

> On Fri, 24 Jan 2025 15:20:08 +0000
> Alireza Sanaee <alireza.sanaee@huawei.com> wrote:
> 
> > This commit simply assumes that CPU node entries may point to a
> > cache node that basically act as a l1-cache and there are some CPU
> > nodes without describing any caches but a next-level-cache property
> > that points to l1-cache.
> > 
> > Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> > ---
> >  drivers/base/cacheinfo.c | 54
> > +++++++++++++++++++++++++++------------- 1 file changed, 37
> > insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
> > index cf0d455209d7..d119228fc392 100644
> > --- a/drivers/base/cacheinfo.c
> > +++ b/drivers/base/cacheinfo.c
> > @@ -83,7 +83,31 @@ bool last_level_cache_is_shared(unsigned int
> > cpu_x, unsigned int cpu_y) 
> >  #ifdef CONFIG_OF
> >  
> > -static bool of_check_cache_nodes(struct device_node *np);
> > +static bool of_check_cache_node(struct device_node *np) {
> > +	if (of_property_present(np, "cache-size")   ||
> > +	    of_property_present(np, "i-cache-size") ||
> > +	    of_property_present(np, "d-cache-size") ||
> > +	    of_property_present(np, "cache-unified"))
> > +		return true;
> > +	return false;
> > +}
> > +
> > +static bool of_check_cache_nodes(struct device_node *np)
> > +{
> > +	if (of_property_present(np, "cache-size")   ||
> > +	    of_property_present(np, "i-cache-size") ||
> > +	    of_property_present(np, "d-cache-size") ||
> > +	    of_property_present(np, "cache-unified"))
> > +		return true;  
> 
> 	if (of_check_cache_node(np))
> 		return true;
Hi Jonathan,

Thanks for the feedback, I'll replace this.
> > +
> > +	struct device_node *next __free(device_node) =
> > of_find_next_cache_node(np);
> > +	if (next) {  
> 
> Hmm. Was like this before, but general kernel style is no brackets
> for single statement if block.

Makes sense, will change this too on the next version.

Thanks,
Alireza
> 
> > +		return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >  
> >  /* OF properties to query for a given cache type */
> >  struct cache_type_info {
> > @@ -218,11 +242,23 @@ static int cache_setup_of_node(unsigned int
> > cpu) while (index < cache_leaves(cpu)) {
> >  		this_leaf = per_cpu_cacheinfo_idx(cpu, index);
> >  		if (this_leaf->level != 1) {
> > +			/* Always go one level down for level > 1
> > */ struct device_node *prev __free(device_node) = np;
> >  			np = of_find_next_cache_node(np);
> >  			if (!np)
> >  				break;
> > +		} else {
> > +			/* For level 1, check compatibility */
> > +			if (!of_device_is_compatible(np, "cache")
> > &&
> > +			    !of_check_cache_node(np)) {
> > +				struct device_node *prev
> > __free(device_node) = np;
> > +				np = of_find_next_cache_node(np);
> > +				if (!np)
> > +					break;
> > +				continue; /* Skip to next index
> > without processing */
> > +			}
> >  		}
> > +
> >  		cache_of_set_props(this_leaf, np);
> >  		this_leaf->fw_token = np;
> >  		index++;
> > @@ -234,22 +270,6 @@ static int cache_setup_of_node(unsigned int
> > cpu) return 0;
> >  }
> >  
> > -static bool of_check_cache_nodes(struct device_node *np)
> > -{
> > -	if (of_property_present(np, "cache-size")   ||
> > -	    of_property_present(np, "i-cache-size") ||
> > -	    of_property_present(np, "d-cache-size") ||
> > -	    of_property_present(np, "cache-unified"))
> > -		return true;
> > -
> > -	struct device_node *next __free(device_node) =
> > of_find_next_cache_node(np);
> > -	if (next) {
> > -		return true;
> > -	}
> > -
> > -	return false;
> > -}
> > -
> >  static int of_count_cache_leaves(struct device_node *np)
> >  {
> >  	unsigned int leaves = 0;  
> 


