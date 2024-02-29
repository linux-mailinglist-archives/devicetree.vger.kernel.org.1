Return-Path: <devicetree+bounces-47083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645886C30C
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B2C41F21EBF
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 08:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B76E4D9E3;
	Thu, 29 Feb 2024 08:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JJcyCqy8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45C647F63
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 08:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709193940; cv=none; b=LrglN0SalpmXw6SzEvk2O8qCsuwtDNkIcUlXo8JXcJjLpsMYjl9LGGbLCvh3xb5AQLbK8Blg941LImvF+lx/MXD7Gr4uUb3/oWXx0DCrAS2lE2eCRm0EjgEgj59XbLBvYeCYg5NjbVSVQ8IeMJ+5c5ab7V5UdeMnBqkV0K0pmpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709193940; c=relaxed/simple;
	bh=YGBjBkU++BLi61ypdpIsyTQA1kq7ZmRX3WKk+zJ4CNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sPlM2EuZNnbziupCKLg7tuFpTRugGxanNGZFBEzMnGHW5YmLsltzKBNuLRJ60g9rA4K+4WSZyk9aG7ZTsKYjfk9FW+AgJl/raO6SQWSjkWnY7K5mZ5LuzuwMCM935Ch6c+Zg/GSR2pbp9d7QTCCAuiEkro2RP1BBnxKqqXIF1Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JJcyCqy8; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-56694fdec74so638348a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 00:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709193936; x=1709798736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rN/E8RpF83uPbogI40q5YZ50rCteBPnh7UB/0xjqm+I=;
        b=JJcyCqy8wK6mRHqib512hl5woaLKl0B2Fn65fc4fa+VgLkJlxC3gQ18roxSS0ZZsm6
         FBMcmINfvoMt3PTWUqLIBGBVMmAPW4inl2NPkn/LB3VrmVxVNMA6j4ih5w32paZSj8uX
         v3T+/PKEyOMYsIhOpK+Cm1sHKCOiBWTKurjyb8wqm0FRMdGykYXGiLak4e7a5r/00YtX
         XLENSJ0oLtGhqFQ1bwMumZ7M2iYoAfehBV8ztzCANKeLStuZA2K15Ap5Y0Q5drTRe1k4
         1QdLaS+c0Ge23eFK0yXRU2G4t5kkry/TN/vN58bEthp+twKUtjEmAvpDzRPLuDG7csYU
         LZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709193936; x=1709798736;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rN/E8RpF83uPbogI40q5YZ50rCteBPnh7UB/0xjqm+I=;
        b=Vokb+bQA0MaMs5MI/HcER6f2JmcZVH75Lqja01KAbx0KymzMIBidtV69+Z4jobqo3h
         AF/AePVqSyi3cv3ZVFH5rhIDUm1nIKc2CUD6D6WPU0AquPC441NEcRsWtUCCbpl1tceq
         VEZ4BrXUYpHz0DK8xObS7FJljpVBTt5JfavY+23n2HaRzZSoKlufJobf/+KAvXiRvPE7
         mKhrwSrvEEwPE7Wh02NP7PzpKqfku0CbYkQ+5GcTOgWIdOzYDtFbg5i8aOd/duM8Z0Km
         qctHnDrxlC+HfIJWGZZCmiwJ+DQMjuqwtBSlC57rUD/KYnAzyKuqWwDoclkdbftbYZRO
         gkhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwB7uWeoawa764ZZc4967HladII6nji8bWulv6Znn4KDsSf7m9VB1uWqYBvQpMZTvJzq+I14g9q2i+ky1dICV+9EPTN6uJVx/4Qw==
X-Gm-Message-State: AOJu0YzMOyM6z/mchRyg++LAl9Ix6K6TElZBcd4DNemVzIYQrSm3XLjc
	CbYlKiqCQDmcWB3cZElGuO20Gt49V/HzTq+zlFnvGF4bmsIepltW9I47TpqLDAk=
X-Google-Smtp-Source: AGHT+IFPI0388h2HvC0k28zze36/4Wly2yARAU2Bxc24NwqUSyB8WM3TT3v2AYCSXbiBHtVzeB2StA==
X-Received: by 2002:a17:906:f198:b0:a3f:9629:d305 with SMTP id gs24-20020a170906f19800b00a3f9629d305mr907374ejb.28.1709193935942;
        Thu, 29 Feb 2024 00:05:35 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p20-20020a1709060e9400b00a3da3152c54sm413677ejf.78.2024.02.29.00.05.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 00:05:35 -0800 (PST)
Message-ID: <cd990080-4bb3-4b01-82fa-547c5b1e6c08@linaro.org>
Date: Thu, 29 Feb 2024 09:05:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v6 04/11] dt-bindings: net: convert
 hisi-femac.txt to YAML
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
 <20240228-net-v6-4-6d78d3d598c1@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240228-net-v6-4-6d78d3d598c1@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/02/2024 10:02, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> convert the old text biinding to new YAML. No semantic change.

Typo: binding. Also missing capital letter.

> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../bindings/net/hisilicon,hisi-femac.yaml         | 82 ++++++++++++++++++++++
>  .../devicetree/bindings/net/hisilicon-femac.txt    | 41 -----------
>  2 files changed, 82 insertions(+), 41 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml b/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
> new file mode 100644
> index 000000000000..016e9e409a30
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/hisilicon,hisi-femac.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/hisilicon,hisi-femac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Hisilicon Fast Ethernet MAC controller
> +
> +maintainers:
> +  - Yang Xiwen <forbidden405@foxmail.com>
> +
> +allOf:
> +  - $ref: ethernet-controller.yaml
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - hisilicon,hi3516cv300-femac
> +      - enum:
> +          - hisilicon,hisi-femac-v1
> +          - hisilicon,hisi-femac-v2

This does not make sense. You cannot have two fallbacks. Old binding was
here confusing or even incorrect, so please fix this in the conversion.
It's fine to do the conversion and change, just explain what is done
here and why.

> +
> +  reg:
> +    items:
> +      - description: The first region is the MAC core register base and size.
> +      - description: The second region is the global MAC control register.
> +
> +  interrupts:
> +    maxItems: 1
> +


Best regards,
Krzysztof


