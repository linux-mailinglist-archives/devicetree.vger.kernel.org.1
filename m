Return-Path: <devicetree+bounces-17151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E91DA7F15B7
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FABB1F24735
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F23941944E;
	Mon, 20 Nov 2023 14:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O3XXXkxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 992DC10C
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 06:30:22 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a00a9d677fcso35844566b.0
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 06:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700490621; x=1701095421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O2HbC/VopNY1IV2jIP8X31m8Zh4hzxb9EKfxsgSbhlM=;
        b=O3XXXkxJtHSw0yMX6SPYlBwc4kuj9H3yydGf+Xn2JjLTXWSWCIDxLdQRP149IzCsJH
         DoVGDeO305GhGdcAtD2CdTC09kihU4UMJEO4WsmYndZTlRVUPxzuKU8+wN0tQF390m7L
         A9zqA3lT4iTnXF2rNijBpTfEzL7Z8lFTk4hBVRFY2080IvUI5wS0vit/iLcctfKOsInL
         AH7YEq92h4FOatEoeRSwDttzGrPjEi9m/p+TLis+xX3tJfwmvv5cISfug/t+D6fzp9HN
         td4nsrAxMZNuRcp0fThiC1XAOeB+rerQ0xu+BZJKvQYz7QkjYC3JKIHlxYYHHX5owkJs
         OJJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700490621; x=1701095421;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O2HbC/VopNY1IV2jIP8X31m8Zh4hzxb9EKfxsgSbhlM=;
        b=mKpbk6Y2shd+Yyko7Bfw/SmuVGa0x4iJClCXr3wcMKINrSQtD3T0UJtrexqbRPG4NG
         jyFMkz96DHMihwFtl1AhlBtGVHAPLYN+opym8MReFw5i3ccqDQulDMqMYEmJ1twlygim
         ebakD6TWRQWBDOs+OtnkXh1oZgai65mVbZvw+Gvee2tY8cHxb+gCK2mu2rPiDhQnlrRs
         /LFc51Xre9zaOmp/EvfBfsg3XGiEXcS4CeYMIyQuxYfmZEsMIcq7H18yBeNzBp49+dZw
         aDVAe56fYh5dL5pBbg9+m71kF9vaDNxu0dn+eyw26iy2ZSmqSTKzp9J6y8++e5wNZd3O
         KDSg==
X-Gm-Message-State: AOJu0Yw5Kpw+4cXl/KIY620ErrX1Uw+dG+rkLNWpFDrbQE4rnW5fbF/Z
	qaHLt6c+kG/Gw21uMELA/yIQ8P/GjVL/eiq8yoE=
X-Google-Smtp-Source: AGHT+IGPNPjAufJGG7kQfgOTZQFzxxOpHHZaOICe6MzY0XqMW84/s3rZg46UYHp2NjPxxOTVWzW9ow==
X-Received: by 2002:a17:906:8e:b0:9fb:248:2d4e with SMTP id 14-20020a170906008e00b009fb02482d4emr4627202ejc.12.1700490621091;
        Mon, 20 Nov 2023 06:30:21 -0800 (PST)
Received: from [192.168.201.100] (178235187204.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.204])
        by smtp.gmail.com with ESMTPSA id m8-20020a170906160800b009fad1dfe472sm2599927ejd.153.2023.11.20.06.30.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 06:30:20 -0800 (PST)
Message-ID: <1ab4e5a0-dd6b-4b74-90ab-12e7a15153d7@linaro.org>
Date: Mon, 20 Nov 2023 15:30:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/2] arm64: dts: qcom: sm8250-xiaomi-pipa: Add initial
 device tree
Content-Language: en-US
To: Luka Panio <lukapanio@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G . Piccoli"
 <gpiccoli@igalia.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20231024063740.4975-1-lukapanio@gmail.com>
 <20231024063740.4975-2-lukapanio@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20231024063740.4975-2-lukapanio@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24.10.2023 08:37, Luka Panio wrote:
> Initial support for Xiaomi Pad 6 tablet, that have sm8250 soc.
> 
> Signed-off-by: Luka Panio <lukapanio@gmail.com>
> ---
[...]

> +
> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vol_up_n>;
property-n
property-names

other than that lgtm

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


