Return-Path: <devicetree+bounces-177412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B6582AB769B
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 22:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DBCC1BA66E7
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 20:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32706295DAD;
	Wed, 14 May 2025 20:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wMAKkOq7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19751295537
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 20:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747253682; cv=none; b=fp5wtGBY+PEPzsz0CHnGiVP9CvlH3NywYGgTF7/4XFacVon/e5cWalTq2Hhyi/q34tVIq3ugKs0tTa1jEUOpsBmnYA+OHgDIjBpWf+0hU8HXJBBsWjJeWF3KzZWimSA6XBNR1jlxOkSuyZBwMpgvhVSQolkT2Ljkdm7gSErrbJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747253682; c=relaxed/simple;
	bh=k9auSPKt0xDsiEz8cyRI0UCs31hNeF6aYfn1A9QhgOg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=WwBDLNA9sZc7LaLLlxPlnVB/ZjObkzIVyu+/I4YntbKJkRTFfM676dwtedVOA5W2AJwRc8THlwjm8sX8UvVenzL2P9pZ2PbDSCyjCbBU5GOxhImO/z80CWAbK8PM11VL6AYHmFl8qXOvgj+qKtQz6jqM6mFoUkXzLCLeDWU2+hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wMAKkOq7; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43edb40f357so1804085e9.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 13:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747253678; x=1747858478; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LTS81nyVkU32wlX4TnObp+0zngaZswbVsK7/OVV7Vtw=;
        b=wMAKkOq75mYMbWFlNeLEHoZ9WylcLpk8nqg6trHwekM3/IcJd47+xix5w/vTeUsVN9
         c/oHhnl5a5Xuzz5wDdmGkVf0fGXcDhEbfQ/VwVyoKnCmIF8v934CvP6kntygVG341zJJ
         6yn6K5eC0QxUPak053IivzFRqFqfuCWIBlyhejSpUiitcymrPHhXIyiv5Si1IjgG2SUR
         D2owCEZB5QhWdpEKm7vlIQH5lJWetCRTbsTHWqDdKKc1J+wqmO+oDqzc/vgCZKISjmus
         VVMggIeY8HW90G6WU8S8pVGeB+ZNb2a0fkAFQeeM3SsuTTSqJfl6psVTYXZUYopVu5ty
         CwIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747253678; x=1747858478;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTS81nyVkU32wlX4TnObp+0zngaZswbVsK7/OVV7Vtw=;
        b=NcglSZyz+78w+IIE/wJWm62x+H3bs+PpkCKaStfxztzjHqkU75jNFPehFi0Gxwjiyq
         jUb39M4CVehlK7FlNxjmJDDq+rQCkIyLfzBecBhFkjoeOITSE3d9pZlE8/XZqQMbPpjm
         CYKNDupgIVEvlbr+ERmKre1zsPQ6YAJLg9xfCf6eventUBQqB/uiYrgn76RuzWuK7huB
         AxoCdE+XmpBFtO5chZe3Goe6gWBaZFht+8miOHVL40nb9Q1hmNaVPnK8Phs4IfaEiArJ
         agiP4gxKzGWNtTyIIfm0u8TAaKdgZhGhYkBzjP0oVaudJ6hES9l+oOXb6GV4b9hUbDoX
         85dQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa8Swj7zdJ4J3TVQvpni1tSWtRx7hYhvbJMj5GhHnljdK1u/aU/JqvW+14Kocy8eo/Lm6dw7sWLSk9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywva5e2ayHtimOl9XlQjxKi0tytl5vDo4nNkLIl/CmqOk9hk2kQ
	XO75vmBOquuQLtUCuynoAg/b3uOfPnlO9qRd0krv89N+aGkPg/THEa8NnBhGv/l2DkrwV4dPY9d
	I61stEw==
X-Gm-Gg: ASbGncsbP1iHuiuauTAtMhq0zD/RCfHpXR5HM775DpB2qqRw3yvX1KPIU84vcHDBh7Y
	vMaeXPE0TN0sOhMdUjXwgYXHdbvA//rzRkJAHJdFMzwcS36bYICKaxa0HlNC6hLhCaLRX3eUkN4
	tcNqMThHAHlIHx7Vetk3J+3GmJKXNk38rbkMrSPcOQG+XAvGxaFPOK3O4HzJa8YmXWTFYEK2FZ5
	gUkD08amb/3dW2Pcxaomg2Ifo2dTtT/D9hcgNO4frY5RlkmIIi9CDpxktY69e144d4Dxi8I6xWC
	QKU0JXW3iWEWCqWi+/RTgvoFwSgncKT377GIJdLMnThDVcV9Zg==
X-Google-Smtp-Source: AGHT+IEi2OMAZu4ycoKGP3miraj2CUArxSL++8D9f8vQASuAdWs0ZHPZclYRmP3Xge2X40kAm0I9wQ==
X-Received: by 2002:a05:600c:4686:b0:43d:94:2d1e with SMTP id 5b1f17b1804b1-442f20e9013mr45029565e9.13.1747253678141;
        Wed, 14 May 2025 13:14:38 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39e851bsm43686505e9.28.2025.05.14.13.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 13:14:37 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 14 May 2025 23:14:30 +0300
