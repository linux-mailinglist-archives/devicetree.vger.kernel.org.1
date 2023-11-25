Return-Path: <devicetree+bounces-18862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9567F8D9A
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D1461C20AF2
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABC222EAFE;
	Sat, 25 Nov 2023 19:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="fgzkTop5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0B76119
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:53 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-5bd099e3d3cso1778635a12.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939153; x=1701543953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZT5d809egHy5KvFUpSxcQoRCivumOp3jVBiUqly54QY=;
        b=fgzkTop5R8T+Yhmeox4JfTQX2sWYbq0hACpx00WBM7Bjveoz+OjN2B4pvs93N9Riic
         pCa/ARw6IKCxu0jdmp5Ffyrar+UpT72lGcz/b6fxlJ9nKSTrnzaoyJsvgtsY9fE07U55
         EuLfa1amTrffMhdIY3O0SSGh7olwwTwQ9JtFB9OLpcz6HLrrkwSnB5iOFm+78k6KW7Hj
         zo6GR31YGJqzfvsG3CET8zxVpn7jeuLYwrJQ4rZiFJ5konzBi81skk0eoBH6PHljgTgW
         3N1XtGBwR1CBJb/QDa42KXH2QXsBriUAmragYHr2pfO6PKXwlw/vb9G53etcx6gVW8Ta
         9whg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939153; x=1701543953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZT5d809egHy5KvFUpSxcQoRCivumOp3jVBiUqly54QY=;
        b=qrqLj5xdRM4PjlAsIMWijhbkh2A3vNB4tQDum7+wqoZ/p7/pH3UJ4CJoZw6SbsBznj
         DGmd7Nde+/0P1ufjl87B7VwO/rZzB9b/mVTtLlPoWpPuDEeV0PMQTKSt8e/fZM+yRHhp
         AeSsYbwiOEKwy1kmwpXWgTzMpBmHIgiHZwGRVkpjFYNSwEbdSdnwH6UOXA2VhkeUsGR/
         bmipig8vZ1egPqFHMGzWXOxj72u8SxFC3dngziY54a+tdX2hTUmpRbqqy52qFa4PPndw
         HnoyGA39L0MWBL+xnrs9qWKiT38SL33a6d0X2U/9rfCT871ZDtc4my38gxKIfcqfglYN
         ShLg==
X-Gm-Message-State: AOJu0Yy5YWHqFyN1HWkV0kSVTuv5je24fvQZ+RH8V82FnmxoGnHKxrHj
	5fZds2NUHkiRKO0V8kgKlZhPbg==
X-Google-Smtp-Source: AGHT+IHBazHbTgiHtvwGYMDwMgd11PzTHYQd/1wTRSW+PlDaFY1a8PCK/zZLIoD1BrV2W5DTNKxQDg==
X-Received: by 2002:a05:6a20:3d1b:b0:18b:556b:6d54 with SMTP id y27-20020a056a203d1b00b0018b556b6d54mr8212567pzi.55.1700939153014;
        Sat, 25 Nov 2023 11:05:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:52 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 08/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO M.2 B-Key, E-Key
Date: Sun, 26 Nov 2023 00:35:20 +0530
Message-Id: <20231125190522.87607-9-jagan@edgeble.ai>
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

Edgeble NCM6A-IO board has M.2 B-Key, E-Key via PCI3x2.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- suffix '-regulator'
- use proper node name
- fix commit head
- update comments

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 088a10fe042c..130b240e0da8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -23,6 +23,19 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	vcc3v3_pcie3x2: vcc3v3-pcie3x2-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio2 RK_PC4 GPIO_ACTIVE_HIGH>; /* PCIE_4G_PWEN */
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie3x2_vcc3v3_en>;
+		regulator-name = "vcc3v3_pcie3x2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_pcie3x4: vcc3v3-pcie3x4-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -74,6 +87,15 @@ &pcie30phy {
 	status = "okay";
 };
 
+/* B-Key and E-Key */
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie3x2_rst>;
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTn_M1_L */
+	vpcie3v3-supply = <&vcc3v3_pcie3x2>;
+	status = "okay";
+};
+
 /* M-Key */
 &pcie3x4 {
 	pinctrl-names = "default";
@@ -91,6 +113,14 @@ pcie2_0_rst: pcie2-0-rst {
 	};
 
 	pcie3 {
+		pcie3x2_rst: pcie3x2-rst {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie3x2_vcc3v3_en: pcie3x2-vcc3v3-en {
+			rockchip,pins = <2 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie3x4_rst: pcie3x4-rst {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.25.1


