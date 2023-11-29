Return-Path: <devicetree+bounces-19999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D21E7FD7ED
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37D52282679
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9020D2031C;
	Wed, 29 Nov 2023 13:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MRvnUbey"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC70E19AB
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:23:01 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-54b532b261bso4883990a12.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701264180; x=1701868980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CfkdA0Hwz9iCbLXBM3d514v5FSb6t90xogBHXGVtYgE=;
        b=MRvnUbeyx8+O/K8Urkrp9T4QtecdSO57V1QcSiHJRbXfI4ZtSyN7hLsKka2+cBqhJv
         0wswsAxqEONdovT5fmPnfoR819ucSc4O8ZHsUpQPz9XK5O7+fitjlv79RbKAqTi6ED93
         7i/1C0mex8uiGJGMDpML/qKzdnk/PfEo+ReuZ3m+khMjlhI5AY9obLQ555I2DdACnjw1
         XYUftQruP7bN6KLBUWY5uKs5MyxoRzpeXf/NEDUXlwyXqeAK6BB39KvMsELa4bpbREqz
         9AaeBk1sIn3621LTuhxKqMKTMxbvHyUelO5h5FV1Lq3zStD6y316ee0qsYmm6xrlzYva
         p5aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701264180; x=1701868980;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CfkdA0Hwz9iCbLXBM3d514v5FSb6t90xogBHXGVtYgE=;
        b=KhbzLaePQFx2sBmNQMiij5lMUl0YCehp2vcvN6NMmAAYFuMuylYzzglpH+c5Ujfao/
         sWUSsY8NC+n8rebGvaqlDt+Ig+0Fgam9umm6qMq5qFpAsjz8UqQraCC8HjofiorPvycy
         CsGg9sw67UqtUjdRvtI87Czgczdy/kK+R8SkfK7VHXwPrMCD/xvSpVkjRVLx/B8j3vIk
         8+QedfG8dECO7tES7xJ/PRuaU9eDjlx63ZZ5jIahyGMOhEhD9DdCSx0BiGkHpRY7DTzp
         snoJ8gLBmRJrgX3y3WSjcqvx7EB8UVRAbKm4ECE9dsdR1n1Z2LBLDrr7jleponnmME/i
         6m7w==
X-Gm-Message-State: AOJu0Yzsa3AS5kZmexCWY2Of6w3x9P636SAEASB2FSkNt51lz2uydUWq
	f959LG3hZTZnR/40DdXoVIA5OA==
X-Google-Smtp-Source: AGHT+IG1rYcOn8z3qDm4n4UzglIfQF1lt59/nbIcjxTNXtzWHZxuyaIB5COAy4rgLKFLritFpLfSPA==
X-Received: by 2002:a17:906:a3c1:b0:a02:2177:ad14 with SMTP id ca1-20020a170906a3c100b00a022177ad14mr11868070ejb.73.1701264180197;
        Wed, 29 Nov 2023 05:23:00 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id lb16-20020a170907785000b009fda665860csm7844842ejc.22.2023.11.29.05.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 05:22:59 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 5/5] arm64: dts: qcom: sm8650-mtp: add WSA8845 speakers
Date: Wed, 29 Nov 2023 14:22:47 +0100
Message-Id: <20231129132247.63721-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231129132247.63721-1-krzysztof.kozlowski@linaro.org>
References: <20231129132247.63721-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add nodes for WSA8845 speakers on SM8650 MTP board.

Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 48 +++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index 656cdbc6f234..a0cd66e5cb93 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -434,6 +434,16 @@ &dispcc {
 	status = "okay";
 };
 
+&lpass_tlmm {
+	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
+		pins = "gpio21";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+		output-low;
+	};
+};
+
 &mdss {
 	status = "okay";
 };
@@ -580,6 +590,36 @@ &sleep_clk {
 	clock-frequency = <32000>;
 };
 
+&swr0 {
+	status = "okay";
+
+	/* WSA8845, Speaker Left */
+	left_spkr: speaker@0,0 {
+		compatible = "sdw20217020400";
+		reg = <0 0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&spkr_1_sd_n_active>;
+		powerdown-gpios = <&lpass_tlmm 21 GPIO_ACTIVE_LOW>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "SpkrLeft";
+		vdd-1p8-supply = <&vreg_l15b_1p8>;
+		vdd-io-supply = <&vreg_l3c_1p2>;
+	};
+
+	/* WSA8845, Speaker Right */
+	right_spkr: speaker@0,1 {
+		compatible = "sdw20217020400";
+		reg = <0 1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&spkr_2_sd_n_active>;
+		powerdown-gpios = <&tlmm 77 GPIO_ACTIVE_LOW>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "SpkrRight";
+		vdd-1p8-supply = <&vreg_l15b_1p8>;
+		vdd-io-supply = <&vreg_l3c_1p2>;
+	};
+};
+
 &tlmm {
 	/* Reserved I/Os for NFC */
 	gpio-reserved-ranges = <32 8>;
@@ -611,6 +651,14 @@ mdp_vsync_suspend: mdp-vsync-suspend-state {
 		drive-strength = <2>;
 		bias-pull-down;
 	};
+
+	spkr_2_sd_n_active: spkr-2-sd-n-active-state {
+		pins = "gpio77";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+		output-low;
+	};
 };
 
 &uart15 {
-- 
2.34.1


