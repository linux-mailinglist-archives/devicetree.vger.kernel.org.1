Return-Path: <devicetree+bounces-102090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 582499756D9
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 781681C25B35
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 15:20:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94FA41AC42A;
	Wed, 11 Sep 2024 15:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ToWkr1H1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054642C1A2
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 15:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726068031; cv=none; b=KDPP0lZSYA2kKfr/JVwOCY4uBpocPwtiJRw9ueYYzV4HOTppsd2GVSpBGZxqGZpll5SA/NnehQbtD4s1DA1xIVhT68JjMquvmycsGrVFprEsKE9TtIJR6uNbjcomI76dDyIM/LpW+6jtxjvvqP6VkGx6qJRHDJYJ/hwRll1Nx9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726068031; c=relaxed/simple;
	bh=h1IZOH7/jMEJ6Q+LRccc6HsCSL0I04Yr9fwpPaCiu0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nyze8/mP5Os3K+cD+6ZPs0Ftl1XuREgp6qd5cOHofNgZ4zLj7iiaZkBjQGrcwEju/+eU+Qy7AsRer9P1zdJaXnRirCZCPEwv1O2jYU60F7C8vJbCmwv+BbF7NRS6coEyslkZBxgO6BBzzmMwt94NNKSbwYz7Y33NhQDO5ZsYUFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ToWkr1H1; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7179069d029so4890949b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 08:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726068029; x=1726672829; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6QsnF80Nnvoo/JnHghxBCTtAMnmOaIQ36MmFNNxPphg=;
        b=ToWkr1H1K3GrmyZs65aLcdN0Z53cxRkPNTqRGeHi46bH2dPPvaGFjkhiKK4C2WgpXr
         BSm01UxUrPi5JlMPfYNhinWspvvAGtFe4EyknvPLArSQAUG32UcSG5r9TiW16DXoxMrG
         pCQLF2dZbx1YoGegnQLZkYZI/2bTQ5Y7PnzXOpGyhQBY/a/Dku+wIvXzXHYv+yBxAvLk
         pM+Ba2LPx+9He6aXde51hwpQn5yRO+KaufjZoBLtZULaHt+VJSITSYLZll46UgTBxRsd
         rnHojbHjkW7JVuhRcXtiwChhVq0WGl2Ck0FhJIZmB5U3JcyLuEXNDg3MycuOs7FMse4S
         kb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726068029; x=1726672829;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6QsnF80Nnvoo/JnHghxBCTtAMnmOaIQ36MmFNNxPphg=;
        b=MpJVLEgaAClEBrWCwstn9RsF72ingoWAmadpNiEswJ+ElEQKQ68EMqYiNhCJ7Yml6e
         CSY+51ibDVzTeFZiCVaHdINWhpxrc5vJfKI6ucB1mh0FnA/fJg7nPP2wpzcYPwtk5ANX
         89/xDGQYs2KgArYd+bWei5WsRDQStWvmlcJL/2utUB9up5EWdoPdjuH9Agy61HEIsPA+
         ocE/JIcfd0SLeBh3xmUnLtEEk++eo0asGpBZrDVJR9XpgFk2DEVtCUSw48VrUCiEJeMO
         mNIQeceKNGtXKQ3rfIZQWQnd+JkrKqFX5ui6k2nbm+DiyHKLQeGCjH8G3p/xI5OXXbaD
         5whg==
X-Forwarded-Encrypted: i=1; AJvYcCXnC8VnqscP8LafrZ0QEphC5zYE8g7BmI9SdV9JcfzLf+tq8f22dRg8nMCHjGmzJA6o3vkQj6kgyhQS@vger.kernel.org
X-Gm-Message-State: AOJu0YzKpW13YA/qkp3Dq6ofaEXN5ruwhqthz+AEcGS4Ua7e9Y7t/9q5
	4TwWWeKL/TYnB3FKZH0msy2kX3j4XcgNswwNZUNkBWKcwuNq03iKEtlJ1tn7pUQ=
X-Google-Smtp-Source: AGHT+IF62OJJay2y+CU+PR4n787g3j2oQeP+yBY3R968kbDmjxolxaxWKCPxr0TAOuJnc1ZT8F6S1Q==
X-Received: by 2002:a05:6a00:92a6:b0:706:b10c:548a with SMTP id d2e1a72fcca58-718d5f06a3emr22601898b3a.22.1726068029283;
        Wed, 11 Sep 2024 08:20:29 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:cc9a:9892:2799:3634])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-719090ada75sm3099467b3a.162.2024.09.11.08.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 08:20:28 -0700 (PDT)
Date: Wed, 11 Sep 2024 09:20:26 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Jens Wiklander <jens.wiklander@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
	op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v9 3/7] remoteproc: core: Refactor resource table cleanup
 into rproc_release_fw
Message-ID: <ZuG1OiYO7YA+c81G@p14s>
References: <20240830095147.3538047-1-arnaud.pouliquen@foss.st.com>
 <20240830095147.3538047-4-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240830095147.3538047-4-arnaud.pouliquen@foss.st.com>

On Fri, Aug 30, 2024 at 11:51:43AM +0200, Arnaud Pouliquen wrote:
> This patch centralizing the cleanup of the resource table into a new
> helper function rproc_release_fw().
> 

Sure, but you did not explain _why_ the change is needed.

> Suggested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
>  drivers/remoteproc/remoteproc_core.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index ace11ea17097..7694817f25d4 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1256,6 +1256,13 @@ static int rproc_alloc_registered_carveouts(struct rproc *rproc)
>  	return 0;
>  }
>  
> +static void rproc_release_fw(struct rproc *rproc)
> +{
> +	/* Free the copy of the resource table */
> +	kfree(rproc->cached_table);
> +	rproc->cached_table = NULL;
> +	rproc->table_ptr = NULL;
> +}
>  
>  /**
>   * rproc_resource_cleanup() - clean up and free all acquired resources
> @@ -1485,9 +1492,7 @@ static int rproc_fw_boot(struct rproc *rproc, const struct firmware *fw)
>  
>  clean_up_resources:
>  	rproc_resource_cleanup(rproc);
> -	kfree(rproc->cached_table);
> -	rproc->cached_table = NULL;
> -	rproc->table_ptr = NULL;
> +	rproc_release_fw(rproc);
>  unprepare_rproc:
>  	/* release HW resources if needed */
>  	rproc_unprepare_device(rproc);
> @@ -2067,10 +2072,7 @@ int rproc_shutdown(struct rproc *rproc)
>  
>  	rproc_disable_iommu(rproc);
>  
> -	/* Free the copy of the resource table */
> -	kfree(rproc->cached_table);
> -	rproc->cached_table = NULL;
> -	rproc->table_ptr = NULL;
> +	rproc_release_fw(rproc);
>  out:
>  	mutex_unlock(&rproc->lock);
>  	return ret;
> @@ -2133,10 +2135,7 @@ int rproc_detach(struct rproc *rproc)
>  
>  	rproc_disable_iommu(rproc);
>  
> -	/* Free the copy of the resource table */
> -	kfree(rproc->cached_table);
> -	rproc->cached_table = NULL;
> -	rproc->table_ptr = NULL;
> +	rproc_release_fw(rproc);
>  out:
>  	mutex_unlock(&rproc->lock);
>  	return ret;
> -- 
> 2.25.1
> 

