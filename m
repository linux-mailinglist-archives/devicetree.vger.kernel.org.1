Return-Path: <devicetree+bounces-274555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBVoFsmpsmnwOQAAu9opvQ
	(envelope-from <devicetree+bounces-274555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:55:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 113A627157B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 281C1306BE11
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:55:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BED838C2BA;
	Thu, 12 Mar 2026 11:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fSQSpCF7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB471F0E25
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:55:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773316524; cv=none; b=FTVfSfPOQ5ir5o4gSUSfiKsk6vm/XIOXrosA8ECwRt8h85Giuviyk7kj+eSobcqj+YWFFzZMXoD4atxA5v6oQGPTGcFCMwGKT7aXUg3meMlw59U4+D/cgQhNbrqh8IVF1Drxx38H+FIih0woiR8WgG2WgzTfcx7YY0ZhDoARyUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773316524; c=relaxed/simple;
	bh=NMCnP+Vn9CRSuVMeCq9y74f40B8hugn2Hc7oZ++rEeU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KEAnVEvDQh9ZL9u1e/VUOz/hOR9EQugkk+dvLyLQkx3mE9f3nJ4tZyEw4W/19xYyhOBFrtamtsrIgelH8wBZfh+/s+rLsxPb5bsKFlPfYWuwPsEEFHWMKxBm35gM6RZpf1Kr5VJbzQE9M8ojrtIb9A5/04A1SGDTHMJEJ+8pajw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fSQSpCF7; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43a03cb1df9so194974f8f.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773316520; x=1773921320; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=80Lm5IjiUIX059jl1E/bAPpLCGfF21FnmJFKamm0ixc=;
        b=fSQSpCF7d0F4Ry1QQIZoYDoCO/bOMHD++5QQHVwv8eYx/IpXgLrb/0boxp6QQVGANq
         X9Hm5Ub72e/gi1geTutEZWGdccvb/k+kxdpfUEcyjrHHW6OOtXbWI72scX76NmOSLPdN
         Gd2cb0k5f4xxEzngyAyYIq4TukE1Jeh7UEdZZrbL24pTEWUYuSGzbboQFm3//L1Z8ezg
         KfQ/+rWryQqtTaCuiIbWw1tOMPyGP+e3IYoEqWBXuSuTHmN5eRhqYGhZU9eNxwFcffGe
         bepfrmp8bNkEl79iso7GhRysV4opm/cSp+jg2rD3EBevfsLGK7V4Z10NdVJiXxF3ZeSf
         EWew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773316520; x=1773921320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=80Lm5IjiUIX059jl1E/bAPpLCGfF21FnmJFKamm0ixc=;
        b=swww8wF/IYjI7JrNccGLjZV6riX01DdFdErp3BgUIxscX73kuaZ4j9eZVull516nqC
         pEbgA2cel3H6U7omXMmR6ATtp6tdW8YJzE5QGtVig3wiO+lhxgf3g1aTxhfT9ZI2VX2J
         5/5sSYeAPpLITyeO6W14OhFslrwnyT8N6ETG7w9KezbBy+KVWHpwnNvk8A5h7GtEyJ/m
         SxRW31HX1MbkP7pnS7JRbsV3ipvNQ21TrAq4TU/l2AzyagFlkFI7Ke2nnTmkrKS1DRXE
         5WAEoc0QTB4MFFJ6E2/xceuVGfUtMmnH/zLihLxtHHYNrATxEZiWGwz4d0H1Dv1fuI1q
         3HqA==
X-Forwarded-Encrypted: i=1; AJvYcCUVhvnyKvh5kNGWWVNHxF28l7A/qrDTZpJpiWkZTTBFvd4YegrDe8jY8N7Cd/WLL+uep6E6zEcWXCap@vger.kernel.org
X-Gm-Message-State: AOJu0YwmJ0/h6j7GS9uH3fR0JyO/SBRzZZovV8Y8BSbNxHIgzlW1Fh+T
	50UDxKwDF/cvtrcRSEKJEjgDN4PKRtKFX92DdPtQ39Cvv+9BGslGSn7q
X-Gm-Gg: ATEYQzxe2KPKtpYyw+AZEBde0bA0TIrHjxu7zapHALnG5ZBBwTPCNuxuUopGxtfQ7iC
	ePIm9MfRfuFemGEjiWg08kRHtXHCBmJJKHnCshIt9yjZpUU12IzFB1df/S/OusDrk0U+ybzxwOK
	+zJT3C5BnXb6w2pq278NHCKgwETufGc+BLJCSiFuetTJmRF5iVDpRObY953cf8sBXA+I8sA9iMQ
	dVxbaWE9sHBezmL7OWK7DZGjQjqzq6NUtO/tj/OR7s2F48DfUAJyHN1bz2gJWwigMHxMC9r34On
	yny+vqy1rgFgKwm7KzYNRWRMN93vNeIvL2ef/sXwIT1aFtWIhgF388jWxCx2yqnqRdzSsTVGQPG
	bVCWNu9ytmhjQHyrdPOYBGt9SqEWxUpgJ9hapNiMhYpPfTiQgHoEWMTAup08kR81uef3Nv9dpTq
	KBTplwiMQlknDPha5CmRIxY/vaX3yPU27/2HNZnJAyV4E+EUD498X3vsjgjdSeYck=
X-Received: by 2002:a05:6000:4029:b0:439:b6c0:ea86 with SMTP id ffacd0b85a97d-439f81b6370mr10386697f8f.1.1773316519830;
        Thu, 12 Mar 2026 04:55:19 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe22529csm7058657f8f.31.2026.03.12.04.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:55:19 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Thu, 12 Mar 2026 13:55:10 +0200
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260312-panel-patches-v3-3-6ed8c006d0be@gmail.com>
References: <20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com>
In-Reply-To: <20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773316510; l=3281;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=NMCnP+Vn9CRSuVMeCq9y74f40B8hugn2Hc7oZ++rEeU=;
 b=zYQWzhpTIbcPuQxsdVMDtlcN2tNPR5qKgoIzLDC0rIWjSAqELBfMLtEVOHPJOL/SQ8qRsoKW9
 Smzws947TVODHaZhvs3rlnKeuJQ2+EYh2xyXsAULJ9eu1Q/gv7/D9Q3
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274555-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 113A627157B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the MDSS nodes and add supplies and bindings for the Samsung S6E8FCO
DSI controller for the M1906F9 panel.

The ldo and iovcc gpio pins boot up with a current of 16 mA, but they work
fine with 2mA, so I used that.

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 94 ++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
index 994fb0412fcbdf5466f87a325c48b697a37b514b..878b7cab479fb173bbc01ffb653e306e52cae54b 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
@@ -82,6 +82,33 @@ key-volume-up {
 		};
 	};
 
