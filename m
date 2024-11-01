Return-Path: <devicetree+bounces-118250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A76E9B9861
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 20:23:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E06C1C21BB4
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 19:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2461CF7CC;
	Fri,  1 Nov 2024 19:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HeKgzUQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5804C1CF7B0
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 19:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730488998; cv=none; b=sjUP3ZDQo2O8Vxvbt5PhAhKOSW6akbV/+1XUskpY19DjEXmdz+PCCVTVWhwpyEhJdVOazrTEYhGGCONClbq80C+otG+RZ21t9ouT/KTw7pr+ZOLx6Kcirsu2miXxkrVBsDn1SB09S7ISaRYjPrFLLJoFQOq3qiVSk8ZmSBIY+5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730488998; c=relaxed/simple;
	bh=9KuVJFCA9aMDAhgDX9+OqGh+ycx3xkmrl5eFmSHfnzg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=VOgq6KYJskPW25OhPkpto1e+zi7yUpcovRPvCkepbJtmfwwlusrqV1FDOzZGddNlg8jhxm/FIeAqVcawkSVjbhaZyb8tHoEZXwHh5wc2D+uwutiTJCHJf8gIryz6KNYtE9ZiLH7BQNcE5wdXWKRJm2GZY+cDbWor1YJp+pDwhLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HeKgzUQw; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3e60d3adecbso1208805b6e.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 12:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730488995; x=1731093795; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=o+y2/B/HXLKWRPWQFM6YRumN/nELJUpkOWTGMGzBZDA=;
        b=HeKgzUQwGs7OgtEtPaDo2NTCNdYxHCHpGxtdmhDrsvA8nD6krH6gGrz27kpSbvmyCr
         aSXPuguApzPo9RUeUdXrdBHXe0lblm0Oit8isiVtYlI/x1Cbf8sldHSq/LXSyBPZz2AK
         nEtsJQJc5N0nkYcdUzZsjBrgk7LsaLhw516stur+LGPBdUVYVtBVuboJGlv9DrOh8pZo
         3Mn1qkHvtkemq67US7cogP/5X2CJgiYXlAH34Ojj0I48BJm+TzmHG2oCoFUHW4jn/C5L
         IePpBFtOoqyVXfnGEIQ3oTHZKfZsi3pM/NGctfjyJY+qNiv+Xl347ZSKwYjhSAsRg44x
         SnTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730488995; x=1731093795;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o+y2/B/HXLKWRPWQFM6YRumN/nELJUpkOWTGMGzBZDA=;
        b=fxrcp54yCXEOqfeU0J1rIU7BeAoyf2Q1MDIv68RWiy14id8nj2KljTokz+atn+3faq
         RTOwQiLN28ZW4/cDZw7dvwX67LS09ixoxi7+gDTlZ+vpnjYVJ3RKbHtmm9FAliJCatUs
         Ab3O6KLhyLcJkm6R8y0nLibAGxedVet0jXnPt3yolriFuaTYZGgXmaZ/9S4n3jMmPPk8
         eV6JGScSLWWeep3IornY5esJ3nYcLoMZVbu6tfDAnBpKjcZkUM/klQpo2aCjfePdPYe6
         +OlClR9nTvm4xcI52gYw8edE0qv/1j3Hvn9PEtRLtVCYsmgGE1F72ZeqikAE0Vzc4DMw
         saPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAqpbnD0xd1S5OhyNDZbotLnS3lPMNCpqTDqBv/62xrIhNYd61hCfqtjBZY1RdG7ude7Yz/kYLKHaT@vger.kernel.org
X-Gm-Message-State: AOJu0YyXr6DvEtB3+vLv0BRi0Tc/Iaqmn6Sgm0UsqdbeO0dtMLGPPI7n
	pvPzajV1uQvHFPnXSOo3EtWgWCYbs+N/hdTIrNZE/c4XNy6OpEt6+jWYe5T9O64=
