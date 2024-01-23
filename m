Return-Path: <devicetree+bounces-34144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09266838CD5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E0C21C2418B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289A95F860;
	Tue, 23 Jan 2024 11:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WMRjWBSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585145F56E
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706007729; cv=none; b=CUtTBoX+etyucO8FkDAsc4qu5gCjY8/Q3PjmnZMWSbOClJYtyTp/YQthJQqQmjvSUdDjIVUhRBmSVYgFz3hK8EFJmNjrw6vhUK4Q3XaWCgv3HIL4pJXimisb/cfwagAuWoK5ifzWHEfitQZaRqg/gsmQtIuUqxCiDyD00iMf3pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706007729; c=relaxed/simple;
	bh=b5me84CBLvNcqpO40KkAROvLnJP/DZ8uuhWcZAxxBlk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mVDA7qtQXGQ4IXruKIvG47B0VzdtaV10JWAw3u7T1C8CDOSM+Tl5N+aB15XcmB6t8WMl/cDJ1UlSDOvarqpcI/+ML+BoQZuU7I3E6UfvTjlczO7QsJ5FPBm1aMwahR23fdCn9YD0gmSxXmsXE3+5gEmmw2+N3LgrGKdwzGzjiuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WMRjWBSE; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55a356f8440so4853459a12.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706007725; x=1706612525; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHRWIZ6AIyJhvIjYmGETHUbdnTVzo35SA3ucS7gN62w=;
        b=WMRjWBSEacQO1gpONRseFhjtor7qzcI+XTkKiiOMwLkxMYaiTnEVCoPAw7L2kE+tu7
         Lhi0IGQ6KUVcxR5lzkLMgDcArkm2fMqEF73NvAN8paHCKpe++1Y06atCvwmmzDE6HdMz
         ZMxJSd1qzIBlt1+zppba+NKWv91FOAg/sVDwcT9IUmNobEmIllD8R2fLiIjoc6sPaqz+
         gVsxHyVv9mv9P8YEJLz28eiJRoFpnQ9h6S7A3Y3CNJGtPZ/Nj3eqRpVhpTcpc9sXg1QF
         mwl2iOs3LxBSp3dJO36tP7YERqkyw67ZkCxZ/vEC/FtqRyMZ9vpegTwrVKqkxRVAKvk1
         5LSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706007725; x=1706612525;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHRWIZ6AIyJhvIjYmGETHUbdnTVzo35SA3ucS7gN62w=;
        b=w8gc0rFqDJ7wyDSOGi8SLC2yhmQl3o1BLbwzbeRs/F8ID5gpwzzd9VPCxRCY0e+jnf
         rmbxn5n6GbGh/xT2Gm1aozd4ElNlKDLQhWClZcIkFPEzILypwn0JBCMIPgL+MtdqkZOz
         wPcI1mjnetN7obACYmjoadrR8OVI3rntzmb+WD4WO/PXbJXliZJ2NJcdLtax2B2ZlOBm
         9Ycv/SOFi1vxdW+nYzL/wrZlq5SxQbv964SFGCrP0QZU1EE7lW/WfNhfvk4YO6YBUe2j
         NT8p5NwPmbV+KF1PazhRwA7khjRfYM02D0yy0pn8AAJfgbzzbpeMJVbhd6tolLouPEaP
         Ku7Q==
X-Gm-Message-State: AOJu0YzlDsfRm311bp38/ZjZVmfylo4OlkoPt+MTvs/Z7RIU8UmlH+sa
	Yg9Ef3tSiRh2bEjWu5oa1o6WUG6Y5fZj/xIQmAHyUDPp1HgUb75YdUDsntJdlb2L3F36kRg0P8K
	M
X-Google-Smtp-Source: AGHT+IHx6BnAgrIq+V97FPVig6fSnPY9cJOwYtPtAs3CvOKZBXwPYx7UdqxYMAYFKwthTS/ZQvQi6A==
X-Received: by 2002:a05:6402:3097:b0:559:fcab:aadd with SMTP id de23-20020a056402309700b00559fcabaaddmr745901edb.17.1706007725218;
        Tue, 23 Jan 2024 03:02:05 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005593c83bdafsm11430074edb.45.2024.01.23.03.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 03:02:04 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 23 Jan 2024 13:01:24 +0200
Subject: [PATCH v4 10/11] arm64: dts: qcom: x1e80100-qcp: Enable more
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240123-x1e80100-dts-missing-nodes-v4-10-072dc2f5c153@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3993; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=b5me84CBLvNcqpO40KkAROvLnJP/DZ8uuhWcZAxxBlk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlr5ycOhR/r1DS104yy+K0Qnm29DoDOz/G9ka2m
 jTgFjebyH2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZa+cnAAKCRAbX0TJAJUV
 VsQZD/sF9fk4c8QNOt3qppNsa8nTGaXsJfmcDmNVjfekHBy9QvAamyv6hyf6XkMnCfVTEGWduBT
 34134tObkGYzsm4kKEbW5dJqIOT2AQUpk5QT0ijx2zqv8FrWWuM6dMSz16rNy240lTmbinDfGzH
 42kCCrR+srhU69/HKoEsL/jK2pnnMvjQB8xMWyU1ltk7n40mE1bq/Uug1/zrGLI781AnSMmxNNG
 FAvT+whHs+hbWtDaddUkZ7pMJ38NTIvrqV0tXEllyxVmRO/E258bK38I80swMrsTUTTZMBp6UM4
 lOn2wj7XDpDB6BsJrd8vLwzhAZP0cB6F2VHnKAFU7FP8jgORBS5coJB8B+gkJaVj1R3vWs/PqVd
 BeU9AcJdYQI+EPXz0ILukSVLsy5Zq77rz7x1dk6JG8oDtVKs0VQmwmiKtVg5Wjic6jDDot6eLUD
 mHS+2dbts90l/xO1TlrxwHzUHa6YaqZhkuZ72dWikJKEdNA8z4YD48vDfdMd0AGUgtDXaPFJzU1
 vBWcgZB+LdHn4XGfefyklOXtGuU/dy0VnqKwEneO22bprST8YXimcnBKj7W1fT1AZMV6oYtp4M3
 5ZHxIGhTusQCA5K1xaRlunq4g8fLwm7BYaokU6bQOFGqdGNl8RX+KDkBvMZ3vPQ4t42fHvdvZNo
 dXgZNLUux+PF1iQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Enable display, pcie and usb support.

Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
Co-developed-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 171 ++++++++++++++++++++++++++++++
 1 file changed, 171 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index a37ad9475c90..8dbf6d0eaac3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "x1e80100.dtsi"
@@ -31,6 +32,23 @@ vph_pwr: vph-pwr-regulator {
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	vreg_edp_3p3: regulator-edp-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_EDP_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&edp_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &apps_rsc {
@@ -383,17 +401,170 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
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
 	gpio-reserved-ranges = <33 3>, /* Unused */
 			       <44 4>, /* SPI (TPM) */
 			       <238 1>; /* UFS Reset */
+
+	edp_reg_en: edp-reg-en-state {
+		pins = "gpio70";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
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


