Return-Path: <devicetree+bounces-245511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 499B4CB1A55
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34E2330DD97C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E662D22B5AC;
	Wed, 10 Dec 2025 01:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="S4e6Gyd1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEBF231842
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331048; cv=none; b=p+YwG8w3rIuOqnx8IGuGIYS8lXFiJsJ2vhAm0V+PHo17fqF1eAPBleapcAQBkMBL5AsnIIoAaami5tWNGIJMxiSszoV5F6PA/Hl6KlniU+xsV1RaF1RRrITCJvgR3Y7ni+rfoh/vL/ROD1CYdnkdlr/Fz6+y0OyA4ELZcahce/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331048; c=relaxed/simple;
	bh=XI4lYRmhSismtq3/ELTZaza6xilSunWDD+VaWKBs0/w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MbCuMm9qdC1djWPlWauJ51FPuuK2q+oOlSxvWUgewX7Z2dB829WVjM+v1/D16TRNzzbpYEKsvVgjEKQhx5LHzI6dmgi4ye4uRiI5/vnat2bOpOPzyxd3oZ+NYuP28IxTXezQbhcdNfS3TQte4tdHBWnAkSZ+mb21SP+cCNjak6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=S4e6Gyd1; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477b91680f8so69620295e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765331044; x=1765935844; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mt4WjG0W0q19OmnI9QBXdOvVdmS1ko/5DxfFU7nvRX4=;
        b=S4e6Gyd1SjUcxpDFEfKJlIA+HpmS+Kw1UEj2nssBJE5WPmtU9nROVck4ZHRGzDcfi7
         E9YP1SkOaAbu0ZYBca0286w4cXEM6ZT7XgPQEKvMQ2Magnp8xDZvX1co7qSKtF5+Hr80
         aOuouJcWlXrEtPtZJovgKkbmbTJ/7R9+3fPhyvVa+YiIy+WOKSdTK4j2+U/rzivbb0O4
         SOlROWyKjyzZKIwYr3q2S5vwEkuykK/O19dQ14e0x8SKCRl6HFoRpLDPgsl7wRNptwwI
         79G1iKkL2aqwyZrHyoXpCCVUYCS7GT01qMmi8KAiPaSt7Cb8LoahyKNUWRWzQeMsVNFZ
         O/oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331044; x=1765935844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mt4WjG0W0q19OmnI9QBXdOvVdmS1ko/5DxfFU7nvRX4=;
        b=KQ9j+w4bdgd5xEdKsQxLiNWCkKhjUXIz35sPLpXyQZRBLBZGC3hsXr4MWngvOzWJDc
         o3CHQXxmiPDWIsqhj+kRRiJl1WbhhH6RbptKBE2ptxMvrNqfrZjeVbzmvVBFVqx0mecz
         MvGyj/DFr9tgBQoxtQQJ7Ip1KLVpKCkJmYCMMgxWYEFW6g0RyVPP5ukHfj9uGVCA3xKD
         u3oIoemWG5rARDqBFZB3J2WGXLy7chM40xmEqtsGmq4Zrc3dzY1+Q4GP0ND5k8Tqh/0C
         X12cjwcWw0altzxATgk/Ybn5N3qlruq+ooyCKpm86WQP/2hP68ctaoWZ7y0sWVZvrYo1
         /7mA==
X-Forwarded-Encrypted: i=1; AJvYcCXTPG7ItFGii52y7bqEsVyCyTbSzaGq3HWcrfwi3SKaciZ1bEesR/DiBDGuAjaCjaFpOr9mXqfPKPOQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxawYRzz3LQgmIGooLT3cp+pI47M+ARbzUqtz/V/qrWFwQJgAhL
	3Ht2Ax84PFFgoOV+39CfyY72MyBCDF/k3zWDGTunW4sPKFR+3gxzVmc36vG2CaQhCnQ=
X-Gm-Gg: ASbGnct7aTqlcrz1wRTLJhQXrpQ2xuVf5bTrtQwJscjsAoSahKGVTIgGzI0XLv161ll
	JBBu47IBRLQM4wR9o6TzJfVLflfUZ7FIJXOQozDYC4p8ujgnPNZh18zSkH22odAhRtYhhrL2hQt
	kYD2qAqeeN5DhNyE3ZS3typPrlb5ZUtfzhldY6WgC+HuacS1QpEOqlwQl61pRgJCaTE6cj8c6BR
	8gaWfWqHWqJYgCFc5Th1ipXz65Z0xQVg4Kf156IJDM2/PW2Zc+HoGtlGxVKshzEBS6FnAZoIPSo
	YQo1k26y6EFE19p1tWPh97XV3xJrVGSLKb7N7/1RQUmQu1azYA+CBJ73VtW4DoyW9hU0VjG9iHR
	EYePTIPrY/xsZK5ojX/0+fdxe11JDO5ntlG//Rst9FMm+MKwb7CpT7J406TLsB164wJAz+9BWm9
	SGbX0Geli9HuYr0K6yUvYsQjFv/QE2vi1kffiiveC9jCWBHgxgNg==
