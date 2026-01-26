Return-Path: <devicetree+bounces-259432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGwbJ9Q+d2l1dgEAu9opvQ
	(envelope-from <devicetree+bounces-259432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:15:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 05517869D1
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:15:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 167D3300516E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:15:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7832533031F;
	Mon, 26 Jan 2026 10:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ANEPVMOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCE430E0C0
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422513; cv=none; b=LK783Y7NZDmzKH2a1Hf5Ft5cArNVewtqd4pCavqYQVvBf6/rQLMf2Wrb4LxlOemQoz2uXgzaZWbHIrETq+HaShVfCk6e+O8O376LCXzcrPGlbW4NuURgljdlFiPasa1xC080StMACOseO6FXqMHIoky9MB7vJUaASUA4l1/1sko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422513; c=relaxed/simple;
	bh=C7FSXnhNCzHXLjCA2xi/1xbacAe+dijTj6X7KneFqic=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qSXiMYhmJGs9JHgiIMFjBQn54wRPhJ4abHMzKJ9HUIkD+yYSyEFJVzN/qqf/ZCEiyq1Sc8zPafccZwpQy4Q4d6B5OxbeMqunSxkkLBbuTFkN52do8adpmgetcU5xWM7sDTLYIgBD4gLyiqnZ/yQ7QpnzNuQnyIqwdGAgCm7SA2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ANEPVMOx; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee974e230so39122595e9.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769422510; x=1770027310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KXSsUeEe6Ho3pzDTRZABOlvJdmrHwM6q/RZLBXXZ1I4=;
        b=ANEPVMOxI7Q7jzMGBLfHNWJ1BbywrfBF2C6HalfwE0/CRlPf383rpCvLlIYilbzMIP
         ivNpmYv1J07pDH+6QLR0LnKJ8C/jq/WnkKYz8H6P86bBYvlvr7E50OmAxBK1ep8JtUaH
         YhxDcmAduM7OaODY7AMHIxkv192yaI8LtFhKMbBzOVHsIt8MPi5ALzhURv6okWkj/2vp
         UqgnzoWz+lAPOZWRy1HdU3uwzOfO11zo+0SIde+q615G1d+NXMU3MSJ6TIwbMoUvDdXc
         ChET+IJnI2sxjcvHASj1oYAFtYVB5BgJroF+J4iirLVvdGVZvR3FIyJehzr/EwHFDBIk
         PiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422510; x=1770027310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KXSsUeEe6Ho3pzDTRZABOlvJdmrHwM6q/RZLBXXZ1I4=;
        b=k+4GZl9J9S92r1728v0352regwlBR8kAzWp/C5Ch+zYvPVALGndJr02CeHJPLMqOzr
         ozMkWV0fjbHMUqv8auKZ+DRxeT9MM4BaOYxtL1rBqscC4veJa5fgR++w6go2KVJI7o0o
         KjyB1JqtxeVlGB+pxJQ7Byn++viiDLfmuNQzNAt9zbrEFsDEzlnzYUSHN376mCLt83KG
         0h1AfZsmSbiFQtAEBYr/U0dMD7H7GkrA/Sdvdypotogqo3pKR0TvJOnjIHIjajR9gqYD
         OcIHx4SRHhHmgmSd6qEqmCby4pj74Qyxz9yFJfdYNNQi0DshsjXEgL3skydFFNwIUKVf
         pkPg==
X-Gm-Message-State: AOJu0YwoDqCn+fUzEUS2WUfARQdues5OXCPp3+YODofgFPwisPkQzn2Y
	JVS7w2acYFxqDDXnFRhIwHTulJvtBWyk+JkcYH6X2rhbi4x4PJSEEmvI
X-Gm-Gg: AZuq6aK2RFCsGd994C+iJk1SbuBns+coy+QmcxmKKrEaQH6oJDyFE6pho9ExysDK9Nx
	c+9VPXigfJM33tVRSOHkeg1TZxpVit3up8Mfq5putAIlD19DiUpfMLizWajnW6qNJuRDKKpT60W
	VmQhYIUbbEpi0nXaynztMTfNU6FRIKwtQaUOlLSqI84/xiv7Tu83zcqw+beEimY4bnB/+As+rlC
	5ne+WJpQhknLFq75L9Djt1d8EMYTizkgbe12iX5n3JhYpb34mM7GZfJCXoPUZJx6F6Q5BMuFyXk
	2iA16ByDnTrx9K/gYtJW6ey0JB7kzy1vg+UOBfEmls2GrNUzhv+jRIAiEoya1mB4uIkFi+N5cxt
	HMReUTAnEQv38c8WIx+89yS1pywqGt3oT28SthCozaQHX5WjCaRo7yEJdLQA+eL/T+REfdHi34z
	Gd
X-Received: by 2002:a05:600c:1993:b0:47e:e20e:bbbf with SMTP id 5b1f17b1804b1-4805cf6690cmr67919285e9.24.1769422509856;
        Mon, 26 Jan 2026 02:15:09 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5c32sm319771795e9.11.2026.01.26.02.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:15:09 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thierry Reding <treding@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] ARM: tegra: lg-x3: add panel and bridge nodes
Date: Mon, 26 Jan 2026 12:10:15 +0200
Message-ID: <20260126101018.24450-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126101018.24450-1-clamor95@gmail.com>
References: <20260126101018.24450-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259432-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com,yahoo.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.11:email,0.0.0.1:email,0.0.0.2:email,2.250.240.128:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[7000f000:email,7000dc00:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,3.59.6.192:email,bfe00000:email,7000e000:email,7000e400:email]
X-Rspamd-Queue-Id: 05517869D1
X-Rspamd-Action: no action

