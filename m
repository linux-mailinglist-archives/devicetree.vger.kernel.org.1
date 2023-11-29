Return-Path: <devicetree+bounces-20056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 718AD7FDA10
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A57B28344A
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA535328DB;
	Wed, 29 Nov 2023 14:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DQlrCYKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 783FF1708
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:44:33 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-54af0eca12dso7580449a12.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701269072; x=1701873872; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9K/KL6rUHA7mDcBMrrqIFDkXaVSeDD2iYf5D2W8YBIg=;
        b=DQlrCYKe3kKI8xIrFTQGxuCmo1BbW5P0nACsnOQz4FX/NRxQEj0g2/KtZQLnXTP7Sg
         DJxCw/LZ0r7IID9HUQHpmOl7RWcgb1FZwofmaOrn9FUt47pfjrYqpUUEnbb7J89G+ELs
         jWBHt5VeztRilNduWdABzTpJQPkV0+fUfXFHG101OJVSGVSimfTtQI5JZ8rtMOge2pzG
         sMrbFkV1iTx4C73eNIzBFKyQX8XJAOgzMyvAqjQhibxwMAch+FLWtqy+JnEVmhSHou6O
         +XLQp3Y98W7ZcXXuwFwzddqbrLP9zLMMfXUCo7525bKmt3j5K+eUZtzNS8TcgdEXvI+K
         u0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701269072; x=1701873872;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9K/KL6rUHA7mDcBMrrqIFDkXaVSeDD2iYf5D2W8YBIg=;
        b=ev3QndWhG2CpcXtpFTq99miG5ICCjj6DM+vl5JrfumHoG+Kqm5Opq7NaTA5xPI2qM6
         NicDDEZ4kaypPyYEovseKRM/eYA9ESxvbqHeVLCvrhbQJgw68EuKvzpftnZOvK75+3wh
         Ye2Lkxr+ualolT1l/emaw/cTzCZ9DdohVk2xgfGkf7E6X6yCdLLKvjYlN9C9Qh3CnXZb
         PC+8yZdkf/KaEi19dXnZ8hS62NrMcS0sUQFAwtXFv1aQJron/98BfTBRiXRvWiWu92oY
         UooxeaE5Tzd14crUL4ldQhNsoGydVgmHHVXmXrhZyTbLxIzCg9usm2mqAag+SY9zpDuR
         FR7A==
X-Gm-Message-State: AOJu0YwYqYZILDvImhksLBN9DkRey5dHgJwDiSKQBBhTTYHNa+/uumQv
	Pj+Hz94dvdmp6T5xuTnJwJiO+UcSpf2fIwpV3ng=
X-Google-Smtp-Source: AGHT+IGjVdN7cz5padHg+T+KRoFbmsMzhIWory1lFuWkxTuEmzq2syYeBQUInK/9FTSsztA+J2jYow==
X-Received: by 2002:a17:906:2219:b0:a16:8d1b:5b13 with SMTP id s25-20020a170906221900b00a168d1b5b13mr3159519ejs.73.1701269071739;
        Wed, 29 Nov 2023 06:44:31 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id e27-20020a1709062c1b00b009fda627abd9sm7913738ejh.79.2023.11.29.06.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 06:44:31 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 29 Nov 2023 15:44:04 +0100
Subject: [PATCH v3 07/12] arm64: dts: qcom: sc7280: Add the missing MDSS
 icc path
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231125-topic-rb1_feat-v3-7-4cbb567743bb@linaro.org>
References: <20231125-topic-rb1_feat-v3-0-4cbb567743bb@linaro.org>
In-Reply-To: <20231125-topic-rb1_feat-v3-0-4cbb567743bb@linaro.org>
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
 Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701269042; l=1493;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=RpzLMWuMbYjvqQjs1yjMVMPj1VmkWicMXA9dO0pSXPQ=;
 b=idb266kdiffZu3Aqa8UlqEsL6fRd558KK+7szhEZHwR5Nruiw3g141r8j8bfrnqsrqdUyCE8W
 EO6Zzca5zhMB+0xwj+IunhA6686/xhyDdRSJIxzzge1Fic1shg6vvOS
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

MDSS, aside from the MDP-MEM path, also requires the CPU-DISP_CFG one.
Failing to provide it may result in register accesses failing and that's
never good.

Add the missing path.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 04bf85b0399a..41d327b1f1b6 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -15,6 +15,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc7280.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -3958,8 +3959,12 @@ mdss: display-subsystem@ae00000 {
 			interrupt-controller;
 			#interrupt-cells = <1>;
 
-			interconnects = <&mmss_noc MASTER_MDP0 0 &mc_virt SLAVE_EBI1 0>;
-			interconnect-names = "mdp0-mem";
+			interconnects = <&mmss_noc MASTER_MDP0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &cnoc2 SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "mdp0-mem",
+					     "cpu-cfg";
 
 			iommus = <&apps_smmu 0x900 0x402>;
 

-- 
2.43.0


