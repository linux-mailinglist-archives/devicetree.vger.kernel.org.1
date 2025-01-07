Return-Path: <devicetree+bounces-136151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FB0A040E9
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:35:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D65C7A04E6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:35:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7802D1EE7D5;
	Tue,  7 Jan 2025 13:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EduB17Rp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2807218CBFC
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736256919; cv=none; b=CEqFElvb12B7xBO+8ISnQ0YSu3gKEYJhRtTOZ7qzXtcuPGxN9COiujITwHzBS1qa+2kbS+ceXF+GIAzhV1mZbs2SnjoIQnCBg+AFBeRl2lt8ju/M7I1iF6yZWZRPy8fFqAFaZ1GP1wnKtahemMoznRT7635KA0BrSqDNjz35mnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736256919; c=relaxed/simple;
	bh=O9/apjJxGBelYRg6wchcBwX09vc3JomViypUrPHPljM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=oiAvQo1muvPHNeFmB7Ug4JsYKWFoENsOrjx7asuUjFM40/SM+nfgGmO2uaNSWc0PzMKtb/ziuEx/CpQDwI4ZRw8uEcq/+/O9/+KhYVatDjpOP14ffBe14MXD5zznSgvlsY4Rqygq25cTm+r6UWKunkVCKKIjj/meXV8YlFnis1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EduB17Rp; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43624b2d453so160094185e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736256913; x=1736861713; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yxmsgvbwPQs2GZoNBxVcC25NIUJqe+8/fvlpMm4yiJQ=;
        b=EduB17RpUzdURBb3iVhpR27w2KPEDy6phWVc/eUfwWFT4gBs5D4ftMkHg4z6oPPgT9
         i4/5mRnR7I27eJz+RghMEbeoHFHYC2xYgO7YgSiDqETnkbuJZnUFRnpP+5b94tUutMDv
         Kb9pzNHRB5NATNJpmyk2kaAOwaLfTNwGJHHuvVv09sdVprav4aL+Cn9qtGkTXHfpcfGO
         CQZ4d4rWPXsetWOT3CVrWFV6mWCwZ2hrYnQ84zOOoJwYAGF0s/2GA0XQT21HyeKAbye0
         cTL/g55O6SAXJGuGyHI3IDD4WEJ7CcVkwkHzgDVpI4/+KOk+zATzC6cFYlK9iu/FXXIV
         iVgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736256913; x=1736861713;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yxmsgvbwPQs2GZoNBxVcC25NIUJqe+8/fvlpMm4yiJQ=;
        b=uHYuQgUCl+sXOQPFOsJ4s6YQykPi1XXFA53O0IrVAlb8ARAyh56QmFAUTLxGI4as6W
         rsXF8rrn5lRtHuVnL6DR64J45Omesx+N3aT+nKMIUeu9qP5Pqi2eYjsgYUFQtoaPMqG1
         TAQcs4MioabGHOTuGIz5HwKJSU+fHMBkwPBf4bWrcVTgtiAATs8oL5q7iSxzaSg/jtBl
         BxMP0WItcLEJHP8QU5NYQw8vWpt4Yennne4eBTgSReU5oq5ftK3p7+4QY1tUh2Eotm/G
         ac5skuApy7bT/E6s98gzuQWAd4Eyq4gdjJqzfyhRASRKe9+TsI2iEgq89bvvK4xa/wGd
         rrXw==
X-Forwarded-Encrypted: i=1; AJvYcCVdFw5KGu6POLsGQ0wSihEmXETAS0GP8lOb4mbbeFzFW6Vn3yw+dcIcK4pIcTPVJA4+kG1VGoeHh+xl@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm0SkStaBdzPv7DUmyAy5MRYbIjniJ4Kv6zvaHTw7/C4kTFcR4
	ngrU610iZHzpfQ4ZEqLCpZOTj0lb3/DKEZ8GuBqwfSJqhaeh9vHTNsaBqRAMS+E=
X-Gm-Gg: ASbGncvYs/PnaSJHXieLqWUV9bN1xIiEL6rhtQt/7RiyE2n6tfm9Lp8tQXtQQWhTPp2
	N/uwLci6l3wVZCJGXuL7g6pjSqHXXNe0KlETlU1YvMUeNNgmpDjas0zFUGGKx+wmW/HTRF0GOHA
	yo3fL+jZ0ilcldQbhJbFlvW6rnLPIxEPQeexfYoY0pRZo9sE5IilEZphrTxrviJhaZeSJG/w7gw
	qLies3KJj8bK68AZTCQljNtztHnl9xnfiKmz8d67eZ+sdq+9TziOlOa
X-Google-Smtp-Source: AGHT+IGcoQ2BCArOBXSbkcethRP4kHtN7FiqEIwHiAJyObJJCkHzqTKHJOM1/ieNgXSMhpJp8F1SdA==
X-Received: by 2002:a05:600c:3146:b0:434:f817:4492 with SMTP id 5b1f17b1804b1-43668b5f887mr579200635e9.31.1736256913391;
        Tue, 07 Jan 2025 05:35:13 -0800 (PST)
