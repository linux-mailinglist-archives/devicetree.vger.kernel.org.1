Return-Path: <devicetree+bounces-18810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D05EB7F8BCB
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37E83B210C9
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACDCE1A733;
	Sat, 25 Nov 2023 14:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="VLHyQFH2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DB05107
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:45 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-285636785ddso2045237a91.3
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923244; x=1701528044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IUgKD0qz4V3/XXhXUCXdndZjhXDkH98hRGDGFOanDcc=;
        b=VLHyQFH2wARe+5973TC8lY/BwrEaxBXH6qgbczbHBhpe7sMN2PE+vAiFWIs4RtEVUU
         KiHWW5AVepDr+p9mEgrCjR+z8RReMa+z2241B1bIzSVp5sLG/CrYw7iFklIgTNO/G4hp
         pnxMtDrRgUxh9NDNdeHXKussslE0i5EvruLHpgh7iAnbFSZN8w1slkMbdmQuL8K+VhRI
         VwKkqlKmNlrVMehewJZ7CYD+FE0LByItsMcuNu3pdE6LDIGgIdanwenj8R67jNkiihhd
         cQDjVP1z122+21fyl2MyH5qh+sMG7SBLBTQAeWiUHQ52DNj4RFhNobUz/G9NSgSruY1f
         mE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923244; x=1701528044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IUgKD0qz4V3/XXhXUCXdndZjhXDkH98hRGDGFOanDcc=;
        b=c1YVl314EqY3b0sUZJxHhhQd/JzHHLP55cAUvCN7TrNFWa20jsh3UG62Sce43L6hkY
         8n2HA2HHWflsXCjAWlm63+OimcxKEHAp9lv6A3MJL3R28uPh5JV5jNdJjatLGlN7ZhCP
         1q1ai65dApsc/8NtiVWeCo0h16AvPfY+EjnxemLG8Wj3Np3pOz3fQoFsprUeGh5H6B2y
         BVg53nFJwfXYDpQIMYN1P2BFniIsGunQGp8MqKKrwOSa0uklG16E/0olkGwwkonMIoma
         u89ICCvnLPBdVxg3EPV9LFq3Vo0OjhS6ThzSnHLORZkyCoWep3BSdn6jN3VLQPwcxCuc
         K0QQ==
X-Gm-Message-State: AOJu0YxQlfTFtMDi2zSqX+ziF4eHAURs2rKUu6D1L2qeStsjXaS2NcQJ
	PYG4jntRgytSLUas/D7sd54X9A==
X-Google-Smtp-Source: AGHT+IGAgxm743znNlj8wApEJKbIGlJxeIn8bL/GrrcKdJGwx2Ocie85VdA72i+sp0r75E8L2/GQbw==
X-Received: by 2002:a17:90b:4a09:b0:280:8356:10b2 with SMTP id kk9-20020a17090b4a0900b00280835610b2mr5927050pjb.5.1700923244578;
        Sat, 25 Nov 2023 06:40:44 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:44 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 06/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
Date: Sat, 25 Nov 2023 20:10:08 +0530
Message-Id: <20231125144012.58668-7-jagan@edgeble.ai>
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

Edgeble NCM6A-IO board has 2.5Gbps Ethernet via PCI2_0.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 845f90c302ca..7e838d76fa73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	aliases {
 		serial2 = &uart2;
@@ -11,12 +13,25 @@ aliases {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
+
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &combphy0_ps {
 	status = "okay";
 };
 
+&combphy1_ps {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -33,7 +48,22 @@ hym8563: rtc@51 {
 	};
 };
 
+/* ETH */
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>; /* PCIE20_1_PERST_L */
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	status = "okay";
+};
+
 &pinctrl {
+	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


