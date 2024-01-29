Return-Path: <devicetree+bounces-36269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FBB840561
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:48:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BEF7286276
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 12:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4EF5651BE;
	Mon, 29 Jan 2024 12:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z6IE/7LB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D1B64CE7
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 12:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706532374; cv=none; b=p4FP1XdxU1P3KV4bOQIDdO2VR2IF/3bEA6/i8HMiZT87FQ+qaUrPiQDBYVnY/gC0ER8Op99sgIxx/yxwChnpbkBLwcGkEazvC/80VDKYI8XGtp12TpsXzUBhky4hPYcnsYPEgbzlHP3VfPV1Qa2SBLF0nwQaF0zddxo1XlMcsoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706532374; c=relaxed/simple;
	bh=b5me84CBLvNcqpO40KkAROvLnJP/DZ8uuhWcZAxxBlk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jjsDZTo8TnCQvJHOxOl+nMLKQrVyn4ISe0Dn7l/uCXM75ItKjVLqax86eTP1asDkY0ULW1JyBZ8wex0L6sqZ16i6tdkUk5L3jboKHjaCZ2K3FXOaOAasyCOA62XRyu0Vg5cmp4aaTmfvkgkE4ywanDa2owclSWlquA5Ele2PQGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z6IE/7LB; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5110ef21c76so1549684e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 04:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706532370; x=1707137170; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHRWIZ6AIyJhvIjYmGETHUbdnTVzo35SA3ucS7gN62w=;
        b=z6IE/7LB9r1orFXKeAoCiQdYGkieV2aY3Zvtf86eOYpuR2/0LzYhoVTNz3RxHms05h
         Ddlt/hzNnL9lX5tqc36dt5SEjKwh+ReZaRiqcZRcO+8pUJAORG9B0MY6Y9Z3LyKMfUo/
         x/rst0r64qnCI58LvKI6ZwIlmUJ5qvZU22Yylbwa1Dbeq6SDWAEvoX62GKO7GII+JvjJ
         UZuTaj5TlROdZvBW4pdfW591YFN+90y46Mu1eEz75rfthnFeb6MTH5JYQnZ79LwifQye
         SBFM8HEgPnKiuQR1lajGeo6lpAfm1ufu5wf0TeVIy59H7jQFBILusDdLbYHfICCvyfki
         afNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706532370; x=1707137170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHRWIZ6AIyJhvIjYmGETHUbdnTVzo35SA3ucS7gN62w=;
        b=se9GNiexiNgg64Ag4Bk6qmgOSYz2kZdZeKWKw2TOyffeTnJTPgF+K7wqDsyeIrqLje
         48TBiCKDdUv+6G+oe5KaSP08maj2dmkhcQjAuYBiqBEVqb2tFymuh4/wolCs1bOHZsvG
         5mCezzivExrjwZyDvuevh7ZfttcwCiBL+J0UJz6nQbhgorzackrJdVFms03g11rmty8E
         KAhooDmlaac7aCguVWk91jBFfDLlLZeCXcL10eYy40RKNunqidz837pOPZZsMlaITi11
         vrc5nf0prRXzmRWSPKfYip98pgXTju7Ec8gxupp4hrSJCAuf0XHHa7EfRBBNoQdL1jRS
         cLKg==
X-Gm-Message-State: AOJu0YzuLy6J0UxbvTsoyLn1cVgOOH0EO/rjN7kC6KythY/hCBgsm/pl
	+TZr5OLnYX3HJOLWVivP1s8mhN+58E4jgfxiUGxOGDIy9so6aIMqYVbZew0Y2kaKZaT8cyu+bof
	6
X-Google-Smtp-Source: AGHT+IF9AlTs2VYwsJegGPBbNXPDTpI+J+HL9OQgsq9LABov9l53HNeCz9NbbYVlI4FqZYmeCAF56g==
X-Received: by 2002:ac2:5191:0:b0:510:1844:8392 with SMTP id u17-20020ac25191000000b0051018448392mr3620554lfi.31.1706532370609;
        Mon, 29 Jan 2024 04:46:10 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id 20-20020a170906329400b00a3527dba974sm3041495ejw.35.2024.01.29.04.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 04:46:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 14:45:42 +0200
Subject: [PATCH v6 10/11] arm64: dts: qcom: x1e80100-qcp: Enable more
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240129-x1e80100-dts-missing-nodes-v6-10-2c0e691cfa3b@linaro.org>
References: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
In-Reply-To: <20240129-x1e80100-dts-missing-nodes-v6-0-2c0e691cfa3b@linaro.org>
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
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlt54C/WgRJAzK+7e8A85qfaUj8y4HaL6GkQBt/
 xicRBApvUOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbeeAgAKCRAbX0TJAJUV
 Vu/vEADHjo4+Wmnlanpc3aPluOu9TGA0EIK1SefZmDtoPbccK/92/TgPW1u25ZzhUVUQyWt4bpO
 0mp38WIEmN/qFLsN5X4fXmiEsWx8t/DApmeOJwXlJYZ+cF0vFmfZM5NuMyeK490LPYTyijJDno+
 RQgvmaf6vvlNmxJaEu8ZFLq0NsAsrGntsm7/WF7rCwVOEpD9oad05IzhS/wFNuAsGKFLWINfKTm
 6URcwb9EU7YxnQ4Kgg4xiUed3pnZ0LGKyQXIpMqknmGp2AOBCHZ36m2MIyFYRxop5QPlyKY0QRQ
 DZz1Jh9CcNYDSJHRzlTPg2+OiFebIxvSiZirolfzEGxzNyK6c4vhJ3Hde4uM32hOeGoqHcfMWgb
 mfnEkWwZS+hSjGWzY+hR37qhRPBcZakfksaQ4P/eBSotE4N2u1pLmEexmoz+KtJy33n5ceOy+lL
 Cew081rEJcnvqQJabzeJfVqVlJD9T5hYZ4Df5dGUUDeOXhJqo33dCynKcaTajntNKgKHt5HXXEp
 5dmcmEp3nhw+Vg+qX0ybG0Rlq8yGltcDnEt4Zjf56WjBGANgiUH6+8n/bnbJlnUqjw0kxADa14y
 YaA+3QJW/3deYpRKSePvdQ51MWaUd/vaWInpMNj01DyzwTia5Efr3MhcuRJo0dq69hzhpUerG5i
 rNqXLrMkwVbr8ZQ==
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