X-Google-Smtp-Source: AGHT+IHWWLr0DhBakQkIgDcOAqKdZ1ODTrL388GNUGyz0XsgeupSnN05Wl5WF+21O8AY09feCkBJ5w==
X-Received: by 2002:a05:600c:4e92:b0:477:9976:9e1a with SMTP id 5b1f17b1804b1-47a8374de44mr6993825e9.6.1765331044069;
        Tue, 09 Dec 2025 17:44:04 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a7000c984sm705234a91.6.2025.12.09.17.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:44:03 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:43:29 +0900
Subject: [PATCH v4 5/9] arm64: dts: qcom: pm8550vs: Disable different PMIC
 SIDs by default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-sm7635-fp6-initial-v4-5-b05fddd8b45c@fairphone.com>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765331010; l=7651;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=XI4lYRmhSismtq3/ELTZaza6xilSunWDD+VaWKBs0/w=;
 b=xW7TGKmLG5/XAytZdY9wYxVnTZPxIyaVaKdBApDDl58eSio+hjSXifwQs/wQc1rZnEi7YhI3x
 40XQJqkfnGrCbX0FeIS0jeKMwqVFphygxaevSgu4It6OZRS+b11rxL3
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Keep the different PMIC definitions in pm8550vs.dtsi disabled by
default, and only enable them in boards explicitly.

This allows to support boards better which only have pm8550vs_c, like
the Milos/SM7635-based Fairphone (Gen. 6).

Note: I assume that at least some of these devices with PM8550VS also
don't have _c, _d, _e and _g, but this patch is keeping the resulting
devicetree the same as before this change, disabling them on boards that
don't actually have those is out of scope for this patch.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/pm8550vs.dtsi                   |  8 ++++++++
 arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi             | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts                  | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts                  | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts                  | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts          | 16 ++++++++++++++++
 .../boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts     | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts                  | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts                  | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts                  | 16 ++++++++++++++++
 10 files changed, 152 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8550vs.dtsi b/arch/arm64/boot/dts/qcom/pm8550vs.dtsi
index 6426b431616b..7b5898c263ad 100644
--- a/arch/arm64/boot/dts/qcom/pm8550vs.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550vs.dtsi
@@ -98,6 +98,8 @@ pm8550vs_c: pmic@2 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		status = "disabled";
+
 		pm8550vs_c_temp_alarm: temp-alarm@a00 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0xa00>;
@@ -122,6 +124,8 @@ pm8550vs_d: pmic@3 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		status = "disabled";
+
 		pm8550vs_d_temp_alarm: temp-alarm@a00 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0xa00>;
@@ -146,6 +150,8 @@ pm8550vs_e: pmic@4 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		status = "disabled";
+
 		pm8550vs_e_temp_alarm: temp-alarm@a00 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0xa00>;
@@ -170,6 +176,8 @@ pm8550vs_g: pmic@6 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		status = "disabled";
+
 		pm8550vs_g_temp_alarm: temp-alarm@a00 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0xa00>;
diff --git a/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi b/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
index e6ac529e6b72..e6ebb643203b 100644
--- a/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi
@@ -366,6 +366,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32764>;
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 599850c48494..ee13e6136a82 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -1107,6 +1107,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index f430038bd402..94ed1c221856 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -789,6 +789,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 05c98fe2c25b..3fd261377a0c 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -1003,6 +1003,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
index b4ef40ae2cd9..81c02ee27fe9 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
@@ -533,6 +533,22 @@ volume_up_n: volume-up-n-state {
 	};
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
index d90dc7b37c4a..0e6ed6fce614 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts
@@ -661,6 +661,22 @@ focus_n: focus-n-state {
 	};
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &pm8550vs_g_gpios {
 	cam_pwr_a_cs: cam-pwr-a-cs-state {
 		pins = "gpio4";
diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index 5bf1af3308ce..eabc828c05b4 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -1046,6 +1046,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index c67bbace2743..bb688a5d21c2 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -692,6 +692,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index b2feac61a89f..809fd6080a99 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -1002,6 +1002,22 @@ &pm8550b_eusb2_repeater {
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
 
+&pm8550vs_c {
+	status = "okay";
+};
+
+&pm8550vs_d {
+	status = "okay";
+};
+
+&pm8550vs_e {
+	status = "okay";
+};
+
+&pm8550vs_g {
+	status = "okay";
+};
+
 &qup_i2c3_data_clk {
 	/* Use internal I2C pull-up */
 	bias-pull-up = <2200>;

-- 
2.52.0


