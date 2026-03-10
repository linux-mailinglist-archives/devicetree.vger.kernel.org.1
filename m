Return-Path: <devicetree+bounces-273611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNSfOVw3sGkKhQIAu9opvQ
	(envelope-from <devicetree+bounces-273611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:23:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B40C253447
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 16:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 958B73046128
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C2F2FD1B3;
	Tue, 10 Mar 2026 15:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fgt+JFx+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D363101A2
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 15:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773156017; cv=none; b=V6+cXxG3iF5SGAqNwGxKz1AhEqUHbqnB2q10iEmaHiU68Tp/DCrObmTJNLywUhOryGM6BNPRvaoit2BQfzNU6BUKjtOatZ/7ArJxZiEL5J6h9uz5p9W4OBJmYztyjpnkppJMMPajnbtEAof6RAXTqSvGcN2+Y7+cU2FzOYIgy/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773156017; c=relaxed/simple;
	bh=C8J5Ohkbi26wTNa7lGQKZ8K2vWOttsiVn2qPlKqCB0g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=EX3Zd0yH7gKrPNIyLgJA6PhN5KjEigETJpanb8dudu+l4xdHLs1gfudtvacCYn3ii34tn4XQ/5QOX6eqTHjvVolIm97iIT8FEYAa5+yJyZIBdjdp8ieQGGKbi8IRp4qyfIKYi7Bmt95nNAokPuyS4qmHjxgNmETVGEiw5diI5Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fgt+JFx+; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4852a9c6309so35782975e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 08:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773156014; x=1773760814; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bt5hLU/nI/HzEOnEhRr95IV7d49z4MCJHd7um+8yN6g=;
        b=Fgt+JFx+jCtEMpwrI+/sKP4ByiBXE0TJfd/5Z4u9AyAI/M4uFWhiV//BeTbFCcj9Xb
         bu6lXk1pWP1pYDvEBw6B7dMHGVzkxhwFxx+1PyqmtyLWVrXAP4/vsz04P1KtssXwBdQA
         X0k8hXQeEr08lzSCxrPpAQKB+4HNAbmkebs2rLKqkCOLb4kACtdrMlSXHL9XwWlik0jb
         16Hqlu80LOozOuIgort0o/u7v7KBEtIkAH0Yt49kVYMAJFTiB5af0YFZXuHLiynL4CN6
         xr4SQywWAL3nMFpXCMtu95bHDjWn1SzCy1EziNoSzBhy1v/N/FZ/q9XZKRwWwGp8yLYq
         bKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773156014; x=1773760814;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bt5hLU/nI/HzEOnEhRr95IV7d49z4MCJHd7um+8yN6g=;
        b=fn8i4K+16vwJvXhsohrOCOIC0MMHknYmxDtmUDXmWBcWoY2R43wGm8FMoe0lBXbY9K
         A8BNuG+b8aQNll9ayD0l3JfWuaKS7Ojqq37Xo1HeXONXOpEVp24nLV+xeRz6HebAi/Bw
         zDkIzm2sjrwSt8rLoWZCXCV3fD/3KRBm3OMgWU4ArEIFwlyFQGRfKpMy84gE4o4YoDrk
         jlkuIHNHSescl+IuD3hRUIqhX1B4nm5Z7htYcYTSvlvj0n0QW8lOnx6fh0vM8uj4a8/2
         UZ38w4AmA3ofpRompR+Dsyg1O5mt3n+RCHDDbbbNieCfk4S2gi2BxphHFgp7my7GbYYT
         NUpQ==
X-Gm-Message-State: AOJu0YxaVYFTIit+PM4jA2l5myAWgjPmqv8YpqBcrgRUtCNUFvKkNCH2
	MD6N6sAqypXneQRGvt0zKgxdS2pW2bSAyaeP9y+7yUc5W6G/QswdKplO
X-Gm-Gg: ATEYQzzcp4fl2tfTq5UHNzKoJ9QnYNNmEihuOMdUlpYCvMEIrYBX85rj7pvFXtZ13Nd
	XAIIboiWCj8vMJLNM2xOs6MmZ7I218sWYC833UCgas6eR61IiR50//HJVxwffm6vP6GtTolY1uj
	fWwzOZVX27ZS3sLhg2kXIv193NHyW3ewHdItUDEXeDTzRSa4cfz4Ze5LDQHSg0A/XNCYs4S01Xb
	AtntmcU9m8IHSh6WC27D9cTc7207Sf4VZS40wt2CZL97rBt2t/i0DdXu3hEhU6Em0+vTMrqBEhC
	uqm9OFIQlneK1MTb/dx4chJrA33nfvQVuS8XI5vykRqNJm/a3/6T0lt0fJSdCxFtikbZeS8oc2x
	S0VBIW3OCAwoDSvkm0Mfp7tGz8/u817SZxO9rhziKbndbjv2uPQPHS4Vvdch1YnCydq6Or/1Mjm
	Fp9I6mHSEqR5+V0RZ4ZfgIZbgEDHUXtd+7hvJAoQg=
X-Received: by 2002:a05:600c:1d04:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-48526984073mr264295295e9.31.1773156014424;
        Tue, 10 Mar 2026 08:20:14 -0700 (PDT)
Received: from [127.0.1.1] ([2001:861:3201:3d10:6ff9:342f:d717:ee6d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853927825csm66137175e9.9.2026.03.10.08.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 08:20:13 -0700 (PDT)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Tue, 10 Mar 2026 16:20:13 +0100
Subject: [PATCH] arm64: dts: mediatek: mt8390-tungsten-smarc: add HDMI
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-mtkhdmi-v1-1-841e834c8abc@gmail.com>
X-B4-Tracking: v=1; b=H4sIAKw2sGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDY0MD3dyS7IyU3Ezd5NRk45SUJCMTiyQDJaDqgqLUtMwKsEnRsbW1ACN
 LVsJZAAAA
X-Change-ID: 20260310-mtkhdmi-cec3ddb248b0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773156013; l=3443;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=C8J5Ohkbi26wTNa7lGQKZ8K2vWOttsiVn2qPlKqCB0g=;
 b=uOkV/mzuDsU2lf2WEF+Qa9VcgGytdgO2J12PEOKmzyOdBJ5xOx+yRjEXzwmA/cmbzMyQ+tgGk
 6roB2Txi1iuDNuvTVCZ3RaJ55vUCzvxRDWbbDZBeh0AANuf0CcruxsP
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=
X-Rspamd-Queue-Id: 8B40C253447
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-273611-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.7:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bissongary@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,5d:email]
X-Rspamd-Action: no action

Add HDMI display out support to both Tungsten510 & Tungsten700
platforms. HDMI audio is not covered by this patch, audio (HDMI & I2S)
will be added as a follow-up patch.

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dtsi   | 116 +++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi
index 40b381d4cc35..85c1ff6a3588 100644
--- a/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi
@@ -46,6 +46,20 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+		ddc-i2c-bus = <&hdmi_ddc>;
+		hdmi-pwr-supply = <&hdmi_phy>;
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi0_out>;
+			};
+		};
+	};
+
 	firmware {
 		optee {
 			compatible = "linaro,optee-tz";
@@ -283,6 +297,18 @@ &dither0_out {
 	remote-endpoint = <&dsi0_in>;
 };
 
+&dpi1 {
+	status = "okay";
+};
+
+&dpi1_in {
+	remote-endpoint = <&merge5_out>;
+};
+
+&dpi1_out {
+	remote-endpoint = <&hdmi0_in>;
+};
+
 &eth {
 	phy-mode ="rgmii-id";
 	phy-handle = <&ethernet_phy0>;
@@ -304,6 +330,35 @@ ethernet_phy0: ethernet-phy@7 {
 	};
 };
 
+&ethdr0 {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			ethdr0_in: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&vdosys1_ep_ext>;
+			};
+		};
+
+		port@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			ethdr0_out: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&merge5_in>;
+			};
+		};
+	};
+};
+
 &gamma0_out {
 	remote-endpoint = <&postmask0_in>;
 };
@@ -313,6 +368,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_pins>;
+	status = "okay";
+};
+
+&hdmi0_in {
+	remote-endpoint = <&dpi1_out>;
+};
+
+&hdmi0_out {
+	remote-endpoint = <&hdmi_connector_in>;
+};
+
+&hdmi_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmi_vreg_pins>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0_pins>;
@@ -531,6 +606,35 @@ touchscren@5d {
 	};
 };
 
+&merge5 {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			merge5_in: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&ethdr0_out>;
+			};
+		};
+
+		port@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			merge5_out: endpoint@1 {
+				reg = <1>;
+				remote-endpoint = <&dpi1_in>;
+			};
+		};
+	};
+};
+
 &mfg0 {
 	domain-supply = <&mt6359_vproc2_buck_reg>;
 };
@@ -977,6 +1081,18 @@ vdosys0_ep_main: endpoint@0 {
 	};
 };
 
+&vdosys1 {
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		vdosys1_ep_ext: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&ethdr0_in>;
+		};
+	};
+};
+
 &watchdog {
 	pinctrl-names = "default";
 	pinctrl-0 = <&watchdog_pins>;

---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260310-mtkhdmi-cec3ddb248b0

Best regards,
-- 
Gary Bisson <bisson.gary@gmail.com>