X-Google-Smtp-Source: AGHT+IEeVVtXDvJMfJuvJzYS8wUIRFLm6TtnkzpUAhstqEGm/jbZy5mY2m57zvkvBJnB4oV35t+i3g==
X-Received: by 2002:a05:6808:2108:b0:3e5:fbb9:7a81 with SMTP id 5614622812f47-3e758cb7cb6mr4363291b6e.45.1730488995400;
        Fri, 01 Nov 2024 12:23:15 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e66123f170sm931461b6e.39.2024.11.01.12.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2024 12:23:15 -0700 (PDT)
Message-ID: <2c831de5-3dc5-4a60-a92e-beef95b023e1@baylibre.com>
Date: Fri, 1 Nov 2024 14:23:13 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] iio: backend: add support for data size set
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241101112358.22996-1-antoniu.miclaus@analog.com>
 <20241101112358.22996-3-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241101112358.22996-3-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/1/24 6:23 AM, Antoniu Miclaus wrote:
> Add backend support for setting the data size used.
> This setting can be adjusted within the IP cores interfacing devices.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> no changes in v5.
>  drivers/iio/industrialio-backend.c | 21 +++++++++++++++++++++
>  include/linux/iio/backend.h        |  3 +++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
> index c792cd1e24e8..6f4e38417dfd 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -660,6 +660,27 @@ int iio_backend_interface_type_get(struct iio_backend *back,
>  }
>  EXPORT_SYMBOL_NS_GPL(iio_backend_interface_type_get, IIO_BACKEND);
>  
> +/**
> + * iio_backend_data_size_set - set the data width/size in the data bus.
> + * @back: Backend device
> + * @size: Size in bits
> + *
> + * Some frontend devices can dynamically control the word/data size on the
> + * interface/data bus. Hence, the backend device needs to be aware of it so
> + * data can be correctly transferred.
> + *
> + * Return:
> + * 0 on success, negative error number on failure.
> + */
> +size_t iio_backend_data_size_set(struct iio_backend *back, size_t size)

Should be returning int, not size_t.

Also, size_t for size parameter seems a bit much when this is taking bits.
I don't think anything is ever going to need 5 billion bits. :-p

> +{
> +	if (!size)
> +		return -EINVAL;
> +
> +	return iio_backend_op_call(back, data_size_set, size);
> +}
> +EXPORT_SYMBOL_NS_GPL(iio_backend_data_size_set, IIO_BACKEND);
> +
>  /**
>   * iio_backend_extend_chan_spec - Extend an IIO channel
>   * @back: Backend device
> diff --git a/include/linux/iio/backend.h b/include/linux/iio/backend.h
> index e5ea90f1c3e0..83ca4f0124db 100644
> --- a/include/linux/iio/backend.h
> +++ b/include/linux/iio/backend.h
> @@ -93,6 +93,7 @@ enum iio_backend_interface_type {
>   * @ext_info_set: Extended info setter.
>   * @ext_info_get: Extended info getter.
>   * @interface_type_get: Interface type.
> + * @data_size_set: Data size.
>   * @read_raw: Read a channel attribute from a backend device
>   * @debugfs_print_chan_status: Print channel status into a buffer.
>   * @debugfs_reg_access: Read or write register value of backend.
> @@ -130,6 +131,7 @@ struct iio_backend_ops {
>  			    const struct iio_chan_spec *chan, char *buf);
>  	int (*interface_type_get)(struct iio_backend *back,
>  				  enum iio_backend_interface_type *type);
> +	int (*data_size_set)(struct iio_backend *back, ssize_t size);
>  	int (*read_raw)(struct iio_backend *back,
>  			struct iio_chan_spec const *chan, int *val, int *val2,
>  			long mask);
> @@ -180,6 +182,7 @@ ssize_t iio_backend_ext_info_get(struct iio_dev *indio_dev, uintptr_t private,
>  				 const struct iio_chan_spec *chan, char *buf);
>  int iio_backend_interface_type_get(struct iio_backend *back,
>  				   enum iio_backend_interface_type *type);
> +size_t iio_backend_data_size_set(struct iio_backend *back, size_t size);

This will need to be changed as well.

>  int iio_backend_read_raw(struct iio_backend *back,
>  			 struct iio_chan_spec const *chan, int *val, int *val2,
>  			 long mask);


