Return-Path: <devicetree+bounces-275881-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOkIJTpZt2nwQAEAu9opvQ
	(envelope-from <devicetree+bounces-275881-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9840E293516
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 78F70300AD5F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778A125E469;
	Mon, 16 Mar 2026 01:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p2cm25iq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50FD23EA80
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623584; cv=none; b=SuymHaIdnFPGoFtIO3CBheogGfm+gZ5Py1E+wYFiY3hhVcBXZ1uR0WtWH1dPkbAFB86tQRoLY61Yvw17tEo0d+0OU6khK6hqEpeWUQ0Y5H/3mMI4B66f1thctSXEV7IhEfyl1VrTmNfBLoWc4fetGkhCYDplyPb+CioCrhh0ObU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623584; c=relaxed/simple;
	bh=3nVSYJBG/RHwLpzJ3jy8WUI63ecwZdGLAVBwNBEWi1E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NCbRQ2JdgPzDLZzz3njcu+ZmbyxM1HRhJuNIB+qMfpZVPtpF4eMHc/Qql0irhfa7iUmT3fzFK4c8jJzZcwkwnFUfnfOJm3yd9oYOuIx/duKhOyIk33BGep6m+D/vvwc6syFL5EICicZVMkuRGcvvvq3w1s0Ze43S0cGNF+tUcSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p2cm25iq; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso35555235e9.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623576; x=1774228376; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQHvQSUZFEo8KyeR/vWOplBdKKbajrVoCBMz2zzdolM=;
        b=p2cm25iqf45kFk7tZ6GNdT/0YaVKTRAw9cW4jfdnp1i/5MJ2YmKv2g/MJ3wfRJYT1v
         9q/R9vZbFe46CX3yXtw6oYvrpFipsSIZ3DldlYhSyVwQPGLaR07MKiAmIT8xNJo8tYvl
         5yduhPVnpxSadyfkHMLUbagfzADvjSuf+MSgdx1ToB6sik6Ur0pOizXkF7deVtx3rW92
         9D7VWpWYflYv2HPP2Lv7y3Hxo1LtbbzyrkBE8AueeRVE1U9T+2axp9ZNmylRHY2Fs3R6
         YIFLRkhxobtgoIN71CFRf3HRtC/k8BU9EjHkW41hsBUHklG+jH1/w7x9D3tWE48dM/PD
         vuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623576; x=1774228376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dQHvQSUZFEo8KyeR/vWOplBdKKbajrVoCBMz2zzdolM=;
        b=lz/A4l9wXcB3xosz3QsK6rXhbLbnpktvlMqPIKCduHxT9pFf4IiYRIkVLmS2jlNwZu
         DD1XjYUujCq7lMJCq3/t3O3GGXaxfKbSka+0NDoBAhQUu1CJxsIgbY09rT1prHQdcza3
         IWIKepPRkQVOy4+eZ7AhRmLJGG+yICCNOKwrzQAcuIoK68DBFrUTDMeE95vRz9jFQa0k
         j4Zu3X+6OxRxkwWeLFB52frXufz09fDTJgfMBjPBMgOwjak43WF7XfYExJoxxavKLGEn
         gVzS9J3RnbjXoIqofzpn/4HaCmCMBQaqXt726FUUZD5qX3ISzAwiVclpGozjfyXvQF4e
         piRg==
X-Forwarded-Encrypted: i=1; AJvYcCWhI5xjQW91o2+zXMWcVvxzmLyOalJdo9tqVGOmtLydXsYrvyyNkV5kZlIbqfMePPRPB0lwD+ELKbR4@vger.kernel.org
X-Gm-Message-State: AOJu0YwwLT6TxFXGz1OE5H3xeDPX/zOIqwhHrZtGnTw2riXR1IM56ECC
	dSPgK+JFk5RGRj6CuJucExyvEysDGsZIghULX+gZ8pkZ8LY3KW8JaXEADhe5cM86ItWyZY0jaQb
	hwJV87ZI=
X-Gm-Gg: ATEYQzw0M8TGsABlFIwbofIFufty0Bomak1L/QsoiSpJvfEkvUyfiF20eqz8Xvg5SEy
	KPtxM1aDzZP3dxa43pdqI0QaDaYdEmxvkO/K3w6bnlKljKWPfpAfgOcr0XDBcmmYaFSy1mv4ARW
	L7cu9kdqMlSfGu2x4jXh/o0iJlyzGHGaFOO3gnpTcxXFFdxMUPIWG80oHcVPoBujglKeu/fDXFV
	h/gdKRj5D2fF0f4I9GKiwLGHNIRfFC31b2sl/ffXU7uKLIxA3caASqpdLrFhH9cTcErBmiI3lnN
	tGCZ93NiPCkQDo0alvmfrj5BNlhU45cTuMEEOsQ5lqLTPISt+cvzTh+jfm4msnukaDTpYYRQTyx
	8ckEdqk3OwYkOm8Cojkty+Fxt9xiHiLrbXI4E12n1YjdNNL/t1Oh4bwBvJG186YASYF6XGR8xGx
	UmVo4MP48qa83JcaNCqmeyt4JrZ+dtJzUdehY=
X-Received: by 2002:a05:600c:4689:b0:477:9b35:3e49 with SMTP id 5b1f17b1804b1-485566cf80dmr182733895e9.3.1773623575813;
        Sun, 15 Mar 2026 18:12:55 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:55 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:47 +0000
Subject: [PATCH v2 05/11] arm64: dts: qcom: x1e80100-crd: Add ov08x40 RGB
 sensor on CSIPHY4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-5-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2534;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=3nVSYJBG/RHwLpzJ3jy8WUI63ecwZdGLAVBwNBEWi1E=;
 b=kA0DAAoBInE7s6GNyDoByyZiAGm3WRmgFdPAxwGhrOelN12kjnnTusIyxGH9mP5lDV33mXFwj
 YkCMwQAAQoAHRYhBOaT+yqro23hF6tvtCJxO7Ohjcg6BQJpt1kZAAoJECJxO7Ohjcg6UhoQAIiN
 cVbyvOkSOzoOiM5HkHR9vpS4y+yRgciLSQJYXhVvbDXgtENypYxlbUeQoBSQWlxoRQ4G9ae4kuW
 uyRnFrR0b69SpNFVlt0a205JTbCJjj5XJQ5EDPs7ietHcpGDgday59LMUMBiA98pYU4sYIYCql/
 2AQmw/66JfT4/JRIJq61zZE4i5wrxcbpWPw750BQuiXOpvLdKQAsHMGUU2yhOkWA5DZhJKyLRol
 6pyMgL/ngbWIY7YO7E0K9oL7SB6TG2YWcMsWVxwf0wqBUsYSFH6GNCSLru7KKTJ1ZIQIUQ21xX1
 Xr7XVHAsTJ/1v4QO/+nXYtd0rq70YItigF6RwMVWVqXWIq6bcoqFlgBqO0tFzLfKeGtGWi/gcFO
 Bvp2xz1F6+rMpzLZqprbVrnYUCQW8GzsRzP+yjoe0mt6MnggLCJWmFs2cXBL5cukQPT5AN2PXT4
 4FTxIvpBUUpNcrrS7ET+iLbxfL5ZOohYoK4yTh87Sd9J9dD8BFD8kbesVTWD+bKnT+ZfdXOFPj6
 DmTj/3nkbb3MOm7l5lXafB4flj+cR7LGpqv87TE2l08Q2tH8V87PJa6LPL0WjVaRW5m5uNrzlDH
 c942RkwJCr3+/dH7Zz8ltfoXj5sf6GkGg4TNQMqIHw0hiuSso1hrPPUp8sK+mhOWpDZ9CwRytjo
 1kUXO
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275881-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.36:email]
X-Rspamd-Queue-Id: 9840E293516
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Define ov08x40 on cci1_i2c1. The RGB sensor appears on the AON CCI pins
connected to CSIPHY4 in four lane mode.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 76 ++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index c89f5ad0aed56..d47404c71b80b 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
@@ -901,6 +902,65 @@ &gpu {
 	status = "okay";
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
+				data-lanes = <0 1 2 3>;
+				remote-endpoint = <&ov08x40_ep>;
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
+		compatible = "ovti,ov08x40";
+		reg = <0x36>;
+
+		reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam_rgb_default>;
+		pinctrl-names = "default";
+
+		clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		orientation = <0>; /* front facing */
+
+		avdd-supply = <&vreg_l7b_2p8>;
+		dovdd-supply = <&vreg_l3m_1p8>;
+
+		port {
+			ov08x40_ep: endpoint {
+				data-lanes = <1 2 3 4>;
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
 
@@ -1515,6 +1575,22 @@ &tlmm {
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


