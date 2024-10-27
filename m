Return-Path: <devicetree+bounces-116223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CED39B212B
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 23:57:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 826F51C2074B
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 22:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37BF218786A;
	Sun, 27 Oct 2024 22:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZvLx0jl3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3860B13C809
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 22:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730069856; cv=none; b=lJxrs3pUb2kbaSrfWn1ZHe4o2o3WbfSVtAr3mBePBwP733JFtFQ/+1LDWjO1wBV1zdL0qqeGih7zgervIdRsWu9cCq0J/QuSrln6JebY0ateG6woJxSIg+qSUFs9oa3Q2LfGC/kJDOJZ/0EcnIodTwtfAC7AFiom9iTzJh4V7EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730069856; c=relaxed/simple;
	bh=hpQ1kENVEqtKc8RKiPUelfaIDKuTSn4e8AzK40FjTx8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oeKei/nkqVUgL3aqaEVAq0a0MEZAFpnVhqM0ektUP3fit9TmSiLmvguczaN7nyhhbrsPn747KwX0y4rH/LynkJMfXH+zXzC9eHv4GJMUvYB7fG4IaaicOYvuZ9gPfTP9vZSF6Lr/Rk4q3ucMKlIZD7BACRIoDaQofS6yyAC9VNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZvLx0jl3; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-4a5c4d8ee99so1241052137.1
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 15:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730069853; x=1730674653; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vgy3VGk1Pn11Ai88JL42MQBwi3PPMEdh/Mp+3wfCo1k=;
        b=ZvLx0jl38CFf/uP/JKqEejN4Ss9Jmui4OqULfXvccJ8wUMFrk0yXyFc6UfWIaDMVzp
         9TnBRMdLHsZgZkWkSUaXMiCFP0egPt3db896HE8KzShRZx1GUJY+oCLyqm8FSps2BXms
         A/WG2e4MKjt27vdxutog5G22Q4sjOlpxUT5VzUhM4+CnSmF9VRc3n2R4eGLQxkSwWbQR
         KRr6Ub2gt0uhHresJM5jWWGXN4M7CKlSNS9HZJWGuoS03yRUyctrt6IKss03j+FL/90W
         C7Setu/FstvSI2wmm46+VapUPk9Smu1klymNFhipt/94My3F76Hu6Me59LF3X7280YlC
         dwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730069853; x=1730674653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgy3VGk1Pn11Ai88JL42MQBwi3PPMEdh/Mp+3wfCo1k=;
        b=Ldxk0BsNsN8I2T0tVUCkgRst+ZNeGwV6M7MzIKdbHPQ3R2s0nVU6IWBCbjMcTpvljP
         vGNQF71DQDzd2HZvAlR6KPNbt/pzfGNkvSnLRg2tTQCfg/Re8rIvF+BiqjQsfT+hTydg
         /dxQ4zS6RW9wNqdYJb9074/4EfZt0ATJDaInK/1EXGDcShOAmP2bh+HFy1SbppU6sRN2
         ZfIhOWeqlEXvIlbXzEAThDhAaihuAP+/bQ0u0mzhXCBUylgXVY8fbMwpPI0QN9ejIiGw
         f6cwyveKl4cSaBckDdjZ9c87U0ufNu3G6ro1ywfeD5VLLi6/7eyA0pi0GqiW9rqb0QSj
         wA1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWQxS5bxfEw0QK4LTugP2wag0rYepGSiOgh3Wbb7SzJfFRuV3Ga4MHFRzMVOtD7WZpf5Ay9YEMwhLYn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw98noQDndN9joDHrXCsnPxRxcuLGeA/yG7ZfgdvzG7cdNEHYJr
	4KHEo60GUuwJmi6/OpZjyBH/5h28WUPR++NW9m5K2WKGm/cn9dwe
X-Google-Smtp-Source: AGHT+IEp5GS5n0x05w29XQotioDngzTwdv1OubJphqMniSQH5Is15OR/44MN0WnwiCxIyQF01R4TOg==
X-Received: by 2002:a05:6102:a4a:b0:4a5:be31:b349 with SMTP id ada2fe7eead31-4a8cfd6d248mr3458945137.28.1730069853086;
        Sun, 27 Oct 2024 15:57:33 -0700 (PDT)
Received: from localhost.localdomain ([2605:59c0:1487:f210:963b:c209:74fa:42bd])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-85580b18374sm819159241.26.2024.10.27.15.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 15:57:31 -0700 (PDT)
From: Gilles Talis <gilles.talis@gmail.com>
To: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	shawnguo@kernel.org,
	devicetree@vger.kernel.org
Cc: imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	festevam@gmail.com,
	Gilles Talis <gilles.talis@gmail.com>
Subject: [PATCH] arm64: dts: imx8mp-navqp: Add HDMI support
Date: Sun, 27 Oct 2024 18:54:08 -0400
Message-ID: <20241027225408.195475-1-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The HDMI connector on the board is a micro-HDMI (type "d")

Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
---
 .../arm64/boot/dts/freescale/imx8mp-navqp.dts | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts b/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
index 5fd1614982cd..4a4f7c1adc23 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-navqp.dts
@@ -18,6 +18,18 @@ chosen {
 		stdout-path = &uart2;
 	};
 
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		label = "J15";
+		type = "d";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -85,6 +97,28 @@ ethphy0: ethernet-phy@0 {
 	};
 };
 
+&hdmi_pvi {
+	status = "okay";
+};
+
+&hdmi_tx {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hdmi>;
+	status = "okay";
+
+	ports {
+		port@1 {
+			hdmi_tx_out: endpoint {
+				remote-endpoint = <&hdmi_connector_in>;
+			};
+		};
+	};
+};
+
+&hdmi_tx_phy {
+	status = "okay";
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -213,6 +247,10 @@ rtc@53 {
 	};
 };
 
+&lcdif3 {
+	status = "okay";
+};
+
 &uart2 {
 	/* console */
 	pinctrl-names = "default";
@@ -279,6 +317,15 @@ MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16				0x19
 		>;
 	};
 
+	pinctrl_hdmi: hdmigrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x1c2
+			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA			0x1c2
+			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD				0x10
+			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC				0x10
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL					0x400001c3

base-commit: 42f7652d3eb527d03665b09edac47f85fb600924
-- 
2.43.0


