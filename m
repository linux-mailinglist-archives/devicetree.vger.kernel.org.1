Return-Path: <devicetree+bounces-25606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3520813D78
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 23:48:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A06A2810B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 22:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB826D1B6;
	Thu, 14 Dec 2023 22:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WDEaU5DN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D815697AB
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 22:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2c9f72176cfso297001fa.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 14:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702594107; x=1703198907; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yZZxZdtOI4FdgO9A4qaLtAUNeS5rm+jyNaoNzPNaDEA=;
        b=WDEaU5DNk6aBitXCuc09bsgv2107Pz9JuxvrD02kZC1xWGUWbmmJedPompzrVau9+s
         FaC2xn2Qm2BISaYUN5/W+YR0KxcbBDo4lecvCg/AD3DVV1jUo4lf8X5VtQXQol8Iluxt
         FscFXqflwiHE6WV52BmpdO7zmWoJzfqhYs8Dy1vL+Ygek0L0NpCnJ4aa4kSBiJjE+8Zi
         ZJcge1d8rrdaz5hp0TKPIuTqnwzzMlmlu7LB0qdSFFNRk1lnHqqye2OkMaVeDDHgMFx9
         TPX73QAnXsBx84rv4GD6w+r2ZJSCPPIycvFsy1hzG2Sw4aa+K+S8pIu071QVpS1PaWpK
         g8mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702594107; x=1703198907;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yZZxZdtOI4FdgO9A4qaLtAUNeS5rm+jyNaoNzPNaDEA=;
        b=kkt3paezItW6Gg3MH08MepKugAA64E8sJe5pP7WoOSxxU6VH2wxy78izoC9Ph7NZbP
         3cDioLfMc9HpvGx66iG3YAli5Lkfp21Q/csESzGJAjpuJnhDxyRSMstiyqVc+pKVqKHM
         aDZ5LBowJ0LDowbM9s55nA7AGvEwUwrJLsHvNqB4SqaszaeT4BkYFBuy7DCoG7Pxb/qg
         sFHY4fnCBjngjuSZTgKCwfRd6B9oIEjHXfzabYDY76roqTOzud6Dmy1Msy1EVkRhxnWK
         ZK8Pg5XC3HmRD2xRNDslNQs1enBTFvxy/Fo05DZFipyH6v+aYgEMnLg9hs459xpY/Rpe
         aJSw==
X-Gm-Message-State: AOJu0YyR+8yQyjYMMT5PYmmXyWPa3Tvdp7+WlkS6eVPpXlouNxpo+g0D
	7PAzdqrOS7T1HEfNLVz1o/NUtA==
X-Google-Smtp-Source: AGHT+IH1JT+oH81WhvjxPgVA4QXVnuxlCXReh277fuu8sGn2FL8qjypxC6f1wPQG2QLHI83aiIPJGw==
X-Received: by 2002:a19:6404:0:b0:50c:a91:6186 with SMTP id y4-20020a196404000000b0050c0a916186mr2205389lfb.35.1702594107310;
        Thu, 14 Dec 2023 14:48:27 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id vq6-20020a170907a4c600b00a19b7362dcfsm10068118ejc.139.2023.12.14.14.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 14:48:26 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 15 Dec 2023 00:48:13 +0200
Subject: [PATCH v3 2/2] arm64: dts: qcom: x1e80100-crd: Enable more support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231215-x1e80100-dts-missing-nodes-v3-2-c4e8d186adf2@linaro.org>
References: <20231215-x1e80100-dts-missing-nodes-v3-0-c4e8d186adf2@linaro.org>
In-Reply-To: <20231215-x1e80100-dts-missing-nodes-v3-0-c4e8d186adf2@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4645; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ZkrfN1FTbzStJDMu0UDO2sPSgsYC4jgS7AcwxL8eCCs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBle4Y29mnLUhYNij8eqg08tdp4NLws76zNCuaWA
 CMpFGmuDWSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXuGNgAKCRAbX0TJAJUV
 Vtz4EACsF/qgxwO/ftCLBhIBeFQTwxelzJzBcp6DPncWE8sy/KcBeCRX0YkmPXy2pgXVpjdvWa8
 DtdffM7yIZm0BjwvDz50vx5LMCsVTd4pQ4ogebW2OM6TCxruMwJTbjqTMXCdup60e6tJuNJBHWI
 14WJC0aek0Wv2vnYO1vjtO7bvX4fNkxQ5h3lvyUPA+wNiz+OrNYWCulRPOuYJ6qwnowFgredkcW
 DhBvu+DKuADvSWSDMZ22sXu5jh1M5tkST0OvADHOyGpGbBOU1orXMSolfS81O+BzCt+kvsKWu2M
 Mgo82oJGeTr1n4PzG3jF9ziOti0yKAcjXMY9JSVDuY7RWXKVlbn9nAMfDzKzaIiajmj7m7YLSDO
 ODtIYPN2UVxwne7z9/zOsPdA6ZO1Uoqf/ckaHIFbJSHcpCRRX+NSpM44m/ipyqMglIGFLZ5Xcgy
 yz/pMvDUiDy73lHIBFoAW7YRZ9f92gwFqZvVSNZf4CN2lWyE2kSqQ4l8ulZ3RA6WxD4ibrQX6W9
 SwnUSHbnWEupjiBRL0t1gHoxjPlJIkvHriMT8ROjmTLGbUBQmprMtu/vQUzyZxE7OwSslraAxo9
 FS7EDTlp8TJYm7X8HxX2k5SC/Hx1POud1E///ev6Cvifqv/TlbhHSG4HDPHSjxFpE2Rw/zbkJVi
 wcuGo6TCtR9t4BQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Enable touchscreen, touchpad, keyboard, display, pcie and usb
