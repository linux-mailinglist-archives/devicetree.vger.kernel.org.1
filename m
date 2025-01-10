Return-Path: <devicetree+bounces-137587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F54CA09C8E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 21:42:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E85E6188F6C2
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 20:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6152144A8;
	Fri, 10 Jan 2025 20:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs35YO54"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228EC2063FB;
	Fri, 10 Jan 2025 20:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736541716; cv=none; b=ZOYpEEUh2+bm+zhkIi+YH7j+ohXUWm554tJcsDb18q6T8FaU2hF3MxMCsA6GlwMGf2wsCW7ptwwkfORP5bjGndCOMZODAlVyVtTViW2znINwMSE3bRnQkx9mPW1H0b7ZbcwoQNKdizYBnLdiuxUS8fHjwSEsGIom95nM0aukAfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736541716; c=relaxed/simple;
	bh=nzZl5c6fAJAzlwFBJM7ce1/77e6Pm/BDUKNmShIiWwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ou26c+ZPxeukeBUcrTemlOWI/lCNwiwuvyD6Ua3QCX+CIoz/ffSvP1qb148A6IxMLNCkwJ8T3mbHDNZXNBRaoR7u8uNCma+dZ3pvwXpt6dPOZBXDONwcPwaHMMOeYGdTfG5oY0myy+cvABs5o96bGh6KCIiTIH+L9g6q0/L6u1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs35YO54; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 836C1C4CED6;
	Fri, 10 Jan 2025 20:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736541715;
	bh=nzZl5c6fAJAzlwFBJM7ce1/77e6Pm/BDUKNmShIiWwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fs35YO54a0q4c8dmkbI7eAv0vJr3mqPaZ2UitUSlSEnSE40SnPLplS4UiKIyt6Fup
	 3aY4fltd1W/Uz5DTj7DSdPeFN7BSdXiFSLw4PfgbOVQp5PtRPASB1uc+J6cJE92eKF
	 NQ9jUDVhytP5/oa0AegF6RCTnnmyGG45txYN4Qn3I8mCsLcQzbaZflwZNAx6WQ0ew3
	 tO6HzyrFBawLdQHW77RoPm64HL4lhegYdb5v2ZMoCgh7IrFjbYPndG4jTtUWybK1yK
	 pEtx5pOI/wjliwObPJOjHirYcE1bPG1/eQrYGmR6dRMgeKuy0mheXJBxj9c/r7pvKx
	 xTb4F7YfVgexA==
Date: Fri, 10 Jan 2025 14:41:54 -0600
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
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
Message-ID: <20250110204154.GA3529721-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>

On Thu, Jan 09, 2025 at 09:27:05PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> __of_add_property_sysfs() hard codes string "security-" length as 9, but
> that is not obvious for readers.
> 
> Improve its readability by using strlen().

Does the compiler optimize the strlen call away? Maybe, maybe not. If 
not, that's N calls to strlen() where N is the number of properties in 
your DT. That's in the 1000s easily.

Do you really want to go test enough compiler versions we support to 
feel confident this is optimized away. I don't.

Rob

> 
> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/kobj.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/kobj.c b/drivers/of/kobj.c
> index aa887166f0d21030d620d43c864ca76cde1c6d05..44bfe50c6ea6503e3940578de1dfc7fe0583dfb3 100644
> --- a/drivers/of/kobj.c
> +++ b/drivers/of/kobj.c
> @@ -62,10 +62,11 @@ static const char *safe_name(const struct kobject *kobj, const char *orig_name)
>  
>  int __of_add_property_sysfs(struct device_node *np, struct property *pp)
>  {
> +	const char *security_prefix = "security-";
>  	int rc;
>  
>  	/* Important: Don't leak passwords */
> -	bool secure = strncmp(pp->name, "security-", 9) == 0;
> +	bool secure = strncmp(pp->name, security_prefix, strlen(security_prefix)) == 0;
>  
>  	if (!IS_ENABLED(CONFIG_SYSFS))
>  		return 0;
> 
> -- 
> 2.34.1
> 

