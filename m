Return-Path: <devicetree+bounces-142201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2C9A247F1
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 10:19:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E3CB7A2B77
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 09:18:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC33F14F9EE;
	Sat,  1 Feb 2025 09:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tSJViwnK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD97515A863
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738401515; cv=none; b=c3w5nbGPHyAeTnJ38qqqa7d9rXHroKaA17jEGYSZw1Uk8BY5MSgqCjMGAN62xO3gTkDbYgjqkQFuKXEJSX0cybV/oRZZj8rZn3iacExOWgtjZbg/sGc3pSu4ncmXfPSYK3LNy6raZ5njO9Hf6Rq9krmhS2YRCMIWAJmBrtrZSLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738401515; c=relaxed/simple;
	bh=HZSRmLC0Y3vRBFov52uSE72iZIw43GshJDEASCPg0Lc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gR9WyVkFsVet+ovBuCHyFcBfpnvqWQ1wQhn/35tP3hVSSpJiF6kjL5SOeoH8Y0maBgV85HsFR+46vDXZPM6rMEZXhnfRuVs00V43UyPhSASEZu/Zuf3dSdf2+wSBEwQBFpNcGUIMnDiKMN3/CqqTltWAPV9CV3UZnwyL0X1M5Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tSJViwnK; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-540215984f0so2907952e87.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 01:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738401512; x=1739006312; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DE3tyRugtbBbwb5/qBds84HRv3FrHZrDnoYQR1RwwhU=;
        b=tSJViwnKCrf12EVAxSrllB0ttG9bLGf7hCdf34Ns/D3XlJQN3/xYoKedEuy3iqYaoE
         1eoDWzhBqAbrc2zDJZClismsv/Zu0vAC/LO3CjokPr1rwX17G+tooHV0Tx5RuM+rYXp8
         sixWrq8YiJ8aVxCom9HgkWu5QhFe8ZZezMsGhZOJ/s35tVo24nkCbHgqHslKezZNGpsz
         7AUOlyIcdlxTxXBUT9dNzJgrvgt4WK9IRwBjAKKU7kRys0e2wWvYJBQK8UKY1h3S7f9G
         gzAdefusVgZ7LypWQmBC7DowJG7mQ4gwPGDEJDiSuG4XGH9My76Qkh3BRejydppRWOV0
         E6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738401512; x=1739006312;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DE3tyRugtbBbwb5/qBds84HRv3FrHZrDnoYQR1RwwhU=;
        b=SYVfHmWXVCqm/2xUgAj7OBxC7Z89wDZ9j0GGytTuROLUcDallbJrHRQLgOFcK2IYKL
         pskCVQbE85WHlS8tggjrIPDR7PgtHnOD2XO6oycel7cE/qPa4q7zqKQkfb+LRenRpo8m
         qBJI3WG6kh5SDhFvYKrhOOnZCDy10IFkC06xBLiwkBopZ7cuphki2qFHFBQGW81gGDf+
         Qtzo+NcMcMLBVX3shZNCw3dg5VSex2zykPTlduCe/he8vC8WEPO15Q2Z436dsmKu7itP
         DefFNFZt2mOSfGPSwuQxHCo96GwHQAXpD55rvjouje9sa+5DPVBfME66PyjdqeUgeCPG
         w04Q==
X-Forwarded-Encrypted: i=1; AJvYcCXakXCko4z1Bt9ZirTs9mdU3+NVXqe5msBh2/3ncSCp/KMl1GQrL9pwl0qFW7sY/rukFmxNVAsYmXKG@vger.kernel.org
X-Gm-Message-State: AOJu0YwkxXvRtLeTQjXq+gG0QWuNdekW2rjiRvKVWhzTdhrmLpru4Rd5
	M+SBHwJsefX/ynQWzrc12Q5un3nrUTAPLOshO1ivk/dY6HeYQeoYPK/lr7biNdk=
X-Gm-Gg: ASbGnctFrrf7Xx0ddt3JTaN+ONHQs3wpl1DuBbUBhUOGaOjKnCws8J33r3t2tNAI9lH
	Nd3YydMdfKrb2R45GIuH3yvtrbJj6VN6YtJzhiLVkGmkL6CCwOCD+HfYWUqZPOAxYmZA+Rvtt/C
	rbmBiceDOjLvFcr6l1BfXH+NNLjyZlIy/HWUwCwrJoX3nWn/gUpeSpe8oD2hm3AdKvFgkfY2S7V
	w3m9NsmfPfw0U2GNNvaii7VGNhWp4pXTgxmr1rZbvzujUTGpQ3mbbkhHmn903e1AFfCh2tcgWkP
	AnwTfYIptlVlltSGr2vI89o=
X-Google-Smtp-Source: AGHT+IFe21U1IlPS4x+T4yASJ7xTnVn3osFOXoCkAT13PTPtSXL7mLE5yALNh9bOA7uW6MRuRMxFNw==
X-Received: by 2002:ac2:4155:0:b0:542:2166:44cb with SMTP id 2adb3069b0e04-543e4c372d3mr4045479e87.35.1738401511938;
        Sat, 01 Feb 2025 01:18:31 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebe0ff47sm711234e87.93.2025.02.01.01.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 01:18:30 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 01 Feb 2025 11:18:15 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: qrb2210-rb1: add Bluetooth support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250201-rb1-bt-v1-4-ae896c4923d8@linaro.org>
References: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
In-Reply-To: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3063;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=HZSRmLC0Y3vRBFov52uSE72iZIw43GshJDEASCPg0Lc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnnebckokAP8uTlRjuuGQS1EydPg05UnSfhdcBK
 h/ymwhC8mSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ53m3AAKCRCLPIo+Aiko
 1QDHB/9/g8L/8xi9FbapXjniU6lHAcvCdTF8lKitUp1rPCd20TzISTNzSWNmTZwffhmFuhFaOmS
 CwH/eCnFBNEes2nLsYMw7j6X3SXMpDRMIyvA9iHLr5tLMAq4dHOiWKX1QF7rVFBVrL6I60huEoz
 noauOfgqwe+OYMibAgsYKvZonpW0TwScpeaugF3j0k2ydB5fhvVJNQupE53dg+dDn7n8iMxP9Nl
 uoXW1l5u9AvNKM8G7PrpBge1CGxNzLXpBgTb64po65XZU2iM24CffrVOi1+fegIqEsuUsN1w7cp
 t1P2MBapIJ9GmiPeKh8LxNCL65uHnE5QfrEAiZpMeDvuu5Vx
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 81 ++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 7a789b41c2f1887f0c41ae24da2e2fe8915ab13c..9bb2254d3198b18908bb6ba201602aa809592dcb 100644
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
@@ -584,6 +645,26 @@ key_volp_n: key-volp-n-state {
 	};
 };
 
+&uart3 {
+	interrupts-extended = <&intc GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+			      <&tlmm 11 IRQ_TYPE_LEVEL_HIGH>;
+	pinctrl-0 = <&uart3_default>;
+	pinctrl-1 = <&uart3_sleep>;
+	pinctrl-names = "default", "sleep";
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


