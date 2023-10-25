Return-Path: <devicetree+bounces-11713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A427D6625
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:03:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92382281996
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1AE32031F;
	Wed, 25 Oct 2023 09:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WVjB/VJg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66141C2AF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:03:29 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD342116
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:03:27 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50816562320so742118e87.3
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224606; x=1698829406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i1ba5ZfuZoidwEJuzAD2iAaLRr29ZSc16tdqJzC6C0o=;
        b=WVjB/VJg/SQdMJ27nxVVMJ1+IWtl4pntnw/9s+n/QmLQLajUM1j5s86HeNjBmV//pR
         kwwRgLr3H+0KI88KjlC7BY7UQ4cuOQLg1X2wrMJ5R9Ur244IwaU7MlP+Sx49nHHWFTKQ
         BmzdYR7MqzUKBMM0lMahC8dmpAY3RfoYSXtfRtlIjjbBtlTOo2hsDVx4RY5gSUifygDE
         eMyhBfI1XUnN4h4VkGLMn2kZAgOejBuDoqc4yIWK5rOj6sdwj08QzjM572evNONAj4n4
         1b4flP5pdJRTYQOoglil4r9RNvAoeNOmwIZlP7kZP0W9c2bBEnmXcm73njf3YnLaB31g
         Kmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224606; x=1698829406;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i1ba5ZfuZoidwEJuzAD2iAaLRr29ZSc16tdqJzC6C0o=;
        b=E7mwcLYtmIN1+y15cl7ExEkZAyE9qTULCUrVzCB8kjM/rcV6IPTXP4xQ3iR+DVk1YS
         TgedR2Gfh5M++yJzq0DOV8UJcc3gTTCW8oeaqeuZfEsfUxgKk2UKNjMHGbN2R+Da1Zj0
         v/vKIg37VVFdQFTcMnq5HBGwEcVGs8Vn2SWh76AXnI0rHIa2kNA1kVAClW5XuC5A2lkc
         4fHjWIqEBxO8eL5ewoSDBJQsPhN1jdE3fP+eF4njdTODO0q99ffuaOVuVIEOdbnfaGxX
         2IsENlxiWdsmW8K6zKAwUIlrGSrCfRTw+tYk5f5ny1uQsNyBGN9Ugs/yVCMsNj8IGev6
         LvwA==
X-Gm-Message-State: AOJu0Yz9wkicnqaGYhM1DcbHQCbziP0I3thrzxmTb/O50akMlfB/1g4S
	rq5mmQdsEMeZBUIEsoB85gnlYw==
X-Google-Smtp-Source: AGHT+IHjy4z+eK3GpubNmSvf/+9V60ABr+i2eXWVp5HvoXEfFCL9ZuPzRg4kv7Vx2dYzpCyh4TpyrA==
X-Received: by 2002:ac2:58e7:0:b0:500:b53f:fbc2 with SMTP id v7-20020ac258e7000000b00500b53ffbc2mr10186641lfo.26.1698224605158;
        Wed, 25 Oct 2023 02:03:25 -0700 (PDT)
Received: from [172.30.204.57] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k10-20020ac257ca000000b005079ab8ab19sm2458305lfo.150.2023.10.25.02.03.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 02:03:24 -0700 (PDT)
Message-ID: <b789229d-7d5b-4019-93b1-b7f71bcb65b4@linaro.org>
Date: Wed, 25 Oct 2023 11:03:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/8] arm64: dts: qcom: sm8650: add initial SM8650 MTP
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
 <20231025-topic-sm8650-upstream-dt-v1-4-a821712af62f@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-4-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 09:47, Neil Armstrong wrote:
> Add initial QRD (Qualcomm Reference Device) DT,
> only boots to shell with USB device support.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

