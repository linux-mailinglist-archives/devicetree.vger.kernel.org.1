Return-Path: <devicetree+bounces-19143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4957F9D45
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96607281236
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5F83182C3;
	Mon, 27 Nov 2023 10:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZiW1iVnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC7D210F
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:14:42 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2c5b7764016so44589371fa.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 02:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701080081; x=1701684881; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CNHHiLpeR2Ce67c7aTqgpQJDINa9GFsM154ew5MCzfw=;
        b=ZiW1iVnQBf6sLUnq7bdjd9OajnObpl1WlsqKeXpFS5yWjQudUTsb7O72Zplc6IxAP4
         MMg6uxGbrIELfZZ7IYYEkpYMM0xhIJ8oK3zPF04gykx2ODWe7F5MNdzFlV9uI1zIkyqB
         LABDws6uGAecjBaiBqKnJ8aDbuvGGkEvkWBsS2dkSzngBMgheQDabE6fM/MuWK/n4XkW
         dtS5M7vsvC22SDHYXyGoM/1wzztKYJwgDC+9d93mAZgCOfgBsZx0sJ7wRD3XvPOfmfFu
         keDwJF4EvUdP2vseRwDe6ay6VjKp54Ad/HyNhsBdXLQRBNqi2EdAQDDssDIJQnF6By4M
         yijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701080081; x=1701684881;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CNHHiLpeR2Ce67c7aTqgpQJDINa9GFsM154ew5MCzfw=;
        b=LVlib/5NfEing6krB3CpV6McgFPfDc75/dlhtXcQxNzBcQlCzpLugiyhYe2dp1Vb5g
         2qnLivM3d0IcKmjenE0Q2PD5B4HpD9s5pthZncHCdg1Ik2B0xtaiAOv3LvulL5a6LMC9
         KOT7uoabVBMkzap0ceiZ9BbViq2tQfr27ioG9kmM+9t+nGdp7DHubUwKlr2d7TG0V2ot
         w7qTUsJ0jq4cvazRvtkVFJlzMvH/iE4DzcFgxtp95st/p5IKYoEZOMaxfRHOZSqAosIF
         xQqOy4yFiOFKAIHwjisM+CcukmRLF+p91vFbWKvWChhc3HkJg+I7AI2GKQUW/1Oa4N+w
         juKQ==
X-Gm-Message-State: AOJu0YzdW9jYX+LwK59hdkr3nOBXsdYzDTqT7egGG6q4ZBlb03Hsckbv
	L38uLitNPiSdEPgF5sFmR6AG6w==
X-Google-Smtp-Source: AGHT+IGZZYfB3M3w67wDWKNxuZZ/I8T9o4pe5ERsw+U2o/eGYk7sBQ/Ca2iXcUuYEFwHhDVFGdC32A==
X-Received: by 2002:a2e:9e8a:0:b0:2b9:412a:111d with SMTP id f10-20020a2e9e8a000000b002b9412a111dmr7268289ljk.42.1701080081083;
        Mon, 27 Nov 2023 02:14:41 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id b5-20020a05600c4e0500b003feae747ff2sm14185211wmq.35.2023.11.27.02.14.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 02:14:40 -0800 (PST)
Message-ID: <37422200-7954-4f0d-92ad-37da3a98b36d@linaro.org>
Date: Mon, 27 Nov 2023 10:14:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8250-xiaomi-elish: Add pm8150b
 type-c node and enable usb otg
Content-Language: en-US
To: Jianhua Lu <lujianhua000@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231126022849.14273-1-lujianhua000@gmail.com>
 <20231126022849.14273-2-lujianhua000@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231126022849.14273-2-lujianhua000@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/11/2023 02:28, Jianhua Lu wrote:
> Add type-c node to feature otg function and set usb-role-switch property
> for usb_1_dwc3 to enable usb otg.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
> ---
> Changes in v3:
>    1. squash patch[3/3].
>    2. update commit message.
>    3. add pm8150b_vbus node.
> 
> No changes in v2:
> 
>   .../dts/qcom/sm8250-xiaomi-elish-common.dtsi  | 43 ++++++++++++++++++-
>   1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> index 3d4ea428e4cb..946365f15a59 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi

lgtm

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


