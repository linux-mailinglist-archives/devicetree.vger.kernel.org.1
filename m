Return-Path: <devicetree+bounces-4221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEF27B1919
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 13:03:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6167E1C20B1F
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 11:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06195358B4;
	Thu, 28 Sep 2023 11:03:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D79358B8
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 11:03:27 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C67A12A
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:25 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-503065c4b25so20376888e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 04:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695899004; x=1696503804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2k8syU2Srvebbo9uffVrELQey0TuexhEArMkFZwpoCw=;
        b=k3dDT0aA3RcBcDBr4JmbJm/ZKtUqE/X0CP8IitF8k/ZSYBhOdi6IuuHBqZx1jnindh
         fOWs5KFeFbUrVp3QrM9PX6+WXL0nnkdWMoUwgzTec5vTkCDFGqxQwdU1sUjjwdnrmkzL
         sYntLn6dWhOcPP03xcMynyttXb1O9nEkpQkU40QhrchdKtmarXqxAIbWp12zKWK3mWZj
         nVmOI8XNMG7bH71rVlS0vzunLAHzwau2t/UnW06hmjKx1U6bYlnkBxylh6RPkLjdXf0w
         gVg8kQ1Y13lYqJxkIl+3/hrEkO12xAnjYV5QMOUyjhF/MsjDEPHVHKf3XO9mCcuL7R+5
         zTUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695899004; x=1696503804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2k8syU2Srvebbo9uffVrELQey0TuexhEArMkFZwpoCw=;
        b=vrS6RWR+u1bBdOu03Uxc3Yh1EjNHU4gFPjfuXGq1POsSSHPH5AW4hk71PU7ZdyKReo
         WfNz0neOQeqMmmnvo1AF1UT6F/kjHza9N4yxprt8f/EwCftgKlBIxrgwz0Dqjn4wlwhK
         otIDpDHlfyFKogKgd6XO9O6n2qKoqzpStpzlTTTPd9rZ9lANugcNb3/bglZbWyQEMXiV
         xPPeUIvuidxoRFUwyI8ZbssS8UG2h23IWspToQDFYd1wYtlpAO2XK2imxhcFAKYgcBlb
         cMA7MsivEUxeEKiIGAGEuvjkVA91iV0ehARC6bQ1kVyn+WNvxMLZUbY9QhREwuqDhH0A
         v4zw==
X-Gm-Message-State: AOJu0Yx4sYsvl7DB1J4+6WAVtV5ZaSv7SU5kcdaHoSqbwDE+X2VVoFSz
	f9TS+/sGUu/XWHUb9MiaoXv8WA==
X-Google-Smtp-Source: AGHT+IFsktw5jS/7Yt/kk1QL3DKpIkYkooxZP4WbUnnXtbYhTK7z9lyK2/SyD3RVrGuGKy9BkQC+CA==
X-Received: by 2002:a19:6509:0:b0:503:8fb:f738 with SMTP id z9-20020a196509000000b0050308fbf738mr749560lfb.17.1695899003875;
        Thu, 28 Sep 2023 04:03:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u2-20020a056512040200b005030a35019dsm3052953lfk.178.2023.09.28.04.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 04:03:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH v6 16/36] ARM: dts: qcom: msm8960: split PMIC to separate dtsi files
Date: Thu, 28 Sep 2023 14:02:49 +0300
Message-Id: <20230928110309.1212221-17-dmitry.baryshkov@linaro.org>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The PMIC is not a part of the SoC, so move PMIC to a separate file and
include it from the board files.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8921.dtsi            | 40 +++++++++++++++++++
 arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts   |  1 +
 .../qcom/qcom-msm8960-samsung-expressatt.dts  |  3 +-
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi      | 39 +-----------------
 4 files changed, 44 insertions(+), 39 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/pm8921.dtsi

diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
new file mode 100644
index 000000000000..414941f7a42f
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0
+
+&ssbi {
+	pm8921: pmic {
+		compatible = "qcom,pm8921";
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pwrkey@1c {
+			compatible = "qcom,pm8921-pwrkey";
+			reg = <0x1c>;
+			interrupt-parent = <&pm8921>;
+			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
+				     <51 IRQ_TYPE_EDGE_RISING>;
+			debounce = <15625>;
+			pull-up;
+		};
+
+		pm8921_keypad: keypad@148 {
+			compatible = "qcom,pm8921-keypad";
+			reg = <0x148>;
+			interrupt-parent = <&pm8921>;
+			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
+				     <75 IRQ_TYPE_EDGE_RISING>;
+			debounce = <15>;
+			scan-delay = <32>;
+			row-hold = <91500>;
+		};
+
+		rtc@11d {
+			compatible = "qcom,pm8921-rtc";
+			interrupt-parent = <&pm8921>;
+			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			reg = <0x11d>;
+			allow-set-time;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
index 43149c90c4fc..a5ea4843db43 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
@@ -2,6 +2,7 @@
 #include <dt-bindings/input/input.h>
 
 #include "qcom-msm8960.dtsi"
+#include "pm8921.dtsi"
 
 / {
 	model = "Qualcomm MSM8960 CDP";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
index 9e203164beb6..1a5116336ff0 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
@@ -1,8 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/reset/qcom,gcc-msm8960.h>
 
 #include "qcom-msm8960.dtsi"
-#include <dt-bindings/reset/qcom,gcc-msm8960.h>
+#include "pm8921.dtsi"
 
 / {
 	model = "Samsung Galaxy Express SGH-I437";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index f1267c83d67a..774f507fa25a 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -259,47 +259,10 @@ gsbi5_serial: serial@16440000 {
 			};
 		};
 
-		ssbi@500000 {
+		ssbi: ssbi@500000 {
 			compatible = "qcom,ssbi";
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
-
-			pm8921: pmic {
-				compatible = "qcom,pm8921";
-				#interrupt-cells = <2>;
-				interrupt-controller;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pwrkey@1c {
-					compatible = "qcom,pm8921-pwrkey";
-					reg = <0x1c>;
-					interrupt-parent = <&pm8921>;
-					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-						     <51 IRQ_TYPE_EDGE_RISING>;
-					debounce = <15625>;
-					pull-up;
-				};
-
-				pm8921_keypad: keypad@148 {
-					compatible = "qcom,pm8921-keypad";
-					reg = <0x148>;
-					interrupt-parent = <&pm8921>;
-					interrupts = <74 IRQ_TYPE_EDGE_RISING>,
-						     <75 IRQ_TYPE_EDGE_RISING>;
-					debounce = <15>;
-					scan-delay = <32>;
-					row-hold = <91500>;
-				};
-
-				rtc@11d {
-					compatible = "qcom,pm8921-rtc";
-					interrupt-parent = <&pm8921>;
-					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
-					reg = <0x11d>;
-					allow-set-time;
-				};
-			};
 		};
 
 		rng@1a500000 {
-- 
2.39.2


