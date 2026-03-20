Return-Path: <devicetree+bounces-278308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMo6DmldvWl09QIAu9opvQ
	(envelope-from <devicetree+bounces-278308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:44:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BA74B2DBFA9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 15:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1325E307F02C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 14:42:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8553C73CA;
	Fri, 20 Mar 2026 14:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LiapktGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19123C5DC7
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 14:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774017718; cv=none; b=alePUMsglxKvlgPSClYl6KkKDjbS5KIhxsj69SxVDxypO//3quuNAHmUC2Nl51w2UrSudmctwYV5Hw8N6RmBv4kc+NVlPzJwwUcB1sSC5ANYWjBHlR8/OiCYTRQge9ipVaopBwInq00orcSbhhZqW2Hle+NGIMEAh6Ssp4tGUx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774017718; c=relaxed/simple;
	bh=z5cWtDke+sL8Ldiyo6ylOZz0UVt/fRNgwxPdkXOleNc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DQN0j++miLRBzXV3YkRrrFawzOrKC00Dokt9AuKgwOh/YezfT1W73u1k6GLd9AcApjavLifZ0pNW8i0x5jo9EdIo0XtydeI6IKo61KB1ycgXin0adgdDpc6m4VbgjLW9zV0LEhBHIq9gfv9g9y/ENpmCichyXj7dROaLNu3TOhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LiapktGZ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-486ff201041so6377785e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 07:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774017714; x=1774622514; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q3uDCj5ujrrN7s5sHc5emouOCi1WukCaxLeNogjD46M=;
        b=LiapktGZ4JfS2M7bsep91VwHnX82ukv5YFkvouT+UXjArsp6iHoRdUFMLEnZVIEuRC
         pSQ5c3KjBklD8cZ9LHX6jwVPsH5uq5+yI237zY7m3JN04tImg1Wuwi+gW5/rCpM/E5Zj
         dn+dQY9LXaIPxkc+cvmWxko5U6LkpgzN+Pv7vrY/EkCvs6nKfSVh2maodGtxfurLBoPr
         K+Jx9MCJtSgk0qdRVRpkGlVMBDAztUv2vx2+wMs4DCMXNx/5VLmKuBvJ+lMiUCrqz7Bf
         c9J2c3tIWFV/kXfAZDHdq5j70LVF16n8RwKA+rxEByXCbGZ6AenxEfuBmIQlIMVM1Hi0
         5Vcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774017714; x=1774622514;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q3uDCj5ujrrN7s5sHc5emouOCi1WukCaxLeNogjD46M=;
        b=ftTwmND/lWoOvrDgV6rmrshJFwTLv2uWL8LYVFI6GY1LE7G7XWXNjkitMGxo2Aw7ek
         2sGyo8Z049Cv9JTJ1uOgB0WzvttxTr9sW7jFjRP7gb5x2osUDwaJG4MHre12ZYPQHD39
         /vTlGRkAcq+LUL7HZ2Trca9MgqPHkfORSvmAIETRKKsKCLcvqB5hzsadDyQPXGGkyrC0
         wTZyA58HCEPHH0PClemo75C8C7D4juWLbP1xZsQ1MLYU970XSuj1mElSExdgFDEpOs2u
         PM7lWUtwrhoidMqWR/pL1H/srrcUUJ7xQo/LWYUB+D7ubRXYWzPYUAHtJV4cX1hI08eL
         iFfg==
X-Forwarded-Encrypted: i=1; AJvYcCX0vw9RonLqSdHe4EHAWiDscR/boDOxMR4z0/mR0KdrasEGxvBQw1wxONBypuk0HEqBYV+bEv2bnDMJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5LOI7t7IP9aURXepIlIp1pmTMToef6ZFyf6iHu+IwRwph2Lh9
	b+8KcZfdYOgyJWylakLdWDA2XDFKYStGa8MTtiA+D9XS49doYTwlRg7i
X-Gm-Gg: ATEYQzzzIkWGB5ZxWAVIgGIInWiAqRT5nnpbUck8FFeGjQ7biMahif6u3PFMtD9JrqL
	h0wVk3E73Cl7Ufv6KuUwUSK7fc2n+XeqitKvTVpHUUKEng8ciDdCQG0YfKEHvt9rru951FIeIP+
	sWPjKdcGa0NpOweR0ZOHk3Q7GJrM1lBXzwfdtoSqXrhlFC1nnLSRvjqu0LLqOhyrI1PaJvmNZ5C
	TLyLG7C1WJ0ykwjfn0+9e2tIR+K9Vijsc1GyFQyzr+CVjDiMRoSpn2VeYM22A4OtzvZqfoGGUh5
	ZB3b0icrnGQE0Mgq4Wgcf0szlTQHmj3x3SHL2qztYEntOggrag+4l3fLjJJ36kx1KWW9gtwMcBB
	AsK5Pc/5BQISykIaMKGl/jXDKGTeuoyqT31vpD4nDSK1LZIXdUqARHLLmhY2NxirpKdQdYXqSXH
	vn3tTzYtVX0lZdk+8OREETL+nNk/zz8lkyKqn7SAYkoW2Nsu9xGx/tbAE2KFr9RSA=
X-Received: by 2002:a05:600c:4e8e:b0:485:3c8f:e4c5 with SMTP id 5b1f17b1804b1-486fee049fdmr47723445e9.17.1774017713941;
        Fri, 20 Mar 2026 07:41:53 -0700 (PDT)
Received: from [10.100.102.17] (89-139-129-65.bb.netvision.net.il. [89.139.129.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm130648835e9.5.2026.03.20.07.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 07:41:53 -0700 (PDT)
From: Yedaya Katsman <yedaya.ka@gmail.com>
Date: Fri, 20 Mar 2026 16:41:40 +0200
Subject: [PATCH v7 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260320-panel-patches-v7-3-3eaefc4b3878@gmail.com>
References: <20260320-panel-patches-v7-0-3eaefc4b3878@gmail.com>
In-Reply-To: <20260320-panel-patches-v7-0-3eaefc4b3878@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774017703; l=3473;
 i=yedaya.ka@gmail.com; s=20260113; h=from:subject:message-id;
 bh=z5cWtDke+sL8Ldiyo6ylOZz0UVt/fRNgwxPdkXOleNc=;
 b=WHY8+9XaoSxSSE2KQ2TOtpn78+34uCdIC1zeND3T4ovWS7EtUwqQymYR6bvjCFI+7j0eI9ZtF
 q5GKppG0j2nAzqcPps59vM1DfETVxG+iVYZ/oK+XO4vs6YBnjp05RIn
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
	TAGGED_FROM(0.00)[bounces-278308-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.972];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: BA74B2DBFA9
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


