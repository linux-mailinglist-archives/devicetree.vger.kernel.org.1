Return-Path: <devicetree+bounces-277356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOQWDdvTummfcAIAu9opvQ
	(envelope-from <devicetree+bounces-277356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:33:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD6A2BF56A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0BA00300DA6E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4EE23F9F5B;
	Wed, 18 Mar 2026 16:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k3FLk/sE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC2E3F8E06
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773849935; cv=none; b=fZkkSvzjCf/6DKKrxYcP9/xKheUo1KuZwGfd2Oj+ljFMNgRD1KQmB9SlLEVVcz1mxvTgcotlNZY5LiI12rAAv+K1vGy1WiuMxh1uLyLvrbEaFS8e567cBD7jBQP8ZUJjFHmvQCMK3LEbGUKDotMzPn9C/fSfVVbt07eJTfdjzK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773849935; c=relaxed/simple;
	bh=z5cWtDke+sL8Ldiyo6ylOZz0UVt/fRNgwxPdkXOleNc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mkUqtHU1Ekd00UMkP43kl4DWJOZ0eU+YQKyv9UuWkH75nkXCi2MHafffZIch4xBC7DOxh/HmX8BeEvaHHHkp7nfRz+QKfqAaofzpOCOJDeMncaTHXT3wVqmcoWVPwmaNP5z8E0hxBgOlGbkGa0ci8Xjd+oJvllXv+FPCh+5xLGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k3FLk/sE; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-486b96760easo36775e9.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773849924; x=1774454724; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q3uDCj5ujrrN7s5sHc5emouOCi1WukCaxLeNogjD46M=;
        b=k3FLk/sEOmaqRNMUtH2+PIKQmhbVT0sWG7aq2GW6SV62lcLBNT/NS+STsAhoa8DffV
         M8sw1djUaHXFNqZtW9VQc4KY2hAgtQWss/N56C2tc3qPR1wLZIcvthk1li7ZbiTMn2Fb
         mx1IYZtKKnEivp9e7RDzQXysRdIMmRQVsp/M9aieRHbowKGtjGT/os3uiQMrhWHwQjUv
         zyHyIVWAnq+owi0wmwKPRDQSH5vwJp+VnkbN+b2QsG5Iz2SFsJCbZUdR95+dy3WeB/Sm
         LXg2V+/ZcK44eaVtBB7Lt0RaUJjRCqVWbVvLmXmbHSdX5Rd3WFJyDH76QDRlYjwn3Z4B
         GMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773849924; x=1774454724;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q3uDCj5ujrrN7s5sHc5emouOCi1WukCaxLeNogjD46M=;
        b=J39TSNEArmiINGI+TbHLXqpza0a371W4r9/zyAUYU3yjzzXRCFPBNtRT8egOOoGICH
         YMiZMYuyZtKwpOdFSTQe1+B4BhyMI+H7RPMGuJUQntt59ctJyzpKb4OPxLV2qQQIa3OU
         B1YtBlIiUQnXsus5TiuePXTfTqO78HjysfCzuMP0JmEOq0wcxNyWjXK5qzCyw8fgDbHC
         Z9VlSp+KeYY5vd2Yo8ADyh3eUH6KQXBNgFwXzekKrb5j/M7qOJCtkosD9Az3QzFEBGBo
         S26OJLCbMTAvaB0i1lJUCMxaPHa2y4og76h7nEhFhYDwBtJ9+PveyGmtbnkC015gn4cq
         0x3A==
X-Forwarded-Encrypted: i=1; AJvYcCUmEbQzUZvJZvj0ehsc0vrKs8Bt/Zr/sVjZlKJhPRM6gXibbXz9RpVWPGVxMnMDU4tp16cEqNJuRfG2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4GxqA4zDhDhH39pUPPOnuWUGeifHF7SK3yuZfmttFYqmqQuik
	vVe2BGifU0s1RDbUkQldXOiJDF46JXuGqtpvo3T3kU1EXGGn+JdELPjb
X-Gm-Gg: ATEYQzxAma9lD1c64GMb3mOD0cKmWAseFPo/VZdijTDc+bIJVfOn4u3HigitfWaZqc1
	ebX/STghyXeYp/A2wzdBWzBydtXaIjG9/1LaUqR302Vi7tSq4siawMTl96YWra7ubSIejYbCGsZ
	pJthtf3WjMHRM1HGljnHBZF6hrM8eg1rFhsRui4bMAqETtOra9w5WNLrSKaJFO9eFv5v5EEojlJ
	ZF/WuGjIkWIW7BhZo+frQfJpqWS/wWGoU/lnb/qhmJTOKIher0gGR3m2zlXzVBQjh50ytLSr2L7
	wueX85dW6lieEkKPs1pB3w9vH7KIiosKxSutN8N8bF2l0gPptLouSP3AcJjONanmwUTccvgYiHH
	KqJOsoB3hmfKfXAt8Blufg0/lhkSeSph3EIOYz1Y+9ljIrE2WeWRw+8mIsKEn4dZe106TMVU61G
	I0STQ/VYfrGm699x/RSnRa1azOpKyuqOdUFZCJA5ClmEgVBhAm4WCOoSFOkv1WchOp25ngN8I6p
	A==
X-Received: by 2002:a05:600c:810c:b0:477:b642:9dc1 with SMTP id 5b1f17b1804b1-486f4475342mr67413535e9.20.1773849924043;
        Wed, 18 Mar 2026 09:05:24 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8baec5csm2282225e9.15.2026.03.18.09.05.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 09:05:23 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Wed, 18 Mar 2026 18:04:50 +0200
Subject: [PATCH v6 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-panel-patches-v6-3-7a30c2f85e0b@gmail.com>
References: <20260318-panel-patches-v6-0-7a30c2f85e0b@gmail.com>
In-Reply-To: <20260318-panel-patches-v6-0-7a30c2f85e0b@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Kamil_Go=C5=82da?= <kamil.golda@protonmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Yedaya Katsman <yedaya.ka@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773849909; l=3473;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=z5cWtDke+sL8Ldiyo6ylOZz0UVt/fRNgwxPdkXOleNc=;
 b=dYQiTGxFTslamVdeBsQYeDoKHLqMu4p1xhRxqwj/4rfnJtAiX0OJRX0t79Hb2PUQL4cU79ekl
 By44Ksiem0VCJoK3zRu+xTLhwe5Xhvq/eaGTH66U0I7qcn5SE05I/Cz
X-Developer-Key: i=yedaya.ka@gmail.com; a=ed25519;
 pk=CgNmxD3tYSws5dZfpmJfc6re/bV/f47veVijddHLytk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277356-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,disroot.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.sr.ht,vger.kernel.org,lists.freedesktop.org,gmail.com,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,protonmail.com:email]
X-Rspamd-Queue-Id: 9FD6A2BF56A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Enable the MDSS nodes and add supplies and bindings for the Samsung S6E8FC0
DSI controller for the M1906F9 panel.

The ldo and iovcc gpio pins boot up with a current of 16 mA, but they work
fine with 2mA, so I used that.

mdss_dsi0_phy is powered by VDD_MX, see power-domains in sm6125.dtsi

Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
---
 .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 94 ++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
index 994fb0412fcbdf5466f87a325c48b697a37b514b..6eb46967712554929ab68af6f3218396b7f0118e 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
@@ -82,6 +82,33 @@ key-volume-up {
 		};
 	};
 
+	panel_vdd_1p8: regulator-panel-vdd {
+		compatible = "regulator-fixed";
+		regulator-name = "panel_vdd_1p8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		vin-supply = <&vreg_l9a>;
+
+		enable-active-high;
+		gpio = <&tlmm 26 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&panel_vdd_1p8_en>;
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
+		compatible = "samsung,s6e8fc0-m1906f9";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 90 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&mdss_default>;
+		pinctrl-1 = <&mdss_sleep>;
+		pinctrl-names = "default", "sleep";
+
+		vdd-supply = <&panel_vdd_1p8>;
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
+	panel_vdd_1p8_en: panel-vdd-default-state {
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


