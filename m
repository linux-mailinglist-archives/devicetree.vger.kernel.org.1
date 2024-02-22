Return-Path: <devicetree+bounces-44910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD851860072
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 19:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4A5CB224FF
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 18:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB26115698E;
	Thu, 22 Feb 2024 18:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rEoZnrlT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078B815699F
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708625316; cv=none; b=WbJTqLn7VUk1zh7Ju7tdzOasdQA6o0CaSf+JBHPcdvZTyZSynEYAHf/YbvmqJl5FXM36BdDAheqRXl1CwE053tlY8DAaQHJ2WxmpVlRKjzyOQvDfuA0Kke5Dq7HxKu+ML6gTej18hvtar1yNRnzogZUZ1Qw6LUnfa6O5kzOih3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708625316; c=relaxed/simple;
	bh=VRFlQqvVoGp3nuUxvIQLh2Bai2d6yzp6WNMhq8r2y9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RJ4s27GgqdUM0yhbdetw1mB2zDiSSV2oWE60hIGNv2vwaKnlTXaYqt50TQl5MZcgiEE+3yMBQPns+ho2iab6dCjXABbfcVfioVyyM6Q9lYCFzQwXUQT5afNSTejWg249CZCDANj2be9PSQX7ktaKwZtQFrAJIucyrlXXLVQfow4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rEoZnrlT; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a3eafbcb1c5so2985766b.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 10:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708625313; x=1709230113; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dmWx+fxLo3pLoL2+YEpTXgJU3Hxg24L1di2ToSpxoQs=;
        b=rEoZnrlTBjqbXSsiXm3czCrAl5aiDA60Hh+1fYkWxQ1NOVXjZxIr55C5O6yG4N45t0
         smvq5T54wpO9Gf+/yKp7OCszrfBRgQa8j+NbdOjtKN+McGDFZJhJGbEjz+lq7hU1oh51
         aUaxTJbRjqIlDBJ/iJqJkUDCf2yjJ6b6DMhLToOQpWAIIQW7Pi7EdeOz3icDWrVfesy0
         BdA1Z8zYXFKdWvmabp1aDmFULINwGKClcZu12KKHGFQAWGdf3RT2mxKYZyb5vcLgM+ED
         555cHofDaKvQdKdVQy78nHZvq1Ppy7MULFmClHqHqFEf8axN5unIMf30Sm9X8hF/SpkM
         rghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708625313; x=1709230113;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dmWx+fxLo3pLoL2+YEpTXgJU3Hxg24L1di2ToSpxoQs=;
        b=Z77P9dOzbHuaZMFi/zl/Ot22+Eaofcvq+CyDQy70Z9OMgYk1HZD16sDAUyBc3gjVNs
         mmpoocz1oAnwfXCdPO7D6TYLTQ4APe//On0nIeOc94Ndg+5zu1nNZbiCsrIX2B+8kxUe
         3EVh+bSlhbwBKVOgqYgnI7JGbTtc3B8EkaiEKnJtamDok33R2rLbSCEpljPhn2Hy7OYu
         dkwpNR5NW568w7BtZ/m5KA7k8Q6G3lW3sgjp9q5MX731ggnXR7BKwZlL+s2TpVgrsGau
         DtD86CgwUEMcedoY5a9KcZwVNQD3uswxCIGybZRM2XtgQxiVxzvSSa3waV5APx3RmES9
         r4EA==
X-Forwarded-Encrypted: i=1; AJvYcCV49EUkXlC8Lkt1u1Gd6iUOzKqpjc0ASVEK71zlVMVboB+UM0UPHUoxp/ASfoiv1/eu1oqgmWNd4f3FL/1t0vM0JC1vsuGYvRA/Og==
X-Gm-Message-State: AOJu0YwWH94EujUa/9Fa1bHD1LOJzSvd/gFgNmp+5TMXownhB0iUkPil
	yxjZGRL11e7/mRTetdeoxTWj3YcxwvDsKAAdRXaRnGXTsMjfMe79fnDYpa97NIM=
X-Google-Smtp-Source: AGHT+IG9zPpNZUlvs16bYIj0c66f1KNngiT7ts8pWlr3T7K+BHwY3nQDuqiPysTk5BQHVQQ540l8wg==
X-Received: by 2002:a17:907:1044:b0:a3e:590f:6348 with SMTP id oy4-20020a170907104400b00a3e590f6348mr10415252ejb.41.1708625313267;
        Thu, 22 Feb 2024 10:08:33 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id r8-20020a170906364800b00a3e4e7ad9dbsm5220799ejb.68.2024.02.22.10.08.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Feb 2024 10:08:32 -0800 (PST)
Message-ID: <2085057c-0000-4e0d-a633-c84e939313d6@linaro.org>
Date: Thu, 22 Feb 2024 19:08:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] ARM: dts: hisilicon: add missing compatibles to
 CRG node
Content-Language: en-US
To: forbidden405@outlook.com, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: David Yang <mmyangfl@gmail.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240222-clk-mv200-v3-0-f30795b50318@outlook.com>
 <20240222-clk-mv200-v3-2-f30795b50318@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240222-clk-mv200-v3-2-f30795b50318@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/02/2024 17:41, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> Add "syscon" and "simple-mfd" compatibles to CRG node due to recent
> binding changes.

Why? You claimed you added them in the bindings because DTS has them. In
DTS you claim reason is: binding has them.

That's confusing.

> 
> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  arch/arm/boot/dts/hisilicon/hi3519.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/hisilicon/hi3519.dtsi b/arch/arm/boot/dts/hisilicon/hi3519.dtsi
> index a42b71cdc5d7..da46e01b8fdc 100644
> --- a/arch/arm/boot/dts/hisilicon/hi3519.dtsi
> +++ b/arch/arm/boot/dts/hisilicon/hi3519.dtsi
> @@ -35,7 +35,7 @@ clk_3m: clk_3m {
>  	};
>  
>  	crg: clock-reset-controller@12010000 {
> -		compatible = "hisilicon,hi3519-crg";
> +		compatible = "hisilicon,hi3519-crg", "syscon", "simple-mfd";

Why? This does not make much sense. No children here, no usage as syscon.



Best regards,
Krzysztof


