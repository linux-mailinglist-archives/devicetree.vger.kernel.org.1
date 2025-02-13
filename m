Return-Path: <devicetree+bounces-146123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA9BA33873
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 08:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D4A1188AD56
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 07:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0294F207DEB;
	Thu, 13 Feb 2025 07:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T2EmhXxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E8220764A
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 07:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739430328; cv=none; b=ZEXb7+Sqm6j4GQTYnGFQbTP4WJGD6jC67DcR/7d4HFjqRc18btLWprnXttGI9eOaCI28YiWUBWhRtAgsv6RjkyVqLkG5c8rPfv1tVr2XjDcUi9WyOXjI1mxnC+AHlt8yQdgq2uNLQj66AQBIYDY31x8UDXt464bN06z3XBPKhcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739430328; c=relaxed/simple;
	bh=QET72BwZuEgfgng3GFWuJsSpAa0rMxkNifDEi7QIWKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=fy3sm/bQuaGY/gowL7bXwsZHEnKzS/NZrwvZZgg7vigm3rmRc4vWH+c+x92nnGHal9Wvu/dCjyRRYMqNMTjT8PS1sJGQQYpR349J1H0U3Kl4uvq5lUmA7u3Z3Q9Txk8UlfKlYXVpE3ZdXH15nqPAAwTw3dzQFM5EOyEVt2PAOBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T2EmhXxp; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aaeec07b705so75936266b.2
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 23:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739430325; x=1740035125; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KXZVhKJ2K7k3WzqdZVJwEQ+tPoZ58G31W+/pRY1rx9E=;
        b=T2EmhXxpoAAKfj3W6Vn+l2Z2CbXmlA+e0sBJGxHkRa5iQxixCrlPLZuNitxmJOpvVp
         dAwvd7WCOZ60w3hRC1HdmD8ptUuBjkPTDkdSoLnltuxuqeMTSR+x4EFtEhfNCKsLxS1q
         R8mOSaFYui/ndm2cfELc6PJbZyqIwlv/1sJt7e5TZ36SFLjb1BlQnwe/NKY0hQW/X4OZ
         hxiqxHLINuMXX4Txc9da2IqCFNRW5fdRA3dq5S30bIMx6XgwIpgqWSc4dxq/z3Na121K
         ieJmrvWr1iWQaLc4jf70Fz2GJB+JSMOSQwmMkExjkyVk4pxGqTvExlZJEhfv+/fQ9q0r
         p/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739430325; x=1740035125;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KXZVhKJ2K7k3WzqdZVJwEQ+tPoZ58G31W+/pRY1rx9E=;
        b=grBlCScfaOXGSjPccbzBMlBJABn9J7laIs3V6QOTAoP8mCZBGe1G2e3GoOty5ZACJ1
         3uhHhYB6turqvdruL9ousENtJhAvYGvtGMLqcPnIczfea0d08OwWsCwwr8+ikQ1xFhns
         2L58eotIEkHM4C4OdZ8upbhMRRKrGI/4Kc9ddgGrv7WwB556xx+5DjthsfcFRlHfCchJ
         vYFzAUjhsRPs8PTi1YE35mjZMAcjkKYlWNJv42w7X/hgdYq3xp2r+rUj5RiG/h0Y4LOG
         EQmsXngMBqr4dAHktMHA8XazzGJu5VYN7IPbVdd+WKxDtLQmmJ+rc1RKL2jy9GG6nOkp
         Pxng==
X-Forwarded-Encrypted: i=1; AJvYcCWJt4JkyvpXVMWlkP5TvtJtB+b/7KbldOe9hmPFDil1GPFIl/PxvPfyls0t0WcOFvG9U35uO4oZORRF@vger.kernel.org
X-Gm-Message-State: AOJu0YwUDMjhTK3ApIiqzIM+KfwDiA8ADKPJ75q2lpatO/+tMdF8q15n
	DRnOs7/2qQMk3/SxiQNPTvYl8jhaLph8NM8keVGCIkAV5bSNOPLtPOqWm3eDYGU=
X-Gm-Gg: ASbGnctc5q8cPnJwJAjxQZ3LrX3EPqbB+nkV5jlEkD318a6J+sRHAKJZMc/WgR9NRdp
	1M7If9mnOdObie4AVDO6kS4CAb5deCg4lj6DEvzQzYPIgw5vJfC15Bhrqdwlw8KJscggUl7RgIM
	p63CnHiNi97WppRwntyZEiuBvH8V4Xy+9NyN1wXoUVpwi6RoyL74qWbqY6Gx9Hzs45NNVgANov+
	vPLTC3j1EwtSslzXL793BicBkLLkaqw9DHcxjEtccaxzqLyQaeWQ5XtcSEd+RpVGXwF8KSDNVCN
	CBq8i+p2r+mg7ScXfpzR19QH
X-Google-Smtp-Source: AGHT+IHMrmKjXCi72IpIaaGCXzDCq4ibYmkuB+z09aLzRAGtSKSlts+BhuC/X0899B2uE4MTHf5wAQ==
X-Received: by 2002:a17:907:1909:b0:ab3:84ac:4dbc with SMTP id a640c23a62f3a-ab7f31a3665mr647610966b.0.1739430325446;
        Wed, 12 Feb 2025 23:05:25 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba5339dcf3sm68465366b.156.2025.02.12.23.05.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 23:05:25 -0800 (PST)
Message-ID: <bad7b5b6-c61b-4e93-9415-6476976c8e81@linaro.org>
Date: Thu, 13 Feb 2025 07:05:22 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/2] spi: s3c64xx: add support for
 samsung,exynos990-spi
To: Denzeel Oliva <wachiturroxd150@gmail.com>, andi.shyti@kernel.org,
 broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alim.akhtar@samsung.com, peter.griffin@linaro.org,
 andre.draszik@linaro.org, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250212191241.280-1-wachiturroxd150@gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250212191241.280-1-wachiturroxd150@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi!

On 2/12/25 7:12 PM, Denzeel Oliva wrote:
> The Exynos990 SPI controller shares similarities with
> the GS101 (Google Tensor) SPI implementation,
> but introduces specific hardware requirements such as
> 32-bit register access and variable FIFO depths depending on

gs101 mandates 32-bit accesses too.

> the SPI node where it will have to be specified in DT (Device Tree).

gs101 has some USI nodes that can work only in uart mode and indeed the
fifosize there is 256. Does downstream define SPI nodes with 256 bytes
FIFOs? Can you please point me the the downstream code?

Cheers,
ta

> 
> Denzeel Oliva (2):
>   spi: dt-bindings: samsung: add samsung,exynos990-spi compatible
>   spi: s3c64xx: add support exynos990-spi to new port config data
> 
>  .../devicetree/bindings/spi/samsung,spi.yaml    |  1 +
>  drivers/spi/spi-s3c64xx.c                       | 17 +++++++++++++++++
>  2 files changed, 18 insertions(+)
> 


