Return-Path: <devicetree+bounces-35465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A770E83D800
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:25:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 352711F31557
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1895604D1;
	Fri, 26 Jan 2024 10:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kLYCHBAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969375FF07
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 10:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706263250; cv=none; b=SVz3Qq0trDZO5QDnz/l2OjhIwWWcqEW8kBQ/xKbfKPtb+BEdpbyps+DGJm9GLPe8VWWNEXYMDJelkLcFW3bP/RJ5Lwvog7Rio3pwSSBPJZH7gXNFTdPZEAJvaDv4vPoUc0Xzz0GrTV3kvwtvkxZ0au70WQRh2FK/n1aFYsI6ne4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706263250; c=relaxed/simple;
	bh=b5me84CBLvNcqpO40KkAROvLnJP/DZ8uuhWcZAxxBlk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GD5FlJrF3ttqaqwyKhIqTp9v+IyfYjg8DW5tkbTTtK8LvNJFuJuUWGJpcGpaiY40sBxQ7Vfr4a7y8SqvHh8oDSs73qbi2hzUxPWLs0ielUDJ49I2O6k0+mQwNasTlTCOXaJkjeJVTrwOzoxAfdVuwucaKkA7tVAUyA0zjab7u20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kLYCHBAg; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso2935725e9.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 02:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706263247; x=1706868047; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHRWIZ6AIyJhvIjYmGETHUbdnTVzo35SA3ucS7gN62w=;
        b=kLYCHBAgRAfNI8f97sAZDUONXZuiXD/b9CjY1IYWsT+Bj5y2s5fedQbR+jLAHjhPpE
         8pLh1ynqpS400B6XLoRhj0BsIBQyEBqCiTcp8ZLgUhXHsXGWUyqeHCp8UaJ7HLaraHVw
         beUOeSwcgs556ykSm+i9lvFiweCqJY5xpOpiH3wyHfT/SEj/Dc/1lvDYMWWp7xIQISWj
         hDSznEzNjlZDTLixDM+ABnPyXJtGMF8E4vn2fJXbY8tk3oxBri38J7czxkLfDnVtIG9P
         eASPGqMGMIaUtF8C1sfwYULmjYqsNpTlPcwDMF52VU9MaFtJI0+B+5cA2WQpnn9qskZc
         CzHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706263247; x=1706868047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHRWIZ6AIyJhvIjYmGETHUbdnTVzo35SA3ucS7gN62w=;
        b=KktCsk4ZqDzVecmT5CSocmje3bUpdwWWbP3kivQhUBP9o2CMe1cL0H141GbWrEQrv8
         JP0TQfqrZFdpbQATWsfvdBJbVdzAhpLpASeMMb1VZ+DEymzUMhZxKe2+Aj9Wbg95Ceq/
         3hBqT9WPf9ZLZtehdJhVPwzBSVimJJzXpPw1BMrjeafv9G0on86MbONl1KGhwT2Rah7o
         SXPJR+I+lUfVNP0N28n5kpHoIpLZIkkfjHX9l8b+KRFy6Ch6cXsgX1rkxEGBVHfBlsfF
         4X1vHqsFixBSwwcVmJnRZz1yTqfAzyCkYMyHCtg2+od0Tq7Tej0abGZ5zoMfShfyb7Xm
         FiQw==
X-Gm-Message-State: AOJu0Yw8dPAdQw5919T1ULw/HWk31IEwZiCmCEwmaeyZ6tqD+eIjN2EE
	gYOdTJOWk/iPQtEBjvReXUwpWq65Pkr9CA24UrbGWhNP3idKKkJrHpTHwpFgohM=
X-Google-Smtp-Source: AGHT+IGApKbZoEuNOWIxn6/v7hwnWpXN4QzFLkiRzV9l+mW3S6kEfn5JbjI6SXrXajypXZoALUr7uA==
X-Received: by 2002:a05:600c:3d97:b0:40e:4398:25e7 with SMTP id bi23-20020a05600c3d9700b0040e439825e7mr650150wmb.209.1706263246942;
        Fri, 26 Jan 2024 02:00:46 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id ox27-20020a170907101b00b00a3221b95ce8sm448494ejb.77.2024.01.26.02.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 02:00:46 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 26 Jan 2024 12:00:21 +0200
Subject: [PATCH v5 10/11] arm64: dts: qcom: x1e80100-qcp: Enable more
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240126-x1e80100-dts-missing-nodes-v5-10-3bb716fb2af9@linaro.org>
References: <20240126-x1e80100-dts-missing-nodes-v5-0-3bb716fb2af9@linaro.org>
In-Reply-To: <20240126-x1e80100-dts-missing-nodes-v5-0-3bb716fb2af9@linaro.org>
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
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBls4K/lsJt6H7wxMhDuiVTa7aA6DlbWsbotJ7Qv
 B1908w71JOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbOCvwAKCRAbX0TJAJUV
 VuVJEACRAzyCTauKPMR4nwNKZF/Z3LYM4TaYFt9MJerwvjFmxAbLOXaTqN8J2E5t8TVt3T2HyKC
 2XK/x7ALAYnD1TWYYL4yQwNJ5P8GYR9sAiNMggU4Aa9p2/3QAZ1gDRWueASiSUbx4AxNABTaI1A
 nOBp94cGbB3J4Tr/SjnTlm+T4UohKpLW6KqxE3rryfUZ6d5JKl7it3Mgjx5w+JukQFvYaacyuJ4
 66N7NgkxCWB7RSbuZlbDpXBFc6PXLvbe69SpHMm3DPhywHREzBgkDIGluGe0EQJ3KlNmf2M1xPG
 Ea+4JQzaC8hBlAdDKoqw8SbgGjfn6RP/Z15115Uo7tmyMBlF2ciDqVrFLyR3twznDOFU8CNmW73
 BqB0LhXYGuqS1FUNovYJ5RjJB37uIidsWwjw4fOVKitnwVD4ZA85txC5tzSnh0zJJX1gNz3S6ap
 pNCPefT3EpFtBQW3wOXdp03rm+ZcfOll61dGXe7latdEdHDTYcDHDpZweBg/6ylu62HH6vfxgW0
 1V2Vjueahl3KzlGVkcVeZwxK20IIJPj7pBOAb7A8iUrwkSIUygHfMeWLXStgohEf9GhE76AB7S+
 UOGbRuHog0H7Y5og2m4/PNcqnKdPvtiVbL0H0+7/SnRNB6nAHks81RTa+h0tcebR37AaIrrSvMX
 e4GgBo6ZjTsIjZg==
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


