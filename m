Return-Path: <devicetree+bounces-19655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8A17FBB46
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E07AF1C214BF
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 13:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256B357892;
	Tue, 28 Nov 2023 13:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uv/qSj6o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7140D63
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 05:18:32 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c9b8363683so4811961fa.3
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 05:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701177511; x=1701782311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tTf2yUtECbY/OYuChMFvXRgzzGsfDdzdXOehMmGhewk=;
        b=Uv/qSj6o1sNZSZ2kXTOi1x5tAFzXAgKcnXdZniakiZmORcIs8gp1osAX5u/EJ7tr5M
         oOsLuXxIO7da30JriEnm3XOiVZiX/B2Mp9cW5XIL0Ke99s5aioH7/nO+BnhMlS8IonDl
         4BjusvsEChWCE1sBeeCHKS+8VLmjcTFNkXpZSsdRWQxMIyNEW2KNyNU86qKvo2nAb15d
         06BX78YgJt5ACGFXaEArceFxkGP4TegjrYRcA5zCSZr/aVX/d540a6LrokZO+eu4dQYd
         ibl+moEY1Olb8L/1mDnFKS/ErbDoHFyoBpa/ky7dYEubDeTpbA9ev+p4alhsbIxMJt28
         Sg7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701177511; x=1701782311;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tTf2yUtECbY/OYuChMFvXRgzzGsfDdzdXOehMmGhewk=;
        b=aY26hJEVlALdmetyV0l8QFms/RXB5ebYujOsy259DZBpJuf95A/OxNvBVhoPU6Hv2j
         hhpxM1/P/EzQSoT2Vtd9e/+3dq3EItFXQMfqj9LzCgVZBqNb7ApaT7xQ9kMdgOEMMfCN
         9ONpQiK0yryyz/IZAicrNiz027/EQqwrM7FV7+agUhRBaSEiSuZerlkA1egt7OoyfZlT
         i9VxhqkjEjK01zcKgpVJqQvwl6hm/LugWRdNqxWBOkgsXH70pYQEdOu9ILSUR/YBTBDg
         oXThV4m9aq9qENaOOD/rzLltgkvNICgBMq9hqRrAq82hLMJKItpUAjcRTV3uJsKL8Goz
         K0Og==
X-Gm-Message-State: AOJu0YyWFEGhBjHx/e+yycHTtEs7c9Wa9sM5oeSCp8rL9fVGoqyXy3xU
	HauWeUOIy+ai3J6oc67B+eojIw==
X-Google-Smtp-Source: AGHT+IGqrSCmGnNKknw600PvCwdJ4nyNLsm/yU9AqIvf2jLutSas7DdHhjfbocjXyLUEEP7CqlRP5A==
X-Received: by 2002:a05:651c:39d:b0:2c9:9983:6fba with SMTP id e29-20020a05651c039d00b002c999836fbamr5636031ljp.52.1701177511295;
        Tue, 28 Nov 2023 05:18:31 -0800 (PST)
Received: from ?IPV6:2001:14ba:a0db:1f00::227? (dzdqv0yyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::227])
        by smtp.gmail.com with ESMTPSA id t7-20020a2e9547000000b002b657f10b78sm1707226ljh.58.2023.11.28.05.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 05:18:30 -0800 (PST)
Message-ID: <83e4f84f-63bd-4f53-886e-5cff215fd802@linaro.org>
Date: Tue, 28 Nov 2023 15:18:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/12] iommu/arm-smmu-qcom: Add QCM2290 DPU compatible
Content-Language: en-GB
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark
 <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Georgi Djakov <djakov@kernel.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Krishna Manikandan <quic_mkrishn@quicinc.com>,
 Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>,
 cros-qcom-dts-watchers@chromium.org
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20231125-topic-rb1_feat-v2-0-979b28f35e4a@linaro.org>
 <20231125-topic-rb1_feat-v2-5-979b28f35e4a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20231125-topic-rb1_feat-v2-5-979b28f35e4a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/11/2023 17:28, Konrad Dybcio wrote:
> Add the QCM2290 DPU compatible to clients compatible list, as it also
> needs the workarounds.

Nit: MDSS, not DPU compatible

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index 549ae4dba3a6..aea5e85b20ff 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -245,6 +245,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
>   	{ .compatible = "qcom,adreno" },
>   	{ .compatible = "qcom,mdp4" },
>   	{ .compatible = "qcom,mdss" },
> +	{ .compatible = "qcom,qcm2290-mdss" },
>   	{ .compatible = "qcom,sc7180-mdss" },
>   	{ .compatible = "qcom,sc7180-mss-pil" },
>   	{ .compatible = "qcom,sc7280-mdss" },
> 

-- 
With best wishes
Dmitry


