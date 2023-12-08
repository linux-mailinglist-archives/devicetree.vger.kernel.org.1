Return-Path: <devicetree+bounces-22921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6CE809782
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7EF61B20E2C
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27DE7ED0;
	Fri,  8 Dec 2023 00:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZuGB66Er"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B4421725
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:44:24 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2ca208940b3so18228471fa.1
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 16:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701996263; x=1702601063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRH0ltu/8xOeCYgi26zDqsTtGrYZ67tsC2xGcsHS4PY=;
        b=ZuGB66Erbwu7e2NdgoM4TcEDf0RobP0fogwVYjJ4twA+I7eugTTZP1Edmu0ZXzgDtl
         32U61LV++2Aa0uZmvDfhTTeIW2qfg4ONxHeZqSZE398u4eJ6ChkS905pFmAJzUTfMLfC
         xjtx3zT/Lo3lPIs1vOHExr2/c6PrFStNE0AqtqOJuz3pt+GYB2Sv/YLPTtgw9TVYFP/4
         LK71TJ++vcMjjsN41IXqoqu81BFlHiOErRMORonvkSiT3a2X2DgvO5DXuZmJDo6lSwsI
         yIWy2hmTatuOeZIQVHzFYoeloSXf2ApkpdWDff8CPVQhcfVYKIMgVFwofFrRV2spqZxX
         Ae3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701996263; x=1702601063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tRH0ltu/8xOeCYgi26zDqsTtGrYZ67tsC2xGcsHS4PY=;
        b=OUZ3Y8tBZoOfckKqDX7NEolL/zz3Mx0yY6Rusk6saLX4DvR36SwkWrRrqTt1rgaipv
         mvFJuQsg/lJMC0O3Iagb/GmoA5joQ0WLOYeS8KRq/0M4mfjiBWFmOvs6fGL9aRhKFqxt
         5wwHn2VeM+MDQ5VTpyajJZnDPgOsS6WUYsHBM6KvJ39I/mq27HCI5kRJlEL/RUGvGe4a
         GElXv81BmKSIU9h+yWC6Lm8kfpo0eO+OGVeV94ourtayf1BEC9J/7CuNvCr1tEvM27BH
         btTmUP7kn3+bWOM2VHund/qR3sZGSzTlWL1scGvuZ/aT2efxQWerkgiffbr5lJ/E8HjF
         mrKQ==
X-Gm-Message-State: AOJu0YywvyABuaqE/zL/hu3zY0wKS2axzfS/bzqquh33r9Kf3FYQFJ0n
	8tkTXXqrbWkfpiDBCBFjDpifMw==
X-Google-Smtp-Source: AGHT+IHwybtxoLl4yQz0bsTFhOLvQQldFboYc0ShfFu2bASqXKvHxCiansYhsBkwtWa9B9cKK1N46w==
X-Received: by 2002:a2e:808a:0:b0:2ca:1ddf:cbf5 with SMTP id i10-20020a2e808a000000b002ca1ddfcbf5mr2116960ljg.36.1701996262916;
        Thu, 07 Dec 2023 16:44:22 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020a2eb041000000b002c9f2c7cdecsm82645ljl.22.2023.12.07.16.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 16:44:22 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 07/11] ARM: dts: qcom: msm8960: declare SAW2 regulators
Date: Fri,  8 Dec 2023 03:44:13 +0300
Message-Id: <20231208004417.3393299-8-dmitry.baryshkov@linaro.org>
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
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index f420740e068e..0ab340405784 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -223,13 +223,21 @@ acc1: clock-controller@2098000 {
 		saw0: regulator@2089000 {
 			compatible = "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
-			regulator;
+
+			saw0_vreg: regulator {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
+			};
 		};
 
 		saw1: regulator@2099000 {
 			compatible = "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
-			regulator;
+
+			saw1_vreg: regulator {
+				regulator-min-microvolt = <850000>;
+				regulator-max-microvolt = <1300000>;
+			};
 		};
 
 		gsbi5: gsbi@16400000 {
-- 
2.39.2


