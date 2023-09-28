Return-Path: <devicetree+bounces-4218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 662B47B1911
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7386E1C209A1
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A01A436B0C;
	Thu, 28 Sep 2023 11:03:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DCF3715A
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:25 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98695195
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:23 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5046bf37ec1so11327669e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899002; x=1696503802; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hrf3T7SMfrgZcpY2Sc1wJIHd3l2CoV8yNgWWkItWy4A=;
        b=GvLcKFULrpXMFs5NseCTu7OoqudCM0Ui4sbhW+Ox5nxvAXzzq4AJ0WHjtFu7DNU1HF
         vWOsP+mkMXnKJMRC8rtoCZOUlK5fk4GA8vloq03xtU22sVeJFK+/BeTkHza/EN6C1wNa
         IV4Gm9XDxn/s8UPAzpxqiYf6TgL4opKhv2f34JDkE4T9VlLhaAKUSaT+KgNF87cdZUhn
         pEQ6wZNVESbot7aS4SA2INUOlMyQ5sn2mj9Pkjw2Q+1weE8YQ9/RvFMYL2uCxkxcUz7N
         aPKzYjNsdt4vjdmiw1PufdTMxdSdluKdBJgCWbcOJvkHCCDr/NsoybGj6P0z/mik0KNv
         uVrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899002; x=1696503802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hrf3T7SMfrgZcpY2Sc1wJIHd3l2CoV8yNgWWkItWy4A=;
        b=ZzyCDZWObJauoXQY0q6ovoFRMAJCRb6lF7yyE0k/L1owcxeB8heZ/IabufnNNvF4Ca
         N+Nsee/8ktqAC2HAk2OBRDQgaKNqA4i78rEWTyiZwqwdMcCkOTj9/0/JIgUtoU1MBUqF
         MvxpC7SGyLi/1l8jckvrXJJgVKiqzG4TuXK1BxWt4YmzuiU3eJvoYkmdxrCpaxPQ2q+O
         ifj15V2TYNcPN6zXIZorFDTRVcy/kMYyBrtRsUQvK9vw8YeeQPeVmNgd3dA9feXhn8UI
         I5vREcoxS4UPUFWYnx3cchWmLhgprzl76D6slwmX4oNi5c2Dci030IZeWQ0oloi8hJy1
         sVPA==
X-Gm-Message-State: AOJu0Yyu2on9hLesGlEYT8oIpoo3LOHjkVzPbl7WRuS1r1znJEkr1oIw
	agdxhh54dkQvakysdrDevfQqVA==
X-Google-Smtp-Source: AGHT+IE/PBgzoBJ8Ws+SL+3i6nraA8b/wENcr1l/EEeAgWaYFs8Qk2jIooGzKUNVhMzQuoh7R1gOfw==
X-Received: by 2002:a05:6512:110f:b0:500:99a9:bc40 with SMTP id l15-20020a056512110f00b0050099a9bc40mr981332lfg.69.1695899001911;
        Thu, 28 Sep 2023 04:03:21 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:21 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 14/36] ARM: dts: qcom: msm8660: move PMIC interrupts to the board files
Date: Thu, 28 Sep 2023 14:02:47 +0300
Message-Id: <20230928110309.1212221-15-dmitry.baryshkov@linaro.org>
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

The interrupt of SSBI PMICs is routed to the SoCs GPIO. As such, it is
not a property of the SoC, it is a property of the particular board
(even if it is standard and unified between all devices). Move these
interrupt specifications to the board files.

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts        | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8660.dtsi            | 2 --
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
index 48fd1a1feea3..e4261d729d35 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
@@ -273,6 +273,10 @@ kxsd9@18 {
 	};
 };
 
+&pm8058 {
+	interrupts-extended = <&tlmm 88 IRQ_TYPE_LEVEL_LOW>;
+};
+
 &pm8058_gpio {
 	dragon_ethernet_gpios: ethernet-state {
 		pinconf {
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts b/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts
index 86fbb6dfdc2a..a5441aecd637 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts
@@ -34,6 +34,10 @@ &gsbi12_serial {
 	status = "okay";
 };
 
+&pm8058 {
+	interrupts-extended = <&tlmm 88 IRQ_TYPE_LEVEL_LOW>;
+};
+
 &pm8058_keypad {
 	linux,keymap = <
 		MATRIX_KEY(0, 0, KEY_FN_F1)
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
index 9217ced108c4..84b0366792d4 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
@@ -341,8 +341,6 @@ ssbi@500000 {
 
 			pm8058: pmic {
 				compatible = "qcom,pm8058";
-				interrupt-parent = <&tlmm>;
-				interrupts = <88 8>;
 				#interrupt-cells = <2>;
 				interrupt-controller;
 				#address-cells = <1>;
-- 
2.39.2


