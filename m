Return-Path: <devicetree+bounces-145331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6CAA30F0D
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:02:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A55C163E4A
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A4B12512E7;
	Tue, 11 Feb 2025 15:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uR70z4Nt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A6C252911
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739286134; cv=none; b=L4Wd2jgKBGrJ4B2mkQ2ZYOxS3JsEi3w43zfjwure17m69hG4qybwCYdyQeSupdOo5AHocwM8wJgguOdNB3YpU/ayTpgFxjeWdjZBY3yTythCYxyP+7Oi58Xb/+j/f+t2XklQGEwEAO1OpSoYaYcZpFKUlTM/J9nv03SpHmR4eqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739286134; c=relaxed/simple;
	bh=dvYWvYpE3Jvxu+gXiYuB1dF3brHIeiUKLaI0UmHV/zU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=MrLBf2WMpAgZmVwsZGUB+ZpLMfXc7LolwdnUUGmldzReQpMW5IdFuPXSo2R0HM/Tk9bP6wss+u7ZkHYhqj9FkmTGTuEEyLc1TONXXGJzbrrks+6icxKvyfgzow16EmXn/ocV8oWJdoQHiE8kR1kaDNxydubckqCZzY42O4YSCo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uR70z4Nt; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4394036c0efso16391295e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739286130; x=1739890930; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+0dC8Epp040zryKszPUJtEjy9aGy98jeZ8PAn2t0IV0=;
        b=uR70z4NtJfIFKJZQnB3+tyt1aEfuYo2//4nEP6tZzFN2wM8X41czcA+VxuulpzppOB
         qi2lultx/XdS7sDJZdYBaqGkVHLI7ZNSPTbiSBg20V90e6Qwrw9s2xuOsMAFSY5vWv4y
         boZZin69uMidYSysOrSf8vdIMRZaQUfBKaBTqZxMHvlAZ+biLg0s6dANIRBz0QDQqjQM
         nfNryHkmqRB/f5Z9U+Y8+7N24Zvqksgdv8BGDyM1oLEn/6hixpg0ElLghNKfZMgDZFdQ
         xbmNBWPUG9nLWsU/JJpiX7lxJ+eiKaBn2lPl3ix8AvRIeU+vLceweNhXNS5K0wcSxvdO
         Iz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739286130; x=1739890930;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0dC8Epp040zryKszPUJtEjy9aGy98jeZ8PAn2t0IV0=;
        b=UJ0xMV/ispWnupuT5gWyFYOp+JqSYArE4zieLYRTC1FbinHilfKhR1OVVEi7Z/9sdT
         MtGPI8pBZYJxL+VzxLkW/u8sqj2O3T12cgtwoGu9Zws1Pf8Mu9aZ4bLW+NNrxqreeWJd
         wT9TT+lchbZuSfxB+Uo0tjuD4PDPNwZ4j/wJzBAxCLCNl0OndEMzbkNi6kZOmvwPrlEx
         EYeAyqDEZdmhCL0WTPrPeW4D9lvN8m+p2oYT0licFJjPmu4QXVy0bmj/40Kh0Lz/oBPP
         oOji7cqnMJlZEOrSlI8yJoYLZilKlkw6ZYAlgii/7lClnzJjfTaY1L+jN2Kol3tSSQ2S
         x8Yw==
X-Forwarded-Encrypted: i=1; AJvYcCUAeDAwCB/gigoboOq8dejXoCONqLLLYDDdk9bN9GrLr+ipjOeAM8jGtPTozapRVuW1Ozs2cBBmYHEB@vger.kernel.org
X-Gm-Message-State: AOJu0YxQOv5t4PgCgap4KLmlsF97IGXpV45CocFKEIYxuzoz5baKeYfz
	tgi9XvcggpSMMunmARJhsNTJNTwssiCwkxIahyrGAdUANcAqpjvrBkO5Zzm4kLE=
X-Gm-Gg: ASbGncuHH7dlDvho87ZjOn3hhXjWM1L3Z6v4xW7e7pdhh/KkuKa/1PBnbAue7/CNO9e
	6G3Ch+Dh/AgYp2zNzbD03aX2+DQuEtKx4aYoDBmmHd5DmE/xoyRJZOumiUBzXv8cUZyZ6OR8yds
	LGYwHwb3mn4QbH2B8U8ObVvkrSCTdbm4yrcN4xYhzeCsATzBdmBfm98DlupIDEB6KIihpEA0n4Y
	eN7Z4dfu5o0YcI5h8aR/vnlB3CyZrKigHyA7dxZq6dMp/N8VjC6EKoO4iEdTlX8MeUTkXSzgbEJ
	wQJGryXJZP7XqZVvRvB1L6Hr29Ct1w==
