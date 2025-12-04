Return-Path: <devicetree+bounces-244187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE25CA24DB
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 05:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D9BD300503A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 04:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0DD2F9DB0;
	Thu,  4 Dec 2025 04:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YYLWFmi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A4D2DF153
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 04:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764821726; cv=none; b=m7ZGQyv4R+21QWjU3wbwFa7JKQ+EIWzXvi2BBP/Dwl8XRSEOSwZDSTnD0fkeGpKfiej38GG/nUZ3tYLoXdELpcQTG5WpfyV4NCEOvHAkY3HBoigJIWk3jYGE7ezNeyclCmT5hSkJv6JUQHDoVJ1HuCRpa5haR8QqRaA6t+Nqj6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764821726; c=relaxed/simple;
	bh=TB0MBPr5fdXFRf8nAGZOfdvDlYolRPXfysDqnB+9WDA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ao+IviwznusG4vRZM9zHYA2trqKVO653nOZC2WDJ0iCYlT2uEXuVl3MJE4vugsKiSqt5tnvNjOQu3Iri+JhIkM5mn56BoAwF2HS6xbzF4k/XOpqB/SThkMeRe92m1iRiE2IZZ7EwOJRt8dtzOXSVjWEfbe5q9LVP8NDItcV1VF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YYLWFmi+; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5957befc880so78331e87.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 20:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764821721; x=1765426521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0psW2YITj/BGz/R7G0e5/YUOTHhnc+iM0R98Ei9DYWo=;
        b=YYLWFmi+uhxfYuyiM0HVcRbnjXpWQ2cctQeL+okq9qpJOI7x181S/+mTvQWjv+ODu0
         Jrx0FlkakGM4m2jECl65+Deq5cMAO0YBJg03XVRh5M/l3SQuT99kPCa5BOEb8nVE5KMt
         SXfzx1qj5Uv4wUUaljlbnxOyblfx3V9WRc0OEZrxI0fCaxFGyXvebVwLi6cz5U6UpAmq
         pwOelCbDVzdzTt5djDLjvmdvMv3WEfeYzWYQ1JOVGg9HX/HoResqBdJCyRHQO1NLl7eZ
         MdstCL6YPpeuRBnJXvbdkbfyeV3gIYAEM0gJDod6NoxMG/IZSakOdLIEC4cQanVc+l8d
         KDVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764821721; x=1765426521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0psW2YITj/BGz/R7G0e5/YUOTHhnc+iM0R98Ei9DYWo=;
        b=RxsnyDNw5V2XSBDBHruqDXTIdbcjao+Qc3wExEBp89oPmHnbyyhBEWsd9j3ScqWpIw
         QWhkFsWRNHWwMDLbKgqdHgea9icf7hGEEq3zktCOClTl8QsFs0f71ltr+tMIcaa47mmN
         F7lZEYUnSkKaQuSmMQq8NUKxwlIav2rLL/aPfGQNTtA5QhoZVKZaovjP2XlApT4Dy8qA
         rCkBlXGW4F3wKIywOzb71v1hEPBw4QhlHCVPR+y0yoHz4PlL3oSQ5wHEWG6hylBs6WBh
         C0qUdgY3rzCca+JLTLUOr1wc4G0FA5oW78nCLzMyQdUIE+udWdfpxv1lRRvU/cRS3KM3
         sWHw==
X-Forwarded-Encrypted: i=1; AJvYcCV77jgTfvUBQcUN770CjhM8OeWm9k+Aciv3UCNw5mLsm/go4nk2AwjOnOuw5e3jA5CFxZ/kQd8jIfcB@vger.kernel.org
X-Gm-Message-State: AOJu0YxMnkau3CzZkBCbbHhw9ZRkEKnecY/5HOyjd0zfu0ASMx4/8X6T
	jsNLkpxjYoPu+nyLlCbUtuYiUnlEhxpZFza9iGI0NCjkQ0L0k04YBrFwy6S9BPyuiOk=
X-Gm-Gg: ASbGncvVCa+0pggiExdRot8U3jtOGO0DTrjOCusge40W+B/vm2P1lVtXHe1ZWjFWziE
	SXVOK/AwHBmwVqhiWtknUvSj/ZtN9EuQmcPohwdYwGZD8K8k0Hy28y0bXvCQzRDFgruavCU8UPZ
	By8w7GukRYsO3MB5cKyBUvejUEJfYzKWBQuWFpASKV/aEqLYrFEqviOvblw98hYLyviucB2LYDl
	uvyo5uHTlpUjzJSBjDoAip2JvP86+M3KZzzz2ri+9ZpDOvyZWo7rg28GpX8nE4x6iSsxQTDEiQY
	QHFxvr/lmzxn4baAp8EEp/Foc95pTv+vjg5LBQ+UlvdMjy+iDJ+sWHnWs3vJnXM7iPXyek2bSBo
	w9JxJcx82sHevYdRObgeIRH7hos2m/nNvlF5AVeNkmtJBlKienvXt023xEmL/oTyud/JlkzzsHY
	R7q23YrSSHqAkuwHzGhIVUTKBBQX+zD0Dn1GNjgBW/OuAl7MkXMkK2Ww==
