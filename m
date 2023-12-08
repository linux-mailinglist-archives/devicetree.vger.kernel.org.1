Return-Path: <devicetree+bounces-22919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CBF80977C
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10FA51C20C71
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3A2E185B;
	Fri,  8 Dec 2023 00:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xk/EcsOz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1FD7121
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:44:23 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ca02def690so18086401fa.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 16:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701996262; x=1702601062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ofurekj2GsV9pEulhYImkibXZVuPtz//iePjOLcLr1Y=;
        b=Xk/EcsOzmwLaWyUXy8IOqAO/7ENgqfkiovtHGfgplXx/MJAzTveSl0JOz4Ne0/dW+5
         i7rNCZHEMx11uYys4pAqWpLb/WqZJKdKkNo3NhN21KzBZtJ75MuP8TZKPHyWTaaKk9Zt
         fx7hwzdL8oCX2ugkthdS6yet0zedJlohSXb4ldGvbYxG+GwkE/OWPGKTfMurZSdgYoME
         dszWZvwXztkNugvL71IKpqUQzqxOVp7tCMWjpDzL7LD4TzjzXNgHRN2dBpqkfRvWzcFE
         1nLlv0JM7MSfJqq4iWI/bSKHdWI9fn7GyIh1LHn1a5OIk787oF9O/p70/LD7kjfyeviT
         qf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701996262; x=1702601062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ofurekj2GsV9pEulhYImkibXZVuPtz//iePjOLcLr1Y=;
        b=e07RTIkT2Wjv52Yls51q+cY1sWurRyTNVRD51c7XSj1Z2mSwtj/jdOG9B8t4xphMoA
         MohQ/SSyUaGf61A6FfPRhQ9Aoh4xJfGa4BnORQkqPzdCdDgpp8T8HOCuEHxuN+bAchj+
         OPJGwhZmst7HjqlXzfle+zkmrEj1wOjx94EjdN/noTOPmuZfJ83cx0D+Nu3O0XMcybL0
         9k29jC5WI7r2du8EqDlWnD2GFTM64C+zpbp8WaqO1hz5BPiN+DBSKVainEYA//AvrAgo
         K2IQDiJYbZR38oiz0ZvcdCE4zTxDUVjGYVe2MxZnlRsLTTqM9t0aqOasWUyHo5cvj1zJ
         noIQ==
X-Gm-Message-State: AOJu0YwAEJ0k/ZEaSxNZhgmM3IakO552xoqcXHx4mTlMpLOPrkfISa7W
	trvy/fvI7GhsKEchvyUj7r627Q==
X-Google-Smtp-Source: AGHT+IEBki9ttzCfRNVVwIMSzeAndy7rLC9U4cqS870qRJL6yRAoMlY2KMPJWYfS5uxq8AePiNMjuQ==
X-Received: by 2002:a2e:700b:0:b0:2ca:3591:6667 with SMTP id l11-20020a2e700b000000b002ca35916667mr724880ljc.82.1701996262324;
        Thu, 07 Dec 2023 16:44:22 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020a2eb041000000b002c9f2c7cdecsm82645ljl.22.2023.12.07.16.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 16:44:21 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 06/11] ARM: dts: qcom: apq8064: declare SAW2 regulators
Date: Fri,  8 Dec 2023 03:44:12 +0300
Message-Id: <20231208004417.3393299-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
References: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SAW2 (SPM and AVS Wrapper) among other things is yet another way to
handle CPU-related PMIC regulators. Provide a way to control voltage of
these regulators.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 6832030c2c88..44c65ebf6c73 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -368,25 +368,41 @@ acc3: clock-controller@20b8000 {
 		saw0: power-manager@2089000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
-			regulator;
+
+			saw0_vreg: regulator {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
+			};
 		};
 
 		saw1: power-manager@2099000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
-			regulator;
+
+			saw1_vreg: regulator {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
+			};
 		};
 
 		saw2: power-manager@20a9000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x020a9000 0x1000>, <0x02009000 0x1000>;
-			regulator;
+
+			saw2_vreg: regulator {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
+			};
 		};
 
 		saw3: power-manager@20b9000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x020b9000 0x1000>, <0x02009000 0x1000>;
-			regulator;
+
+			saw3_vreg: regulator {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
+			};
 		};
 
 		sps_sic_non_secure: sps-sic-non-secure@12100000 {
-- 
2.39.2


