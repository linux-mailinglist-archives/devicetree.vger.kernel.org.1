Return-Path: <devicetree+bounces-18807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 875CF7F8BC7
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A47F281587
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B433A1EB56;
	Sat, 25 Nov 2023 14:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="kDQ9AAuC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D276C6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:34 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2859551886cso922814a91.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923234; x=1701528034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q77vFTikWqj8u6aZSDtWQS/5Oyjp4fDjXD5Mr5F9eOA=;
        b=kDQ9AAuCaDoKlyXLQM5Ulm3zaFqdV7O29lzMCCvbKICLRgkDsOIauhhK0ljK5FLXAA
         mNpC+8cfyVEHanp0ZxmMZFjXuflzSGbotiO6loi1+bD1WKwa/pY6B2nDClDeU3JLld8o
         KgtVWfTvDaPJfT4mKVgRlsrx4TjsbWDgG8iX6qEGm6iX2sBzfkUV8c2XNC1K4TWclnfb
         RzWqLbvxBILSlF3Ec6RhQ5/0TklpvXdXMEe7+KHrgF8fErZisZ+9rGE047QjibZFzW76
         UMMV+2TbEFTNA54hSYVhvOOBqHg0zYXR8tpitCIUSirZhEAYCi9/sTsbNwInV4s249Cb
         9a6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923234; x=1701528034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q77vFTikWqj8u6aZSDtWQS/5Oyjp4fDjXD5Mr5F9eOA=;
        b=MqOqkkutZlhNb3B4fiWopCcp9N4BPDuq4fc7SrkR6IQEU5Xt06tmdh56SC/6U+pFVy
         jvi4DXvXboo1wi0gJo/F3K7pQqgnx1pKPyDBeyd1XWWs2E6qeTCXY/1m9NExbJkcU16R
         OKiRRbHTTX8BHrkzXQoo7HRY+n7Ic8FTx0JiNMr0eLBLLCKMop0dw+8fqAdMh8YSsXBM
         w6t0bjcy1BmLW1bMA6c4n7vQmVYo7yuw/q/5dqnbqf3a2rksMHyHEhMo/YgsIwH3oMe3
         Gw6mrdf8cH3C+72/MZeoXW09ILYjE/OTKRH+IzusOjDBVhFJ/QOiOreIAhkZV48s0f4K
         +P0Q==
X-Gm-Message-State: AOJu0YzJRjclethnU7VWMDUhLweTBU5Q1RrDwNK98bkvmI3qi178yxS4
	nAGlbe/smu/5VvT9mSdOn3kL1Q==
X-Google-Smtp-Source: AGHT+IHsbgPemW+RJoXnnN0gRJzLF9/OjAHMwigjX2Ok/x5nRPhHqImeSm2PxpEei8npcUi4cM8KJg==
X-Received: by 2002:a17:90a:354:b0:280:18ba:f016 with SMTP id 20-20020a17090a035400b0028018baf016mr8196857pjf.47.1700923233866;
        Sat, 25 Nov 2023 06:40:33 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:33 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 03/10] arm64: dts: rockchip: Add common DT for edgeble-neu6b-io
Date: Sat, 25 Nov 2023 20:10:05 +0530
Message-Id: <20231125144012.58668-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble Neu6a and Neu6b are compatible with common IO board.

So, maintain the IO board in rk3588-edgeble-neu6a-io.dtsi.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  | 14 +--
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 85 +++++++++++++++++++
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 80 +----------------
 3 files changed, 87 insertions(+), 92 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
index b51543892078..46d5e21d4d27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dts
@@ -6,22 +6,10 @@
 /dts-v1/;
 #include "rk3588.dtsi"
 #include "rk3588-edgeble-neu6a.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
 
 / {
 	model = "Edgeble Neu6A IO Board";
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6a", "rockchip,rk3588";
-
-	aliases {
-		serial2 = &uart2;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
new file mode 100644
index 000000000000..845f90c302ca
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/ {
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&combphy0_ps {
+	status = "okay";
+};
+
+&i2c6 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+/* FAN */
+&pwm2 {
+	pinctrl-0 = <&pwm2m1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sata0 {
+	status = "okay";
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	disable-wp;
+	no-sdio;
+	no-mmc;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_3v3_s3>;
+	vqmmc-supply = <&vccio_sd_s0>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
+
+/* RS232 */
+&uart6 {
+	pinctrl-0 = <&uart6m0_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+/* RS485 */
+&uart7 {
+	pinctrl-0 = <&uart7m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 861067b5d707..0d6f1be69ac8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -6,88 +6,10 @@
 /dts-v1/;
 #include "rk3588j.dtsi"
 #include "rk3588-edgeble-neu6b.dtsi"
+#include "rk3588-edgeble-neu6a-io.dtsi"
 
 / {
 	model = "Edgeble Neu6B IO Board";
 	compatible = "edgeble,neural-compute-module-6a-io",
 		     "edgeble,neural-compute-module-6b", "rockchip,rk3588";
-
-	aliases {
-		serial2 = &uart2;
-	};
-
-	chosen {
-		stdout-path = "serial2:1500000n8";
-	};
-};
-
-&combphy0_ps {
-	status = "okay";
-};
-
-&i2c6 {
-	status = "okay";
-
-	hym8563: rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		#clock-cells = <0>;
-		clock-output-names = "hym8563";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
-		wakeup-source;
-	};
-};
-
-&pinctrl {
-	hym8563 {
-		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-/* FAN */
-&pwm2 {
-	pinctrl-0 = <&pwm2m1_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&sata0 {
-	status = "okay";
-};
-
-&sdmmc {
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	no-sdio;
-	no-mmc;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
-	vqmmc-supply = <&vccio_sd_s0>;
-	status = "okay";
-};
-
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	status = "okay";
-};
-
-/* RS232 */
-&uart6 {
-	pinctrl-0 = <&uart6m0_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-/* RS485 */
-&uart7 {
-	pinctrl-0 = <&uart7m2_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
 };
-- 
2.25.1


