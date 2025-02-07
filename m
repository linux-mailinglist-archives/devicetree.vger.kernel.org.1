Return-Path: <devicetree+bounces-144116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73186A2CE5C
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FB747A678F
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EF351DDC3F;
	Fri,  7 Feb 2025 20:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jBpLuFpi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B471DBB3A
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738960898; cv=none; b=FWm33V9icm03TAR5GSWjm9gEEwSkWmO2iZgPWogquwsKBq360J/h4vDDLSCiTo+jQPDohbgGh6ATsa6WVRETs6/87gj68YJZf+Uo6Tm7Ohi5jTCm8BFsFhc1oAlJ2eVc2sR1MiGfOOBq8e6Mvn0ppXlhBr39vn4ytOi4NO/kwsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738960898; c=relaxed/simple;
	bh=nvBn7R4zl24lXF8bRo2NYM4At9i0z38sCJ0Oi1zDsD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jAAF5uuMu0Ut08HrfEabVrSwOZbWqJVbWocKeEhlFKMkUHMP3Xmza5fxZSTv9KHG1EDp4cpFq7VufdMO6f2HCdIvKgy3RCcEMRIQRvcH+GLY06wiI/LmLD6csyaRMBeyDf1QHjoDYg4os634mzAM5EdSR45d5VTq3l2elgiIvKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jBpLuFpi; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30613802a04so26543501fa.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738960894; x=1739565694; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8UJbddvLQG9wXJNzynWa7omOtgBQR2Tq8dAU0qNTtA=;
        b=jBpLuFpi8awAQFehuVzFwx0neQzYX+5yQzbo+BH9RBWVpP9Q2sPkPHGy7WmdS6+MgE
         LNWGmYyCXUsr7vD3oT7eAbRcufx6H+IMP2s7FTXJ/MZIfTWCsfOGLSf63BgDDOghPcy3
         HgbwlG95W/5ZFgngvHES+ebLwf06g+orrHPZ5Sd80RcZ8B1OxVbqVdKBbAMFGSkVnZ9A
         ipc5n5gsF+gOwsJmdypd/LbqW8R2hms3p8UXF3y0FWtOtpb9WhV6NdsW+0Ayll5daeff
         goj3EadKUYK1jV9GK3Db79CvczAlMUHWLYtjKyN50C75uyLk6p3gaolOu1SENC3UhFMW
         rDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738960894; x=1739565694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a8UJbddvLQG9wXJNzynWa7omOtgBQR2Tq8dAU0qNTtA=;
        b=VW6Wg9j4axoCeT3LyUp22lsv5VNyA3+7m7y+96wkV6FJsVKKOv/8cDsQ72iFAZgCSm
         bo2Jz2AlLGaIE27Z9ZxAnF481Z+XgnU4gcj21M4BFWBoSyc+ZVJoyIo/TjHxkIiWm6Lg
         MnzRWZs/r5nqrQtnML2hkrus6j4hdvyqGE7hXA6PiN2FnQQjQw4s/6DZLCeEfGi24Bg9
         7txf61sRQEk6Z5s72gck+eCZrVoDHX8ep6hF1g94qbinj7J+5S2xz9XUh50S/xjJcXka
         k1CFq3OUhFOjlY9C+byFOwGsuXzPGDSzvkmmc9VQVhzShzHAuafyogRmKHkCCnsnSFcA
         QRgg==
X-Forwarded-Encrypted: i=1; AJvYcCXt1SuX7Z3wvm5FcK3cBi7pJuMkkY22FvpdVH2YBOAw76yB4L7yQBgPJ6746LYIq1WctukfshiIa1Ht@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx9tbwbK9leSO4Amqvnb23U3mTOIVDNIMhHdF3XCnmUpfm8/EM
	SXEY99edNgrsgsH6HikBwBUaGRjHMYTo+sM0URAiQh4rcs3s1n5n/6IKQEUjtHA=
X-Gm-Gg: ASbGncuNfyjAhjeWybp+jkOeGIvgFe2ooJgzblCC66DOhoQEyTqm7koh+L7wRW+g8di
	SU2H3SMDp7rphym1dpx9Wlp88mylRFy0t25dnIXIc97YGSbqArhVmmvxeqaJpXn+myt2hftFRjF
	DaYFyZzWXxkMSM7xK3K390p3tDgXwbym6XeBYyWAru0kqq26FGCbyD01SGSOTo3XN3C38LRZ3VJ
	R57ChLpEdpxaBiZNFxntaaOGHV6UwWl0VENFOtcMeqz8gjAoePli/xq74GioUCcCsQbKVq4F5Hv
	Oh5ZqxnuidC3FKD7wDLNcqE=