Add RGB-DSI bridge and panel nodes to LG Optimus 4X and Vu device trees.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts | 23 ++++++
 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts | 27 +++++++
 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi  | 81 +++++++++++++++++++-
 3 files changed, 130 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts
index c6ef0a20c19f..cc14e6dca770 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p880.dts
@@ -116,6 +116,29 @@ rmi4-f11@11 {
 		};
 	};
 
+	spi@7000dc00 {
+		dsi@2 {
+			/*
+			 * JDI 4.57" 720x1280 DX12D100VM0EAA MIPI DSI panel
+			 */
+			panel@1 {
+				compatible = "jdi,dx12d100vm0eaa", "renesas,r69328";
+				reg = <1>;
+
+				reset-gpios = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_LOW>;
+
+				vdd-supply = <&vcc_3v0_lcd>;
+				vddio-supply = <&iovcc_1v8_lcd>;
+
+				port {
+					panel_input: endpoint {
+						remote-endpoint = <&bridge_output>;
+					};
+				};
+			};
+		};
+	};
+
 	memory-controller@7000f000 {
 		emc-timings-0 {
 			/* SAMSUNG 1GB K4P8G304EB FGC1 533MHz */
diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
index e32fafc7f5e0..ab8f5cf317bf 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
@@ -112,6 +112,33 @@ rmi4-f11@11 {
 		};
 	};
 
+	spi@7000dc00 {
+		dsi@2 {
+			/*
+			 * HITACHI/KOE 5" 768x1024 TX13D100VM0EAA MIPI DSI panel
+			 */
+			panel@1 {
+				compatible = "koe,tx13d100vm0eaa", "renesas,r61307";
+				reg = <1>;
+
+				reset-gpios = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_LOW>;
+
+				renesas,gamma = <3>;
+				renesas,column-inversion;
+				renesas,contrast;
+
+				vcc-supply = <&vcc_3v0_lcd>;
+				iovcc-supply = <&iovcc_1v8_lcd>;
+
+				port {
+					panel_input: endpoint {
+						remote-endpoint = <&bridge_output>;
+					};
+				};
+			};
+		};
+	};
+
 	memory-controller@7000f000 {
 		emc-timings-2 {
 			/* Hynix 1GB H9TCNNN8JDMMPR LPDDR2 533MHz */
diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
index 909260a5d0fb..6eea8eacd7d5 100644
--- a/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
@@ -20,6 +20,8 @@ aliases {
 		rtc0 = &pmic;
 		rtc1 = "/rtc@7000e000";
 
+		display0 = &lcd;
+
 		serial0 = &uartd; /* Console */
 		serial1 = &uartc; /* Bluetooth */
 		serial2 = &uartb; /* GPS */
@@ -71,6 +73,21 @@ trustzone@bfe00000 {
 		};
 	};
 
+	host1x@50000000 {
+		lcd: dc@54200000 {
+			rgb {
+				status = "okay";
+
+				port {
+					dpi_output: endpoint {
+						remote-endpoint = <&bridge_input>;
+						bus-width = <24>;
+					};
+				};
+			};
+		};
+	};
+
 	vde@6001a000 {
 		assigned-clocks = <&tegra_car TEGRA30_CLK_VDE>;
 		assigned-clock-parents = <&tegra_car TEGRA30_CLK_PLL_P>;
@@ -1357,7 +1374,58 @@ spi@7000dc00 {
 		status = "okay";
 		spi-max-frequency = <25000000>;
 
-		/* DSI bridge */
+		dsi@2 {
+			compatible = "solomon,ssd2825";
+			reg = <2>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			spi-max-frequency = <1000000>;
+
+			spi-cpha;
+			spi-cpol;
+
+			reset-gpios = <&gpio TEGRA_GPIO(O, 2) GPIO_ACTIVE_LOW>;
+
+			dvdd-supply = <&vdd_1v2_rgb>;
+			avdd-supply = <&vdd_1v2_rgb>;
+			vddio-supply = <&vdd_1v8_vio>;
+
+			solomon,hs-zero-delay-ns = <300>;
+			solomon,hs-prep-delay-ns = <65>;
+
+			clocks = <&tegra_pmc TEGRA_PMC_CLK_OUT_3>;
+
+			assigned-clocks = <&tegra_car TEGRA30_CLK_EXTERN3>,
+					  <&tegra_pmc TEGRA_PMC_CLK_OUT_3>;
+			assigned-clock-rates = <24000000>;
+
+			assigned-clock-parents = <&tegra_car TEGRA30_CLK_PLL_P>,
+						 <&tegra_car TEGRA30_CLK_EXTERN3>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					bridge_input: endpoint {
+						remote-endpoint = <&dpi_output>;
+						bus-width = <24>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					bridge_output: endpoint {
+						remote-endpoint = <&panel_input>;
+					};
+				};
+			};
+		};
 	};
 
 	pmc@7000e400 {
@@ -1617,6 +1685,17 @@ vdd_1v8_sen: regulator-sen1v8 {
 		vin-supply = <&vdd_3v3_vbat>;
 	};
 
+	vdd_1v2_rgb: regulator-rgb1v2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v2_rgb";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-boot-on;
+		gpio = <&gpio TEGRA_GPIO(B, 1) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_vbat>;
+	};
+
 	vcc_3v0_lcd: regulator-lcd3v {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v0_lcd";
-- 
2.51.0


