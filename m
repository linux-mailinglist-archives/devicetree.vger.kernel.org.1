Return-Path: <devicetree+bounces-41185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D4B852B41
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:32:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35A7428255A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06DFD182DA;
	Tue, 13 Feb 2024 08:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bnvGbFPo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C5210E4
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707813115; cv=none; b=FW3lp4G7+yb1BONOm+tzrN6nkcHbSvIOkWlAEtes88BBWDj2Sn2R90zCWJ1x4MAH8ZkHqfN2cPEw6Skii9NOT6/BpfqIZAOPEe9yvYEJdD8JPnNM1Vce+DvRmJsemIr6mVdb0agFL62RTb5xvbx0h+6iyZCvIZHNpPUZT+o7aUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707813115; c=relaxed/simple;
	bh=LyBIaArFIcO2x6uNyD6g6ihvCa/mFgvkSZZsFZNh2cI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KI1da7ubmKy0LsWm22Qy79qAQU7tXG/2Zi9VqQoG/5RD7gYzRAUfsnQ7SJumyY7dXRn9oIHbYNg5JID49BAYeSJXUZ4AU7akTqOT5CxF6C5S6+8wRqylXFcnQ7yyFyatcRmiXj9ZqeC5YImagD7nKwhkf2pf4+DGQcNKMAj0+lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bnvGbFPo; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-411cce9ac9aso15575e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 00:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707813111; x=1708417911; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dde3EbS6VWJqvGKjav4KSnBK0JRdRxmSb9vh6mKuzWo=;
        b=bnvGbFPo7iB+nx1Eb/95nPeSE3ayr8srjZktKvRC86q0tWdZEywKdxqFcB4jQ+Vu79
         T5V6tQJPTp9GNW/hTyuZsEZhSbYLnLJgLWbIPG6ap9OXPOITJ/srDMFNZo+jIVeCnoI1
         L+rA11zb1ArrgR8SP6vRCNtruNTOh0lNOnBhla2cQLytmmBVr5boIMxAMJtPWuXhHDO0
         IzhXQbuKTLOf0jo0ziZWq1CpwM1nQB32WiYpRX0gQbJTmC/kKTiPWgLeYh+wmWUAXh4v
         UIXxJ71pnhJncc+ERN0njD4S+lwcyxzmVkWAnBVooVe5ZZ7Q0FUIh7RRxg5BOCDhZXFo
         RpAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707813111; x=1708417911;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dde3EbS6VWJqvGKjav4KSnBK0JRdRxmSb9vh6mKuzWo=;
        b=qHEpLRMYszrGVlkrRW/PFLoqaZRDXidOygCSpL1bTaaSyUswlNaeE84tt1VEhWeUk6
         bTpEyVDieLg61YA7dPgeWNNkcM9J6IpaXL+G2shfauG17lUkfx42IPSVir3sQdSY43E5
         sOOT4W8TaB+3LM0/HX9TWJN/yIDXuxyxtrigb8E3MpPsgLG0mMuirXkKLYncNK5jyI1e
         xZ7kreU8jf5xS7TF3VLS8rfTxMsFKcO4FWEVaoE/1HkijXtpMKyNrhZ8AZTjedAePc7C
         0CBAdziSu1hb+YC/o7LhvXKH4mzCeY4XLHm+ZA2tz4I3rKVWS4wJ5mGp8hi/P6cyvCDJ
         HMqw==
X-Forwarded-Encrypted: i=1; AJvYcCUujZBHQHIKFJO4z1XqAYgVnNp31g3tzvNySUBZhseBC+EEf4ieFME9DvzghACwbs8+3q6IoQxf1QckHliq6k78xsQdxxDKkQeIDA==
X-Gm-Message-State: AOJu0YwPXsRBLiiUs09+sxFqM/CGTO9SYmn08kmBuDwEZkhQq4EywAgY
	QYEWxaIK7AB7+vcCbhuHkmHREldKJy5FXmDjN6TnwM/FPy60+1fAa4HTHTxa0Sc=
X-Google-Smtp-Source: AGHT+IHpvUw/qDTTMCNzLOjJTulKDkhaY2ngH6JlcBNuwoR0OBe3hQ8tB56KDVOclzwa4Zlj+2IXEQ==
X-Received: by 2002:a05:600c:1c91:b0:410:218d:8a21 with SMTP id k17-20020a05600c1c9100b00410218d8a21mr8254548wms.20.1707813111421;
        Tue, 13 Feb 2024 00:31:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCULwES8tzyOa95T8WU12zOZkyS3mQOXSGaWVgro+ADdbnq5f1aL0M1/J44JxMPh7turmFZrXD/svj6Pp5Z08dpdb/vOZATOAoMpboQScgU++dE6tnn4namSgb/tDxGNdWYM0dfcxgEReBWqRxR1POSko7DRvxfLoUV8e/mBA8q0VcDjm/e8S8BNMLO3KQhu09ep1p1VZU0c0Ocqh8/1sdIjC2u2hgLa7ByDfVlVMhETYlJFDMrIuFgwSAFcPcwEjd0c5QXjWvS7GPWjkK5+/mUtHpsMyBNKt4UUBfE9EKgN4DRJmV8bn42XgrKVAnweeKn3lOO3Ntf6GqeNMncioWqnHWPNaKEO1sBJQtFCfji6z5WjNTcvnftUqclG4PTB+19IMaS1ksECHVI=
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id e12-20020a05600c4e4c00b00411c9c0ede4sm308961wmq.7.2024.02.13.00.31.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 00:31:51 -0800 (PST)
Message-ID: <72ab2968-5e35-41c1-a689-6353a1d43b82@linaro.org>
Date: Tue, 13 Feb 2024 09:31:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pinctrl: qcom: sm8450: Add pll_clk to pin group 98
 for SM8475
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, linus.walleij@linaro.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, vkoul@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240212191046.77013-1-danila@jiaxyga.com>
 <20240212191046.77013-3-danila@jiaxyga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212191046.77013-3-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 20:10, Danila Tikhonov wrote:
> Add pll_clk to pin group 98 for compatibility with SM8475.

I don't understand this. What compatibility? Is it valid on SM8450? Ifi
so, then this would be fix. If not, then you just introduced incorrect
group for SM8450 and called it compatibility.

> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  drivers/pinctrl/qcom/pinctrl-sm8450.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm8450.c b/drivers/pinctrl/qcom/pinctrl-sm8450.c
> index 617286711695..45ac8e72c1c7 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm8450.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm8450.c
> @@ -957,7 +957,7 @@ static const char * const pll_bist_groups[] = {
>  };
>  
>  static const char * const pll_clk_groups[] = {
> -	"gpio107",
> +	"gpio98", "gpio107",


Best regards,
Krzysztof


