Return-Path: <devicetree+bounces-45795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D94E0866B72
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 08:55:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1B78DB2284A
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 07:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75BFE1BF3F;
	Mon, 26 Feb 2024 07:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HQhmawur"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965CA1C295
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 07:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708934126; cv=none; b=QLjLqGy6owlQDoXjoZQKHG+Nz5VK7joqjY7KwIB8NUD4vTrJhxipsb7ax+la9yn5FxNKeJmUNOD8Y1FQ+/2c41rui5sY+ykOi9ZIohNJ01JR/P9dFXPjroY8qfT2pUfO1zt2e8QOtNsk5lESp2mZUrTSFY9RowrgcF9P9cJOaFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708934126; c=relaxed/simple;
	bh=9So+VxECD4rt3y6z963Gp32BP+1mZN3qYtKUghVVUhc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gZ/x91Eo3D/9nMD6ieX4qrxWTBj4s3/KYPacjJirT/QoYbfCHBWv5NUX5RWC6WbpbfTjm6w0fN9wUdLxAzj2SDPaVePtGpiPwdZsNk/9KgD91eIcz0oq7ADkCfgwlTdbScUXaL7cB1ZJIVE6pV1RId9G/L/Xg2iRtJx5uIWan3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HQhmawur; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a3e7f7b3d95so304898366b.3
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 23:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708934123; x=1709538923; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tB4iSBwjI3DJDXgoB5MqoAJGUZkmgQ34RlUII3BCG74=;
        b=HQhmawur2XZaqaR1h+WIfA9bbo6MK6p6uI4sd6qJs1fDMwYUbvEiqz/33oOIyENi+Q
         OwUAYvXdsvzCG0uHPm4vne6V/a+RB62vx4a0Gsaqb2Ld0Bm6fXdsYdpuDvAzyM8n1Okp
         ZE4IILdo0mAUIGJtI6N31IVfOpAnGRbPpqLSLPOwxhZoH0Jv82BKIeL55T9S8kFooI3B
         GSvGU5z6J9TtE5wNsGJUkAUPH3C1KWu3CoVGjeWM3SF0tI52u0uwdvg6MZjH4rVO6PxR
         wDYCcQit5DOE7wN+WbtnqNcx3mDTtVQlVZa7+SzV4pj1XwxbaboxT++PA2QGR8rE87N5
         bkow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708934123; x=1709538923;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tB4iSBwjI3DJDXgoB5MqoAJGUZkmgQ34RlUII3BCG74=;
        b=gYfkBd+2ZvxeZxMhlFKmtjlFQcBE0W4Ru4WC19Wr8CxFKw2aDlP/3/XfqjzafEvPA4
         BTqgrC2/RSDUenL7fUVo3d0ri/xui23JndcRqLnyl/RaWj9mQQGc/IywEH+Xyeooe57W
         OkfbihkVl8yR2VjCuH4cR9u6bnlCQs/xoxJy2PtlCIkw8FLX//Lw4Nc2SBzXgIY1ViFQ
         9MwuvcYQTFCiHGast9sKrFpgkDUgnqgkwaz3O8fAp0GNsGxiLwyuiett9O1OvwD8scJu
         voIoxUZLiP7CMrnlHh2E/FjdqtWxs2oKJRb8zjvlDnTFnEbYqfUC0xgeoTaZnWQHkpF5
         veqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBI5+LxjpVauSKNOrw5jzwKgj5t2Xc63viEtS1fPv4R1VrM5jBC98YHQV8RsU+FDBujJ3W2qAncMJJt3KcsrUl3UIQrA9MqXYU7A==
X-Gm-Message-State: AOJu0YwryHVjxdBkbpgqPHNqNtoLA8z6nmqdKLUda4Rc1crePPdvkJ++
	D4v8N3Qusob5knlIHu53+HifjRu39KN6yxYIH2iLnNHK7oDOzOzzb6SaoJ4bP1U=
X-Google-Smtp-Source: AGHT+IGP7uBeiGfc1jN56DupDo3tdDNFA7M9vwD/sDNJHZPCAPHthCPHqwTkjDJ9u/2b/6N2ezxevA==
X-Received: by 2002:a17:906:af09:b0:a43:803d:b4ab with SMTP id lx9-20020a170906af0900b00a43803db4abmr124087ejb.31.1708934122585;
        Sun, 25 Feb 2024 23:55:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id vg9-20020a170907d30900b00a42ec389486sm2115596ejc.207.2024.02.25.23.55.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Feb 2024 23:55:22 -0800 (PST)
Message-ID: <ccdcdb1b-44a9-4233-994e-18d875a99c2f@linaro.org>
Date: Mon, 26 Feb 2024 08:55:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v4 6/6] net: hisi_femac: remove unused compatible
 strings
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
References: <20240222-net-v4-0-eea68f93f090@outlook.com>
 <20240222-net-v4-6-eea68f93f090@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240222-net-v4-6-eea68f93f090@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/02/2024 13:43, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> The only documented SoC Hi3516DV300 does not receive any updates from 8
> years ago. With the recent driver changes, it unlikely works for this
> SoC anymore. Remove the binding for this SoC.
> 
> Also it's hard to get the version number and it's unknown how the
> version can be used. Remove them until it's really needed.
> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  drivers/net/ethernet/hisilicon/hisi_femac.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/hisilicon/hisi_femac.c b/drivers/net/ethernet/hisilicon/hisi_femac.c
> index eab91e011d11..9466ca9da2bb 100644
> --- a/drivers/net/ethernet/hisilicon/hisi_femac.c
> +++ b/drivers/net/ethernet/hisilicon/hisi_femac.c
> @@ -990,9 +990,7 @@ static int hisi_femac_drv_resume(struct platform_device *pdev)
>  #endif
>  
>  static const struct of_device_id hisi_femac_match[] = {
> -	{.compatible = "hisilicon,hisi-femac-v1",},
> -	{.compatible = "hisilicon,hisi-femac-v2",},
> -	{.compatible = "hisilicon,hi3516cv300-femac",},
> +	{.compatible = "hisilicon,hisi-femac",},

What is happening here? Removal could be justified, but then order of
your patches is totally wrong. But that hisi-femac is a no-go or provide
proper rationale.

Best regards,
Krzysztof


