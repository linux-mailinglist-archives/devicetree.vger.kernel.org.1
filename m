Return-Path: <devicetree+bounces-18809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B675E7F8BC9
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E795B1C20BE9
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FAC612E7E;
	Sat, 25 Nov 2023 14:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="tcjTu+IF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47195C6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:41 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2859551886cso922849a91.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923241; x=1701528041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4Qu2/iPJ+8lfLODFdOmLYjV+vpXk5th/WNCXHsVH98=;
        b=tcjTu+IFg1GRuAx+kMaG/WQgTAkcvmKnimK5xTZ1CaxbE3/9FiRnpIQpSKNOakhfEm
         J4PndJKstG8ap/8spGd68tOGZpjOPUIE5UmijLtoR1ibLfoUjOEJauehW1gyZ4y2htQM
         kwMTVIFtVVyZC3WWVt8K2Sydh/If6p4QRb/WfvaKCeLpqGnV1kjOFz+wIY9uMuvr66eq
         k2xxLb+54lWKSj8Y3PEKRpaR5xPR52ZQNwZvH3UXU+WVBOViTLpGPJTHUaQWNprhVuRf
         k+H8fTTochg0yZe6SWVFgkBla/PHY4IxPqp0lUwa+3g68ugS5Tg4AVxLJZmujLE0egef
         70ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923241; x=1701528041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4Qu2/iPJ+8lfLODFdOmLYjV+vpXk5th/WNCXHsVH98=;
        b=igGcSTWZtN2QISztqEUYcSxsDsc1gcPComlqBDEytleCeYmfHcM2rro3LfRxln49b+
         +DP5oxy77HmhObK3nilgOBOgwwxt1WOvo0a8aRCrI00C/pSV4BONCUeElF1BZP4s8nXR
         Db67D5U3iuhgjn+l9O4mWPqlDjV9TCLnMS6dgN3t1Xd84+wzJaBBN5BsV9MoX+gZ/tXy
         0mwp1C4Mv+fd2F52qeHW40tVCnSFpkHgfSTJ45WnEU05XeMrTfAcx9Tp0n9JlAMlmw0U
         /gV/XJYRRZ1TtH/RMFs4dOlprpULKXGNgMP1KGyq6Eaik3uF4k42pVoVRcWE2FJPnd4u
         A11Q==
X-Gm-Message-State: AOJu0YxxWk9KlWxwxPI/cxTGr9MuJezhp6kyU5+VZOnvVDyOhFLdYaGO
	+kluqJHglwkK4vpcwnLHc/Kn2Q==
X-Google-Smtp-Source: AGHT+IHgCv3Ti2Skt84I/b4RLyueqebP8Z4X1powl6WqwvVIRiu6b7BIQfPUQNpzNFSpz+zfLmv4JQ==
X-Received: by 2002:a17:90b:3b92:b0:285:a72f:966f with SMTP id pc18-20020a17090b3b9200b00285a72f966fmr1282966pjb.46.1700923240772;
        Sat, 25 Nov 2023 06:40:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:40 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 05/10] arm64: dts: rockchip: Add vdd_cpu_big reg to rk3588-edgeble-ncm6
Date: Sat, 25 Nov 2023 20:10:07 +0530
Message-Id: <20231125144012.58668-6-jagan@edgeble.ai>
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

The RK8602 and RK8603 voltage regulators on the Rock 5B board provide
the power lines vdd_cpu_big0 and vdd_cpu_big1, respectively.

Add the necessary device tree nodes and bind them to the corresponding
CPU big core nodes.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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


