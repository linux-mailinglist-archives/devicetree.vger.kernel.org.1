Return-Path: <devicetree+bounces-19654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B407E7FBB3D
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 14:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F485282B60
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 13:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BD657888;
	Tue, 28 Nov 2023 13:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eTtcBvH5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F28EC10DC
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 05:17:57 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c9b77be7ceso5534551fa.2
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 05:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701177476; x=1701782276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ob6Dwe9f9aR6JR07mR40cYGUta2Fbcmoo05Dfdz/Nc0=;
        b=eTtcBvH5IS8D3jd8H2f9G8jzF1ZWew7cukVzDSWDfQ67UPr9nxWXc+r/Vkzy75oBof
         WxuDv1OSSxTp4TsBHi3WBJs2SLUrpqEdxdFcmhm/XdTL6AWt6KhI6zPFS/fF+ewQdb0R
         qXKH71POR3vN6yWVKZyj+3zmSoPKn5sYq83LT8JIRpF0V0CvYaqaffqxA3TlzesPnoZ1
         cFcHTpWHmwcPxEiJ+LITLcS0uoVkopZDU9aKwZpqDsGNmfjZ+CRjrHqhELuA0Hi+H1pA
         cK3yy2tex8av9iOebjkmmDgTTItpMCdcsiyJHcm+60ZZBBsdJSq8d/9uaiPOhb9BxKov
         BkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701177476; x=1701782276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ob6Dwe9f9aR6JR07mR40cYGUta2Fbcmoo05Dfdz/Nc0=;
        b=e7KMZxEWNGxXnhs10IZTbTjufKs2sOEkzFViMdEuTn7IGy89QrfHKJl+ir2j4GoJlU
         kXWH1WSN9kbmkq62aDVS5PsIcGc8w5fzpxgye42AyG2s13pvO7KZHHrY1iuAWg/oraMI
         NJp9rlvPxd+KLvZur75BeeQlLtIeV0dk/dISTCQLQtwT3+w1/v0rN8L2cSj7s410GRPG
         a/jN9iS3J3LIkTq7tWf77SxNeYkFILjva+cm/bA9CuMuoJbgjL7+fKISlq52w/HfrmTG
         hG8oBc5P/SudXw8DLSMhqXZVSV53NUj66tc1RZUAYvkkkt0T1O5jywW6js3QKTxb10HC
         0Xug==
X-Gm-Message-State: AOJu0YxCj43Kcp4M7Gt1GA9Wpr3TEA1ckymgNr1aZjAtaN/QsKFQGFaC
	Eqq5fjLl7XbI15Ob4R2td5epSQ==
X-Google-Smtp-Source: AGHT+IH1GIPmjgbvzy/uIw06dHH67zeJBobtku+FnhWeFT/vxlN0iIsyhl9fDbfRokKA4LPRXfdxDg==
X-Received: by 2002:a2e:b5ad:0:b0:2c9:a1f5:488d with SMTP id f13-20020a2eb5ad000000b002c9a1f5488dmr3993190ljn.24.1701177475968;
        Tue, 28 Nov 2023 05:17:55 -0800 (PST)
Received: from ?IPV6:2001:14ba:a0db:1f00::227? (dzdqv0yyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::227])
        by smtp.gmail.com with ESMTPSA id t7-20020a2e9547000000b002b657f10b78sm1707226ljh.58.2023.11.28.05.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 05:17:55 -0800 (PST)
Message-ID: <e7fbb6ea-da13-4cb1-a459-99e8636bdd67@linaro.org>
Date: Tue, 28 Nov 2023 15:17:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/12] arm64: dts: qcom: qcm2290: Add display nodes
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
 <20231125-topic-rb1_feat-v2-8-979b28f35e4a@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20231125-topic-rb1_feat-v2-8-979b28f35e4a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/11/2023 17:28, Konrad Dybcio wrote:
> Add the required nodes to support display on QCM2290.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qcm2290.dtsi | 214 ++++++++++++++++++++++++++++++++++
>   1 file changed, 214 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


