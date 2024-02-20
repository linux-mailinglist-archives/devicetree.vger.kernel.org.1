Return-Path: <devicetree+bounces-43866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA04A85BB4E
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 13:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49BD21F21F21
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FA1C67C5B;
	Tue, 20 Feb 2024 12:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qkdyK8Ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A896467C49
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 12:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708430493; cv=none; b=RP05llo9B24/Z4o5ZQyH5tyOF/SS3KwqBNlzb01T+dfA74wd4aChdN/Xku8KKXjogo9LEygQMyTneWA9izUSJYI0dQa+HYsGc/KTuvT9juWlp70mC/CwEvx+Vs9jMAQZaDaSitZZZvVMRdSxfUDwVC22l/oPCX0Maf+NeHv9cRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708430493; c=relaxed/simple;
	bh=zdk9pHgeIf+vy1xOp68tOmpMdlxlg0ob4eyiTJjQnX0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LVStb8ANlBeomhjSQdFiVPh2+hJA3GAmiz0Pn5XyohMgYFMvmaXOJ7Z9E7WgVRNibmsar91YHeqR0S/F5Tpn8sVxgWlzwVdnpWogQ1aFJiI4WSerq8ko35aVXBB3ewbivowcIbj/jRzxnosmpNRIg1War9spRK9MJpZyW7DxE4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qkdyK8Ko; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-563cb3ba9daso5334104a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 04:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1708430489; x=1709035289; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ytrm2oW4ptH/7uybnHyI6uTA6YC3C6Xvq0aCxo12xgI=;
        b=qkdyK8KoNs2DAA5GuTaqwP/6oWLgEa8jnFp6mOoVahtHWRCCDw0+Sc1xE1L6TP8RwX
         d1naur1d8uPu7ql/xFhIQLaw4F8FeTNQ7gkqaxZunwX5K+B1pzbagwnBijafof/dvvx1
         lW6rMNVacrnl/7U2rbCPKEKa3Q+EgkKDQqhvfXbUUGiVvObrO7PvGEe4IqsTqVJ5gRK0
         pq8fFgaU/k3jyWJvlwGU+XUgBW1KVuhMXlR7kBECXuQ2URiQXgjWEdx8cWt0pnbCQAvW
         O24yBOb7BZMSSJ1Q5WqkkXW8a3BHze2yDMLdS7Ojocnaot7KBuNUYVvUUWI0bqUHyAtt
         SxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708430489; x=1709035289;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ytrm2oW4ptH/7uybnHyI6uTA6YC3C6Xvq0aCxo12xgI=;
        b=VJvBE53Gbr66KyEkA8MYDRFzD03WvpcYTRf4lIYHRos+mQ28kBPRKhfZlmNvFWi7ff
         BS8CTRqJn09jTLcNi6XZdP2uMzc0mDDmmaVUqJT1bqcMSy3mcJTORzaOw5a0FoGsaiko
         99vmpQ8jN2woSJV+wiOkzKCvntunVfeyQzF4580GajY/KQQ2mRcUnboDsNFZPA1HxQ37
         zx8TmBRCY9cftH+ocW1/2fVQrHiew4BS13wh/m4dtgMGKdCU6x2ADCeAinoZbUnBDtoL
         E477IQLnV0jKi4qMN06VTRzI8nL5diGl98PAx14hHWDQW9FEFxjWBvTqY0uIHv05q4o5
         pLTA==
X-Forwarded-Encrypted: i=1; AJvYcCU5WBWS8Yatly7uqhm+SdTPrmnzjDe4sQ1KbFfSJ4I0ceL78r79cmRaaCY0dPL1bsLGk0bBtBRrMKZa6/67oph7CvjXHTAu5VCHLg==
X-Gm-Message-State: AOJu0YzIs18l2co/9Xa9YbBnA0mx1XBWq/EsAHG8ec1tP3wCHf24JP5P
	SaB4MhwcuD8ZjA1tZ6X4CibJdRBtz9c6tdU7wsKhSBMOahNoDoCBZv/ONy9/6UG+L/bXpq7MVeZ
	C
X-Google-Smtp-Source: AGHT+IFp2Yu3ANmh54NfdxWJ8vQF/gDzeVzhnmR5cIaO7hWVgacqSCyf7tw5qBm82qp+D+d9Ork8xw==
X-Received: by 2002:a17:906:7f18:b0:a3e:7ef1:8c91 with SMTP id d24-20020a1709067f1800b00a3e7ef18c91mr3178896ejr.77.1708430489348;
        Tue, 20 Feb 2024 04:01:29 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q12-20020a170906770c00b00a3df13a4fe0sm3966448ejm.15.2024.02.20.04.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 04:01:29 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 20 Feb 2024 13:01:22 +0100
Subject: [PATCH] arm64: dts: qcom: sdm632-fairphone-fp3: enable USB-C port
 handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240220-fp3-typec-v1-1-1930cad81139@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAJGU1GUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDIyMD3bQCY92SyoLUZF0j09QkAwOjlCSLJFMloPqCotS0zAqwWdGxtbU
 AazWh2lsAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0

Add the definition for the USB-C connector found on this phone and hook
up the relevant bits. This enables USB role switching.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi             | 14 ++++++++++
 arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts | 31 +++++++++++++++++++++--
 2 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index 383657407c6f..6726d15c38c3 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -1330,6 +1330,20 @@ usb3_dwc3: usb@7000000 {
 				snps,hird-threshold = /bits/ 8 <0x00>;
 
 				maximum-speed = "high-speed";
+
+				usb-role-switch;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_dwc3_hs: endpoint {
+						};
+					};
+				};
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
index c49a196189e3..2a65849f0da2 100644
--- a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
+++ b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
@@ -162,6 +162,33 @@ led@3 {
 	};
 };
 
+&pmi632_typec {
+	status = "okay";
+
+	connector {
+		compatible = "usb-c-connector";
+
+		power-role = "dual";
+		data-role = "dual";
+		self-powered;
+
+		typec-power-opmode = "default";
+		pd-disable;
+
+		port {
+			pmi632_hs_in: endpoint {
+				remote-endpoint = <&usb_dwc3_hs>;
+			};
+		};
+	};
+};
+
+&pmi632_vbus {
+	regulator-min-microamp = <500000>;
+	regulator-max-microamp = <1000000>;
+	status = "okay";
+};
+
 &sdhc_1 {
 	status = "okay";
 	vmmc-supply = <&pm8953_l8>;
@@ -286,8 +313,8 @@ &usb3 {
 	status = "okay";
 };
 
-&usb3_dwc3 {
-	dr_mode = "peripheral";
+&usb_dwc3_hs {
+	remote-endpoint = <&pmi632_hs_in>;
 };
 
 &wcnss {

---
base-commit: 103eb8e019aefd616735200ce46833bc74cfe132
change-id: 20240220-fp3-typec-25eb002db8b5

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


