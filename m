Return-Path: <devicetree+bounces-4235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D7C7B1938
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 5D49DB20B01
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEB2536B1F;
	Thu, 28 Sep 2023 11:03:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA5437149
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:44 +0000 (UTC)
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5EF5CFD
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:39 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50307759b65so20714371e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899018; x=1696503818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MPuoBnKtEFgCdxUoOIFl3Fx3Gw36qHVcIvB+5tSO88E=;
        b=zWXkJBg4JO6dMsh9Fjh0LCuQDFnGVGOThYr+cIQa9TSbrVdh8wF8rSrIo37D0WkKqB
         b5mVRu2CRVrsLskyDsXpjQkz/tguADtxsT3cs/jMMBZJinuO2bSws64BOnqtdYYLzfLe
         M5Kk/1t6p15r85q8xABcjLFyAuC+GD4pXxVhzSuzpt1avtNpUXnhtuS9DkJZU2KNkto5
         08w+5D9kIcz3FJpcIWQNlqS0jutKwWysEszvdW/aXlwJn+mA0/sBlumD/IbkdJZiPodW
         b1tbRDDubaxJf1+9UMcjrr9WsuzYF+B5nxHuv1e4wyblNQZLoijsHJ7Ca8oJTKo/EOQa
         kZzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899018; x=1696503818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MPuoBnKtEFgCdxUoOIFl3Fx3Gw36qHVcIvB+5tSO88E=;
        b=YhZy9o6sSn0CBm6K7MAYEA3bpBgSN15es7F5V14swDbeRbw6JPNu74eGJI0xS1W1Z0
         uoqjdkNcyfD0xolaDUGPab8dl9M6jHn8nan6xXp46YqlT974XTWgjgg5bGm2uF23VACh
         lfPD7Y4oC6Zb3s9dFa04x7zUvB59LhBI75/7S8m+Nsu3exilyUt8eNIqFKsfkyR4GXL6
         Zs1sh4I0ZkZpjMmnGUpinQQBXVabdByfzKStv/yQfvfolbvi3E4OICWherU75KDUPZlF
         Wvv6MAj2B4GcT97ZIUV5Iqv+fHGmi21wPzRp0/27C+tUgNZ71XXCArZ4trKpZDx/SQxX
         fLBg==
X-Gm-Message-State: AOJu0YxJ7Y9qZCOc31F9a9X5bYxsVC1JntIHXipv2Cek0ppRmtagDVv+
	XEUdYqVgCXTxOyHWmABE8Yx6Jg==
X-Google-Smtp-Source: AGHT+IF/M9Jyw3OeLTaqNePUWIKm53MEV/E7kAJpZOWwgw3jIhAUfBVCpdbH7cR5iqM0Tf/kY07Tiw==
X-Received: by 2002:a05:6512:1150:b0:4fe:8c1d:9e81 with SMTP id m16-20020a056512115000b004fe8c1d9e81mr1007934lfg.36.1695899017918;
        Thu, 28 Sep 2023 04:03:37 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 31/36] ARM: dts: qcom: msm8960: drop useless rpm regulators node
Date: Thu, 28 Sep 2023 14:03:04 +0300
Message-Id: <20230928110309.1212221-32-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
References: <20230928110309.1212221-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The set of regulators available over the RPM requests is not a property
of the SoC. The only msm8960 board file (qcom-msm8960-cdp) also defines
this node together with the compatible string. Drop the useless device
node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index 774f507fa25a..f420740e068e 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -200,10 +200,6 @@ rpm: rpm@108000 {
 				     <GIC_SPI 21 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 22 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "ack", "err", "wakeup";
-
-			regulators {
-				compatible = "qcom,rpm-pm8921-regulators";
-			};
 		};
 
 		acc0: clock-controller@2088000 {
-- 
2.39.2


