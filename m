Return-Path: <devicetree+bounces-64388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A6F8B920E
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 01:12:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6489288ABF
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 23:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D25168AE2;
	Wed,  1 May 2024 23:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K1WQOtqG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385021C68D
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 23:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714605134; cv=none; b=HBw8eF4ulUAujOv4xnq/Fdxy8WmDdPKJRkvc+2B+mw0J/pAQWq/jqfDPR73VHXsoUwjsiYTV2SDkgpOgRjFUDhvH3B/Ge2niRpGh/uwDR3yX5qOo9w3rJsx7ceMXPM6tpzSbC98e8GG/IT+3l6tmRTpfdI3bXqACarzkY85xWAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714605134; c=relaxed/simple;
	bh=s/hUPYM+b4OeI4bO4UJhPD3dsf7FKKl+zPSQtBpLsrI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IRgi8WHWSgekpC223ZIdgir68UsifTxjln1m2e7DHq37PM4GqAm78+GwfzPq/ouM0DnKATQKMDXUXIccuJbQ2qFv29a5BZWtVF3kPtePrklGsYlzx4bqkjsNpmNLsHfuDwwBltI+AfayWmsKUD2elmmHJLwc/Snz+DEfZcn2o3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K1WQOtqG; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a5966ea4fafso53090966b.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 16:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714605130; x=1715209930; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zhCvg7KjClQbusFKD8NHC5U/vmYAlsndfakVGGXVNKg=;
        b=K1WQOtqGMtJobmFCFgFHvhoseuasnBA9A4/UPgkIAGTecfUtqDDEtDqg3ZLMAbXULX
         CoWVTwfromIe+eMaeKGhr8VnO/+5bnMYNcKmBtPg2dIEk6ij1ZA/JmEOVIfYQnd7NeOp
         JXQK/Ks10yzJb69JwMO9Ay6MTKtJ9JF3kOdsJjOPgl/W8T5dHYSVJZFcwf4ryuJfRYAs
         sNCxSrJbtxNPg8Mc/mGay7RaDvHpbE6wR8ioPVsWC5JxuVuI+vqw8VUyYJ8MVmZEo/yp
         kHrVsxYkHQjSB1xrVQJrhHEzl01zZ5470cdVLjQRwBZ9P1P5fmcWXQ3jv2zyYWHifkpg
         yWrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714605130; x=1715209930;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhCvg7KjClQbusFKD8NHC5U/vmYAlsndfakVGGXVNKg=;
        b=YbAtKgw7pf3f+nsRK+yyMn56LHo64JwDZljGGu1ocfnJAeFyIo/j0/KwQmD2XvvqvE
         526VzTI1IijVmc1fsLqCon4a0g6TNgO2hgf/7EqJa9yF4y/pf+t8cae/5kthwaR1fvr4
         KFD2PQZKH49JRgKmK67r8VC8Vgb4SHn5414UAHsmsz6EwEUkGMbGuIeUIE25OFbPoXH+
         YQOKsbDQzUQSAlEFOgsxx62Nsx9PNdM8l08O33hYxKYH99gWeXx+wigVO1jT8zEHu1wl
         sMvk8AZ2yxyKnpYlpTHHlA2HOsL78MZSvyj40uitSRcIIjuEn1gXA0bmAcvMV1znzkOS
         TYEg==
X-Forwarded-Encrypted: i=1; AJvYcCUV8kKO3bq5MUEWLffHbZZIvy1IX/GRD0xXo/i5s5rpUyk8N1X54hXqX+98h5A6WXjukEsb5XBwPb+zvr+oTAJkK1legVJEAUOAjA==
X-Gm-Message-State: AOJu0Yz4HRjjGheRlZ510maHN8TJl47x9G4vHXHdj/B8qicPgh5/js+j
	YM3w49FksT51DcBYDRpxXEEDTn3hZ3XTmVb0BtakWWQE0ceNMItL8+cYeItuBc8=
X-Google-Smtp-Source: AGHT+IEd6YA08JvM1N+higQIn7mDVjGj2X7nOzNIL/Ck0S0TzZ3u3IeS6KS6XKPLpm1T/IcRgAoaCw==
X-Received: by 2002:a17:906:5919:b0:a51:e188:bced with SMTP id h25-20020a170906591900b00a51e188bcedmr605346ejq.37.1714605130596;
        Wed, 01 May 2024 16:12:10 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a522f867697sm16765743ejz.132.2024.05.01.16.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 16:12:10 -0700 (PDT)
Message-ID: <88aad6ee-703c-4e86-ae46-96b909503cdf@linaro.org>
Date: Thu, 2 May 2024 01:12:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] arm64: dts: qcom: msm8996-xiaomi-common: drop
 excton from the USB PHY
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>, David Wronek
 <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>,
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-13-f1fd15c33fb3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240501-qcom-phy-fixes-v1-13-f1fd15c33fb3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1.05.2024 6:19 PM, Dmitry Baryshkov wrote:
> The USB PHYs don't use extcon connectors, drop the extcon property from
> the hsusb_phy1 node.

These don't, some do (like the one on 8916(

> 
> Fixes: 46680fe9ba61 ("arm64: dts: qcom: msm8996: Add support for the Xiaomi MSM8996 platform")
> Cc: Yassine Oudjana <y.oudjana@protonmail.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

