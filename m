Return-Path: <devicetree+bounces-142271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F277A24B28
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 18:31:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8380D163FBC
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 17:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60D7E1F2379;
	Sat,  1 Feb 2025 17:29:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xt3z897L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5E81EBFEF
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 17:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738430969; cv=none; b=a6YTAz1IcLx6a727R82aBBl73TwONiP7bSYJS5zntgVC4VnfQNKNF7pN4YECcL5B5+wzj76yUCPG8QepZCv/KmkreSagYfVlGkNPBV+/Xq27bMP1RjSAdcJeWVR2anWL8tGwa3dgHzbwpA5cwC8om3htNBQkOXQ5/nZZBHm9HUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738430969; c=relaxed/simple;
	bh=JNFb6Y/XdVHYoGkQV0QeQUNrQN1lFqLu5lpLIO5kuFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mg5p3Naxx4ARX7MF9U6nkvpRQXIABjs2a7lKN2eFVZJJiKRZ6kRWa5LxufCd98h8v/ntB5DPyQfyNwOMahjvXam8oMnkIgAJQvnMtVD0zjMO/jqck4bCdQrjrT/kubFfP3iooq6hIZXQP6SRyJ555n9H+H+jyImgk9zTC5I4qVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xt3z897L; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30036310158so23702911fa.0
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 09:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738430964; x=1739035764; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ov3UCovqBDyElf7wgQMMIsdctTosh7cq25mLIhj+V3w=;
        b=Xt3z897LjaabPzY8ydXsVLPV9aAVS+Y0nYZJ+QvH5m76lupwowkUPjGDyxfIBGYX/k
         ppOH3UGPliwA5Th0WRsh4XGRo/0B2MFUJLib3TSEW58iUBZOkJINQkp1sVb8nJR7wJhR
         0UdkoAnlUuEyAZGreovvP1nyzdOLGHp3oChvs2SneuLPXP6w0cf4q0Dlof11/dBRVQKS
         xixSTCc64M5l6revooqDe0HHS13SMV8hoTGSkns3MYivV+0Qj7EXzbm61ZvBVuMje/Ov
         fX547j+cCo7MA9cBjnR/NcmVRZRWt9FChxtofIoF6hVdaxQeu2TbIxkV7EUuyj6nAX/T
         sXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738430964; x=1739035764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ov3UCovqBDyElf7wgQMMIsdctTosh7cq25mLIhj+V3w=;
        b=EIb7FV6HJmgEmBTLygbetxaXU9owshJKMCTWOkTQZlOfFLaehKdT7dPlXJndCHoGCJ
         g9dqmpMHEej628jQsCN2HlkZLL/dIz18g4APegVAc14+CJuVYXK3kMZmgrwjj4aUZMWD
         HUqjt8CpSd+5Xo7cn/G5iGdyZQPvzwtUA0bPUDDcZz26xIafgtGEA+4WM1KqHlzTPUQn
         fWZBXOFexbI2v2CQlXttyzUak0N53alunUk2inC3vm7bonn08ejrtmOpiBwAeJKpoq84
         h7Ot7NjTWFepJJfoi+XXpsIAReAYZh2ULOvUfaOhEKULcpARAkWVgJFNtQZQIBbE9irO
         01rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdpFunXaF0j7g6q7WIkG4xwzdcyZ1oNg3RoAkzZOL21jX6BYmOBamv8sqcRrYnKqexe7BMCunUG7E0@vger.kernel.org
X-Gm-Message-State: AOJu0YxvPz8IhneE16zkDqu3H8u3jLc3xwnYJqis3XnP4TCGbJhY1V5V
	J5PTpOohPrjJ2pLR2XER5jrF0N2sGry3u5inhI5WS+/tbgkP2qPQrbJl4+ashvo=
X-Gm-Gg: ASbGncuodxiiKQk8H7/OV+jTnkqQQHlZqx7W1ig39mGF9ffwbKlsgqy8IF+0ENubkto
	m2R3fqAwWIUGPERpAf9zNkEiubjNIRwgTHTGtf1keHZXLw0av4OBfuUcVIXXBopdARqMiNZtYe9
	Qehjeo/3S/HRMJ0/nzqemVzt6io+DKLPfnBQP1DO7YNPsHkwZo6wZHi4vpWeEohutR3mHBC0Fcp
	KTc8pPmkHfoaFQ1hSqu2jRzixhEsbDC/8VAVVhS7pdEylZrHI6PSpFMA03IROMA7wG3YNn5Q99m
	W4FX/UbJwKD7HHbtOS6hlYI=
X-Google-Smtp-Source: AGHT+IEbRAFVDv4wTeAOfLKEfZhaMBcWT2J7LrursaaQv5WU+GnTo7mwskIzR3eETtUbLXdwcpyTng==
X-Received: by 2002:a05:651c:198a:b0:302:48fd:6922 with SMTP id 38308e7fff4ca-30796975cb1mr53729091fa.37.1738430964458;
        Sat, 01 Feb 2025 09:29:24 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a3099ec4sm8852161fa.48.2025.02.01.09.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 09:29:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 01 Feb 2025 19:29:12 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: qrb2210-rb1: add Bluetooth
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250201-rb1-bt-v2-6-fd44011749bb@linaro.org>
References: <20250201-rb1-bt-v2-0-fd44011749bb@linaro.org>
In-Reply-To: <20250201-rb1-bt-v2-0-fd44011749bb@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3096;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JNFb6Y/XdVHYoGkQV0QeQUNrQN1lFqLu5lpLIO5kuFE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnnlnl6CkypxUXZ9gNuva9FfZ1nAkgiRypC9/7h
 OQqeNg9FquJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ55Z5QAKCRCLPIo+Aiko
 1TtvB/wKMPlfxck0+/eT+LF7golYJzAMWvXOVVT19yKb2FEW8oGVgxbEShBYDGikfO5MqXFER3q
 XYF5fiQK8uUQHWwdNnJRF9qxRvoPBxszSxhEOyI9sZicxSrT5vOyaajmlFTQd/+TkA/C8f1NVor
 w8U8CkPmtMLez1qcebKQ3D17MC2To/m7qFohl1jeJsmQBRs6z9T0PxpLwtlDgK0R0tjG+A7TmqH
 xAQTOVeXfKHY2/0a1/MHqQNgPiefsKUYF2GdgbJvOUkiwnk9dmn2b7V4e5ZUZnLur7nWuShRTLn
 SGbm9WWEpwtQUtwLltGcAOEcr8kgz/aCQk64pCVh6rm5L4Kj
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
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 82 ++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 7a789b41c2f1887f0c41ae24da2e2fe8915ab13c..b9248505fadd3b986e188976435b786f43975dc3 100644
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
@@ -584,6 +645,27 @@ key_volp_n: key-volp-n-state {
 	};
 };
 
+&uart3 {
+	/delete-property/ interrupts;
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


