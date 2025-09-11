Return-Path: <devicetree+bounces-216146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFA6B53C20
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:14:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE8255880F5
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 19:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADCE259C94;
	Thu, 11 Sep 2025 19:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jlMN9IQT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB148258EC9
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757618061; cv=none; b=JWQ5UdXH5f51tcHisYasgPmv2NN+nu2LHSSjDlME2l+Jr4v3KzgC6EStxQcK7ZQUghAj4FYKVCrhJrwdc1vIcoQ7p782+AGCpyyXvrBSyoJqBe9YDkGBoklD/kp1qFU9a82zafXyzT3r7WdjVbqzs6b1vi3yhNi1et/BKu1XKfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757618061; c=relaxed/simple;
	bh=+suFI+idrm8tbVBw6RQ+HBmKYx+LKei3w+o4S9QMfIc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=u1tjv5XuiVEVfdMCqs7eL/e+6sQU2Vh6HgOUZ+96ZpjspAoTlUj6WG62lKhNYXMQQws21ZS3W28usaqNKmZqFAeXkgi6+KX9aAqGEoO7X0tUhtqrGbtkb0aEm3aoC1SFsN2J8142HFN5HHQX8YEEHBexeHdjfquXgX9tqeBGFFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jlMN9IQT; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-745a415bf72so431721a34.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757618059; x=1758222859; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IbjYXNzG+8uMQPqbjs02jQdJu30kPDTAC+8ZcrYbPZM=;
        b=jlMN9IQTZ2TOry97ijK61bU06qsc2+axe+iUWSpqgwbcvVryX/DccD8veFdRnEV4ET
         XdkWhKUQzLuKE6e3582JwLTgs0hk4gjEZTOp9VigGTrGAN9/OlicMkSOMqOd2UYPhsIE
         EPI3fI2Izzpnqzsx93WVejg/JftWNdxC1oSEreBhRsndIpR7ijMkZ7YSGO5O74e90Qtp
         g4oY3xJHbA637iMSsVZntHnRVkYRQWUiA34nddX/cxhfDxuRriGhhinVt6QS24ntCJwY
         y0exkAlIxSrRiX10fuKNjqgUWaP95U+0+muI58EMGdc8+DlN3OyDN1/WS9FwwwwGszsV
         JaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757618059; x=1758222859;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IbjYXNzG+8uMQPqbjs02jQdJu30kPDTAC+8ZcrYbPZM=;
        b=lLkkD2t5/P/h/EFVPJdC3FA8L2e+lQbqdkmqMoj1yLVd2dwKwPtudiYCkzVAkIB50u
         lWO6k+74/J+D7XRDpW/wSFnbripkk3wzNW/i+QTzG6/hMjjkxZSEe1Uz4R83tYIgNVsq
         M8U1px5afSN+w9P+f0TpOIbh6FEJQQqsIg4pOxFwtYWYZ9z9R/yuf6dL3xOZdvOFz5oW
         E7fCjj5BxH47xlyomw9TqnHibKAsEIzBM+s9oUP8oGYl31REGJ/nwLBFOCCu0+JOcCjg
         p8JDADqtdD2RykRhfEXozbKNcvKoCGlEu8Y8btjaQb+WksLkWe26Eoten+MIT0s+L2JD
         sjXw==
X-Forwarded-Encrypted: i=1; AJvYcCXzXjIjY2oS/0Ck2ZJP1HUdrUbfsDdwhW95G9/7MXJ/QgE0OVo/IfZcxpJ/flEWWx1gH97z83y2/XX/@vger.kernel.org
X-Gm-Message-State: AOJu0YzZH0AkrfOeqAHN6Tzg/eHKojRAwU8eweuznSUKZMgl/CeLn4N+
	YaqYdazAXeIRUWxUb0Q8LfP86htNg2NJNpP+tJvez+nVCeMrO1TTzQY77rm5qgicqsE=
X-Gm-Gg: ASbGncvEC/9c7etb3qP7C46835907PfzWdDVAYDrmNq7ffNi+KLODPUZv42a/XWoxfg
	LyS6Yo8y+EX+HJ+GfZ4I2nZvQU0XvBjMY+7AddiDJX14Kkb8/R+wS0w0Kxs+yqySqG2mjOT4uk1
	juYF/WMShZMvpmTtAgWRR5BXrQEF8GfXgYlA8jTCjW7LZ7CTIhL/IVjtAgzpk7hfX+fZzcxsKlj
	4wDIJ+3WFgRdq1ERbhsqTKVAETwAEWDGZEyQgojHRe4bjUsG+iXHCb3Gqy/rBVt6r0I+y9ASQpg
	nl6AlHDEgHBSkTvtK1nquEjYElqMRbm7bYBHFJK10Xk/sBWcxTYYDEuhOnxrLySyy6X9tfSXCuV
	yh0c/vfKi81ndFrEqjhsEWrf6lf9kQ2gbv6mqmaKEasAhycQayl6ZCzFtpS+TEj/kx4VAjrR1AW
	E=
X-Google-Smtp-Source: AGHT+IHWRt3mNvpfuD9mvG71VJuG/JHH61334tAU2612NEkWoiUHxRSWsgSKkz5m9U8/2/mYJTwISw==
X-Received: by 2002:a05:6808:178f:b0:439:b82f:a8 with SMTP id 5614622812f47-43b8d8a09e4mr180795b6e.13.1757618058769;
        Thu, 11 Sep 2025 12:14:18 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d684:59db:8b2a:5451? ([2600:8803:e7e4:1d00:d684:59db:8b2a:5451])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82af6cf2sm386793b6e.29.2025.09.11.12.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 12:14:18 -0700 (PDT)
Message-ID: <f40f39a5-3115-4eef-a660-59dcd07c973f@baylibre.com>
Date: Thu, 11 Sep 2025 14:14:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/14] iio: accel: bma220: reset registers during init
 stage
To: Petre Rodan <petre.rodan@subdimension.ro>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250910-bma220_improvements-v2-0-e23f4f2b9745@subdimension.ro>
 <20250910-bma220_improvements-v2-7-e23f4f2b9745@subdimension.ro>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250910-bma220_improvements-v2-7-e23f4f2b9745@subdimension.ro>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/10/25 2:57 AM, Petre Rodan wrote:
> Bring all configuration registers to default values during device probe().
> 
> Signed-off-by: Petre Rodan <petre.rodan@subdimension.ro>
> ---

...

>  static int bma220_power(struct spi_device *spi, bool up)
> @@ -244,16 +244,43 @@ static int bma220_power(struct spi_device *spi, bool up)
>  		if (ret < 0)
>  			return ret;
>  
> -		if (up && ret == BMA220_SUSPEND_SLEEP)
> +		if (up && (ret == BMA220_SUSPEND_SLEEP))

Over 80% of existing kernel code doesn't have the unnecessary ()
on similar expressions so I think we should leave it that way.

(just seems like adding noise to me)

>  			return 0;
>  
> -		if (!up && ret == BMA220_SUSPEND_WAKE)
> +		if (!up && (ret == BMA220_SUSPEND_WAKE))
>  			return 0;
>  	}
>  
>  	return -EBUSY;
>  }
>  

