Return-Path: <devicetree+bounces-102102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E16719757B7
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6FE141F26EA3
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 15:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59C01AC451;
	Wed, 11 Sep 2024 15:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eT5ICDWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBDC1AC435
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 15:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726070198; cv=none; b=dg5JKHTCJ6KpJhaBNLsNJnbLlg2KWZ0vd4rwS0Ml5Mxri7U9kxif5krYrdQdFpcCMNAeOHGDPSx3ipZxiUJvmFqEhoMweAkyjoFHFUh7GDEFAl/DS+a3rQBps+3nAt/q3aJ4hbxBGcxOXVkoQVHM3taiZLinoAFAF5iny2Tev6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726070198; c=relaxed/simple;
	bh=36KlrzfsV2g215KHFOOz45t4T5Bn2rd6NGxHlDdOsuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KzLLixy5HR4d5FGgjSejOCQdqop2pAHy5jP21W2vxUCF5GekUBh3NwnTHJbdF1GUhnnW5uzKjnTJzhe6wSx3JNJhG2EULrFEgh6jKBtzHHDGImXw9xaihDQn0hz1rnxzqRB/JXVr1u10Z3RYkYDPzs6xe8p+y7W9i0Dwc84zCQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eT5ICDWd; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20551eeba95so108885ad.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 08:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726070196; x=1726674996; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qyEYdmmCtjL2ZglMclaQOmpZZ8FR1iFPca3qPYCy9w4=;
        b=eT5ICDWdox3B3cWNDHzc0VhPMARpfWmOpUbkivGYSls4AJ2ep8Z8GAyFdRZVQRXua1
         PUQ1YQtEAQ1McvpSvRXcBC+qWkiysPnMZt5IVUTfdxpA5PMOD7pQQ2xymudjFk9gnqAz
         MVET/XUgZ/HDnawZXGFzwgkFw+MCdeYa9i9CvPk77tuZ9JYEAeRmcaesM4uJpacQk7fb
         wIIMC+h6RHO4nHTffgGR0mIF6PQj0HTDEM8eAMFHuiXyEMFKMVEbjVmgTKYliR7Ek8jh
         hakzrcAeF9HYQKF08+EqfKH2OCFvThhUDd8pCeESZH4Qbd0hOWrmw0tob+NruXOJJArv
         Z0Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726070196; x=1726674996;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qyEYdmmCtjL2ZglMclaQOmpZZ8FR1iFPca3qPYCy9w4=;
        b=Is2zojv+rMvLET1TnG2KmUIPRs0ZblODNbDad6kIFm2iyc6Y5KT8R8AnIm5zvoY3SW
         XqvHBH6YXO7KjiBhaRu1tqp8ZXX8CiM3tzLXbU05IhZNwRO+gLOmVvECsYtULXMBhsVf
         8kmMkTs4qtPUYM9AQyp+EANYMWBtdwa7bx288Yz+5LJ045c0z/8qPKZfaKtpzNp/s4FI
         bzSIIjzSomIV/h4CodZd40hi30BEx6Ob4ncqVVWF+l5kAyQVo/0uQ1OfLE/pyM9ewoP+
         le3qfbAfOgi3Ao6Aw5iwg/L2B8MWtQ6pbaj9YO2YaqvWQwPO12AKNd0foKL0hnAa4ZQp
         +y9w==
X-Forwarded-Encrypted: i=1; AJvYcCUqu8cnjJfjhQeUZj3ip4OMMSF9Syqw/ctKb3s3WX7ItGXr9bLhBoftU8rAR3CatSiPWLG9GK8xS7vW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjj+KEFyDUKVBnhLu1YT0gF6EQbRG08ELPp9EtKkylgHta31hG
	NDU4LVAZUPsxJMRrMqVy1FHvUX2J41vxz48fWHAOPrl/WSFq+sh9rCVYkbFQAQs=
X-Google-Smtp-Source: AGHT+IGa4wRKlJxrETW0qCu5ZTTQ3xb8Do/wPK2e8jasfbzAeq1gxfAE2Mk/Fx9F2dJ/V92m0elHfA==
X-Received: by 2002:a17:902:d4cc:b0:207:3a46:345 with SMTP id d9443c01a7336-2074c761a4dmr58970435ad.51.1726070196194;
        Wed, 11 Sep 2024 08:56:36 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:cc9a:9892:2799:3634])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe9cb9sm1159555ad.193.2024.09.11.08.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 08:56:35 -0700 (PDT)
Date: Wed, 11 Sep 2024 09:56:32 -0600
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
Subject: Re: [PATCH v9 4/7] remoteproc: core: Add TEE interface support for
 firmware release
Message-ID: <ZuG9sOI+xX93NCQc@p14s>
References: <20240830095147.3538047-1-arnaud.pouliquen@foss.st.com>
 <20240830095147.3538047-5-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240830095147.3538047-5-arnaud.pouliquen@foss.st.com>

On Fri, Aug 30, 2024 at 11:51:44AM +0200, Arnaud Pouliquen wrote:
> Add support for releasing remote processor firmware through
> the Trusted Execution Environment (TEE) interface.
> 
> The tee_rproc_release_fw() function is called in the following cases:
> 
> - An error occurs in rproc_start() between the loading of the segments and
>   the start of the remote processor.
> - When rproc_release_fw is called on error or after stopping the remote
>   processor.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
>  drivers/remoteproc/remoteproc_core.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 7694817f25d4..32052dedc149 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -29,6 +29,7 @@
>  #include <linux/debugfs.h>
>  #include <linux/rculist.h>
>  #include <linux/remoteproc.h>
> +#include <linux/remoteproc_tee.h>
>  #include <linux/iommu.h>
>  #include <linux/idr.h>
>  #include <linux/elf.h>
> @@ -1258,6 +1259,9 @@ static int rproc_alloc_registered_carveouts(struct rproc *rproc)
>  
>  static void rproc_release_fw(struct rproc *rproc)
>  {
> +	if (rproc->state == RPROC_OFFLINE && rproc->tee_interface)
> +		tee_rproc_release_fw(rproc);
> +

If I understand correctly, the first condition is there because the
attach/detach scenario does not yet support management by the TEE.  I would
simply move the check to tee_rproc_release_fw() with a comment to that effect.

>  	/* Free the copy of the resource table */
>  	kfree(rproc->cached_table);
>  	rproc->cached_table = NULL;
> @@ -1348,7 +1352,7 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
>  	if (ret) {
>  		dev_err(dev, "failed to prepare subdevices for %s: %d\n",
>  			rproc->name, ret);
> -		goto reset_table_ptr;
> +		goto release_fw;
>  	}
>  
>  	/* power up the remote processor */
> @@ -1376,7 +1380,9 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
>  	rproc->ops->stop(rproc);
>  unprepare_subdevices:
>  	rproc_unprepare_subdevices(rproc);
> -reset_table_ptr:
> +release_fw:

I would have kept the old label.

> +	if (rproc->tee_interface)
> +		tee_rproc_release_fw(rproc);
>  	rproc->table_ptr = rproc->cached_table;
>  
>  	return ret;
> -- 
> 2.25.1
> 

