Return-Path: <devicetree+bounces-18861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 122027F8D99
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 436941C2095E
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489572EAE4;
	Sat, 25 Nov 2023 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="V7Y9nalY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C222CF1
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:50 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6b7f0170d7bso2772820b3a.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939150; x=1701543950; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+r9JkMSXMkIhlM1pZxLOCkmDOSmodf2EcKndLoszrIA=;
        b=V7Y9nalYtBu4YMNWIDwG9hlS0sTdJgacVKkD+KkjehqCfsAi0c4AyBtzW6VAs64MW+
         Hapz6Xu+H3h2qFHdcb8CI/HbsJR3qNIZIkN0u3WhgZr5LJxd7AuTj4lujhUog/33P1i1
         lYURlFDopZ6LcwmO6u/ueqifrZbV7DMAnorcJb4h9cnPjCS7jTgVkA8NWDow/OaREw7A
         /qoR270xGUV7PR9EMcKm9wQPkyIImxccFnynLVuOqzYLXDcrGNttBO6uF9mNN/nYQ5Po
         S0GnFScsGq7UNfS12z/CXg4MgWCaQmMIIlHBvFJMD1v23AGeEPIjtPHHzTH6eTAEhNSY
         nkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939150; x=1701543950;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+r9JkMSXMkIhlM1pZxLOCkmDOSmodf2EcKndLoszrIA=;
        b=C3k7y1J7HK2mfXZecBhza76IexX0ZnU2Vm0EkTlJXfKWd1MCsvC3OUxEhlimv8hpzY
         /6YMYwHxrgd0FYb3LUR59KoPcD7263IzWlJ5VQm3jBoQAWaKzFKlfMELLJ695blBhm7u
         dkTS87BpudzaHYdl27vc90Nhh1gvFPSKvgXcpOLVbop1/hagW1ujTSFFxBoIol8ge6Vf
         X2GfW9hGUFH+Lsduw8GREf+Fodl+Cd7WQAwBopyc54IfYDYLmn/Lii/hP0qCe7amwGm9
         BwDlJSuQ3j2VqF2ugQvN3i124URPv+dS8aX4QTtiJ9otcjrBAYBIVTJsK0yGvEoU9vaE
         EjOw==
X-Gm-Message-State: AOJu0YyTNosvMTUEwB0T8wmO7gCPC1SiWdpz9J/iKsEKppocVLX6ijfc
	dIPBwjdG1bmdZcn66pFF9izVDQ==
X-Google-Smtp-Source: AGHT+IHZPnt9ap5ezpFrwM0Ask4IRkYU42Nc0A3PbHPDF29b74vh0H4K6wsQqLMEl/GgpJkdDWBxnw==
X-Received: by 2002:a05:6a21:192:b0:18b:5b7e:6b9 with SMTP id le18-20020a056a21019200b0018b5b7e06b9mr10703956pzb.2.1700939150220;
        Sat, 25 Nov 2023 11:05:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:49 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 07/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 M-Key
Date: Sun, 26 Nov 2023 00:35:19 +0530
Message-Id: <20231125190522.87607-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A-IO board has M.2 M-Key via PCI3x4.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- suffix '-regulator'
- use proper node name

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7e838d76fa73..088a10fe042c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -22,6 +22,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc_3v3_s3>;
 	};
+
+	vcc3v3_pcie3x4: vcc3v3-pcie3x4-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PC5 GPIO_ACTIVE_HIGH>; /* PCIE30x4_PWREN_H */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie3x4_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie3x4";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -57,6 +70,19 @@ &pcie2x1l0 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+/* M-Key */
+&pcie3x4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3x4_rst>;
+	reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>; /* PCIE30X2_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie3x4>;
+	status = "okay";
+};
+
 &pinctrl {
 	pcie2 {
 		pcie2_0_rst: pcie2-0-rst {
@@ -64,6 +90,16 @@ pcie2_0_rst: pcie2-0-rst {
 		};
 	};
 
+	pcie3 {
+		pcie3x4_rst: pcie3x4-rst {
+			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie3x4_vcc3v3_en: pcie3x4-vcc3v3-en {
+			rockchip,pins = <2 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


