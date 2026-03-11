Return-Path: <devicetree+bounces-273766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKTyNIezsGkHmQIAu9opvQ
	(envelope-from <devicetree+bounces-273766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:12:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D045259924
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B70823026AB5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D994415687D;
	Wed, 11 Mar 2026 00:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BIXUAf+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FC514A0BC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773187971; cv=none; b=YXz5ICixaIzoGmIIrAsAbkhgjZ/PbtXho5p4NlADdi/EHOtrjXGzhlzVFA1/vbz4kjd0JoITKk7l/WZi+L4EJXwHsqL5AUDSnuJDPZtUaROeHJx965J9sL1gD5G2AbKC1ojwugMfuEAoU9Gg5IlZQSAbse+2uAE+QDw9LCOHHMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773187971; c=relaxed/simple;
	bh=q/TWnouDib07gngy30kI1WGpH50qXN+Rv8AzYp9ClzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jK3g4ul44XPyiwkgoRP9W1r2xcMaqdYf06UcwzVnvnlg51i6Mx34ZuXI0bk20RMX6HsCvOOQJ0kYibnewr2J7B6/Z01rrRbl4np81HTLrkS0dr35WublIAOM+kgYthGagtjr1IzvrdlnhoLFCfu70cqlblymEhi6xRp7aw9tzvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BIXUAf+z; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a13d3170acso729450e87.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773187968; x=1773792768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D9U9YlcZ6fX68BoD6/xbGJHOPf5j+kwjRYczriGqcus=;
        b=BIXUAf+zKAH+OeIv1+6KMLHxVn75lwDwRT+d6EXrLyecWYa2pPRte+X8OzjlFEY7KW
         hlJaukXpZOA3TN3EHl6Nv1cCYotLIduRCtIItlnNCdQurtZH47AiUKFNOuPRuncbN/Bt
         p6zVWswwsKR7o6eZCKM5y94IbN3k0IzTuglqiEUU1Iw1kP9a8UUMd/yquK63zlz53cea
         i9fMePBloEg73WWYQTA6+kX29W+6FOo6D0BGmgbL3Maog0+OMe33GsD6Jh0eBa/qSBLa
         1cshudnMByi1SLbAyMYpPMB9pzgd1HySFwNllsXp3mBs7FzM3ORYT+4EXi5rOCwwh8h9
         Lu/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773187968; x=1773792768;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D9U9YlcZ6fX68BoD6/xbGJHOPf5j+kwjRYczriGqcus=;
        b=CQu47BuyTlZuvXVVR6ZIV5U9uIAAv57YteEu/aKRzvT4/jnGHp6MCfmvqT9ueeESgZ
         TXxnnupt8kgpE82bM2oTektCyfjobXGQ7N+5UxDHXoeI+FKR2lWHTvpVHl6vXWPWGi/X
         m17p6O6eptPpKTeRDa6w/2AxG0AnhLGrBBdkumUVonFSsWxWmxcJwfpY1KTaaDZRRuDN
         TtNVrgSExGxjbDUYCR5E9vlEKZaJd/VGMqkqGmF+Sw1lh45X1TlW0TGq9GkimJ0oJ4tB
         a+kODY8EkNVgdHltmPjA8ONi62RNPuKkw0Maxh66Rj/lwIsYEAY0MGjhrPCt2UsdP8Zy
         +sGA==
X-Forwarded-Encrypted: i=1; AJvYcCXGeeVmZcxYDK9Fa7LT6DeTyvVn7ccv/3f4f5Uqjn029BTeJaifRFSoWOX2GCbrzWahgmbFMchpuqGO@vger.kernel.org
X-Gm-Message-State: AOJu0YwHoQvhhI5PO/TMb2I0Yq5dPL874iWfe+G/lDQ0gfTi6klFIDoQ
	zVVyU3ugHk8UGgvNI2Aw/lQq7nZUgWMhAzj5LpmGb9xO9Ew3O44b1AGnPl+jVRPONuU=
X-Gm-Gg: ATEYQzzhay7vDBxcivVQ/iDTwYE4XQxuPeTRFUqRQEQwp66QPrQyz+xKMT/k7jGCQTU
	sfbrUatHZAmO0PNOIrmiCxZzfxqUt2i7EUV2drY0Hpsba8+zb0LGWtcLDA+1P2Uwndhs66ICglY
	yU5dHN/3cMeS3xYr+Hs4hqNEwr8XOtFsJ4j3kOYjYfjdGXblK5F7/aoCK1swTHKT88W6YOWgINS
	4VELHeAxRfvQ2b8ir5Um2K2Z5Qz7IsFS0Syegp/lGdg7HUAhvPWa46mPlplEUMHoV0zZ4RdELad
	GdLLQq3Cl11CNX/3/F/gPvLCtKG4xrSqKdxBfxwrdYnPM+khnmRmJMbs/sAGLm44tkeSM/iF7Ud
	6Mw2lH5wcdoGtAWSxN655XceeQX2i8loppBGqDD8YPl3zAGqcGOC+sV7BVrRG5sYuY6o/c5gCpC
	2MLb3aIQ8ms4dbhRXOrvBIIOxXp3pU/w3vYJUS0XE4rgyDE3SQTdsAyrda0N0gslOfPg==
X-Received: by 2002:a05:651c:f0d:b0:383:2856:c99b with SMTP id 38308e7fff4ca-38a67e781a4mr927341fa.8.1773187967464;
        Tue, 10 Mar 2026 17:12:47 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e7c014sm894421fa.44.2026.03.10.17.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:12:46 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: sm8550-hdk: add support for the Display Card overlay
Date: Wed, 11 Mar 2026 02:12:38 +0200
Message-ID: <20260311001238.4191034-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4D045259924
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273766-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.0.0:email]
X-Rspamd-Action: no action

