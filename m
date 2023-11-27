Return-Path: <devicetree+bounces-19170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0EE7F9E74
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 12:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A56C1C20CD2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 11:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86CF19BBA;
	Mon, 27 Nov 2023 11:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dYHQC+NS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A6B5136
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:23:39 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54b0e553979so3004391a12.2
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701084217; x=1701689017; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTXMCGVkiDbMkSy/Xx/TvTlsCBC9rh0C46nAQgnnlvo=;
        b=dYHQC+NSIcxZpCyhEpM+nKpDt68PczOwLiEcGXdFJrXi+UdgGbfuKXv6CWf8jUgCcq
         RQ4voiDwAS8Jq3gfCqH7wyZoeI3t0L/kA6H13iYCXgB9fDJzjZ8pPBzPhcZmkxJbvScf
         LwGa0zqQWukOWqiXYR+dxeHRfebhBzRxDJoRgoN3lgmHcIRlxyzOH+hl/Mrnu1T6hDWe
         q2Y1T1aDFB8I5QOpGUVxQMJ8K2VCoTJL8WJHyHKOz8t1p3apLK2/Ux/HQ3jOCtq71REY
         8jXUx1J9/KqXKv04DZjMSq49tgAY93XoBU6Rc4BQg0p2byPCouDv5pMySL7DXszAFFnc
         Ssbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701084217; x=1701689017;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LTXMCGVkiDbMkSy/Xx/TvTlsCBC9rh0C46nAQgnnlvo=;
        b=uN/0MzOzdOVuzRN0S9uUPJWK9ml7v/Jc/jAApQxwvMz7vGMQ8FZaMKr23p+3vPerqJ
         FhjOGW/moCiSKvTVNpAoOf9BJ8T1VEt2FU2I9ku878D4ICAT9JakmV/xzG5sBL7xhfqt
         kP06AkybIkO+Ei9d21lqteye5OpDWn3GkSACrqq0nUf9I+8YJspWLMUs+gFqhfjZIuWe
         NHn+GhcA08ysMBoueUhVpyr4J+mZ6oUy32rsTo9uBk73xQo0G/Ol3cN80Hx4zG/ITMwC
         t1ED3tzjgqy+z6mQYnLzDhTyn+A0Z3HqiJV+lxNvT0Gj2e5ea33F033fH8oKBP8BAnVm
         n7AQ==
X-Gm-Message-State: AOJu0YyCqUwl3DtJ1NGpqDhGpyKRI7IavD4alfGERyW4B4UNBC/jGQ3D
	EMU8jj3hDcN0lOt/7addo2at3w==
X-Google-Smtp-Source: AGHT+IHsTDNDk1tc6eFRvZS3aApl98pO81BU/5rActT/czm95CJADLAzkp97TODIyoKdkozwMpiHLQ==
X-Received: by 2002:a17:906:2dcb:b0:a00:eae7:9b39 with SMTP id h11-20020a1709062dcb00b00a00eae79b39mr7692846eji.39.1701084217348;
        Mon, 27 Nov 2023 03:23:37 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id oy9-20020a170907104900b00a0db5da857esm1804866ejb.217.2023.11.27.03.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 03:23:37 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 27 Nov 2023 12:23:28 +0100
Subject: [PATCH v2 2/2] arm64: dts: qcom: qrb4210-rb2: Enable bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231120-topic-rb2_bt-v2-2-4bbf266258ef@linaro.org>
References: <20231120-topic-rb2_bt-v2-0-4bbf266258ef@linaro.org>
In-Reply-To: <20231120-topic-rb2_bt-v2-0-4bbf266258ef@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701084212; l=3568;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=coQ0R99kdAEfNq1Zpcf3fZWIZyilw00cbxYe5LeyX1k=;
 b=SCt//njIHZVrblYjrZaC9WqNed5sfCEMqXybgcJsJ7t65GQVED97lFjZH/lgDWujmV/c6+2Ds
 P0bTII4FsYiBFY5DaCR0Gio/uMNAK7wK35dvMvcrtvnxkj2Xl0jlknD
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Enable the QCA bluetooth on RB2. It identifies like the following:

Bluetooth: hci0: QCA Product ID   :0x0000000a
Bluetooth: hci0: QCA SOC Version  :0x40020150
Bluetooth: hci0: QCA ROM Version  :0x00000201
Bluetooth: hci0: QCA Patch Version:0x00000001
Bluetooth: hci0: QCA controller version 0x01500201

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 87 +++++++++++++++++++++++++++++++-
 1 file changed, 86 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 9738c0dacd58..33c312ae842e 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -15,6 +15,7 @@ / {
 
 	aliases {
 		serial0 = &uart4;
+		serial1 = &uart3;
 	};
 
 	chosen {
@@ -352,7 +353,8 @@ vreg_l8a_0p664: l8 {
 
 		vreg_l9a_1p8: l9 {
 			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <2000000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-allow-set-load;
 		};
 
 		vreg_l10a_1p8: l10 {
@@ -389,11 +391,13 @@ vreg_l15a_3p128: l15 {
 		vreg_l16a_1p3: l16 {
 			regulator-min-microvolt = <1704000>;
 			regulator-max-microvolt = <1904000>;
+			regulator-allow-set-load;
 		};
 
 		vreg_l17a_1p3: l17 {
 			regulator-min-microvolt = <1152000>;
 			regulator-max-microvolt = <1384000>;
+			regulator-allow-set-load;
 		};
 
 		vreg_l18a_1p232: l18 {
@@ -426,6 +430,7 @@ vreg_l22a_2p96: l22 {
 		vreg_l23a_3p3: l23 {
 			regulator-min-microvolt = <3200000>;
 			regulator-max-microvolt = <3400000>;
+			regulator-allow-set-load;
 		};
 
 		vreg_l24a_2p96: l24 {
@@ -487,6 +492,66 @@ &tlmm {
 			       <56 3>, <61 2>, <64 1>,
 			       <68 1>, <72 8>, <96 1>;
 
+	uart3_default: uart3-default-state {
+		cts-pins {
+			pins = "gpio8";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-bus-hold;
+		};
+
+		rts-pins {
+			pins = "gpio9";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		tx-pins {
+			pins = "gpio10";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		rx-pins {
+			pins = "gpio11";
+			function = "qup3";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	uart3_sleep: uart3-sleep-state {
+		cts-pins {
+			pins = "gpio8";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-bus-hold;
+		};
+
+		rts-pins {
+			pins = "gpio9";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		tx-pins {
+			pins = "gpio10";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		rx-pins {
+			pins = "gpio11";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 	lt9611_rst_pin: lt9611-rst-state {
 		pins = "gpio41";
 		function = "gpio";
@@ -508,6 +573,26 @@ sdc2_card_det_n: sd-card-det-n-state {
 	};
 };
 
+&uart3 {
+	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
+	pinctrl-0 = <&uart3_default>;
+	pinctrl-1 = <&uart3_sleep>;
+	pinctrl-names = "default", "sleep";
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn3988-bt";
+
+		vddio-supply = <&vreg_l9a_1p8>;
+		vddxo-supply = <&vreg_l16a_1p3>;
+		vddrf-supply = <&vreg_l17a_1p3>;
+		vddch0-supply = <&vreg_l23a_3p3>;
+		enable-gpios = <&tlmm 87 GPIO_ACTIVE_HIGH>;
+		max-speed = <3200000>;
+	};
+};
+
 &uart4 {
 	status = "okay";
 };

-- 
2.43.0


