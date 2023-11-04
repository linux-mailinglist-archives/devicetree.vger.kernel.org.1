Return-Path: <devicetree+bounces-13877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0017E1102
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 21:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87621B20D2F
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 20:56:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700F72420E;
	Sat,  4 Nov 2023 20:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XP9QZvbE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC141A584
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 20:56:44 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0FC2D64
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 13:56:41 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso495842966b.1
        for <devicetree@vger.kernel.org>; Sat, 04 Nov 2023 13:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699131400; x=1699736200; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T7icGMbUiQy+im0g/40WS9gOLOWKvv5vy2jRH0rcsEI=;
        b=XP9QZvbEq7LT4Cgmb65oHZtoOplKBje4/cgfPyjWwAvAfjhfeNjZWL3w/BWhFJCanf
         ++teN2u8J5zOHsuYpUz7HNHqwLVNZVOp6KwYHRwZBndhdpzvKnKGn/iC016RwUyuf+xi
         N5CANWLnUHVCXSfXOmhs++w0n6nubi9J1f3Z79cLoKP94Zj8ZYkLAIdIgaz8TWIWrfla
         k/PnhfRNYmki9pKLBEXVzh+x/g+dFeJ60NE23977zMERl1ibNLB4V46+54x788Qdz3T3
         zDBcsI1WsHnA008ydyrPx5smEuvsiu9PTL1lLzEzsbY/QEjdGUbcueMiNLhNIJFVPTBv
         cxmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699131400; x=1699736200;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T7icGMbUiQy+im0g/40WS9gOLOWKvv5vy2jRH0rcsEI=;
        b=HldROGDlCTdSEJDC5HnxcyvtcH/tDnXSjY+mZIT/uj+WFsTIcOZaWOHjL/e/cSPeNS
         qs+1fmeRKEdvr+Plwk4NJJH5OdqVy13JSLjz5BJbHAQHBvXZu6QNxQyJWrPqCGM0j/1x
         vVAmdGGygxfQwCykrbW2V4Wx0qH2lOZksH4hd/67SWzFf/X6d9dA2UdMdROnjCCcMQz7
         XAEgJ62YH004JrMXb+PwfaUsH/mHFIAcWbhwe5i9mGgP1VRDiyZAn19TgtY6dHBSGcRK
         dWlRKFQwBr+UNx3TQLFgxXUzq9gkvnYFNPHJ5vCC2iq6XtvXl86dMnhrY12IDDwbIJWX
         oZIQ==
X-Gm-Message-State: AOJu0YyTA7MBzpscgBY7iRdsfnRC4j3ACcW4sCXsm+zeLrPiUyWn8eKK
	Ip1aOE1tyh07QmCAUVHhiz3/bA==
X-Google-Smtp-Source: AGHT+IGv3YNSF0IVhDKBUbB3aVjdbRB8a3+Ft8elorpFbjAPVZeTw8+lFVFOC7Haxe5NnAj/loEd8Q==
X-Received: by 2002:a17:907:928c:b0:9b2:b9ad:ddd1 with SMTP id bw12-20020a170907928c00b009b2b9adddd1mr8916181ejc.28.1699131400428;
        Sat, 04 Nov 2023 13:56:40 -0700 (PDT)
Received: from [127.0.1.1] (178235177017.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.17])
        by smtp.gmail.com with ESMTPSA id u21-20020a170906655500b00985ed2f1584sm2295075ejn.187.2023.11.04.13.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 13:56:40 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 04 Nov 2023 21:56:35 +0100
Subject: [PATCH] arm64: dts: qcom: qrb4210-rb2: Enable MPSS and Wi-Fi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231104-topic-rb2_wifi-v1-1-fd45ae535d2f@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAKwRmUC/x3MQQqAIBBA0avIrBPSEqGrRETZTM2mZIwKwrsnL
 d/i/xcSCmOCTr0geHHiYy8wlYKwTfuKmpdisLVtjKlbfR6Rg5bZjjcTa5q8b4Ij5zBAiaIg8fM
 P+yHnDxPten1gAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

Enable the remote processors and tighten up the regulators to enable
Wi-Fi functionality on the RB2.

For reference, the hw/sw identifies as:

qmi chip_id 0x150 chip_family 0x4002 board_id 0xff soc_id 0x40670000
qmi fw_version 0x337302d3 fw_build_timestamp 2023-01-06 01:50
fw_build_id QC_IMAGE_VERSION_STRING=WLAN.HL.3.3.7.c2-00723-QCAHLSWMTPLZ-1
wcn3990 hw1.0 target 0x00000008 chip_id 0x00000000 sub 0000:0000
kconfig debug 0 debugfs 0 tracing 0 dfs 0 testmode 0
firmware ver  api 5 features wowlan,mgmt-tx-by-reference,non-bmi
crc32 b3d4b790
htt-ver 3.114 wmi-op 4 htt-op 3 cal file max-sta 32 raw 0 hwcrypto 1

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 9738c0dacd58..c2d7e3998d05 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -280,6 +280,12 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&remoteproc_mpss {
+	firmware-name = "qcom/qrb4210/modem.mbn";
+
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators {
 		compatible = "qcom,rpm-pm6125-regulators";
@@ -346,8 +352,8 @@ vreg_l7a_1p256: l7 {
 		};
 
 		vreg_l8a_0p664: l8 {
-			regulator-min-microvolt = <400000>;
-			regulator-max-microvolt = <728000>;
+			regulator-min-microvolt = <640000>;
+			regulator-max-microvolt = <640000>;
 		};
 
 		vreg_l9a_1p8: l9 {
@@ -424,8 +430,8 @@ vreg_l22a_2p96: l22 {
 		};
 
 		vreg_l23a_3p3: l23 {
-			regulator-min-microvolt = <3200000>;
-			regulator-max-microvolt = <3400000>;
+			regulator-min-microvolt = <3312000>;
+			regulator-max-microvolt = <3312000>;
 		};
 
 		vreg_l24a_2p96: l24 {
@@ -535,6 +541,16 @@ &usb_qmpphy {
 	status = "okay";
 };
 
+&wifi {
+	vdd-0.8-cx-mx-supply = <&vreg_l8a_0p664>;
+	vdd-1.8-xo-supply = <&vreg_l16a_1p3>;
+	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
+	vdd-3.3-ch0-supply = <&vreg_l23a_3p3>;
+	qcom,ath10k-calibration-variant = "Thundercomm_RB2";
+
+	status = "okay";
+};
+
 &xo_board {
 	clock-frequency = <19200000>;
 };

---
base-commit: e27090b1413ff236ca1aec26d6b022149115de2c
change-id: 20231104-topic-rb2_wifi-fa773c5f55ec

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


