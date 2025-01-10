Return-Path: <devicetree+bounces-137586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9E1A09C79
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 21:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A619E3AB0BA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 20:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67DC7214220;
	Fri, 10 Jan 2025 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBk6yjDu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF1A1E1C01;
	Fri, 10 Jan 2025 20:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736541323; cv=none; b=P6s6WQK0AodHOX3tWAevx3ULJxB/g+x52LlfBC1O3cYRit/oCboaFuP3IiFeNU4eQmg3YMV8zcCO7BzyVD/whU3wWP3C7sK+p1Um99Cq+sEegT3/IjA3B4nQHVaYY7xaT1AxAFZyH+JhoE+eyelOqQscmQIXPklgviLj22sp9Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736541323; c=relaxed/simple;
	bh=KO4wiO89SpnPl+4nUCK6XE+ue+k2KNsO4Jv/W2upg9U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cZ9yLlD71m5rxuK5RXz8EwagsST7K70iRDOCNVkfzHl1bfBqsB5pwsydSK9MPVAqNUqwURUZewYa4ujtxIu9mXhMv9+bswdaMD9zdrFSCz01iAJ7ypGOYShc45YlqsEbpU2ktCIP5OgEFZH0X/DYK+Sz1cV+G2bYpLjXq3MH6o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBk6yjDu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93F2DC4CED6;
	Fri, 10 Jan 2025 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736541322;
	bh=KO4wiO89SpnPl+4nUCK6XE+ue+k2KNsO4Jv/W2upg9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UBk6yjDu5gWkKLJ9bm5X3SWVLwneHy74ZgUEJaAGISXWcNaPwbY1jhSb1S3Rs3ZtB
	 GKnQE57ejsWDIjC8j3la0Ubrsg8hA5vGYOfcCl3eR1OYnXctWDsf31kESzGDtWKMJo
	 CMU+9tPHEhixNR8VgkNPRYcV/dXapYwWEadggcEa/e35+3r6hg7dg8vAce+akux3Qc
	 o2tQkyb8s//0PXXTw4aJpBOkIffddbF2s1CLy1o2zfKavtuyN0oZAlcXWdPtVr8beX
	 ZEF1aNRddsPL/1cXFs9cq1Cmz0Bl8BqDMhhv/e+SPIah6kjY9VAyb7PWXYh4Y7bI/D
	 xF3ywX0C5dToA==
Date: Fri, 10 Jan 2025 14:35:21 -0600
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
Subject: Re: [PATCH v4 07/14] of: property: Fix potential fwnode reference's
 argument count got out of range
Message-ID: <20250110203521.GA3520266-robh@kernel.org>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-7-db8a72415b8c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250109-of_core_fix-v4-7-db8a72415b8c@quicinc.com>

On Thu, Jan 09, 2025 at 09:26:58PM +0800, Zijun Hu wrote:
> From: Zijun Hu <quic_zijuhu@quicinc.com>
> 
> Currently, the maximal fwnode reference argument count supported is
> 8, and the maximal OF node phandle argument count supported is 16, but
> of_fwnode_get_reference_args() directly assigns OF node phandle count
> @of_args.args_count to fwnode reference count @args->nargs, so may cause
> fwnode reference argument count got is out of range, namely, in [9, 16].
> 
> Fix by truncating @args->nargs got to 8 and warning if it > 8.
> 
> Fixes: b66548e2a9ba ("of: Increase MAX_PHANDLE_ARGS")

No, it would have been 3e3119d3088f ("device property: Introduce 
fwnode_property_get_reference_args").

Why don't we increase NR_FWNODE_REFERENCE_ARGS or rework things such 
that MAX_PHANDLE_ARGS and NR_FWNODE_REFERENCE_ARGS can't disagree?

> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> ---
>  drivers/of/property.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6..5ef9b2ced43ee7c4bfe88ea3cb11f3182da0dab9 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1072,6 +1072,11 @@ of_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
>  	}
>  
>  	args->nargs = of_args.args_count;
> +	if (args->nargs > NR_FWNODE_REFERENCE_ARGS) {
> +		pr_warn("%s: Truncate arg count %d for property '%s' phandle index %d\n",
> +			__func__, of_args.args_count, prop, index);
> +		args->nargs = NR_FWNODE_REFERENCE_ARGS;
> +	}
>  	args->fwnode = of_fwnode_handle(of_args.np);
>  
>  	for (i = 0; i < NR_FWNODE_REFERENCE_ARGS; i++)
> 
> -- 
> 2.34.1
> 