X-Google-Smtp-Source: AGHT+IE2C36kK5XUmomK7mcLwCorAXmkpdRBp6f+4+t9Cgh48ryT3PjGZXSf475IzaSimfPGZpts+w==
X-Received: by 2002:a05:6512:1329:b0:594:1992:3be with SMTP id 2adb3069b0e04-597d4afbd1emr715501e87.3.1764821720706;
        Wed, 03 Dec 2025 20:15:20 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2a1sm67649e87.64.2025.12.03.20.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 20:15:19 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: qcom: sm8650-hdk: Add support for the Rear Camera Card overlay
Date: Thu,  4 Dec 2025 06:15:05 +0200
Message-ID: <20251204041505.131891-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251204041505.131891-1-vladimir.zapolskiy@linaro.org>
References: <20251204041505.131891-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To provide access to camera sensors a Rear Camera Card can be connected
to SM8650-HDK board, the camera sensors are:
* Samsung S5K33D ToF camera sensor, connected to CSI0 over MIPI D-PHY,
* Sony IMX766 Wide camera sensor, connected to CSI1 over MIPI C-PHY,
* Omnivision OV64B Ultrawide camera sensor, connected to CSI2 over MIPI C-PHY,
* Samsung S5KJN1 Tele camera sensor, connected to CSI3 over MIPI D-PHY).

Get the initial support of Samsung S5KJN1 camera sensor and two flash leds
on the Rear Camera Card board by adding a board overlay.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/Makefile             |  4 +
 .../dts/qcom/sm8650-hdk-rear-camera-card.dtso | 88 +++++++++++++++++++
 2 files changed, 92 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8650-hdk-rear-camera-card.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..35839b993bc4 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -315,8 +315,12 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-samsung-q5q.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-sony-xperia-yodo-pdx234.dtb
 
 sm8650-hdk-display-card-dtbs	:= sm8650-hdk.dtb sm8650-hdk-display-card.dtbo
+sm8650-hdk-display-card-rear-camera-card-dtbs	:= sm8650-hdk.dtb sm8650-hdk-display-card.dtbo sm8650-hdk-rear-camera-card.dtbo
+sm8650-hdk-rear-camera-card-dtbs	:= sm8650-hdk.dtb sm8650-hdk-rear-camera-card.dtbo
 
+dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk-display-card-rear-camera-card.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk-display-card.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk-rear-camera-card.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk-rear-camera-card.dtso b/arch/arm64/boot/dts/qcom/sm8650-hdk-rear-camera-card.dtso
new file mode 100644
index 000000000000..8a7c6d7634d3
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk-rear-camera-card.dtso
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * SM8650-HDK Rear Camera Card overlay
+ *
+ * Copyright (c) 2025, Linaro Limited
+ */
+
+#include <dt-bindings/clock/qcom,sm8650-camcc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/dts-v1/;
+/plugin/;
+
+&camss {
+	vdd-csiphy35-0p9-supply = <&vreg_l2i_0p88>;
+	vdd-csiphy35-1p2-supply = <&vreg_l3i_1p2>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@3 {
+			reg = <3>;
+
+			csiphy3_ep: endpoint {
+				data-lanes = <0 1 2 3>;
+				remote-endpoint = <&cam_tele>;
+			};
+		};
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	sensor@56 {
+		compatible = "samsung,s5kjn1";
+		reg = <0x56>;
+		clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK3_CLK>;
+		assigned-clock-rates = <24000000>;
+		reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam3_default>;
+		pinctrl-names = "default";
+		afvdd-supply = <&vreg_l7m_2p96>;
+		vdda-supply = <&vreg_l4m_2p8>;
+		vddd-supply = <&vreg_l2m_1p056>;
+		vddio-supply = <&vreg_l3n_1p8>;
+
+		port {
+			cam_tele: endpoint {
+				link-frequencies = /bits/ 64 <700000000>;
+				remote-endpoint = <&csiphy3_ep>;
+			};
+		};
+	};
+};
+
+&pm8550_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_YELLOW>;
+		led-sources = <1>, <4>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <2000000>;
+		flash-max-timeout-us = <1280000>;
+		function-enumerator = <0>;
+	};
+
+	led-1 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <2>, <3>;
+		led-max-microamp = <500000>;
+		flash-max-microamp = <2000000>;
+		flash-max-timeout-us = <1280000>;
+		function-enumerator = <1>;
+	};
+};
-- 
2.49.0