The SM8550-HDK board may be connected to a Display Card external PCB,
which is identical to the already supported SM8650-HDK Display Card,
it provides a VTDR6130 display with Goodix Berlin Touch controller, see
also commit bc90f56a1699 ("arm64: dts: sm8650-hdk: add support for the
Display Card overlay") for additional details.

Two overlays are added to support SM8550-HDK plus Display Card and
SM8550-HDK plus Display Card plus Rear Camera Card setups.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../dts/qcom/sm8550-hdk-display-card.dtso     | 132 ++++++++++++++++++
 2 files changed, 136 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sm8550-hdk-display-card.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 55660351c82d..ab4922a138c3 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -327,8 +327,12 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-samsung-r0q.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-sony-xperia-nagara-pdx223.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8450-sony-xperia-nagara-pdx224.dtb
 
+sm8550-hdk-display-card-dtbs	:= sm8550-hdk.dtb sm8550-hdk-display-card.dtbo
+sm8550-hdk-display-card-rear-camera-card-dtbs	:= sm8550-hdk.dtb sm8550-hdk-display-card.dtbo sm8550-hdk-rear-camera-card.dtbo
 sm8550-hdk-rear-camera-card-dtbs	:= sm8550-hdk.dtb sm8550-hdk-rear-camera-card.dtbo
 
+dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-hdk-display-card-rear-camera-card.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-hdk-display-card.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-hdk-rear-camera-card.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-hdk.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sm8550-mtp.dtb
diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk-display-card.dtso b/arch/arm64/boot/dts/qcom/sm8550-hdk-display-card.dtso
new file mode 100644
index 000000000000..7b54b084b8bd
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk-display-card.dtso
@@ -0,0 +1,132 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) 2024-2026, Linaro Limited
+ */
+
+/*
+ * Display Card kit overlay
+ * This requires S5702 Switch 7 to be turned to OFF to route DSI0 to the display panel
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/dts-v1/;
+/plugin/;
+
+/* Disable HDMI bridge related nodes (mutually exclusive with the display card) */
+
+&i2c0 {
+	status = "disabled";
+};
+
+&lt9611_1v2 {
+	status = "disabled";
+};
+
+&lt9611_3v3 {
+	status = "disabled";
+};
+
+&vreg_bob_3v3 {
+	status = "disabled";
+};
+
+&lt9611_codec {
+	status = "disabled";
+};
+
+&mdss_dsi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	panel@0 {
+		compatible = "visionox,vtdr6130";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
+
+		vddio-supply = <&vreg_l12b_1p8>;
+		vci-supply = <&vreg_l13b_3p0>;
+		vdd-supply = <&vreg_l11b_1p2>;
+
+		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync>;
+		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync>;
+		pinctrl-names = "default", "sleep";
+
+		port {
+			panel0_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&panel0_in>;
+};
+
+&spi4 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	status = "okay";
+
+	touchscreen@0 {
+		compatible = "goodix,gt9916";
+		reg = <0>;
+
+		interrupt-parent = <&tlmm>;
+		interrupts = <25 IRQ_TYPE_LEVEL_LOW>;
+
+		reset-gpios = <&tlmm 24 GPIO_ACTIVE_LOW>;
+
+		avdd-supply = <&vreg_l14b_3p2>;
+
+		spi-max-frequency = <1000000>;
+
+		touchscreen-size-x = <1080>;
+		touchscreen-size-y = <2400>;
+
+		pinctrl-0 = <&ts_irq>, <&ts_reset>;
+		pinctrl-names = "default";
+	};
+};
+
+&tlmm {
+	disp0_reset_n_active: disp0-reset-n-active-state {
+		pins = "gpio133";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	disp0_reset_n_suspend: disp0-reset-n-suspend-state {
+		pins = "gpio133";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	mdp_vsync: mdp-vsync-state {
+		pins = "gpio86";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	ts_irq: ts-irq-state {
+		pins = "gpio25";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+		output-disable;
+	};
+
+	ts_reset: ts-reset-state {
+		pins = "gpio24";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+	};
+};
-- 
2.49.0


