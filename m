Return-Path: <devicetree+bounces-18793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C44967F8B75
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 012591C20D8B
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6AA314AB1;
	Sat, 25 Nov 2023 14:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pnfuDuli"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52CB619BA
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:18:04 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9e1021dbd28so381062766b.3
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700921882; x=1701526682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fzHhRUdqYzC89phn7gbVveYcCLwhSTvqnPb56NAvVOE=;
        b=pnfuDuliMnWP+SaVlGGDpsn0CZ39xWwrWNF4xIGEAIC24Pp/uWorJIhN0R67RZL2RL
         ERYRJtBU4TVBeemPUcr+jAAu6HXpGJSXhPmM2efBtsKXWwC/lPasiFZQJzYBOe0bOY/u
         tdKbKTIyP4miypd3uImGfd4JWJgAaXuM41NHfyTtI1UCj52QRAq0hVsLU9OVw7NJCMox
         FsE3zqR0aWEEVYAvMUjyQaQvZdZv2ZJnihbCYbZeTVtnxbNWN4om5XrHr3jye2qgJGVQ
         d0tmU9RfFfyaSVom4SAywjDEyEfVD6pZrAWqBtKOjXELKuYrNI92QyJsI7b9Uqv+PHGn
         d7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700921882; x=1701526682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fzHhRUdqYzC89phn7gbVveYcCLwhSTvqnPb56NAvVOE=;
        b=nTLoFuTb4LirdsTUKwdDi6Z3490VMGw+MqzOIZ5Se/wSB4H2wp8dLwfM1IzannlW9F
         TBV0zGD3IlyYuEjsClZN2YBls3U3V/Py+dL44KHcGl3gWmUgoToF+MdK/KSkbp42l9sw
         A1oD/Pi0asqtAkXGVtbhr5ndiXv6A99aH8PD26oRnRvGxEm1F5Sqk4XQRjYZihFUvCla
         DTOM1UXSo5MP4pgds+nLrnDqP3V4boWzxk0/ocisgE7ydv5PhecVKCATxqMsLAWZkAXw
         Jc3CmBOI8suM8ssoHsLQN4UKHE6Quuq3v35kWjKH3yb7bRDizgCX/+M9NDN5aa2NBaRH
         lK3Q==
X-Gm-Message-State: AOJu0YzsGpDZOdXu8O8bB+SGEYuOCPf/ELvh58QExfGEWATazfCFGofq
	YMazuuN0kp9WYV9zvzcYbzDRyv3yx8ApTQkKRjY=
X-Google-Smtp-Source: AGHT+IHXbZJnn2kOU8oXhY8kFLv+tE8yUR0pfflIMAwddWoIAfdAVmz/M0agvUGtae4E5qmsjnU5iw==
X-Received: by 2002:a17:906:2492:b0:9be:30c2:b8fd with SMTP id e18-20020a170906249200b009be30c2b8fdmr4666298ejb.66.1700921882378;
        Sat, 25 Nov 2023 06:18:02 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id 19-20020a170906319300b00992b8d56f3asm3500345ejy.105.2023.11.25.06.18.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:18:02 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 25 Nov 2023 15:17:35 +0100
Subject: [PATCH 07/12] iommu/arm-smmu-qcom: Add QCM2290 DPU compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231125-topic-rb1_feat-v1-7-11d71b12b058@linaro.org>
References: <20231125-topic-rb1_feat-v1-0-11d71b12b058@linaro.org>
In-Reply-To: <20231125-topic-rb1_feat-v1-0-11d71b12b058@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Georgi Djakov <djakov@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1700921858; l=876;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=G/TOscakzMl5L7lLg+f1aIz+xjyCycciuqgvdkeUR9s=;
 b=ENgDCU5tCX4v9CkymJG/T7LJb4knR81cFyT/XGNKMDSPge5mWTB461TNnqV2zeQTm7ByPYw3U
 DyVZSXIxFr+D79fGF41S3jBKCH0oWSysSTWmlLWRPUZHnV063SCSZUJ
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Add the QCM2290 DPU compatible to clients compatible list, as it also
needs the workarounds.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 549ae4dba3a6..aea5e85b20ff 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -245,6 +245,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,adreno" },
 	{ .compatible = "qcom,mdp4" },
 	{ .compatible = "qcom,mdss" },
+	{ .compatible = "qcom,qcm2290-mdss" },
 	{ .compatible = "qcom,sc7180-mdss" },
 	{ .compatible = "qcom,sc7180-mss-pil" },
 	{ .compatible = "qcom,sc7280-mdss" },

-- 
2.43.0


