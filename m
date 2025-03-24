Return-Path: <devicetree+bounces-160191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 190DDA6DC99
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 15:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A18AA188B65F
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A344D25F7AC;
	Mon, 24 Mar 2025 14:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Id7Qyvyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC18625F786
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 14:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742825317; cv=none; b=ofXXmr/obcFrGrrVlOLgDGObPghqd0vugjoii5Z0vx8d6J0m4xtnygifhK6XGLMxBSaVPDDK2z/p+kKBNlayHTiGO7DEGq6jQjjqBV1cwPb/AvAPqdOgsZRCGgB1hFY0EGhN9QeFEsebwui8EWIVtviX5Ygo12gmmqbEWZxqsxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742825317; c=relaxed/simple;
	bh=k9auSPKt0xDsiEz8cyRI0UCs31hNeF6aYfn1A9QhgOg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=M3bffIfpVGhkVOnpyiaNsydRqMTWMomj+gSR6TcC68qwsMNZg/HGSbfe2mJezLN8ggj6iF2zF67IQQwxBCqoKFD+P+ki845SoPq8SmsZbmW8tIuTMfTkeWqGYZbeCYPspZ1vXWBSury6ITcVs6pbVwyuu+Q/FxrGx5aRWDgUd9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Id7Qyvyw; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac297cbe017so982316066b.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 07:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742825314; x=1743430114; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LTS81nyVkU32wlX4TnObp+0zngaZswbVsK7/OVV7Vtw=;
        b=Id7Qyvyw9KnqSa+jTLthIgiUDfC4Ws6i5ZHQ2V0A5dlbx/fHOlcRwKO5OzESlEr1JB
         0xZ5tAWjBA0eGXcnVlbJkLbQnIMvQCgKcQJYcGQ+s5XqWTLSJABTLTRtc/ARNpuyN1cZ
         ciNwoqTOUva7wRjeGRHd11wnFX1Yr9OBGsuxGZpoOp2Gjl1uouj38TK0NLrFX9CURDOE
         39kyAcYv560FpYJwPJl57k4VKjN+yLOGzimAOGpQUfcUZI4yv2M8fAtY8hD/KX/Jnb23
         XBjEX5mHW1ndtcED0iBIWzUICrb/KcUPfgrxNgOYVHrJE0uU/JbQJYoF+HpmnNvp3S85
         6Rxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742825314; x=1743430114;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTS81nyVkU32wlX4TnObp+0zngaZswbVsK7/OVV7Vtw=;
        b=sSeQ9NZ8zeEpt05sbZa0WLJ7htJ2t/a3ZTcoLRriLdkcdic9l9ox/TKbOSuJkMU67Y
         0zJe041+lPOm6UShSRpoen4BlFAlAXJr+Yb0fAkdLrxz9ykNpk5at/UfkrtY6dKyozlM
         PMArs6CWOesHeu/qFVPwekImUV5oAJlA7MBQGQmX8dcs07uOtz8Nc5+SXH1Sj32zIanZ
         YJ6CVLsFABsUCceHI8wTHG31rWO5JrDr6UMi9CDzewsVXBccHGNoku64/4JV/QNxqrE6
         GUqqz3wK5kl1aMKetx88swcJYwbTdVp6mzIzBxWT8+Umdmm7UY/CQeEAYq+tZvEwkdWg
         asVA==
X-Forwarded-Encrypted: i=1; AJvYcCUfx5ULWSiL4xDbYVoDZ+aMlPpxRWoRfxPiv+Iue4Y+/pzohbm9EdmZVjlkQH31PEQ/42R38hdb/qW6@vger.kernel.org
X-Gm-Message-State: AOJu0Yymca3TspKGmshXM/14256cmf5Yw5jD2q3CG7meRR0M1aQQO65j
	rvRW70JVzIzlyD3V/FFSzG8gZR+/75052e72kasri6MXbEeoBIFu6dosEeysAQwKBuxkLxVwEF7
	p
