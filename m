Return-Path: <devicetree+bounces-113779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0FC9A6EDB
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 17:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83CED1C22B74
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:55:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D7571CB505;
	Mon, 21 Oct 2024 15:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tPSJQCKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E861CCB4A
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 15:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729526096; cv=none; b=SzxO5bm79GhxdgNI733PouXnbPQwcvbF3JrMaeuNXgAw6h/YpOAzz1TtrOsAjouk28L6BWKJfDVp2LU5Aflqe8uyZXb6BOqfbQtGZI0SC5/97aMg/v7ICpyQPf8I5jUKtTfcdvx8MOlbNbABjUJx+PJfVmi11/UuD9bcdea9faQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729526096; c=relaxed/simple;
	bh=4nxqVSA7RPobzfnZ2nnUbYiPXxxY+p6MXf6zMR+JMvI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VLsKgViN6aPhrhWeYffN4iWUXBQAZrD0v2Kj6aMJsxLq7ODvzer4jShrZ/p+vQpG/eaXGrSLFlhjHvkAESRqQtKu2rhtLF5D7k4jsEX2io7HDZDi57k7wczr8vxv9vJOfVvg+ZtQvZY+F7XnjY/Gq9TjK7iX7ciNQ6/Py9TO9lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tPSJQCKG; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7eab7622b61so3258092a12.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 08:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729526094; x=1730130894; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W2P/OAPuPPfGZgym/n673Rfg3DHU/GqTqUEFYAFx22E=;
        b=tPSJQCKGTfLByc3iumxMVXRcDaNXkkm8rPWBypjQ7KcU0xHbv5NUhp7x1IaxwHXl6i
         fspUcEEfQCEI8cj+gnqCT5eWXg2PLRjXuV5ZmZe1sHWFWXAXg1br5UqVWGhQ5L3HltEc
         yOZEwcek5mMBnfuvrm4YY+2LixDmwAYFshhkryEmuC91u5E9emo5gG4JkHiW/YjFxdTC
         bik1MIiKZIP6rOEnzhCjGKhu1hnONhUkCMKQej/gZmmoi8Qxlj5ISr8X4um4IPTU6Kpq
         9MRHiKt2pH0ClAqdaJr/F0nq7Nq8pYdz0j84CBe5QC6MUXBacBixrqY2Pj84YcwWNvNY
         z3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729526094; x=1730130894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W2P/OAPuPPfGZgym/n673Rfg3DHU/GqTqUEFYAFx22E=;
        b=DFWsqa7OgdTFe69G9agcbQ/chtTOSaMUoXrisEoU9SmYWprdDhZn7o7OPHI0FKiNQ3
         zoiE6gln907NXp+ZP1Iy+4VLs6j7EPd0wTjpLzuveOqDl91P2JePvkGIkyQRBsI4//QO
         plnn7AOWPv6twvaFfNpjbznn6qrKQPGA307deM/tGzA/s8AS7faGwfUxdQq/wiD7hPWX
         0cflBP68Ymk6P1p7Mmmat/ltDOLH5zLUA+FDiHAaLDXHAgedhWnGjmYexUuQ2/iCpK4H
         vPwt14YBq5JHU2U8dpT1yEoUw2BD3APVXSrKC2pwv+RmfewoxyGi3Qt7RtlTK+yb3Tdf
         rfew==
X-Forwarded-Encrypted: i=1; AJvYcCURpgRSeEpUNqoqmGdNQ+fbIEt5l2WPz7XRxr3j/7Uc1v+7RJRXAubbvbG/TRaf5TY8E/ZO+m+SQVpo@vger.kernel.org
X-Gm-Message-State: AOJu0YwngrxRdszsxCWlnQKL4V+vYBtnRZu28UtGhBLFg4Al3y8cb1N0
	J1Dh/XKbmAuCr4PWqtha13DKA3Z8+srQcgaEvccbLORq8D/pGZ13OYetPuC7tDk=
X-Google-Smtp-Source: AGHT+IHXumHx1fJK7C0JJjF2aFxoJi4eyEeDsc9H2M9LdVyaQELXWb/6QAXRzMTU/kCm/w8lInBwkg==
X-Received: by 2002:a05:6a21:70cb:b0:1cf:6ef0:c6b9 with SMTP id adf61e73a8af0-1d92c56b9bdmr15675587637.32.1729526093768;
        Mon, 21 Oct 2024 08:54:53 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:fb5e:248e:29ec:7946])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ec1356780sm3137641b3a.90.2024.10.21.08.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 08:54:53 -0700 (PDT)
Date: Mon, 21 Oct 2024 09:54:49 -0600
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
Subject: Re: [PATCH v11 4/7] remoteproc: Introduce release_fw optional
 operation
Message-ID: <ZxZ5SdGmcBlra4zi@p14s>
References: <20241009080108.4170320-1-arnaud.pouliquen@foss.st.com>
 <20241009080108.4170320-5-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241009080108.4170320-5-arnaud.pouliquen@foss.st.com>

On Wed, Oct 09, 2024 at 10:01:05AM +0200, Arnaud Pouliquen wrote:
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
> Update vs v9 revision:
> - New commit that preplace previous one to introduce ops->release_fw
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
>  	rproc->table_ptr = rproc->cached_table;
>  
>  	return ret;
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 73f640dd0fc0..bdf4d94a9e63 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -381,6 +381,8 @@ enum rsc_handling_status {
>   * @panic:	optional callback to react to system panic, core will delay
>   *		panic at least the returned number of milliseconds
>   * @coredump:	  collect firmware dump after the subsystem is shutdown
> + * @release_fw:	optional function to release the firmware image from ROM memories.
> + *              This function is called after stopping the process or in case of an error

... after stopping the process?

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

