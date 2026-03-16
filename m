Return-Path: <devicetree+bounces-275880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cH9SJ0NZt2nwQAEAu9opvQ
	(envelope-from <devicetree+bounces-275880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAA8293534
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2BB3330166C7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72E78253340;
	Mon, 16 Mar 2026 01:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OnJ4o+RG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BD022D785
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623584; cv=none; b=kS0gz/FJZsdaHzwz8VotqT7pK9MbJSL8k5sPhKXlfOHh2JrTDh9Zk8z77u05IaH4GnWH/NZMeLkd5ZLGI7/0D77ssjC6QT4Y43XawNGEJqWBoP0GJlkMz0gCRU4+8lyqlCKR44qCn6nUYGj1EeQDHxy0EyrtCxHAecofzFyrhf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623584; c=relaxed/simple;
	bh=cpPMNsnB2BP62HsZ/7yTqvY0RKdjr/LCJaXdsbc5eRg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jD1VayRuheNDYM01r4UDNcZqSe7EYEcdsK7jok5mM2W0J+Lx1Rewo6rJbykfsoosWPiihyoBzsM92pGqB2F9MJ1Fi9pW6CaV0UUtD8uAMmALdT8eu7OqB8LSrUncpiumF0U4qmgl16fEvgKkX9KEekgU7EvrTdz8zhirCiSgY/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OnJ4o+RG; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852fdb36a8so48092295e9.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623580; x=1774228380; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bv3EIo+wmXToagIaGD+ON0rKZ7Upo8IEYyE4J/YFtdQ=;
        b=OnJ4o+RGvCv4jenPue+E3THLHRLzyB1aJW+G4Zr3uRXR7q0ybPTVA4vyvSJNY5st/P
         bbRHfoJ6AdAE8YEV/O76UMT7aV5FOxvEcGnFVN0hVZbIMovxxYT2bYc8GrNILMgMjRhl
         WFIwNVz/8OqrZUaV3pHrylgJznKThsv/mdO38dOuFFo3VsLKX5BVoyQp8KaTmxitG5o0
         yVaHLlJp+G9DYTeDA13J/fl+7y5Pjd3WL5hx9s399zm7k2OrxaIJaUIHiCWYIIeUkhfC
         r6faoY9Q77UpiHewfKHp44clf66FXM37zC0QUjqlQOhaOw+8Mw49MMDt2/XnlA7jvLPG
         thIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623580; x=1774228380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bv3EIo+wmXToagIaGD+ON0rKZ7Upo8IEYyE4J/YFtdQ=;
        b=gjxgnjLvH/0w0TjHErAtbIgVCUmkBD0lCTfFd55yw6i03QVXJh97TD/pkhgzIynKrZ
         pUX9p+29GV9K/d+xU5L5orSGbwHcYt0O4LVZCFvmmVxl8X1a8efV7/QCAOG6litEc9L0
         e6eck4f381QM5SCQXH5/8EwA7714qrV/0YKKduG2HhkTkTizzQI4qgZVWPo5kgTpg8cB
         ++g6n3DpsNds1AUpaqE9ixKPYcpII6Ra+IvIMpsN1BBZL+SYljwyI2Je6h93QcCUQT2O
         y8HB9oqISEY/LQoD1C4nY/v6ECC9K7RrbWmJ8vKvpGGBrnQnGdD2dP28iqPnBqdGNpFG
         9uJA==
X-Forwarded-Encrypted: i=1; AJvYcCW8qq9LzgQ2bOZog2AwQs8WhVMJ2N+OizPM7Itgcei9DyX9B3XgLgV38G7LhxKk56cAoQyRD+WikZtI@vger.kernel.org
X-Gm-Message-State: AOJu0YyyiJ7NGssWt/wAoME9LiS3J/exIL6Pd4cikusahyc50R0TcxL7
	OQ8rfIBPdpG35EkpA2lc71ArW/sST4pVqJrCq2pN+IX94w/DDIgjp7EYW3Fuhgqc92gBVFgXia8
	HqT4Vv9A=
X-Gm-Gg: ATEYQzycHrAYDpNiKbmdt2Kc2a/8Qdp9avceUsAF/SwNZvNvrvgmoJKMhdYqmZpOGN/
	rkl8r0OuLRt24rRTLB+w3NUmIegy4X1UPAsRjriIeMbLKJg6OMbO0OyCZEKaMvlCQYMo2aZ4ooo
	kjE2WONIIaB2uIVlYqovx0nsHO2IJlBKv2FQwMcEgsTIZp39i0LCXPgy0fI7m9e6EmIf04F8rHI
	j/sjlZJHmISPT8L3zzm4p64GyWa/G3O/iS7hepi0NRwlm44eVVtur2RAmdQ12ck4ZCgKoFX5tGU
	klmZMRrM5GJo0foQdCK/oxuQ2R4+9UoVaDEfYvmp0jrdHG3RwUPx7jER7o0mk8F2bGtSfjL7s+C
	+du/wmHellrj5GO9wyj2aljdtxWHzh6TjJuPcHalJ5NhOBiQLpxrzzKqlQEo+/AGzewg1yCn+nP
	qXUozUrFlmSqSR9bFdFobTYQ0PmvdynHWfFDpDLjHu6hYBWQ==
X-Received: by 2002:a05:600c:45d5:b0:485:3ff1:d5c3 with SMTP id 5b1f17b1804b1-485566cfa3cmr179729765e9.5.1773623580466;
        Sun, 15 Mar 2026 18:13:00 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:59 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:52 +0000
Subject: [PATCH v2 10/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add ov02c10 RGB sensor on CSIPHY4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-10-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2557;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=cpPMNsnB2BP62HsZ/7yTqvY0RKdjr/LCJaXdsbc5eRg=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1kawiFRWkJfmdwFsRrrR/S/KaZ8f2OmQSGjM
 Ap1BaXJG2yJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGgAKCRAicTuzoY3I
 OlidEADCBWDrD68lknf5S/CVOJG8D+Kk2iRneDBHMWd42lxKKOC7Cke8hRaqGgLvIXYFpZLFZ9S
 5bvtWdfANY3nDXoYYB46Yt4Yy/vvUkKnweiEVwq4TI3H8FjHvAojP3Nvf/luOTWQSHQNoflLb5d
 M4UA/HqtMvKK+LL7eue5AsHjxfOABLFj2PA4drhPKQWKFCoTkGqUGgrHN7itEYL3wJCHMDYG+YX
 kS/Lol6pk7yNzM6gGP3G7rG9JJuGkPRnSvst35HtnNzYgBvsi3Cd5d920ObhYvYxDBjmv9lrE85
 IHo6Tvn6oYVUpWRzAYtAiLPi32BturZD0EC0mxe7UuGlTc07JbrzdlfiXBXnkK7euVG6KWG83FW
 LTIWiYv2h9wl/VA2Xm5pjNi3m3w0BfkVAjAPQnwGPkGIFsetrYPGuIbPOLNPnnxVobdFwItIhId
 ZfcpZ5YNqZuVoZFRu5dNXIRpQH8wFXplPfFbSf66dXv3OKMyOKHjNMtAGlTSKaNlYZ62xq3LjG+
 JPOai+mrnaTbjRT4Qp3dQDwPyR88GZp8r5yPqLe6vPnjNQvkhEBgu8xAc4ZFsvrIkCN3eyPEyIT
 0gHd0tDaYS213pyx8aTtrOwe+F3YICN6vJsU6AZu0uq/Cc0+GKA15E0X/xHWidMsqpcXb7PBtt1
 MifZixP5mnks6UQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275880-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.36:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 5FAA8293534
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add in the RGB sensor on CSIPHY4.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 1611bf7302ddf..b09b437e0cd50 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/gpio-keys.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "hamoa.dtsi"
@@ -863,6 +864,66 @@ &gpu_zap_shader {
 	firmware-name = "qcom/x1e80100/LENOVO/83ED/qcdxkmsuc8380.mbn";
 };
 
+&camss {
+	status = "okay";
+
+	ports {
+		/*
+		 * port0 => csiphy0
+		 * port1 => csiphy1
+		 * port2 => csiphy2
+		 * port3 => csiphy4
+		 */
+		port@3 {
+			camss_csiphy4_inep0: endpoint@0 {
+				clock-lanes = <7>;
+				data-lanes = <0 1>;
+				remote-endpoint = <&ov02c10_ep>;
+			};
+		};
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c1 {
+	camera@36 {
+		compatible = "ovti,ov02c10";
+		reg = <0x36>;
+
+		reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam_rgb_default>;
+
+		clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		orientation = <0>; /* front facing */
+
+		avdd-supply = <&vreg_l7b_2p8>;
+		dvdd-supply = <&vreg_l1m_1p2>;
+		dovdd-supply = <&vreg_l3m_1p8>;
+
+		port {
+			ov02c10_ep: endpoint {
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <400000000>;
+				remote-endpoint = <&camss_csiphy4_inep0>;
+			};
+		};
+	};
+};
+
+&csiphy4 {
+	vdda-0p8-supply = <&vreg_l2c_0p8>;
+	vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+	status = "okay";
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 
@@ -1410,6 +1471,22 @@ &tlmm {
 			       <44 4>, /* SPI (TPM) */
 			       <238 1>; /* UFS Reset */
 
+	cam_rgb_default: cam-rgb-default-state {
+		mclk-pins {
+			pins = "gpio100";
+			function = "cam_aon";
+			drive-strength = <16>;
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio237";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";

-- 
2.52.0


