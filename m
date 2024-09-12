Return-Path: <devicetree+bounces-102387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 479B4976DB6
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 17:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B14028C1DE
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 15:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 113371BA89E;
	Thu, 12 Sep 2024 15:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2JPV9lE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8864B1B985F
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 15:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726154777; cv=none; b=SJRfxD8W8M4h8TNM0Aa1zMO1QLRa8UdO6tx6ELuusuWFPqGinHppP1QlmML4NRMlVHg6e9CEdYWYdRw6SOJEq2skNlk8guW1SltfGOmZGI2MivnnjfbHCXdSzvkx4A0qWsdC492p14F/xQM7e5VAi5+6lIg3r4Gn/CtUlxJFJlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726154777; c=relaxed/simple;
	bh=v52nmnOZNec06vdDlmZPhbWPQ5IkWzhXc7hhshl0NiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h53DNop5uSS4NISYxdKGs22yaB1auNSGJUkAv5yR+1hsM67vwd7XxY5HWIPvts2kZHzZYWlCnzKn+wXsdyJMFyFub+m5wC0PvDJA8J1yAFU1DI1LdOauowOTJGuFqylhNDrGZxNeAtoK8uEVm3UkjH2cgYpbi1CONpTkJQP7EZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b2JPV9lE; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7c6b4222fe3so742126a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 08:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726154775; x=1726759575; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AW/y1gSAhKENjHL3lW9TJj79JKhDjrYNIUo6Ww7RCUs=;
        b=b2JPV9lEr5OC7Da3FPQQqMQVWp0mk0SCIZ5AUnVaCmPxxBtc+A6UpNqWVl6iJ0TVWs
         Ft2cY967DIXgGVaIlDKBgFJBYtt9O+9wpLIGCxm3UfGjxj3YMvysJlcpwdpHhMaWVcFC
         1yLWVY/h0nPPPm1t8Jm4uT2NQRxo68WmfWGcPIiVcz3IQwPE7UykA7bkzuQuKAutyKao
         4Rh3+XVjD3T3L6yhXG4fBg/OaVfDTd2ZlzWFQfx1+lIO31wQ7caH4c6muOf9p3L5b4eJ
         XgOP1ZZZC29kAl+XtSsolEsRgfmlDg7Gs+6dpqz8DDFXkq7eIIEDo5NUE78IRvPWnOeL
         7q4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726154775; x=1726759575;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AW/y1gSAhKENjHL3lW9TJj79JKhDjrYNIUo6Ww7RCUs=;
        b=ZYh9QJHMETTx6tELTTXZcUFM8XPoGHAnfomlWwbOYYmRiS7GCMZ9RvlZwB2LI/3FAs
         NUpmajM0yYuOwppao5RUyz7e6XwZEKtlF3z61U2CQdLJ6rlmwV6k11awQHUTwcmJ99zC
         A/wmEOsHtIh380hu3Ovdh96Q/p2+yexFIlW/kueLJuxFxjy9pgIwXz+CYW+Wh/fMp/rU
         Rpdn2ygfKJdMsnkKPSJ+UV2iALkI6TJo7tJeDQcnRlyLAKUF8R3ihUmCH+lMbae7XhSf
         ycEDaPKZ8XJ+Pt6jWqcJ8oBRViclRLtYCmT6Mfq0DTwreiBKSbNJLqX15QYUFwPQGNQ6
         alnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWNDZOkbu08+PmafoWAkyyEIGt0q887ZpWd9uRvFdONi/0xZukRNNuXzVtacAC++VDFuIxFP/pro2GK@vger.kernel.org
X-Gm-Message-State: AOJu0YwSRuuUwM00rvGSR3HWwcWNG+SOqS24POwCv3dCKJSCGYbJvcX0
	vIxe+WjMdNpuXtqGxk6NSzVGudUDBXgmPuJuVGdXt6GqO1HpSIWgNh80wZJQmzE=
X-Google-Smtp-Source: AGHT+IEnUV2gdc2JrTZ0PDN+tPvw1sNecok9fGkCMZLj9cBqFlHeQWX0ELyRbR9mPIeM7B+XWHHF5Q==
X-Received: by 2002:a17:90a:f00b:b0:2d8:7a3b:730d with SMTP id 98e67ed59e1d1-2db9ffee5e9mr3070246a91.21.1726154774608;
        Thu, 12 Sep 2024 08:26:14 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:a82e:e104:d822:3d3c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadc03d0ecsm12710893a91.23.2024.09.12.08.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 08:26:13 -0700 (PDT)
Date: Thu, 12 Sep 2024 09:26:10 -0600
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
Message-ID: <ZuMIEp4cVrp1hWa7@p14s>
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

Function tee_rproc_release_fw() returns a value that is ignored.  I don't know
how it passes the Sparse checker but I already see patches coming in my Inbox to
deal with that.  In this case there is nothing else to do if there is an error
releasing the firware.  As such I would put a (void) in front and add a comment
about the return value being ignore on purpose.

> +
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
> +	if (rproc->tee_interface)
> +		tee_rproc_release_fw(rproc);

Same here.

>  	rproc->table_ptr = rproc->cached_table;
>  
>  	return ret;
> -- 
> 2.25.1
> 

