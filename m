Return-Path: <devicetree+bounces-175184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3D4AB0096
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 18:42:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD15B17A253
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 16:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E96528315F;
	Thu,  8 May 2025 16:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iKQlWLZR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC454B1E7F
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 16:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746722516; cv=none; b=COqRNYa7Z7XDTPiMI+JiVdWRLHJg5NjuJ714+cO6zRaizgh3Z7lyH+aLkvGFQL+BInseqaFlRmuc2e31+EvW9ZIICCZ8cG8AFawbKiWyID3rccz1E+kZa5LIVDzWe3JROu8yRs3VEsxOUxS+O1zWDG6M3W+8pGVPqBb/rhweUbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746722516; c=relaxed/simple;
	bh=lQO1jHxaiYx52ybVdJLV2CjY0oqw5bUftoInQJ2KDP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QTIZtzjOkQYA+FKdASQG1GVviDK1GKtYY2bvSd3dupjOU8aJmAKJCGsM9CV4lqREYER1bRnKz7kC99GjE8LpCZMwDKq0c/zj89FhzveYVUkp5HLBDte0YhWcJEt2Ou7OEGE4eqZij8G7d2SobbQ45I92D6DQINOJNZR+kl6KItU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iKQlWLZR; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72ecb4d9a10so992050a34.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 09:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746722513; x=1747327313; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SNOV3q6ACWoDC2oi9ipTkEmiaERn4Lb/0vudYXDkojM=;
        b=iKQlWLZRmIgcFpoKq1X8P17IrPm0e0oIhqpT24TAjeaEEhz8DHgWQd1sHUXo+9yFDT
         pm+Pu1aNRPS0lAMd07EEt35SOk6Owzh6/iQ4oDaPMDVgXaC52rK0RhYJo1zOte9QfjPk
         WAm6ajepUQrmLPgu5cp7jJpsXRGE7hPI+16iveAOuWx+faPypBE2gPHOIN88u6Xkm7Vd
         b2gtS+/11NfBJWlINQXXy4UpKkeaNnhGlXBHLM/6aHsIYN+wekjJmJJdCiA93YxOA2HQ
         jNG1UlC8L8ieHX/hJwn4oK3NblRHt0VRW+bbAZM9ECTrwpsDDPXcFSrhKuelLsdZ0VJg
         GAiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746722513; x=1747327313;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SNOV3q6ACWoDC2oi9ipTkEmiaERn4Lb/0vudYXDkojM=;
        b=Zz5cwA2WQVtcsSA3FVA4jAuvUeJTJ9tm7JVWgC2aZpQUQwuBBEM+t1Y1jC6/JESl7z
         JBy7mhbyAWIkscrq6rffwx6Yl24XLHfahQlJk24WldQDsjuStWEaMWL3LO5Lb4v1ClCO
         9Gpbox7kEkvACVRC1gGxNgu5nMXQn/P2kzDmtzNtglBnIPRG6jsgh7j+EFb0GG/vH8zk
         ElBVah0MpEs9jmukGMXPkGC26tDL4HstBNfE8vhN04GDn/rXA0+YBQ42CPTDRZvo/Xpa
         sCEPdztXcEodjSGbtP6v72qDdz2lH43nP3ovTKz8TsZ8Q6HES5InsDVtlgYDcvscUTcN
         uAMQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlAxqDissn4lsdWUS2IxTzYhyfgT2iSII4JPQz3s2loa/1YHOfvaP54ySkVezjTLukStmulTctVaeL@vger.kernel.org
X-Gm-Message-State: AOJu0YwD1X2CS+KxZU87K5DbItytwkUwQfEb01fG2Nv/NlzRYBgKR+lH
	Bl8sAxJzEwEphJ2NLMVJ4wDn6gqFronjSN98y1XwGZD1bvzhsx6kap1JSfj/3avrN7I6mlpw8fU
	p
X-Gm-Gg: ASbGnctc7kfpB2fQPyxT/hbVYCEZPbG9JS5hqy+RPs7lB7nGMLSQZpSFjSOD0hPoKQX
	vPqPyZ8LrQlhQZDZNwZkd5wSIBz0N9VCRPHrYzxLVChr84KptaA4p16bUlB/U68Wr5wzBKn4GBV
	ZJB9NGBvxael16BAkdesa5keKF93LXX5ntPw/Sh9AxRHhqN0ADWqv5zQl89gEKYPy8iaW4LRZDY
	dYNiy27tanZpi8GWUvag2X8JJVBoDTD0prPLVN/lpdOtkYgO4Ezz3X69G3DsGxf7ohRO0jRqZOz
	tbT2I9ScnaJ3dkHE7mMfY09+HX1puAJRfxO3wZuEiqnDOWYqfMGQcU5ZvPpT4qqkBg8zxl0hgNB
	5ctAnYits+mWSwIHvlg==
X-Google-Smtp-Source: AGHT+IGNhnI7HfO8AULxSLmDUzdqJUBnRfjFQE3CN52ECHOPdXWRZ2JFQRrWSXPaydXFEJiS+fRYog==
X-Received: by 2002:a05:6871:80d:b0:2d5:b7b7:2d6e with SMTP id 586e51a60fabf-2dba45e8ce5mr83184fac.38.1746722513514;
        Thu, 08 May 2025 09:41:53 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e? ([2600:8803:e7e4:1d00:1120:d1cf:c64a:ac7e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2dba0b7ebfesm127024fac.46.2025.05.08.09.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 09:41:52 -0700 (PDT)
Message-ID: <20c76ae9-02dd-4f77-8676-523892a33c1d@baylibre.com>
Date: Thu, 8 May 2025 11:41:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] iio: backend: update
 iio_backend_oversampling_ratio_set
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250508123107.3797042-1-pop.ioan-daniel@analog.com>
 <20250508123107.3797042-2-pop.ioan-daniel@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250508123107.3797042-2-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/8/25 7:30 AM, Pop Ioan Daniel wrote:
> In the function iio_backend_oversampling_ratio_set the chan parameter
> was added. The function can be used in contexts where the channel
> must be specified. All affected files have been modified.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
> changes in v2:
>  - remove iio_backend_set_dec_rate function and use 
>    iio_backend_oversampling_ratio_set function
>  drivers/iio/adc/ad4851.c           | 2 +-
>  drivers/iio/adc/adi-axi-adc.c      | 3 ++-
>  drivers/iio/industrialio-backend.c | 3 ++-
>  include/linux/iio/backend.h        | 3 ++-
>  4 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad4851.c b/drivers/iio/adc/ad4851.c
> index 98ebc853db79..a943d5aac9e5 100644
> --- a/drivers/iio/adc/ad4851.c
> +++ b/drivers/iio/adc/ad4851.c
> @@ -321,7 +321,7 @@ static int ad4851_set_oversampling_ratio(struct iio_dev *indio_dev,
>  			return ret;
>  	}
>  
> -	ret = iio_backend_oversampling_ratio_set(st->back, osr);
> +	ret = iio_backend_oversampling_ratio_set(st->back, chan, osr);

Isn't this a compile error? chan here is const struct iio_chan_spec *, not
unsigned int.

>  	if (ret)
>  		return ret;
>  

