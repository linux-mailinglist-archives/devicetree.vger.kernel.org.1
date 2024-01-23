Return-Path: <devicetree+bounces-34143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E610D838CD1
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:04:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 770D41F26280
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31785F57B;
	Tue, 23 Jan 2024 11:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lkRT8s6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDFA5F55B
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706007727; cv=none; b=U8Lc7MyWQVOgYByHWaBaIo5CBdcnmxQoaLe0o5cwih/i4oz3j6ssfD1K6+Nr9uXZ1gotb6neSFn+VnlZyDkU4r9tEYeASJiPbVFgz7Des3dr7r6wHhFhdw/T2hGlKVaUcb9O6JA6bKtQ6Pswn7ddDiOUql8CwwnLZNBqwWbt8nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706007727; c=relaxed/simple;
	bh=ps2ITLtb+wnuPxzAvuaCM3IjDOmZRmy6w8oxvg6tWw0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G8V1PuhRS+rnmv/EA9lAEDEP8hcxCPZcRZJk0PxLTXGp53mfB6bLwld5DVC2fsxnUu5b6kXZsWgIpajGIj8RCqNTgDFO7yXQUZnKiTCdEW/cFBElvor/SFPgJ1Chrh5W1utOlVwJt5uSdxiyGACfcBhrHShPvZDmPEdEPr5D4yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lkRT8s6e; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-55a684acf92so4425283a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706007724; x=1706612524; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ro+Hb2iobKdmEbVL0if24hsgyW86TfrhpfzGCL1Ai3A=;
        b=lkRT8s6eD0v4lgoxq2yowSKTRRDiqX5wtg4vytSDNOdn6isO2x1poBQG5dpFTj/i/E
         nSYaSVhirxg8EaVwKahwRqr+QZx/wOMz3rjdpb0bAKEN0XO1+Ggp1iZ/yQKvRk8+lZiA
         nCTgT2tMRyh4bBmhsD/9eVC9oTRsrxw0VpoNIT850hz45udUyZEKZScJIh4rVrM+D/IG
         N3P5d/oEiHmOyfOf43NYJG20ZK1U8DWWRulfQ/JlraAYkhUAD2qNPhuLv9aMV/HoUhJX
         4fFxUKNk2+G1RfsgM8nRICrA2qfpQAkYYoTTo3oyBXc7Ep55+ieJJ+jSOF4scwc2yOlg
         dJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706007724; x=1706612524;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ro+Hb2iobKdmEbVL0if24hsgyW86TfrhpfzGCL1Ai3A=;
        b=cwC3YPQ/WQnOPe6XhrZdD6Xe8ZFHlYIOBqsl9r+7XLLts+w3MzrLcHqDqoM3YQsjEI
         yUO1HiJZUl/DraLScKQ2UNjP7/l6NSRYGxLslBf+1vgCduV4eKWNavviXYF5cwAyO9Tm
         GRziJIo4IZzaLqEI65hnfusirkQ8guSVdtlRH9zGck8HWUw00d/vA5amGYVwBYjyqgdd
         cOY4x2zsyDFa025phsHf/BeUZFdBYPkz2dHIXBYyo4e/8b4KHp3HEfkdGDsmz3jYp7Tc
         kiRpYxxgBZd98absR9212KFmGSmwgKChE6qmtJpIrjSDSUwAz9bbacF8+g21PT9hHNbr
         mxdg==
X-Gm-Message-State: AOJu0YyFqDTJuxyEI3Lw8FZxwQNtqh9zH3Y5SRrmOl1wsFfjunzVrT49
	0o/KgrgsO3TpIuZtCPejB2ZFT9UiGqmUqRRcAkiR0PtOUpi0r4aSnPBoF2BiTEPaNGMyQMvGBbH
	4
X-Google-Smtp-Source: AGHT+IE+sfJQ/VMvwyw5m3PvA334FkMVzEefzwmvWD1uGoULevJ8d0/ZanmrdDBySF0L0FlOIFwqSQ==
X-Received: by 2002:a50:fb02:0:b0:55c:8ded:3678 with SMTP id d2-20020a50fb02000000b0055c8ded3678mr172087edq.117.1706007723883;
        Tue, 23 Jan 2024 03:02:03 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005593c83bdafsm11430074edb.45.2024.01.23.03.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 03:02:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 23 Jan 2024 13:01:23 +0200
Subject: [PATCH v4 09/11] arm64: dts: qcom: x1e80100-crd: Enable more
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240123-x1e80100-dts-missing-nodes-v4-9-072dc2f5c153@linaro.org>
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4648; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ps2ITLtb+wnuPxzAvuaCM3IjDOmZRmy6w8oxvg6tWw0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlr5yb3p0JsV1tXwkUBs/sOSphT9tuWSoNrek7e
 oeEIvkeICmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZa+cmwAKCRAbX0TJAJUV
 Vn/+EACeWiS3OrfO492sVz0KgjezfpiK6BrMNLUmLWkSzTZDcFi4UWWc2jAgvZDLu58+5BqTrhx
 /ggLv9JEwwFuY9rdkOYujCsfspyGC5Xrmfeax0nZO0KU3mQMEjBNiGrzsIw4n41GVwXdd5Re0S5
 T3JjAG2CIVh7Bsr7VVa2b02edaIZkikx1Sp8XVqlTaReb3RAP/Nt2udq93Y/QJOx3XeK+EcrawG
 GyMqQwbCvvQQtvKWpU0tjcPxYjyZ/lrL4ufKu36Jw9kd4yfy6h4aZfaSE/PLGgKUK5/JzWveLlf
 SnjXugGB0zcHsC1f5TmCggbOS9T+AA5CafGZImqyv1LQMODkEa7h8QWnsGE8bS5V5+FL4TJlaTm
 VBYdIwU3kX2QTs+oDqoVRwi+WGDUinLBMu2ISdZoc29cQwC821u6LDpNcS6V+ne1be6JE6gYUdV
 DPLyWBEWgr0+dor8ZwwkcNwq3v3ClZOmTV3l/OVHBRdUXwQFC72IIfXgTC8j33T1EhqvIOlItxY
 tZytMJWgqWxEN9jfVuOVcbohciYobMFUS/cxkg4Pp9jOZsC6CTnHkB19Jdg+VtEvjgzssAzR9Cs
 e3wiSnogJ5Ii2q+QjilSCIBTdAWuA89wcxznm/tHsFwb2u4DvaiyivOtRO0mRHcL8OlRQ4oYFVz
 /L0+QiIbQRpbRwg==
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
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 222 ++++++++++++++++++++++++++++++
 1 file changed, 222 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 7532d8eca2de..7e7cc8e43f87 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -401,10 +401,145 @@ vreg_l3j_0p8: ldo3 {
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
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
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
+		pinctrl-0 = <&kybd_default>;
+		pinctrl-names = "default";
+
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
+		pinctrl-0 = <&ts0_default>;
+		pinctrl-names = "default";
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
@@ -416,9 +551,96 @@ edp_reg_en: edp-reg-en-state {
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