Subject: [PATCH RESEND] arm64: dts: qcom: x1e001de-devkit: Enable support
 for both Type-A USB ports
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250514-x1e001de-devkit-dts-enable-usb-a-ports-v1-1-8322ca898314@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3076; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=k9auSPKt0xDsiEz8cyRI0UCs31hNeF6aYfn1A9QhgOg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoJPmnw9ZOxqarAgMg+R/FEvvd8ehntqeM3jJTF
 E1gqILEzSeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaCT5pwAKCRAbX0TJAJUV
 VlyPD/kBdZlSOW9kr7TSU/CW6CUIYXOUtePzpjPBpS2kyshWGdH2YOhF4PUZU2g0rCc8zQwvwY/
 UffSqwlzNAIN5nmHTBF6UQB+mR1LYQ/Rr7AV4iHocKaXqGQOdOe3mfesmFEfqfZ1R/C77YRSAbS
 YWNjNGLOjVgWPkH7do20pQrh63xml8FpjcgRmxAOSbCnWjBxZQTkVruRORuMff2WCCFGSwHHHTW
 Rzm5NGkjzLtjE4cmU0JxypnHleidcCQJMLeCz6Ivd+2zSJ8laZgPiYb5s2ER6ixUDOjNwxqw66v
 jYKr4BbpbywhXBWNblmZqtHlyql+oThePCPiVhJmj5x55Z5vNo8/l/QuLRXGlT9A6ER2yioYw0G
 +4C3s4gxq8InfUNgQmriaRiPgQ2kOg+DPr+IBygeUtETcwHqWbUnJHQmiL82Shn3YsER4Bjthnv
 g/+vMpywYnq6feOBsMC6Yi+efzzeeHaDH337s3X0AASRrmj8j2C5Cu6XEoGFMW1kSBcNedaofx3
 FZO7hyKJAifAYZyX+Gy7OBzcIbZwBnFW6Zf6gShS5b6GY/j4aYE3pRWPaZPiSxj05q+UATCXh+j
 1iH0rxrLxvEkke6Ppx1t2TxgdriGgRUi5Pmx+B2Gp6T2+b0llupgbyyYJ1lV80PQHGVooKN61li
 BGAnu1D14FJ5HHQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Qualcomm X Elite Devkit has 2 USB-A ports, both connected to the USB
multiport controller, each one via a separate NXP PTN3222 eUSB2-to-USB2
redriver to the eUSB2 PHY for High-Speed support, with a dedicated QMP
PHY for SuperSpeed support.

Describe each redriver and then enable each pair of PHYs and the
USB controller itself, in order to enable support for the 2 USB-A ports.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 86 ++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
index 74911861a3bf2606add8cf4aaa3816542e837513..643ab2876222b00bfd60b74b20dd79f105a43143 100644
--- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
+++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
@@ -877,6 +877,40 @@ retimer_ss0_con_sbu_out: endpoint {
 	};
 };
 
+&i2c5 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	eusb3_repeater: redriver@47 {
+		compatible = "nxp,ptn3222";
+		reg = <0x47>;
+		#phy-cells = <0>;
+
+		vdd3v3-supply = <&vreg_l13b_3p0>;
+		vdd1v8-supply = <&vreg_l4b_1p8>;
+
+		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&eusb3_reset_n>;
+		pinctrl-names = "default";
+	};
+
+	eusb6_repeater: redriver@4f {
+		compatible = "nxp,ptn3222";
+		reg = <0x4f>;
+		#phy-cells = <0>;
+
+		vdd3v3-supply = <&vreg_l13b_3p0>;
+		vdd1v8-supply = <&vreg_l4b_1p8>;
+
+		reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&eusb6_reset_n>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c7 {
 	clock-frequency = <400000>;
 
@@ -1129,6 +1163,22 @@ wcd_tx: codec@0,3 {
 &tlmm {
 	gpio-reserved-ranges = <44 4>; /* SPI (TPM) */
 
+	eusb3_reset_n: eusb3-reset-n-state {
+		pins = "gpio6";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
+	eusb6_reset_n: eusb6-reset-n-state {
+		pins = "gpio184";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	nvme_reg_en: nvme-reg-en-state {
 		pins = "gpio18";
 		function = "gpio";
@@ -1371,3 +1421,39 @@ &usb_1_ss2_dwc3_hs {
 &usb_1_ss2_qmpphy_out {
 	remote-endpoint = <&retimer_ss2_ss_in>;
 };
+
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp_hsphy0 {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	phys = <&eusb6_repeater>;
+
+	status = "okay";
+};
+
+&usb_mp_hsphy1 {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	phys = <&eusb3_repeater>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy0 {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3c_0p8>;
+
+	status = "okay";
+};
+
+&usb_mp_qmpphy1 {
+	vdda-phy-supply = <&vreg_l3e_1p2>;
+	vdda-pll-supply = <&vreg_l3c_0p8>;
+
+	status = "okay";
+};

---
base-commit: 9388ec571cb1adba59d1cded2300eeb11827679c
change-id: 20250324-x1e001de-devkit-dts-enable-usb-a-ports-6d6e4934cb97

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


