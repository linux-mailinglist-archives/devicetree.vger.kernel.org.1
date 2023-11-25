Return-Path: <devicetree+bounces-18859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D387F8D97
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51277B20F94
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 899AE2E84B;
	Sat, 25 Nov 2023 19:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="3MSgrBR6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE54B119
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:44 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6c4eaa5202aso2858236b3a.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939144; x=1701543944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1+M+xM5bIBT1EaTjPTsgQ8EOjWK63avdGfnOq4UupLw=;
        b=3MSgrBR6BAJBnQ1m0Y9KEZB5QJAunwE2U9TAh1H2xod4odOol/EZtc7qNyNp17nvao
         H1D9hbE9m2bb3GTBUqJ8YHt9YvKr0+ys89IZ4cv4wsZI+zRDl3HUY8ersulUOnBtBz3K
         NZk7qE7zNeskGJzpN9wJ4YURCHBaVWb+MjNR18PfMSZfPfXJ1zfsEC+l2ELo1mwgPjmD
         voo8lSy1SAdjxXJM6fcqADVBFQspVE/DtlpOYZGJB4wdRDBRLfU9mI9WkxaTO1mGhuHA
         rV/OKr58/F3iPTtOfPs7Mkx3qFTosXl6Feav4BQ7lXwixU3xapcqvkwWNw+ZgEM3Y5SG
         r7rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939144; x=1701543944;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1+M+xM5bIBT1EaTjPTsgQ8EOjWK63avdGfnOq4UupLw=;
        b=m2i0XaS1MKoNtOFwpp5ohz4Ta5ETitc4PPO8TrwK0nysWeHj4JdI3j2uAXVTPPUxab
         S3uqbFmZ2bY9Q81JEC9rlS0QfFoPckw1ScUyz64O5sv4lkMt+FEb9/zOWP+1V+CZg+bi
         iXFvMB9wnVCXlciJAimLlYf1LWiX6H1tQmGw4HC/o4PPGMvVI3iki0KoEFMGmS/c+p4K
         3ybMBjz61l+fskTiwKcNhTh1paW95E9DgCwwAvtWqYVkhYqn9BNOIqRS/KCOlDRC+8xS
         ciWd/vJDrJSyr9SyC9yF7awdcPAWLSJniGNEw452hn37oeXIzELlx45ZKTGDQJhS842/
         Ei+A==
X-Gm-Message-State: AOJu0Yy3l/J35A54EiruYmeq8RLJtcJZjEZ46q/C1+xejBTcBvkh+iiu
	ctk1cvnzhdo6BSZbe6HwQ/VSmw==
X-Google-Smtp-Source: AGHT+IHH28McUAL2v61zAZrCsqn5EubVM4+PuAChqZrXW1F9+rNIyeIFbKDZgXUrS+fnmoaMaQ7Unw==
X-Received: by 2002:a05:6a00:1512:b0:6cb:e3c5:7cb3 with SMTP id q18-20020a056a00151200b006cbe3c57cb3mr10106238pfu.16.1700939144377;
        Sat, 25 Nov 2023 11:05:44 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:44 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 05/10] arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
Date: Sun, 26 Nov 2023 00:35:17 +0530
Message-Id: <20231125190522.87607-6-jagan@edgeble.ai>
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

The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.

Add the necessary device tree nodes and bind them to the corresponding
CPU big core nodes.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index e141dc84654a..961a80014686 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -38,6 +38,22 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 	};
 };
 
+&cpu_b0 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b1 {
+	cpu-supply = <&vdd_cpu_big0_s0>;
+};
+
+&cpu_b2 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
+&cpu_b3 {
+	cpu-supply = <&vdd_cpu_big1_s0>;
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -54,6 +70,46 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0m2_xfer>;
+	status = "okay";
+
+	vdd_cpu_big0_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big0_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	vdd_cpu_big1_s0: regulator@43 {
+		compatible = "rockchip,rk8603", "rockchip,rk8602";
+		reg = <0x43>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu_big1_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.25.1


