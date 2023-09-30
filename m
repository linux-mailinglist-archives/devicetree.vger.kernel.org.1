Return-Path: <devicetree+bounces-4908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A78907B4471
	for <lists+devicetree@lfdr.de>; Sun,  1 Oct 2023 00:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 78EE0B2099C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 22:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A019199AD;
	Sat, 30 Sep 2023 22:19:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46281199A6
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 22:19:34 +0000 (UTC)
Received: from out-198.mta0.migadu.com (out-198.mta0.migadu.com [91.218.175.198])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3E9CEE
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:19:31 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ansari.sh; s=key1;
	t=1696112050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5BHnMZ6BdbY734EEjL3EnLsRc61mZd9wuBMuyBfOSew=;
	b=AWknmRenof5RmcX3LNBUrnzQhHESssrvxSbBdFaPV6dDqak1w14/92XFGELP3qw9FYBaUg
	ALpP4ClMPvNbOlyHCfyDEbwdUlTZMboACe/bBDvL9Js8IWAVh+D8ze7qOISTYSMqGHIARi
	u0rOCdlACizZUv2QzhDmGKdH3ZOpjI0=
From: Rayyan Ansari <rayyan@ansari.sh>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	Rayyan Ansari <rayyan@ansari.sh>,
	Dominik Kobinski <dominikkobinski314@gmail.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Jack Matthews <jm5112356@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 5/6] ARM: dts: qcom: add device tree for Nokia Lumia 735
Date: Sat, 30 Sep 2023 23:08:00 +0100
Message-ID: <20230930221323.101289-6-rayyan@ansari.sh>
In-Reply-To: <20230930221323.101289-1-rayyan@ansari.sh>
References: <20230930221323.101289-1-rayyan@ansari.sh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add an initial device tree for the Nokia Lumia 735, codenamed
"superman-lte".

Co-developed-by: Dominik Kobinski <dominikkobinski314@gmail.com>
Signed-off-by: Dominik Kobinski <dominikkobinski314@gmail.com>
Co-developed-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Co-developed-by: Jack Matthews <jm5112356@gmail.com>
Signed-off-by: Jack Matthews <jm5112356@gmail.com>
Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>
---
 arch/arm/boot/dts/qcom/Makefile               |  1 +
 .../qcom-msm8926-microsoft-superman-lte.dts   | 53 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-superman-lte.dts

diff --git a/arch/arm/boot/dts/qcom/Makefile b/arch/arm/boot/dts/qcom/Makefile
index 487e0a5987ce..7982620ec9f9 100644
--- a/arch/arm/boot/dts/qcom/Makefile
+++ b/arch/arm/boot/dts/qcom/Makefile
@@ -32,6 +32,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
 	qcom-msm8916-samsung-e7.dtb \
 	qcom-msm8916-samsung-grandmax.dtb \
 	qcom-msm8916-samsung-serranove.dtb \
+	qcom-msm8926-microsoft-superman-lte.dtb \
 	qcom-msm8960-cdp.dtb \
 	qcom-msm8960-samsung-expressatt.dtb \
 	qcom-msm8974-lge-nexus5-hammerhead.dtb \
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-superman-lte.dts b/arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-superman-lte.dts
new file mode 100644
index 000000000000..9b48661d69c5
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-superman-lte.dts
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2023, Jack Matthews <jm5112356@gmail.com>
+ * Copyright (c) 2023, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+ * Copyright (c) 2023, Dominik Kobinski <dominikkobinski314@gmail.com>
+ * Copyright (c) 2023, Rayyan Ansari <rayyan@ansari.sh>
+ */
+
+/dts-v1/;
+
+#include "qcom-msm8226-microsoft-common.dtsi"
+
+/* This device has touchscreen on i2c3 instead */
+/delete-node/ &touchscreen;
+
+/ {
+	model = "Nokia Lumia 735";
+	compatible = "microsoft,superman-lte", "qcom,msm8926", "qcom,msm8226";
+	chassis-type = "handset";
+};
+
+&blsp1_i2c3 {
+	status = "okay";
+
+	touchscreen: touchscreen@4b {
+		compatible = "syna,rmi4-i2c";
+		reg = <0x4b>;
+
+		interrupts-extended = <&tlmm 17 IRQ_TYPE_EDGE_FALLING>;
+		vdd-supply = <&pm8226_l15>;
+		vio-supply = <&pm8226_l6>;
+
+		pinctrl-0 = <&touchscreen_default>;
+		pinctrl-names = "default";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rmi4-f01@1 {
+			reg = <0x01>;
+			syna,nosleep-mode = <1>;
+		};
+
+		rmi4-f11@11 {
+			reg = <0x11>;
+			syna,sensor-type = <1>;
+		};
+	};
+};
+
+&blsp1_i2c5 {
+	status = "disabled";
+};
-- 
2.42.0