X-Google-Smtp-Source: AGHT+IE3hOhZQU5ZeJLEQpHMlcLHeykRfe1aYsIU6hPc4YIbHN0eMAEFBWd7Mya11+12QdoFN1ukmQ==
X-Received: by 2002:a05:600c:8408:b0:439:554e:70da with SMTP id 5b1f17b1804b1-439554e74f3mr24840185e9.31.1739286130051;
        Tue, 11 Feb 2025 07:02:10 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:d246:cdb8:d31f:c898])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390daf3c70sm213721975e9.26.2025.02.11.07.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 07:02:09 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 11 Feb 2025 16:01:56 +0100
Subject: [PATCH v2] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250211-x1e80100-pwrseq-qcp-v2-1-c4349ca974ab@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGNmq2cC/32NSw6CQBBEr2J6bZvuQT668h6GBWADnRgGegxiC
 Hd35ADu6lVSr1YIYioBrocVTGYN6ocI7niApq+GTlAfkcGROzNRjgtLQTHh+LYgE07NiK5ui0v
 RZJSkCcTlaNLqslvvZeRew8vbZz+Z+df+982MhG3OWZYyVTXnt6cOlfmTtw7Kbdu+jrSFa7cAA
 AA=
X-Change-ID: 20241007-x1e80100-pwrseq-qcp-2bf898c60353
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.14.2

Add the WiFi/BT nodes for QCP and describe the regulators for the WCN7850
combo chip using the new power sequencing bindings. All voltages are
derived from chained fixed regulators controlled using a single GPIO.

The same setup also works for CRD (and likely most of the other X1E80100
laptops). However, unlike the QCP they use soldered or removable M.2 cards
supplied by a single 3.3V fixed regulator. The other necessary voltages are
then derived inside the M.2 card. Describing this properly requires
new bindings, so this commit only adds QCP for now.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v2:
- Rebase on qcom for-next, patch 1-2 were applied already
- Mention dummy regulator warning
- Link to v1: https://lore.kernel.org/r/20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org
---
The Linux driver currently warns about a missing regulator supply:

  pwrseq-qcom_wcn wcn7850-pmu: supply vddio1p2 not found, using dummy regulator

This supply exists on the WCN7850 chip, but nothing is connected there on
the QCP. Discussion is still open how to hide this warning in the driver,
but since the DT is correct and the same setup is already used on SM8550
upstream, this shouldn't block this patch.
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 144 ++++++++++++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index ec594628304a9ab9fe2dd7cdc0467953cd82dc1f..4240c608a4087d8173c1e92565e3c729fd15bed6 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -17,6 +17,7 @@ / {
 
 	aliases {
 		serial0 = &uart21;
+		serial1 = &uart14;
 	};
 
 	wcd938x: audio-codec {
@@ -337,6 +338,101 @@ usb_1_ss2_sbu_mux: endpoint {
 			};
 		};
 	};
+
+	vreg_wcn_3p3: regulator-wcn-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_WCN_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&wcn_sw_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
+	vreg_wcn_0p95: regulator-wcn-0p95 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_WCN_0P95";
+		regulator-min-microvolt = <950000>;
+		regulator-max-microvolt = <950000>;
+
+		vin-supply = <&vreg_wcn_3p3>;
+	};
+
+	vreg_wcn_1p9: regulator-wcn-1p9 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_WCN_1P9";
+		regulator-min-microvolt = <1900000>;
+		regulator-max-microvolt = <1900000>;
+
+		vin-supply = <&vreg_wcn_3p3>;
+	};
+
+	wcn7850-pmu {
+		compatible = "qcom,wcn7850-pmu";
+
+		vdd-supply = <&vreg_wcn_0p95>;
+		vddio-supply = <&vreg_l15b_1p8>;
+		vddaon-supply = <&vreg_wcn_0p95>;
+		vdddig-supply = <&vreg_wcn_0p95>;
+		vddrfa1p2-supply = <&vreg_wcn_1p9>;
+		vddrfa1p8-supply = <&vreg_wcn_1p9>;
+
+		wlan-enable-gpios = <&tlmm 117 GPIO_ACTIVE_HIGH>;
+		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&wcn_wlan_bt_en>;
+		pinctrl-names = "default";
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p8: ldo7 {
+				regulator-name = "vreg_pmu_rfa_1p8";
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -825,6 +921,23 @@ &pcie4_phy {
 	status = "okay";
 };
 
+&pcie4_port0 {
+	wifi@0 {
+		compatible = "pci17cb,1107";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+	};
+};
+
 &pcie6a {
 	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
@@ -1135,6 +1248,37 @@ wcd_default: wcd-reset-n-active-state {
 		bias-disable;
 		output-low;
 	};
+
+	wcn_wlan_bt_en: wcn-wlan-bt-en-state {
+		pins = "gpio116", "gpio117";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	wcn_sw_en: wcn-sw-en-state {
+		pins = "gpio214";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+};
+
+&uart14 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,wcn7850-bt";
+		max-speed = <3200000>;
+
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
+	};
 };
 
 &uart21 {

---
base-commit: 18f0a0ac2430a17949aa3b393ee22f7ad0de37e0
change-id: 20241007-x1e80100-pwrseq-qcp-2bf898c60353

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


