Return-Path: <devicetree+bounces-47085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 986F186C316
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 427192831B5
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18AAE47F63;
	Thu, 29 Feb 2024 08:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FjaZ+rre"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D43C481CE
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709194064; cv=none; b=F6pOt7sLwxZvo5YX5Jmk4xjGqI42uV6ZZXaC+Q5hfTG5+USr47KdiJE3wSsDMcb3SP/mNjDGD4j2KXs5UK7ErVCcnM8jiY4GRqY82NjOyosgneGYeEAQc0ME42UZbUYYm8rImOGr84NBGftJNTYI5TcvuNs1Wh/YK1WV9L8YsZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709194064; c=relaxed/simple;
	bh=jkwhLBlZK7iQc1kwp/SciO2/rAkv2rEeMTIM5LLyo4I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OItrmQlVUuyBI2T3YmxaAKY1EthtKtBCRXeZZSgPsuUomZ3JXZjDsub6qiT3J1R0uNZO5MBRkloC5SaMQ9foDdk3JpR7OsKTNRLfFkHTFlgssrmoqaM39Aq4KnGEpcG+8ML1nLGMYTRugX15Dvs7tZCVKPhL6uIs6VJ+ZAUoafQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FjaZ+rre; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-565a3910f86so909456a12.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 00:07:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709194061; x=1709798861; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z/j4QtGQU6ak3DD1WRBmdjYqdwtld8ALJDrH10KQ3x0=;
        b=FjaZ+rreN+gpGk3wSLEZzJZFVt1vVwYs4fKQ/sR+kBGHjIUd6vQ7erUQNlkMLaTPbE
         lbMkG3Ie+s5zHFH6D1HQDJYZLtW8x2/GUE4li2WFBTAUo8xomqnoDFNlo8YsALaPGCci
         /TZmCtX00msrDBOjwMkZR4/vvwIcrsN4zzF+XPkRyPhV+tx9Fk+mWyUW1EW/deJ/1smr
         GERqIFp9reCfvTs5rKuCtrmgn7dsBtt4hyXww+CJUwGau43s7T9Wd7LoFXhe7LnoaoMb
         WzI9SOBExeKnp5J5+0rhNQ7k3upnajiBaAFAT5ahWzwXekqyye5382g2B3OlcZd+Lrc3
         pNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709194061; x=1709798861;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z/j4QtGQU6ak3DD1WRBmdjYqdwtld8ALJDrH10KQ3x0=;
        b=dUDRYP34cttYY80JhTOr87xlpuLT+EiiWzMo7aqMY0ZWQ925HTHkDKrYguVVnpenu9
         +kKqsBW3w0i1eZJGNchx+aHpT2czb9R1gzjQUrPDG2uAG06zWA6SR+xfrDKXfnX6Yn37
         iEBw1A3o1ZhkYq5qX04D7jNEkVBTcArmZNs8XERPia5kGNggGL3HrSjzySQ7zCBiEQmJ
         BeKZ6HtEYXihCon4jlZpPJFeUe2Z5GSkNbKLBJ9iN7tFGHsKWJJ3msgWJm2Ezr7zr9TB
         2PWVYTmdRBnrQmB2pj30pXT3Umte7Gzft9FLDpG0yUkGi2vFvocxr2rqnyaZbeHYzL6a
         aCZw==
X-Forwarded-Encrypted: i=1; AJvYcCWwmDHJEzPDx+FHR0vHNuK+/LqroBgnmeAfAzXhrlcvuZJzTmcA0rJwl8oa95rSCVa4CqEBZ4eMEGPq2cVJ04tjjiPHd5g1k9Itnw==
X-Gm-Message-State: AOJu0YwF1dzzzWfGy44b2Qb3rsrJwv/aGGW6oa+qldVwFwcozJLF6xzP
	DScwbgoKlJ43c6kAF5FFYtjeUhrN1vjB1NBzs6slUdSJeXee2tsFFzKJvaBsQIM=
X-Google-Smtp-Source: AGHT+IEfqbnn0vNBpLTj2naxKMDTfLZBSwz57uktpCtc6vN6624bm3yVZVGteWdlkhykJU5Rcs+C0w==
X-Received: by 2002:a17:906:553:b0:a44:1103:8282 with SMTP id k19-20020a170906055300b00a4411038282mr832668eja.24.1709194060747;
        Thu, 29 Feb 2024 00:07:40 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id cu5-20020a170906ba8500b00a440ec600e3sm411228ejd.121.2024.02.29.00.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 00:07:39 -0800 (PST)
Message-ID: <11d0bf3a-3341-4c7f-9a1a-e7c7bc078725@linaro.org>
Date: Thu, 29 Feb 2024 09:07:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v6 10/11] net: hisi_femac: remove unused
 compatible strings
Content-Language: en-US
To: forbidden405@outlook.com, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240228-net-v6-0-6d78d3d598c1@outlook.com>
 <20240228-net-v6-10-6d78d3d598c1@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228-net-v6-10-6d78d3d598c1@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 10:02, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> It's hard to get the version number for each FEMAC core and it's unknown
> how the version can be used. Remove them until it's really needed.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  drivers/net/ethernet/hisilicon/hisi_femac.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/hisilicon/hisi_femac.c b/drivers/net/ethernet/hisilicon/hisi_femac.c
> index 2406263c9dd3..3c5c095dad05 100644
> --- a/drivers/net/ethernet/hisilicon/hisi_femac.c
> +++ b/drivers/net/ethernet/hisilicon/hisi_femac.c
> @@ -945,8 +945,7 @@ static int hisi_femac_drv_resume(struct platform_device *pdev)
>  #endif
>  
>  static const struct of_device_id hisi_femac_match[] = {
> -	{.compatible = "hisilicon,hisi-femac-v1",},
> -	{.compatible = "hisilicon,hisi-femac-v2",},
> +	{.compatible = "hisilicon,hisi-femac",},

Drop and just use SoC compatibles.

>  	{.compatible = "hisilicon,hi3516cv300-femac",},



Best regards,
Krzysztof


