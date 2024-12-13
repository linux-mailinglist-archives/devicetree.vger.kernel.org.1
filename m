Return-Path: <devicetree+bounces-130969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 419BE9F19B0
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F27E1888DFD
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A639E1AF0B8;
	Fri, 13 Dec 2024 23:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YVTlMtk8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47061B395E
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734131462; cv=none; b=OXhiVmgZt0EBC6+bc+6ecuq68JlWHg4wN1gKhP5IvnTO1sd7T2p/aBf5c0f9958e2wAylY4FBcXeXzx8mI6i2Rve2kuWyl7PCU1Inqs4DA0N6oWMnZShTW872WNWXRL/nDU9VGLYKAkJDObwCQH+jdUEAEPDsMo2tFj9ZA5B/ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734131462; c=relaxed/simple;
	bh=rmUX76AAhJtcbKbS/MKBhumEX3FZeF756LBDXcfM/+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=adt5BdCanSQjvNz9KvGE1LQt81XUVBQueQPQ+dXppK4gQJDqtS/IT9zK9qD4nkLFYpiUvHJI4Ud8sdbhfKvXUpHrkdS2GRdtqEWZC2cv7WjhP+/AzoRSU91uhW3sxtWhadZVE+Q4I1eGXlnoH9iTYNo01w+ZX0B7xVxkcoo7c9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YVTlMtk8; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3eb6210742aso1166729b6e.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734131460; x=1734736260; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6wCKCByuAlAaTXDYVy4N76cFvOrIazxQnE0CZ0HL/Is=;
        b=YVTlMtk8/qddeqAYeD/4WSY4D5wB8+Vtzhp87Pwg2DeyD87QvTWYwv1uTZxAT73p+S
         CZCXI+B9QI7p3BlrqnbjejS5APvutEbap1uB2Ql/KAmIGwCDQLAn0pBnUjXjPyl2JzOX
         xDr/a3HJCGMe2nXvdf7+0h/OsCmZDoaUTspY73fiSE1MFWPiGcD1EjxjQ6I22094tq/P
         fO023AOZO7JJfbe30SHUK72hNcakDBFmReObO7M2NFLMJ1/Diw/Jc3w7b47Qzu/rOghL
         FDXFQgvBFqUyX3BkOblgZDTHMftzS5fe48sdyoYXvUPUxKIgUVN2UAD9MimTDpKkCFvz
         pziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734131460; x=1734736260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6wCKCByuAlAaTXDYVy4N76cFvOrIazxQnE0CZ0HL/Is=;
        b=ZpE9TPReMCiyOniP8pjC6hvQqpXdJTBaUPHlnHpmscFn75CwXy7rYMLC3cgIKq0tPj
         Z+tla6HU1E1AZo0R5NhL0KwH3dgmClrH/sNbXpHxcE4t56bJQYS/fiZ+W3N+IekyMSmT
         lhAY8gtNXFsNFp9jXXeBF7HshCW0ckokSH4qR7ARJmgG6khyd4hSq2eCshZeyEVrxpH5
         8ZRr+NQDXsNt3NLGCPYD12LuGxnGfM+GM3vdmQm8flU1Rsb7bg0H9hm3XO2TgYwdeSH9
         AYz//uf4m/C4dr6ukeJ+XHhkG8dKJzU0p94HDWDp5PEL3QOF1iMUBJaw9yTBfDRC+pLf
         fHqw==
X-Forwarded-Encrypted: i=1; AJvYcCUs5SuwkWdchIOgJzoq/cx9cIU31NE8+phgNkzI90H0egSojY6rZNGuUJMpZ5naP8VD2LNAAAEgFOO+@vger.kernel.org
X-Gm-Message-State: AOJu0YyfPISMm/GSWMniCTw0B4VXjdGyU3a+I1jyPepbwsqtuREGFSIp
	dBNYPJ02MXm2FfOk9WOCS4pBgIL6SBhO+cd1VJzk0m9+6HteIpjl5Led3i8S/QY=
X-Gm-Gg: ASbGnctsNu6y5XPn25iuMPXGWieJ2k+lQw+iC6zrHBWFLEPT/ITABj7WM9Y1zWWHzBh
	1oIEgeuVhI9N8/A+5ECaqardD2TTatMGk0ZRX+Sb741gykGKel/B6amhUka9VUCRORSCMojTrZn
	bx+2liz4LuT1e4ecOp2i8OCt6Tk5PUrxTh0m7Ixwg8RHZoE+SzSCXg49KLzVxiwq8+afkm/m1kn
	DXZSKQiJCuvOpgyPrDYjQZPH+5JuMon/ty1FGLiCUPG2JIPvOJUML+BBEy/dL9o0PSxK0uWL8iO
	PW36fwNJFqPvE+HUFw==
X-Google-Smtp-Source: AGHT+IF/HrkFYofu0XYPQ8FOsQdBFSwRshag+zqD1aQtDkwS7D9uEJpxpNj5EPvXNNnZAMQKCg6HNQ==
X-Received: by 2002:a05:6808:190a:b0:3eb:3d21:9cf1 with SMTP id 5614622812f47-3eba6bc2f20mr1744768b6e.13.1734131460011;
        Fri, 13 Dec 2024 15:11:00 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ebb48ce912sm119808b6e.40.2024.12.13.15.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:10:58 -0800 (PST)
Message-ID: <ac529e7c-8655-4ef1-9bc8-9081d3c365c3@baylibre.com>
Date: Fri, 13 Dec 2024 17:10:58 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/8] iio: backend: add API for oversampling
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
References: <20241213164445.23195-1-antoniu.miclaus@analog.com>
 <20241213164445.23195-3-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241213164445.23195-3-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/13/24 10:44 AM, Antoniu Miclaus wrote:
> Add backend support for setting oversampling ratio.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v8:
>  - pass oversampling ratio
>  drivers/iio/industrialio-backend.c | 15 +++++++++++++++
>  include/linux/iio/backend.h        |  5 +++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/iio/industrialio-backend.c b/drivers/iio/industrialio-backend.c
> index ea184fc2c838..e56b1e96652d 100644
> --- a/drivers/iio/industrialio-backend.c
> +++ b/drivers/iio/industrialio-backend.c
> @@ -681,6 +681,21 @@ int iio_backend_data_size_set(struct iio_backend *back, unsigned int size)
>  }
>  EXPORT_SYMBOL_NS_GPL(iio_backend_data_size_set, IIO_BACKEND);
>  
> +/**
> + * iio_backend_oversampling_ratio_set - set the oversampling ratio
> + * @back: Backend device
> + * @ratio: The oversampling ratio
> + *
> + * Return:
> + * 0 on success, negative error number on failure.
> + */
> +int iio_backend_oversampling_ratio_set(struct iio_backend *back,
> +				       unsigned int ratio)
> +{
> +	return iio_backend_op_call(back, oversampling_ratio_set, ratio);
> +}
> +EXPORT_SYMBOL_NS_GPL(iio_backend_oversampling_ratio_set, IIO_BACKEND);
> +
Needs quotes on "IIO_BACKEND" here.

With that...

Reviewed-by: David Lechner <dlechner@baylibre.com>


