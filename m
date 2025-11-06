Return-Path: <devicetree+bounces-235737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BB3C3C154
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A74011B20668
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEDF5302CD1;
	Thu,  6 Nov 2025 15:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="JS3CCsCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F9229E101
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762443092; cv=none; b=QSIWy+IYeGY9cBWEyWBvOE5sLZCq6Wd8JltJvTD6eYYJ4ebn9V5bq9pdKzvMP+i0TcLHkE8Hu7ga8zWiIM0+dvz7LCmRKezd4CvUTYyHs0ieMY9KLCAWhq3BtUMiH+MdIlwQ7b0PRN7Z8HkhSCTFsWUx/8oBkXWXqrL2AnA/jjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762443092; c=relaxed/simple;
	bh=nFTMiixlNvRzTbq7OpBGOyWd3t8zjaGziikj/c4xkbY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XiUM3d8yaH8zCNYbcjyiy9zAJR+G4VDwHdzK4o0MGjVohzM/I2P59RS9M8gI5mHiI/4PecwIQRx/lxN2jU7tOo8MTxtWDmNf2IPGRlF2S6S4n5v/81v6CZT0n58wzqxAs+cwANJftD/Bh7I/ghIv4PuW9t+rzzuIp3Kkjt5Z0x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=JS3CCsCE; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-429c2f6a580so1063561f8f.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1762443087; x=1763047887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDJBjo0tk19MxLFIW+Axiq3QKZE3M5MjCU5GisKJEXQ=;
        b=JS3CCsCErJMWwevyobg0lxKdWUylGvqCGp6BmIqO8HOmVSe4JNASTi+TN+VWD3oPWA
         vxyJGFCT6jpmj6q19Z465yO5VR2/kbtR4uzr5ui20Jbw9/AnaP6YG0hs8RnZGcnJU8fK
         OOYP254loNWu7pfHLrKSWlvm21ooFBMYRlvS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762443087; x=1763047887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDJBjo0tk19MxLFIW+Axiq3QKZE3M5MjCU5GisKJEXQ=;
        b=Kac1FZU9DQaGAmLUh6tKYzs8OH8Tt5vuBXwyGXaEtMluEVc0Pk+tIWfC0g1QXzNgmc
         kstJR+1Tud8C/Mr+Fj95QzepsXYwuIxFq50W+SpmS8zPUkj+h0gS3ooKum+pWCd9AIPG
         nUHnXvheehHo0dw9VyyXX0cPKAIviP0mpC71w+rBqmJaCICbVMve7nU4IsN1fKhsYHZ+
         tjv+GzUY1dc8+jJjKP3evZ0v9E7oA34WUEV6zvsDkEq8LhyHUAeeu+QywUr6EaRiuPFs
         I12lAo1nNdU/EhOxRaZenX82/Dca2E2YX/G+sL5RIPHHoOH1TpONc9Z9LwpTBE17H7A4
         GjvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUU/x+zFLnowZf5kGME5GBP6NIUmpD2drM++QqTaGqkfJulqERKMpVS+aty2Wt3XJ3wLxfjUGtj27VP@vger.kernel.org
X-Gm-Message-State: AOJu0YwKIvOnXO5iEu+Dm7yfjNBnqNXu/lx2m5PqdmqW2E0B8+uQkPul
	f/9zZKSMg1L2LrohRFvNrInGPYqVjiJoNEOVQGHi2I7GzbfPNkNutxoiY59b77rMU7Y=
X-Gm-Gg: ASbGncvnKZ5/YyGApYYe21QjKaWt0Sq7S7XFhfR5XD3D8JDxfPd+GRKry5qYz0vxxLu
	12oYamtPBZ1A5DATYlTiEvOT448yMbciViQQxazvakmG2xVUxjbwi+T5zTvIjZZdoXoARQlIjMM
	Zz3pB9znZVrFxMjRK7KRl5nxSuFq0dfoKpNdHZSJppRA+zenjt53hMeP6AQlje/cDbQDYcaoYsI
	gsiy+Do/EIeClDFSam+rr90oODKO+4CGAbwMlmHOebuqMdRewF7/lipkVfG3T8YAFcwFLTwF67/
	Cca7X2/wfVmHFGdDregnkUoM8hbg+Lluv3RR9DaGRgkaTMnFFNj76u6p69YBgKnf9ft0AMdMjH9
	3P7gRYEaxADdBrUKLt25WayId0WAMILwN5O1Ku4QNQQBvzuBLWo4ca5uuQU8SclyhMirirmVeau
	91tEAR9s5tUq+nuSXdqZrRFLDn
X-Google-Smtp-Source: AGHT+IHCZAr95mKcE9yjFtJyCN1KyzbJ3I4nTiFSTQevwcerBzM8hslgjP0KyUU+ToTYxmAmb25Lmw==
X-Received: by 2002:a05:6000:310d:b0:429:c5b1:5c63 with SMTP id ffacd0b85a97d-429e3337679mr6689753f8f.61.1762443087151;
        Thu, 06 Nov 2025 07:31:27 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb49a079sm5966719f8f.32.2025.11.06.07.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 07:31:26 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
X-Google-Original-From: Riccardo Mereu <r.mereu@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	mm.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH 4/5] arm64: dts: qcom: qcm2290: add uart2 node
Date: Thu,  6 Nov 2025 16:31:18 +0100
Message-ID: <20251106153119.266840-5-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251106153119.266840-1-r.mereu@arduino.cc>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

uart2 is used in Arduino UnoQ as an interface between microprocessor and
microcontroller.

Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index 8bf5c5583fc2..32d58e66f57d 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -562,6 +562,13 @@ qup_uart1_default: qup-uart1-default-state {
 				bias-disable;
 			};
 
+			qup_uart2_default: qup-uart2-default-state {
+				pins = "gpio6", "gpio7", "gpio71", "gpio80";
+				function = "qup2";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			qup_uart3_default: qup-uart3-default-state {
 				pins = "gpio8", "gpio9", "gpio10", "gpio11";
 				function = "qup3";
@@ -1315,6 +1322,23 @@ &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 				status = "disabled";
 			};
 
+			uart2: serial@4a88000 {
+                                compatible = "qcom,geni-uart";
+                                reg = <0x0 0x04a88000 0x0 0x4000>;
+                                interrupts = <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>;
+                                clocks = <&gcc GCC_QUPV3_WRAP0_S2_CLK>;
+                                clock-names = "se";
+                                pinctrl-0 = <&qup_uart2_default>;
+                                pinctrl-names = "default";
+                                interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
+                                                 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
+                                                <&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
+                                                 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+                                interconnect-names = "qup-core",
+                                                     "qup-config";
+                                status = "disabled";
+                        };
+
 			i2c3: i2c@4a8c000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0x0 0x04a8c000 0x0 0x4000>;
-- 
2.51.2