Received: from [127.0.1.1] ([86.121.162.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e126sm49644705f8f.65.2025.01.07.05.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:35:12 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 07 Jan 2025 15:35:07 +0200
Subject: [PATCH] arm64: dts: qcom: x1e78100-t14s: Enable fingerprint reader
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250107-x1e80100-t14-enable-fingerprint-sensor-v1-1-8fd911d39ad1@linaro.org>
X-B4-Tracking: v=1; b=H4sIAIotfWcC/x2NQQrCQAxFr1KyNjApnY54FXERNdWApCUpUii9u
 8Hde/D4f4cQVwm4dDu4fDV0thQ6dfB4s70E9ZkOfelrodJwIzknFFxpQDG+fwQnzdAXV1sxxGJ
 25EqNmYexthFybHGZdPsfXW/H8QPUv+JjeAAAAA==
X-Change-ID: 20250107-x1e80100-t14-enable-fingerprint-sensor-a517aaa46576
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2308; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=O9/apjJxGBelYRg6wchcBwX09vc3JomViypUrPHPljM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnfS2MmgbwlZi4VHvTFnu+PnV6v08BSrHppjaxj
 B8XJaFTfXmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ30tjAAKCRAbX0TJAJUV
 VokHEACUqVVKpEazvRYGeC/itbCrce+KfJf4gok0eLSQfhn8TOPqfYlGDnqqLvEFvQi/DaHHGIu
 TfwSigQMEzlJeRQVGk2s2Zx1u6AuCdIEBpvMNTyyYCZSIoqlG/ecw7COBTHHvUEnkKjq2H5V5yc
 2wFIGfX15+RP22GD5Mrp6IMGSZC1JGL3hQRBOixk0bNEtoRIQgFysLrxGYeFFr6dnY9TDwj99mv
 DK9fTZIWiJTEEEVdweTGOmcmylt/IavrJ5bW4y29Zb/hEJXoB22fRjBunA3zmc2a2J7MW15VNKg
 2O96cDN/LizY2Fq6RN9iiCraxaLOfBRho1iCpyUwiSOboqW6Rlf1aMBTwhcmTQdeQMirOR95ClZ
 7AmhBp/zJW9pfO/CI887qzq6WJEjzoU50EeLCjoRU7es2UQbIXtKBJfolyS5lYmllDVTXnKYjQr
 6HLyg5sqQjqcMmizYjZIawConq9Bp8vmBs5VceENZMy1804Oeao7SFr9g02WV054K0BUAg4OhKw
 ux1N25tBwHvlvB7noIb4VI0Emit89J/hWCIc0yLKRMboYnTwmZEAa4I2DznGaWnr8F2sz5eg5uD
 xUU4iQWGA6g+GvNKC/E0SdUPXT+DCLTA2jHHBT2Ny9I9xiyLf4Tq2ogYQDcTdTJ/6nPc6jUg7lG
 vK18k9lIsYwJTBg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

On Lenovo ThinkPad T14s, the fingerprint reader placed in the power
button is connected via the usb_2 controller. The controller has only
a USB 2.0 PHY which is then connected via a NXP PTN3222 eUSB2 repeater,
which in turn is connected to the Goodix fingerprint reader.

So enable all the usb_2 controller and PHY nodes, set dual-role mode to
host and describe the eUSB2 repeater in order to get the fingerprint
reader discovered.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts     | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 9bb6994cc482e28e3e78817adf7ef15421f63219..b2c2347f54fa65f9355f0d7c008119e95bb64fb2 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -612,6 +612,20 @@ &i2c5 {
 
 	status = "okay";
 
+	eusb5_repeater: redriver@43 {
+		compatible = "nxp,ptn3222";
+		reg = <0x43>;
+		#phy-cells = <0>;
+
+		vdd3v3-supply = <&vreg_l13b_3p0>;
+		vdd1v8-supply = <&vreg_l4b_1p8>;
+
+		reset-gpios = <&tlmm 7 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&eusb5_reset_n>;
+		pinctrl-names = "default";
+	};
+
 	eusb3_repeater: redriver@47 {
 		compatible = "nxp,ptn3222";
 		reg = <0x47>;
@@ -884,6 +898,14 @@ eusb3_reset_n: eusb3-reset-n-state {
 		output-low;
 	};
 
+	eusb5_reset_n: eusb5-reset-n-state {
+		pins = "gpio7";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	eusb6_reset_n: eusb6-reset-n-state {
 		pins = "gpio184";
 		function = "gpio";
@@ -1058,6 +1080,23 @@ &usb_1_ss1_qmpphy_out {
 	remote-endpoint = <&pmic_glink_ss1_ss_in>;
 };
 
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_2_hsphy {
+	vdd-supply = <&vreg_l2e_0p8>;
+	vdda12-supply = <&vreg_l3e_1p2>;
+
+	phys = <&eusb5_repeater>;
+
+	status = "okay";
+};
+
 &usb_mp {
 	status = "okay";
 };

---
base-commit: 7b4b9bf203da94fbeac75ed3116c84aa03e74578
change-id: 20250107-x1e80100-t14-enable-fingerprint-sensor-a517aaa46576

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


