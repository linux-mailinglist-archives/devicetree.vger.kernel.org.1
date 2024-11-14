Return-Path: <devicetree+bounces-121976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EF89C9328
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 21:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9CCD01F22DEA
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 20:23:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAB01AAE39;
	Thu, 14 Nov 2024 20:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DoxpDapI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EE419D88B
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 20:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731615783; cv=none; b=aMn6g4Gr7sq4UiEoBC6fUuNkcqLIalWLmt7FYCF0ewV1Pj6Ap64I0kZmFFnPXtEbUe/G3cnPNgYxKEG4lC/owVaTyz4nAt5rk3I2ZB50+h27bpWKZArSRnxTT1l5kpq1DpbMltc/NPfIH/92ynDBWdZlBbbFvg44I0Y8sPmYAh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731615783; c=relaxed/simple;
	bh=KBsWFgY9fSpfMfPlCHiqICzY59uOl70IGpw/FtILLq4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V0lBiGgUPKj0KPGXgd9I8kC6CqMh662blq2u1/sDduYLR9iBX969b5hBpwzH0eBLkYhfmei7yf+WV7Z/+NnXocMtMovRLJgZPxBfD2zCjEJHbAAABgVstcIPVuSNSt4+QyM1y1s7SJq7ElPJpplXr8f9mqEEmw6BJcsQUWyzt7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DoxpDapI; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7ea8c4ce232so1028152a12.0
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 12:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731615781; x=1732220581; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3t3j3ES+KMYiY+uHRfv46SZpfLjb2BlkXR6mS0oLpes=;
        b=DoxpDapIR7bo8fFV7YQn4FKLv/cx+Ud2XWiM+OjHQwT/ucSxh5dLnwHMYc7A5RDwc+
         Eog05ZWrKxnhswDy7Xo3zqxng2YRtp5JJ9MbTqxSuM/4v2udla7ErmCLpv2WaAbxnpVb
         Ozgz4DA39BNY4WHGlvQoOxFp5JrLo/ELcm8ZWaeSv4rgF59LDP+YQJiQMu+zgC4HfGt3
         89Vn0kYWNAyn2gMw6yFye3yX8xxdBP0zykjkuONWKfLEEpfnvxwX+2Z4HFP6Jy+KMpzM
         vfuoCQ9AHhtbOxjq5/4H1DcW8ps1y/T6ZxI/ftZa8FjPpFq/cAQ+PXXBHHohDYX8FtZW
         3vJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731615781; x=1732220581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3t3j3ES+KMYiY+uHRfv46SZpfLjb2BlkXR6mS0oLpes=;
        b=wVyiHVFXyvl7EkqSp06MtNu1Hxgc5kZKUoJptVJv6akyD01Hl7TUoQlN3dIP+dE12T
         CJR0c1JT5rczYUYKkq1Q7N8EWKo+MSaq9E5EMyJ7GoHkkf39ktWtyHzMO1sOAB/6rS3z
         2SmMsj4wLdnbCgmSRMywN/4XJXZRaoWgvgoWIk9CEF050LfuUX2BXH/XVFhs9htKzL3X
         Pr4SavKjvqEKuivotPFcMx8njwDDT9AbIwg17maoJP5ccKJcT6Ux2XrBlgefq4bB2t0n
         B6Aem0NQqpT7jIOj25PmqjOBz3NLFfWx/T76nK0dLH+dB0RATrxeuprUK3r6HnXoUAUO
         K2rw==
X-Forwarded-Encrypted: i=1; AJvYcCVFDM+pYNqfDQaG2iDPhqMMTkS2gJL+TiAlcz2UmQyYSFBbhh4DnFRw7qSB9tffa3gUYVWXrtS3k5Ws@vger.kernel.org
X-Gm-Message-State: AOJu0Yw69pp/15oU3D86/5uiWhR0Du7Qm3I9xUNwKWDi5A5+3Bw2407A
	pJfoZA+BL1Nr1eMz+htNMt4CxH1B51j0Nd/7zO4tw7RA+omoYxhFPiYrO0mOL+I=
X-Google-Smtp-Source: AGHT+IEWrtvYg0ycOEPvYgPz1j1Z/Gs2uiPWVaIPMlwwfbfV9OSuuEkejTWFwmCY24eOW9B2M742Dg==
X-Received: by 2002:a05:6a20:7346:b0:1db:e9f6:8dd7 with SMTP id adf61e73a8af0-1dc90afcb5fmr65998637.1.1731615781071;
        Thu, 14 Nov 2024 12:23:01 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:d240:c440:31fa:1568])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72477120aa5sm39076b3a.79.2024.11.14.12.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 12:23:00 -0800 (PST)
Date: Thu, 14 Nov 2024 13:22:57 -0700
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
Subject: Re: [PATCH v13 4/7] remoteproc: Introduce release_fw optional
 operation
Message-ID: <ZzZcITZq/U9SOqnP@p14s>
References: <20241104133515.256497-1-arnaud.pouliquen@foss.st.com>
 <20241104133515.256497-5-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241104133515.256497-5-arnaud.pouliquen@foss.st.com>

On Mon, Nov 04, 2024 at 02:35:12PM +0100, Arnaud Pouliquen wrote:
> This patch updates the rproc_ops struct to include an optional
> release_fw function.
> 
> The release_fw ops is responsible for releasing the remote processor
> firmware image. The ops is called in the following cases:
> 
>  - An error occurs in rproc_start() between the loading of the segments and
>       the start of the remote processor.
>  - after stopping the remote processor.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
> Updates from version V11:
> - fix typo in @release_fw comment
> ---
>  drivers/remoteproc/remoteproc_core.c | 5 +++++
>  include/linux/remoteproc.h           | 3 +++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 7694817f25d4..46863e1ca307 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1258,6 +1258,9 @@ static int rproc_alloc_registered_carveouts(struct rproc *rproc)
>  
>  static void rproc_release_fw(struct rproc *rproc)
>  {
> +	if (rproc->ops->release_fw)
> +		rproc->ops->release_fw(rproc);
> +
>  	/* Free the copy of the resource table */
>  	kfree(rproc->cached_table);
>  	rproc->cached_table = NULL;
> @@ -1377,6 +1380,8 @@ static int rproc_start(struct rproc *rproc, const struct firmware *fw)
>  unprepare_subdevices:
>  	rproc_unprepare_subdevices(rproc);
>  reset_table_ptr:
> +	if (rproc->ops->release_fw)
> +		rproc->ops->release_fw(rproc);

I always thought that looked hackish and brittle.  I am trying to find a better
solution.

Mathieu

>  	rproc->table_ptr = rproc->cached_table;
>  
>  	return ret;
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 2e0ddcb2d792..08e0187a84d9 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -381,6 +381,8 @@ enum rsc_handling_status {
>   * @panic:	optional callback to react to system panic, core will delay
>   *		panic at least the returned number of milliseconds
>   * @coredump:	  collect firmware dump after the subsystem is shutdown
> + * @release_fw:	optional function to release the firmware image from ROM memories.
> + *		This function is called after stopping the remote processor or in case of an error
>   */
>  struct rproc_ops {
>  	int (*prepare)(struct rproc *rproc);
> @@ -403,6 +405,7 @@ struct rproc_ops {
>  	u64 (*get_boot_addr)(struct rproc *rproc, const struct firmware *fw);
>  	unsigned long (*panic)(struct rproc *rproc);
>  	void (*coredump)(struct rproc *rproc);
> +	void (*release_fw)(struct rproc *rproc);
>  };
>  
>  /**
> -- 
> 2.25.1
> 

