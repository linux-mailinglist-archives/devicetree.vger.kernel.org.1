Return-Path: <devicetree+bounces-268905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLcKEcRioGk0jAQAu9opvQ
	(envelope-from <devicetree+bounces-268905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:12:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1361A84F8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:12:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DEAA9311E668
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B503EF0DE;
	Thu, 26 Feb 2026 14:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wEd4dYWP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3193EFD01
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117486; cv=none; b=C03bewrHyNVVknIAHWHJIwffRur+tIDGx16EMwyZcWP8kZ9gd5Q9Hy4b6H18pkZKBz3qYWzNyYaws7J41n5QhBnmPvbdAVi7NqO1uwgZktI/cX2/yMxN7U0ljhghnVebhllkhnTNyavlSQPuKmz49hRRCdwK0BfL32MlRIzcDEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117486; c=relaxed/simple;
	bh=DrwmilfbhVbwoRyPsthY10dn2lxMLjOqnT8GTS28KV4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xk69jbTDhchY/HCUzUICwmZzPCDBRUBTO5GFq7tevP9h/cB1NpdYO5tOJaAKy1UGz/KMALSezTcqGKjpgyoESMthb/S6nq+u2GwOz3iPTVdjFYr9BRfCP+tHnCZ5anJHgvr08F4KssQfkiGRPLoeOMCwdrcWDUA0413wL95cBxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wEd4dYWP; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-483770e0b25so9036215e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772117483; x=1772722283; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1KoKID4v0mnxnTWENYR3FoM5lSpx++rYbQlr/lLVOPQ=;
        b=wEd4dYWPVKKTLuUHrsWYp/N8XbpNBCDBsU014GjoX9Zy2MZUxQVLLPsCdofF+FraJA
         f+T6sqXJKPUswPvaIoCWarj9IyAdcykQU/APZsBwJ+NULQ1LYbH/LFbqwCHAvcHUqdwn
         cG4fw8eKiDmAiAMk4wmp+heOMx4EEHQG8jQNSVUX+Z2PCc6QE3Tiznw5AcunxHhlGmFO
         uV56mj3It0lxAxeH0zPtqY8YTChUx+gHsAUR0c4L1k4jYnQtbOpIf7gAUnOtuiRWqPeg
         GURv0UWWBTFuVwqrwgU2JrtzJ6YpJG+TarqNTgacwq4DaAWlai0JN9MTfDhcEtIpc9eA
         0bCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117483; x=1772722283;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1KoKID4v0mnxnTWENYR3FoM5lSpx++rYbQlr/lLVOPQ=;
        b=VctXJ+ees1BNZSpebVGHQ4og3zY3bElFeJnicxLzFc0L+aSOaZUicOtJpwPWHfdqk3
         vvYLOBSWT8hBUBSdxYRtMtxO/m8PZAnByEcZgpZpCPwq0qhBwmbndEFosDSyrhHhREcO
         pOeHHM0nb3/bl5ha1TH7IQ9GSapZR3BMaelbu5+l+5aHkWHgo8peHT8VkwFLRJMcqHBL
         BKSl72NJOS0ya4empxFxY+tlpz2j9mNBLr6LMeJug9qEZSVfIu6JrMZZetIDQhmuLGUk
         /McDdscr14pKpTE2i3fGfasD3nqLF4NElKhYtgwJ6TDYDIgeGGRAVCpplM54BnMw48Mu
         UAPA==
X-Forwarded-Encrypted: i=1; AJvYcCXl1hNBDefrTjbP4pHQuYQTzZtn7Qw+XJ+6iWg+AU9SE7OJDYKHj38vNqPFUjmljHYrVMeeUzHBHGdp@vger.kernel.org
X-Gm-Message-State: AOJu0YzVp4i5alS5ByKRKqSZKFOX7wGZ3nVOOUQlzyX7yt9Z406YQedg
	xYlGdLzc+Z982cAMyzLsiJsDPwpZJOD9S270C5R87dmvhRotkFjBWpG1xUCpcJxBjZM7xMi3tTt
	imNRvlw8=
X-Gm-Gg: ATEYQzx9JXk41poP+l258C2y7WffHZlbAWKiOqp8EwfYtwGRE7abbcw3mCT7l3zTPLQ
	nFBVMJhuFG1g6tdVniMrOoJd74NqmP1ysz/bLpJT5ZIui+5jhOyMKoZ6+mNRm6m/oS4oPE4b3mG
	znsysK1hQKcdeyXihhEt063qVZfl4ZKCSKbcM9LoPfZlrk1FuKnIZlHjBofDztI0jkvjODXqiCI
	W4CT1LyTsEkc72Qq4t7kupnb9XXoNtY/Ar5RxIG9af8umpiytN1/wMI8pvPijrifSYBJx6adY6q
	WyEX31Lstw0PoIIERhA/AryH9yzLtUgiPduXFl6G8RV3cEsrtjceIQeiIWGheIWlM6yqiVNtfpS
	TTw+SSkbnnNryhFLwXn/7q2pvX6mZY+qXQ4B322B3uWf4oWuG34Wqa+1E4X1O7IWI3XSZC0DCHX
	m1teLjPonLIYM2ECkBDAHpfMxi7ZfBQNdU0XGHtsb9DXN7fDq2uG6g6ti23bfeRdyd
X-Received: by 2002:a05:600c:1386:b0:475:da1a:53f9 with SMTP id 5b1f17b1804b1-483a96087d8mr374193545e9.14.1772117483098;
        Thu, 26 Feb 2026 06:51:23 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf5fbsm36621675e9.18.2026.02.26.06.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:51:22 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 14:51:15 +0000
Subject: [PATCH 10/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add
 ov02c10 RGB sensor on CSIPHY4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-x1e-camss-csi2-phy-dtsi-v1-10-f3f7ddfbf849@linaro.org>
References: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
In-Reply-To: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2557;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=DrwmilfbhVbwoRyPsthY10dn2lxMLjOqnT8GTS28KV4=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoF3d5FDEO1x9yyHQ+NNzZdrvwuZQYaQVkWAYt
 B7jDqCxnWiJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaBd3QAKCRAicTuzoY3I
 Op/PEACCkbUIOY1xGuM0w6iW9JXYnLwZp5DpwQfR/UetppSbY9VX8wNC4IqqUoV7vvqAHUJKr+V
 Qh4m8NXt8WM5mCoKzbSZHfxBMXDXCmlY1vZ6pT+blBytcoX9hWOFFrsQwKgDbYoKw6AFhAHv7Rs
 X1Yyx3UNVuenp7asq62NP6Qavh+4ThRG73hGA1vHUfJapHGjpTfosu1gyh8j4X9HpvX/02gH9Rw
 iUEqQYxFaEcpcvtqX1Tko2rlIakilpy+gEuren7TwVQaOSNJtNU5BXtuHlQFm2iggFC7jZH5BjK
 A5AGkmwKQ6egbDJk3izPjJsLrn4y4Iya/GSZQj36N97SMjeTRp8wMlY+Dl05MVCnKoDzx5OB8Pp
 jKbWQz+23j6T/0YaV5fsLhweOoYdzEe8WtxQ0q4G5tp4OSoKX9Helv3BmOmkpUm1Z4urCTkXjHX
 yAN4gE1UhKS51LdpzfJ33fq2TzpOWDYmXbWTesHyiP34JKz7SsROTcmRtjEhq1+IILLBzmqFawk
 ubAlKk7Fy6sQxxt0C2lRq7yoqLCbF8XUFYShE8Npim3jLjIiFuuV0Nlxudxd/lgc+9K+uXTY7RA
 oxxVWt4BO0y2lOjWSfa1t4LvL7r47VxRAxWmDGz8mwV+5JNrObyN4CrHi27aNlUUN0maVA3rQEA
 PY6ZE00gWZ7JlhA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-268905-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.36:email,0.0.0.3:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 4F1361A84F8
X-Rspamd-Action: no action

Add in the RGB sensor on CSIPHY4.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index f10dff1da7f8e..f3f4841ad2c83 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/gpio-keys.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "hamoa.dtsi"
@@ -856,6 +857,66 @@ &gpu_zap_shader {
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
+		avdd-supply = <&vreg_l7m_2p8>;
+		dvdd-supply = <&vreg_l2m_1p2>;
+		dovdd-supply = <&vreg_l4m_1p8>;
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
 
@@ -1403,6 +1464,22 @@ &tlmm {
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


