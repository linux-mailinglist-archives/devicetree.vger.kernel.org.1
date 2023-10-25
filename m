Return-Path: <devicetree+bounces-11714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 658C27D6629
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:03:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 961EE1C20CC4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35A9208B3;
	Wed, 25 Oct 2023 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NFH7AoDd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82349200CC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:03:52 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92BB7189
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:03:50 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507a0907896so8060014e87.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224629; x=1698829429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zZpee9VfxFygXieiTrRxGKcCY4Qdy7akaIdL1nDHV4s=;
        b=NFH7AoDd13vu7lbvHt6FwUd6bs2paTFs3Nqw4jMqKtPdAjxEna4MsqbiB0gjPJxVqd
         eBce594IcPt5Ot5FJV9mzS0B4LDfzU9SUKmTbb5wSeJr9QG4uGZmdcUu3zRo604qsJJs
         5ymmv8wU9SX+jupV39M4+9fXpdZtvXS84/4qkK5dR97WWukSiommaUFxp0XjOD8KragU
         ej/WAJNhxVukNRHM2YmGpmj+/+L2DODD3DfmrNipKVzr1xzvw76DpBzDYu3xQ4VjkI8u
         8ZxG1HGb1ciUdq+qG/m8v6hj9Ps7X35Nm4F8gRbrXRQAKLRQrsJNnQkzUEC2jPH80F6D
         1gaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224629; x=1698829429;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zZpee9VfxFygXieiTrRxGKcCY4Qdy7akaIdL1nDHV4s=;
        b=T/JtvBiWyXvwOe4hivCJLTCnfa3IGqXQYnrSAKOtaUBxDj+ri6mJrxq/6JVcJZ3XcV
         P/9vCAB7p2c9JYC+Ji/zhWSopJrFODsfuLXiju0LdZ7IFRF+xaD1KWFWdpat8854198j
         we6OwQta4p8l7VPRp17Kz8hRL6OTg3Oc1l1lfd7bZ1QoceOTWm7MfbKO1vT6HQqWEmIf
         SKXP15Wgp/QuNNLpLKILMhehH1/V47pHvTog0P/hCcltb8kcS3Lecp8YIy08CwPTm2H5
         mxhwPiSPdY/VhifKTYUlNBd0BFFstbzGRYNWXdUigBst21ffAvbp8sDtqg8j+i2nF5c5
         nI/g==
X-Gm-Message-State: AOJu0Yy0HiaGw3ZpAs6ZXu09Pjkg54JcHcVlI2ctpnuZharb8NDuo+oV
	evhAjvlAZlWLCymqRv+zZOILbg==
X-Google-Smtp-Source: AGHT+IGhJNzRWN1tVv70tX0xY2HM1uNCTRLdIW3bYkvAmk1QADY4iqMKu7jd0F0f01uyUgeyB8vHWA==
X-Received: by 2002:ac2:4988:0:b0:502:fdca:2eaa with SMTP id f8-20020ac24988000000b00502fdca2eaamr10324020lfl.52.1698224628835;
        Wed, 25 Oct 2023 02:03:48 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k10-20020ac257ca000000b005079ab8ab19sm2458305lfo.150.2023.10.25.02.03.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:03:48 -0700 (PDT)
Message-ID: <22f173a0-b9a0-4749-b4d7-b5d0f6043a6c@linaro.org>
Date: Wed, 25 Oct 2023 11:03:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 5/8] arm64: dts: qcom: sm8650: add initial SM8650 QRD
 dts
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
 <20231025-topic-sm8650-upstream-dt-v1-5-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-5-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> Add initial QRD (Qualcomm Reference Device) DT, it supports
> boot to shell with buttons, leds and USB peripheral.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

