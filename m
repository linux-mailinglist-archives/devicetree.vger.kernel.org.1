Return-Path: <devicetree+bounces-25350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CD7813006
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:28:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D520F282E90
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933C0495FB;
	Thu, 14 Dec 2023 12:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KxOIq78K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92FC8132
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:28:02 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50e1112b95cso1849723e87.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 04:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702556881; x=1703161681; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BfkcmkKvkkXYQpeZuzjEAiTsYS7qsvNSpSZAPh5BmVE=;
        b=KxOIq78K8HYasGg6HFAN4LZi4tXP8x681zOIraBcRjL+PNif5TYZyJ9vU9bJrI/0SG
         JCRi0uZGY1SpaCv9G9uoz0d25B1PLv7v7QQpiPILN70vGdMJIKRhxNP8I8Ea3RvaNqaG
         YTh5r3nwush0COfXZRWdgJOed60zWhhAnEkmxNWcvuDE0JbvVR+rRRkPfUisGy3MZfu0
         A+xPxSEnAdOgwbzTxghaOyvgDh2ti/tR/t3yExQCtldiWuk3gpiRwGqlbIWHHLTlIVQ+
         8uNIV1arJO34QMomYxguXCn/lFzpuZmARl+GcuX1B72jYVy1cjLyw7MTFzULMxBUa7X9
         l3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702556881; x=1703161681;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BfkcmkKvkkXYQpeZuzjEAiTsYS7qsvNSpSZAPh5BmVE=;
        b=i7mVZQLpI5/gFQyB9IWK1+Mg8qa/fBmFV1Wcx8ztpJ8U9rapThchcvPj3d/pzRzTlt
         LJ9LGcwQn24ukI+hmFzFawb+Em2s0bahl9AkeYv3ukLk6/DZ9NSRznoEFrb086Bwjc9l
         TpdL40peDiA4jV6HuNJhI8o/E3qdb8mgC07R2h0fZD7lVuD6dO8ZWaX+UEC0Jb7rlnQ5
         sHPA4Gl2Pa4Gryes0VPmrUC4IY6oJQI3q/NJOfAqXrBpY7jCyW0BpFUZYbU6SWHg45hj
         5Vg+RfWVpqeSAwab6LNozj+yc3cgRbzZkhLcqauwBhR6gNs3xfv8keC9+3NideVJ8NC2
         6Gaw==
X-Gm-Message-State: AOJu0YyOTbrXWbHZqvniREsY3dWHcwTYYwwft1F6zO+DKYWFZ5cwOFXb
	CImghHL5rzqT4WePBRgkNMmg1Q==
X-Google-Smtp-Source: AGHT+IGtTPHyMJcq2MCv4D+P2RwjYqjAi/JjJolXcTyiuMS71mlSdraT31zM3cAm84XD4KODk4ho2g==
X-Received: by 2002:a05:6512:208c:b0:50b:e110:17c9 with SMTP id t12-20020a056512208c00b0050be11017c9mr2697719lfr.90.1702556880783;
        Thu, 14 Dec 2023 04:28:00 -0800 (PST)
Received: from [172.30.204.158] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id k4-20020a05651210c400b0050bef21a012sm1871880lfg.191.2023.12.14.04.27.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 04:28:00 -0800 (PST)
Message-ID: <f2a70872-d1e5-4d4d-8231-7106f9185460@linaro.org>
Date: Thu, 14 Dec 2023 13:27:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sdm670: fix USB DP/DM HS PHY
 interrupts
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Richard Acayan <mailingradian@gmail.com>
References: <20231214074319.11023-1-johan+linaro@kernel.org>
 <20231214074319.11023-2-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231214074319.11023-2-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/14/23 08:43, Johan Hovold wrote:
> The USB DP/DM HS PHY interrupts need to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states and to be able to detect disconnect events, which requires
> triggering on falling edges.
> 
> A recent commit updated the trigger type but failed to change the
> interrupt provider as required. This leads to the current Linux driver
> failing to probe instead of printing an error during suspend and USB
> wakeup not working as intended.
> 
> Fixes: de3b3de30999 ("arm64: dts: qcom: sdm670: fix USB wakeup interrupt types")
> Fixes: 07c8ded6e373 ("arm64: dts: qcom: add sdm670 and pixel 3a device trees")
> Cc: stable@vger.kernel.org      # 6.2
> Cc: Richard Acayan <mailingradian@gmail.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

