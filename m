Return-Path: <devicetree+bounces-9584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 020117CD7A9
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:16:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98B10B20D36
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 09:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634B2171CE;
	Wed, 18 Oct 2023 09:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SWsNyyAC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8460134BF
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 09:16:30 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01AB812A
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:16:22 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507a55302e0so4811342e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 02:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697620580; x=1698225380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AZ41pRho0HuiZRS9gRgVWISrteNQCafxPgDs5lLN4nQ=;
        b=SWsNyyAC/BpKYxfAc+tWplOzVjgCRz2e+p9hX9/stjmqYjPVT0orwKzcHOBqWxYfIy
         yYl5hZljMrposxTNdPls4ifEvAAwZt2j1GDrDrpnzOtPcIeINpU3CrbDPiT6eLGuvZGH
         1goUVKPrRApJuci57HPwjt6xJORU+kaHnGoFiSvevASNmFpU/Sxy6HuyLrf3ZL7tDtqt
         0snjwwSxvK918bJi4kXccyOsaX6K1Zv7uT1peNCx8MmawtyfT6NPEaL/bgDvDNCplmx9
         U9F7Jmwqlpz/9NUHfmNIQIIXYSjNdZbscyAPW2PkOb7msBO3hgmCHErqv3LBFmyXimzc
         vtSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697620580; x=1698225380;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AZ41pRho0HuiZRS9gRgVWISrteNQCafxPgDs5lLN4nQ=;
        b=W8BNZthXcOQvl9uBJyqNZJHTYcjmapsamYn1aLEtHDNd7mMmDhhb7/B0nq21CMdHOJ
         APqa+xEy3FrKNtaw3MNO/Ars0vb7yQ37KFjyourEIApE94gLx/sygC6zM/0KJd5uhJQ3
         c7Fc2kTBnCqOKkqOmsx45aD7wMIP7TybqXZ/D3nV3o0QVRZhg4WwpGilKkCk3MTCoYOR
         rWNvRVmlzmGLdMZ3KwKurSb8rvwsoLOwgmTLM8nEcgg5v++NDm3IptZ2wk7o5NB1eEg/
         2kcrPyUuOt44We+mM4AREj/RjiPUuz1sm9+pLA2tF0tYBeVNfRzUl4bKpz/t8/aemzYU
         Yr0Q==
X-Gm-Message-State: AOJu0YxEveGkkdziY/SRFEiRaM4cjzpg2LC8bp+jT0VniV0gSAfRs1D2
	gmZlUG9yz3OWYqr6+k0ogJW2GA==
X-Google-Smtp-Source: AGHT+IGfutiJM8gG/RzWIslBZtWh5qieWDLLmmPzfMwJAmj4O9Zs/iCZCRzPD03dztF50asWIr/W8A==
X-Received: by 2002:a19:e041:0:b0:503:99d:5a97 with SMTP id g1-20020a19e041000000b00503099d5a97mr3576574lfj.20.1697620580116;
        Wed, 18 Oct 2023 02:16:20 -0700 (PDT)
Received: from [172.30.204.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b22-20020a0565120b9600b004edc72be17csm619367lfv.2.2023.10.18.02.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 02:16:19 -0700 (PDT)
Message-ID: <4469ff06-fcb1-400d-848f-77c4b139a20d@linaro.org>
Date: Wed, 18 Oct 2023 11:16:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8953: add SPI interfaces
Content-Language: en-US
To: Gianluca Boiano <morf3089@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231013110531.84140-1-morf3089@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231013110531.84140-1-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/13/23 13:05, Gianluca Boiano wrote:
> This change add spi_3, spi_5 and spi_6 interfaces to
> MSM8953 devices.
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---
Generally when you resend an email, you should edit the subject to 
include the word "RESEND" and state the reason under the --- line.

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