X-Gm-Gg: ASbGncs27uGp2aknZJBzYoPLRuikILeLGBRJlde7tYhDJkDaO61NXSdRVCcXKT3ua1j
	0V1zRlwUAVVz4fSz4PjHzHlDhqXahmAR5oY0Qoq/VsAi3NaWCFnBYhU87QB8buGgIzvJCUVAPzJ
	KfTJvHLUTpLjl9QYdtvpN1v/O5I5gaKb4YOA7ShK8hrvxjUsb/GhzRktsj3Q9DBcC8Xn90SmYHd
	vkdKJdq2EQm4+Yfp8FXRHjTCPdFRZdRl7qcoB8qZmIuUdpRKls4lVCb/xkLEiAJlx11azMJIaU2
	QRp9nanm/GjPifi3Pf+2WfPhrc9iuduMP8hd8u9Fbxw=
X-Google-Smtp-Source: AGHT+IFqz3+P/LzojKK63DKoN5LiDg2sAGczirpJQaykGYju35Pl96ChoHFNJWnrKSlYuL1pdxITnQ==
X-Received: by 2002:a17:907:958a:b0:ac1:e45f:9c71 with SMTP id a640c23a62f3a-ac3f00b7260mr1203497566b.1.1742825313578;
        Mon, 24 Mar 2025 07:08:33 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efda474bsm682381066b.183.2025.03.24.07.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 07:08:32 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 24 Mar 2025 16:08:19 +0200
Subject: [PATCH] arm64: dts: qcom: x1e001de-devkit: Enable support for both
 Type-A USB ports
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250324-x1e001de-devkit-dts-enable-usb-a-ports-v1-1-81153b2d1edf@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFJn4WcC/x2NwQqDMBAFf0X23IUkphb7K6WHxH1tl5YoiRVB/
 HeDx5nDzEYFWVHo3myUsWjRMVWwl4aGT0hvsEplcsZdTes8rxbGWAELlq/OLHNhpBB/4H+JHHg
 ac1WddPB964fY36jGpoyXrufo8dz3A4lU1W14AAAA
X-Change-ID: 20250324-x1e001de-devkit-dts-enable-usb-a-ports-6d6e4934cb97
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
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBn4Wda/npmRyJzqsiQLvERIxYU+ZFunlFl8/clm
 am7qA1/oNGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ+FnWgAKCRAbX0TJAJUV
 VpQ/EACl6/HG8ZoSuTu/f5fQ9UpouXKp+0BZNsYTrlPiAlfni/n5A3sulz9mZa4JzmmzvR74vOT
 tkpYbvh2JqGZSNvQaGe4zhoRPuAu3Vt+ZEzqiKczPJtM7B3GplN+KMTdQfp/chpibwbc9TponPM
 qcm1P+XjkY3mSirvzOYO53lu4cjKIcxBFEVj+iLMgJLWn65hmHXuBv4jUx+4Epe3fTiwDaLoaqP
 6hJabslNejFMTEnpQMHik5PUrz/lPKctbcxhVQaOgkVlMYhEo6hmwUp+KIlzG0n8dq+uOZMUpLs
 ea/IICQr0BjESSzEGt6wBp1fYy+UW+/24TT9ewmumQz3nqGH1cud24arriyJc3W06YhvnqBHDwM
 g0Mm7bcsX5sOMsWvhJsTHAVl5LS2bbOVHMVMj8Kdy4pg0WW7UyZ7TICFkKmT78VvS1zZ1moG9j0
 eCuLY3SXfdGRxY/JAdDSZgy6JckPKgV5oESRtUS0Mae1ovFlgijSFhwfwT49BKXKemi8ZjqA1wv
 D7Az4vIKoaqhwZ4XXO5Uaa6dN5wRsgSDS2YFJbCnbGE36OQuxPK29bf3Kwvm8wF1+IfUceqgYwU
 Kfly5+HyrYMjGM7oaaRV6M9oOa9RzmbAv130wpQBum6DLZLAAg8cnTTNHB9NrQ/+vfJHL/OUm/z
 FoQE8qqrqpbo93A==
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


