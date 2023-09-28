Return-Path: <devicetree+bounces-4220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 582DE7B1916
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 09E71282C82
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AF8336AE1;
	Thu, 28 Sep 2023 11:03:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4225358B4
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:26 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B14AF1A2
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:24 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50325ce89e9so21195583e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899003; x=1696503803; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9yhFXWgI+Nw/HVhizDlvwlBGCzre1lf/F+Jl5Rt5/EM=;
        b=tLFkyi235JlGPgaODrdiP4Ox5p3a1HUeUw6aW+M/OtgSXsUwJdq3CkE70HfUEICRFZ
         BmFtiOofRoioLqxYJsZ2vDa9fVSrFpOMKRtLB2D5I1cUFm+pPHqeuy6mcVLlAeEhrnRf
         5VQKnMR5jAiPkdazqlm1DH0Y+2vG52h6DYDuWC9K/pENCFmHkANVeWKPWJ48HDDqiMrK
         Po3bF64StNQXTRS6qBNkS9nxeUXaBUtN3kYxZnwWwMnlrDjmt8BvE/IsJ4JkO/SK4pGZ
         JmEJgaVxbdbc42+uVFdZSkCilunkRe8gwD8AV/TeXrKzM8vuO4J72kuszqpburGE5fop
         B/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899003; x=1696503803;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9yhFXWgI+Nw/HVhizDlvwlBGCzre1lf/F+Jl5Rt5/EM=;
        b=T8pev7KxrBd5XCYyxDhiy0LtaU3PezqH/zkSdaXkMmnSnPANxgFjPOR8HVuzFzDtBS
         EfN17+UhE1lXSsNtpXhoWWkHmkTAi25PSLmykpakz+0MOUHhlm/WMgOjk9pWA4NR1phl
         M2YsvTCH0Q6lsV0D83yYpNxqvHlVcCJYcXMjaXQduQjyInkVWwhVxb0i+zaErgaGZ+La
         l+DlAKTPrY1frPh3M73qKKueQuWfovNtB4/YWazqwf1V7cth4+SA2rEiFi300ejz40f7
         yaMLeoZQ48/kv1UFcB+gokM8TA2zrkGaUEuU93akvDv+PM0iMSGn260HaRztIg6HmY6l
         WczA==
X-Gm-Message-State: AOJu0YxH29RmGR7jySW8Ofdzg1p9YbuXYxELBO0HnRIkknp9/5aFSYfF
	ihYOQcutduWXt5un683PIrt1Pw==
X-Google-Smtp-Source: AGHT+IGJ3VQlIwDXgujPjHoTOnOyrlE25RMQMjsLqHuYdGkNYO0mipGztQzoq6UxJQ9OULFdnsPCAQ==
X-Received: by 2002:a05:6512:1053:b0:502:9c4e:d46a with SMTP id c19-20020a056512105300b005029c4ed46amr1105183lfb.32.1695899002865;
        Thu, 28 Sep 2023 04:03:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:22 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 15/36] ARM: dts: qcom: msm8960: move PMIC interrupts to the board files
Date: Thu, 28 Sep 2023 14:02:48 +0300
Message-Id: <20230928110309.1212221-16-dmitry.baryshkov@linaro.org>
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts                | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi                   | 2 --
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
index 4641b4f2195d..43149c90c4fc 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
@@ -88,6 +88,10 @@ clk-pins {
 	};
 };
 
+&pm8921 {
+	interrupts-extended = <&msmgpio 104 IRQ_TYPE_LEVEL_LOW>;
+};
+
 &pm8921_keypad {
 	linux,keymap = <
 		MATRIX_KEY(0, 0, KEY_VOLUMEUP)
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
index 13e85c287498..9e203164beb6 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
@@ -84,6 +84,10 @@ clk-pins {
 	};
 };
 
+&pm8921 {
+	interrupts-extended = <&msmgpio 104 IRQ_TYPE_LEVEL_LOW>;
+};
+
 &rpm {
 	regulators {
 		compatible = "qcom,rpm-pm8921-regulators";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index ea2d961b266b..f1267c83d67a 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -266,8 +266,6 @@ ssbi@500000 {
 
 			pm8921: pmic {
 				compatible = "qcom,pm8921";
-				interrupt-parent = <&msmgpio>;
-				interrupts = <104 IRQ_TYPE_LEVEL_LOW>;
 				#interrupt-cells = <2>;
 				interrupt-controller;
 				#address-cells = <1>;
-- 
2.39.2


