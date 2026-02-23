Return-Path: <devicetree+bounces-267643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACbnED24nGkqKAQAu9opvQ
	(envelope-from <devicetree+bounces-267643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:27:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9130917CE69
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 21:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A916B3110A37
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 20:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B422377568;
	Mon, 23 Feb 2026 20:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U/ypHDwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F133637755A
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 20:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771878413; cv=none; b=A3bDsv5D/3HkqokmZVFwWGzVWRMQQtXjwvzM+8f76XBzh5DZo7DfndhPrTVYu5tJyn5AM82dSaZwGUyzVoeN5K2gTdotY4q6L8fFft6cLf0fe08Pu95lxVX1HRtFllU//Zfwx3wURtEl6QHAKFbKQILx/Hk6YzVNcIIbTupBRAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771878413; c=relaxed/simple;
	bh=CzJleqofENKnSdtHil5FSilRw3jXdV+MFbWEBQ/PF4k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e0MhEVCgoh/He1wwATxYVcviho+ZhvyHa6+5AH4XMzfsDYod4lCgE7Xv6qccsdKtnAiGJoHLzbEXMtLYNdaHkse2UmKq5UKIG3pYLJtl8lgjVQdLUHq1bgencH8P8oWl9kL0X/Y4woIj8A/I2lIZgVcsH3NJoZ0N1I9x3dvpI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U/ypHDwX; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48370174e18so25896895e9.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771878410; x=1772483210; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=64I03f5whtjg6Z+0x9fPdRncv5f7XES5+UgOPq8bZgU=;
        b=U/ypHDwXA8x2ef2263UCWgqBBOb82mLEzrGOi56yhESeZuD77KIhrf6i7D6y5wVaXZ
         XruKbH9WGs+RWfTbCKWIBb2Auy1hQJSuqlC4HXju04I5BhJH10NIEUw4jbep58JefuSn
         KA95/VzI7WKMCJsrVBxDGI/jJUyYwba7+IliiJ0S3Auyyfpt2szmRovXnJj//oD8L095
         XcyFCxSQ2PI6Z2BPX7ILNOiOMlro4qjepC9I2zUl3eyc4VEUdER8ukycJ9aLLCjPaIC+
         gqB6r/djSZOYBDn5DiisZJg6X2t5cDIJcsUz9CbVS+idF0RYlwIE+AXmAbvsCFWCZOfk
         JUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771878410; x=1772483210;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=64I03f5whtjg6Z+0x9fPdRncv5f7XES5+UgOPq8bZgU=;
        b=CsmqazuNCy45315dVPaEEQafG4EwEJXn5pVzuBusUOKj/MmRbjKiLjCCaEbitWL1mc
         bZWtscbreziPjPKf70hUZDtU63m3ncHxuTmakxtmpOB14YQ57xnM3RFKcRLlU5wvWdEj
         eMrdM9jUoKWmcSd35mCmt5SGBiaZsNf46tONti4pvog2XE9lztqUzqNr4X41hy1xdYqZ
         tBPJCqJHwA4dvz3YZ3L0Ppgjg28YiVDXF/VKp+hEGQtyZKv8QsQMIU/Y2eCBZ/k3MBrC
         x4HzpVYzAO+FMUptpY3nMDQ64qahIrTC6j5TYQwNa+6DnEOBb+gTZUe8GuwBpIxMmdvo
         qatg==
X-Forwarded-Encrypted: i=1; AJvYcCWeGlSe3NT0/DvtjQ6oLGVDLj+OsU1AWXvNRQTYQL3nZ3fL/lVQulnrGIkmqDS/cicLYO/nfXDhyIe/@vger.kernel.org
X-Gm-Message-State: AOJu0YxsbqXlutQIyum+0yFcQuwLtU63vJnRGt74jz5CNbjD+KQkymp5
	Ibjrg6EuC2Qu7heDAEJy/2KE1BVY6Z6rxHlrBgfbn9JsuSCDq64f7nLm
X-Gm-Gg: AZuq6aJjgwnpk/EXrhhoFgCozeQi8F2psy+713r9fXNMU2lZjUIEBPOOLFp43NsumKv
	Yi2tC+IzKBHmiR/jGyVfJNPE7bEzX45KyzoAhCsL5VlsMHRYCD2HcWSYL0sqevP3VvLaRhoe0j2
	cyyLFsSSBLYLv7L1RHVXV1W8rHNNjSR/SnBNbuUZgpJM3+O1f2Ej4kS8imyfWsnY0sTGkk2g1Kf
	ceEz6PtAjPk1pFYr13DTjDi4VBmTvJKLHBXh97IDCQnLTKCuMqTG72XZUuRSYqAb3RpIuViOsB7
	OZDe5uUJcIdFlAzhhgo3y+Hpgs4UXjO/HWFoJyfj3NIC8/wByj1qd9AhW4tujex29i0ZF+uaI8V
	qnHiUsf/giCeSZ+p3dm/slPMJJrED22iwQf1x3pBFFNBa7cwYZcbK4wXYsYXIKGMw9a3dgpJSm/
	S4Oq4S0PJ6ofjTHs9HTUEFBULCepwfm9HwXqRxTkDTV/fRwa79fJMOihWOX3Uf3jw=
X-Received: by 2002:a05:600c:45ce:b0:483:7813:90d8 with SMTP id 5b1f17b1804b1-483a95bd80fmr166896275e9.1.1771878409631;
        Mon, 23 Feb 2026 12:26:49 -0800 (PST)
Received: from [10.100.102.82] (46-116-183-56.bb.netvision.net.il. [46.116.183.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d54c5csm21369551f8f.38.2026.02.23.12.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 12:26:49 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Mon, 23 Feb 2026 22:26:22 +0200
Subject: [PATCH v2 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260223-panel-patches-v2-3-1b6ad471d540@gmail.com>
References: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
In-Reply-To: <20260223-panel-patches-v2-0-1b6ad471d540@gmail.com>
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
Cc: ~postmarketos/upstreaming@lists.sr.ht, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Yedaya Katsman <yedaya.ka@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771878400; l=3240;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=CzJleqofENKnSdtHil5FSilRw3jXdV+MFbWEBQ/PF4k=;
 b=4Hhv4ch+g+2onoP3Oj07ZKaZi7xK++T1hTIP4SwL26WVmrtzuj8vNednVCZtqagKaNtpQGpLe
 ieKeg8ZLtT9Br/fX6to5HizVk92Xfd/E4/eBnIdCZV2bRg9R/PipQ5p
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267643-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,lists.freedesktop.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: 9130917CE69
X-Rspamd-Action: no action

Enable the MDSS nodes and add supplies and bindings for the Samsung
S6E8FCO panel.

The ldo and iovcc pins boot up with a current of 16 mA, but they work
fine with 2mA, so I used that.

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 94 ++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
index 994fb0412fcbdf5466f87a325c48b697a37b514b..10fd01143a644004b807fc455d2235f8e6a9737a 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
@@ -82,6 +82,32 @@ key-volume-up {
 		};
 	};
 
+	panel_ldo_supply: panel-ldo-supply {
+		compatible = "regulator-fixed";
+		regulator-name = "panel_ldo_supply";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+
+		enable-active-high;
+		gpio = <&tlmm 26 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&panel_ldo_en>;
+		pinctrl-names = "default";
+	};
+
+	panel_iovcc_supply: panel-iovcc-supply {
+		compatible = "regulator-fixed";
+		regulator-name = "panel_iovcc_supply";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+
+		enable-active-high;
+		gpio = <&tlmm 124 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&panel_iovcc_en>;
+		pinctrl-names = "default";
+	};
+
 	thermal-zones {
 		rf-pa0-thermal {
 			thermal-sensors = <&pm6125_adc_tm 0>;
@@ -128,6 +154,46 @@ &hsusb_phy1 {
 	status = "okay";
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l18a>;
+
+	pinctrl-0 = <&mdss_default>;
+	pinctrl-1 = <&mdss_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+
+	panel@0 {
+		compatible = "samsung,s6e8fco";
+		reg = <0>;
+
+		vddio-supply = <&vreg_l9a>;
+		ldo-supply = <&panel_ldo_supply>;
+		iovcc-supply = <&panel_iovcc_supply>;
+		reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;
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
+	panel_ldo_en: panel-ldo-default-state {
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
+	panel_iovcc_en: panel-iovcc-default-state {
+		pins = "gpio124";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
 };
 
 &ufs_mem_hc {

-- 
2.53.0