+	panel_vddi_1p8: regulator-panel-vddi {
+		compatible = "regulator-fixed";
+		regulator-name = "panel_vddi_1p8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		vin-supply = <&vreg_l9a>;
+
+		enable-active-high;
+		gpio = <&tlmm 26 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&panel_vddi_1p8_en>;
+		pinctrl-names = "default";
+	};
+
+	panel_vci_3p0: regulator-panel-vci {
+		compatible = "regulator-fixed";
+		regulator-name = "panel_vci_3p0";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+
+		enable-active-high;
+		gpio = <&tlmm 124 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&panel_vci_3p0_en>;
+		pinctrl-names = "default";
+	};
+
 	thermal-zones {
 		rf-pa0-thermal {
 			thermal-sensors = <&pm6125_adc_tm 0>;
@@ -128,6 +155,45 @@ &hsusb_phy1 {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l18a>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "samsung,s6e8fco-m1906f9";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&mdss_default>;
+		pinctrl-1 = <&mdss_sleep>;
+		pinctrl-names = "default", "sleep";
+
+		vddi-supply = <&panel_vddi_1p8>;
+		vci-supply = <&panel_vci_3p0>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	data-lanes = <0 1 2 3>;
+	remote-endpoint = <&panel_in>;
+};
+
+
+&mdss_dsi0_phy {
+	status = "okay";
+};
+
 &pm6125_adc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&camera_flash_therm &emmc_ufs_therm>;
@@ -387,6 +453,34 @@ &sdhc_2 {
 
 &tlmm {
 	gpio-reserved-ranges = <22 2>, <28 6>;
+
+	panel_vddi_1p8_en: panel-vddi-default-state {
+		pins = "gpio26";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
+	mdss_default: mdss-default-state {
+		pins = "gpio90";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	mdss_sleep: mdss-sleep-state {
+		pins = "gpio90";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	panel_vci_3p0_en: panel-vci-default-state {
+		pins = "gpio124";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &ufs_mem_hc {

-- 
2.53.0