X-Google-Smtp-Source: AGHT+IE+PEeFY+/fGE/0oTDa+1Oyc89e2djwYGmCFITdkpFlLgeM+hJaVdYS05brkuhQo+y4hh2GcQ==
X-Received: by 2002:a2e:b8c6:0:b0:302:175e:5abb with SMTP id 38308e7fff4ca-307e57ce521mr12024031fa.3.1738960894523;
        Fri, 07 Feb 2025 12:41:34 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de178628sm5343811fa.10.2025.02.07.12.41.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:41:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 07 Feb 2025 22:41:20 +0200
Subject: [PATCH v4 6/6] arm64: dts: qcom: qrb2210-rb1: add Bluetooth
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-rb1-bt-v4-6-d810fc8c94a9@linaro.org>
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
In-Reply-To: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3166;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=nvBn7R4zl24lXF8bRo2NYM4At9i0z38sCJ0Oi1zDsD0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnpm/ubXRilr+k7yK/Z4ZjyxXCNNia7uDidNpQ8
 sX5SOfx5zmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6Zv7gAKCRCLPIo+Aiko
 1WrwB/9oYqO4kJTo5HFANYeTOnbkNfsQhepHwUbzzOqYGYqpxQVZmBr8VToM1SAv0sizF0vxQTs
 XRm+qgA1PS9ecw0ruoBWfz7wjB/8Mv45Y2X1RFcLfpwAhtkUlGM9Wz9ceZvmN9uC9DOtS+3TrEh
 YqfaTatOhHYtB85pc6buQE/BBrEmT9XcoF1r5+JI/n0QmKdvxAZDBLy+nDNYuvVIqWBy7q5HAZT
 zLD5FSrzKDxRSPlegfdbm7RJWcoPbjosqd2E9YJCh2uOPOgsK71vLTZsGn1nI631SnNIPytZS3x
 GyHI/Qz4fFFZA2FBmRdktbJdfRS5x+Y7hgMpnaY5qoc7lleC
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add support for the onboard WCN3950 BT/WiFi chip. Corresponding firmware
has been merged to linux-firmware and should be available in the next
release.

Bluetooth: hci0: setting up wcn399x
Bluetooth: hci0: QCA Product ID   :0x0000000f
Bluetooth: hci0: QCA SOC Version  :0x40070120
Bluetooth: hci0: QCA ROM Version  :0x00000102
Bluetooth: hci0: QCA Patch Version:0x00000001
Bluetooth: hci0: QCA controller version 0x01200102
Bluetooth: hci0: QCA Downloading qca/cmbtfw12.tlv
Bluetooth: hci0: QCA Downloading qca/cmnv12.bin
Bluetooth: hci0: QCA setup on UART is completed

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 83 ++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 7a789b41c2f1887f0c41ae24da2e2fe8915ab13c..9a2c86144ed529f13987b4135407f605b9ec71cd 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -15,6 +15,7 @@ / {
 
 	aliases {
 		serial0 = &uart4;
+		serial1 = &uart3;
 		sdhc1 = &sdhc_1;
 		sdhc2 = &sdhc_2;
 	};
@@ -549,6 +550,66 @@ can@0 {
 };
 
 &tlmm {
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
@@ -584,6 +645,28 @@ key_volp_n: key-volp-n-state {
 	};
 };
 
+&uart3 {
+	/delete-property/ interrupts;
+	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
+	pinctrl-0 = <&uart3_default>;
+	pinctrl-1 = <&uart3_sleep>;
+	pinctrl-names = "default", "sleep";
+
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn3950-bt";
+
+		vddio-supply = <&pm4125_l15>;
+		vddxo-supply = <&pm4125_l13>;
+		vddrf-supply = <&pm4125_l10>;
+		vddch0-supply = <&pm4125_l22>;
+		enable-gpios = <&tlmm 87 GPIO_ACTIVE_HIGH>;
+		max-speed = <3200000>;
+	};
+};
+
 /* UART connected to the Micro-USB port via a FTDI chip */
 &uart4 {
 	compatible = "qcom,geni-debug-uart";

-- 
2.39.5