support.

Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 221 ++++++++++++++++++++++++++++++
 1 file changed, 221 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 7532d8eca2de..d44898453315 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -401,10 +401,144 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchpad@15 {
+		compatible = "hid-over-i2c";
+		reg = <0x15>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&tpad_default>;
+
+		wakeup-source;
+	};
+
+	keyboard@3a {
+		compatible = "hid-over-i2c";
+		reg = <0x3a>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&kybd_default>;
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchscreen@10 {
+		compatible = "hid-over-i2c";
+		reg = <0x10>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&ts0_default>;
+	};
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp3 {
+	compatible = "qcom,x1e80100-dp";
+	/delete-property/ #sound-dai-cells;
+
+	data-lanes = <0 1 2 3>;
+
+	status = "okay";
+
+	aux-bus {
+		panel {
+			compatible = "edp-panel";
+			power-supply = <&vreg_edp_3p3>;
+
+			port {
+				edp_panel_in: endpoint {
+					remote-endpoint = <&mdss_dp3_out>;
+				};
+			};
+		};
+	};
+
+	ports {
+		port@1 {
+			reg = <1>;
+			mdss_dp3_out: endpoint {
+				remote-endpoint = <&edp_panel_in>;
+			};
+		};
+	};
+};
+
+&mdss_dp3_phy {
+	vdda-phy-supply = <&vreg_l3j_0p8>;
+	vdda-pll-supply = <&vreg_l2j_1p2>;
+
+	status = "okay";
+};
+
+&pcie4 {
+	status = "okay";
+};
+
+&pcie4_phy {
+	vdda-phy-supply = <&vreg_l3j_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&pcie6a {
+	status = "okay";
+};
+
+&pcie6a_phy {
+	vdda-phy-supply = <&vreg_l3j_0p8>;
+	vdda-pll-supply = <&vreg_l2j_1p2>;
+
+	status = "okay";
+};
+
+&qupv3_0 {
+	status = "okay";
+};
+
+&qupv3_1 {
+	status = "okay";
+};
+
 &qupv3_2 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/x1e80100/adsp.mbn",
+			"qcom/x1e80100/adsp_dtb.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/x1e80100/cdsp.mbn",
+			"qcom/x1e80100/cdsp_dtb.mbn";
+
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <34 2>, /* Unused */
 			       <44 4>, /* SPI (TPM) */
@@ -416,9 +550,96 @@ edp_reg_en: edp-reg-en-state {
 		drive-strength = <16>;
 		bias-disable;
 	};
+
+	kybd_default: kybd-default-state {
+		pins = "gpio67";
+		function = "gpio";
+		bias-disable;
+	};
+
+	tpad_default: tpad-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-disable;
+	};
+
+	ts0_default: ts0-default-state {
+		int-n-pins {
+			pins = "gpio51";
+			function = "gpio";
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio48";
+			function = "gpio";
+			output-high;
+			drive-strength = <16>;
+		};
+	};
 };
 
 &uart21 {
 	compatible = "qcom,geni-debug-uart";
 	status = "okay";
 };
+
+&usb_1_ss0_hsphy {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_1_ss0_qmpphy {
+	status = "okay";
+};
+
+&usb_1_ss0 {
+	status = "okay";
+};
+
+&usb_1_ss0_dwc3 {
+	dr_mode = "host";
+	usb-role-switch;
+};
+
+&usb_1_ss1_hsphy {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_1_ss1_qmpphy {
+	status = "okay";
+};
+
+&usb_1_ss1 {
+	status = "okay";
+};
+
+&usb_1_ss1_dwc3 {
+	dr_mode = "host";
+	usb-role-switch;
+};
+
+&usb_1_ss2_hsphy {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&usb_1_ss2_qmpphy {
+	status = "okay";
+};
+
+&usb_1_ss2 {
+	status = "okay";
+};
+
+&usb_1_ss2_dwc3 {
+	dr_mode = "host";
+	usb-role-switch;
+};

-- 
2.34.1


