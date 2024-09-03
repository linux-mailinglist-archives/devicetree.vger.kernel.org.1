Return-Path: <devicetree+bounces-99378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A902396993D
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 11:38:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DB931F24B1A
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB4001C985F;
	Tue,  3 Sep 2024 09:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="re7qty/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B361B984F
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 09:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725356205; cv=none; b=qTwmkCYkqBBfk1yPMS781B29y6qxJxKstMltMI9zv/bG7ncfSOgyEyODRN3mKzcGHH93NIBZgo2o2LI9e54A/umUeovVLAPV2hzPmSmuwVslkxd4MFP+ACA9CU6KhMwZIucgGEvrSobSBuuETeif7QRySJgjQbLiubIA8aPFLfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725356205; c=relaxed/simple;
	bh=UDY8mN7NLkOQeS1dWllQkhgyygy99CoGI6WWaVJHSv0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dfWBSGBCKfcB4Ji4YRTFYdUVoZgPqhyAA0z43GBAEXEByWDLoVuNtB2Yu69rRZGjNbCqY9yghpAJdtRaBHBiyUTuilY0zvXiB1ZetcUNsbeYIV0xzAVQQCq4UJeQrSlli8oE44xzzujWiJwGANK55taPzCdHCBr1NclFEJLVwbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=re7qty/c; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42c7b5b2d01so29950885e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 02:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725356202; x=1725961002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wpoQwlpkGQNE662npRSFJddFIL23SgdklNOB5QSDny8=;
        b=re7qty/csErTHOrZPVzqlyVw0tBtVKZlLwhdNbzd7pa33GM5pn6U5UXQPW25d/YGwI
         kzuGVMR/4m/ShCed8zEL88z3SdcI1Vg47Q+vGuyWE4ik3w31lthtln/kmLHqcwLM3gQN
         aPCaWgDKb9BmX6U40SD9oEJIz8js1d4AYEUrHvInPe34dP0LzP/vtnrZtWAtgLMCpH8f
         Nt0B+/JHZV7CTlxR0E8zSriwJoexv4PToYVopXGeA9esQg7Ipgd3e35kvLOV1elD+Nzt
         GMFp7C4et4SHAnhmLFANh/ZTJ9hjGhHVc3aqWbHO1F04mnlj3cCNeo/FbELuzPyf99OU
         iY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725356202; x=1725961002;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wpoQwlpkGQNE662npRSFJddFIL23SgdklNOB5QSDny8=;
        b=AqVTKcxgV7dzW9eSy5WqPCTDuFSAdOQZHxZEpcR1U7BudRrKEV92imWC5SxRjbZV5D
         WZh92DWEE9p01fv5s8FTs8CjZ4U2d6744wRFqsheWsOrDlfDEYatzqEiZJp8q0D5Lnr8
         9aJCGZqWQZyCKjG+yL6DNTuH/XG253YDRqbhXNj0Rml2P0lUGgdmocZcDkxPABdv15fD
         IJvWuoXpD3+3gjH7XRQ9becl1S90OmL4jf0ibJwMEEy1r0TKXKGEgSTVE8hioad0BTSg
         OmrJPIWF/kcKJbJ3IN28VRoqY0R0e5hld1tr3W8uOtBBkRvmFjMh1rdCODoM6cDicXdc
         9gUw==
X-Forwarded-Encrypted: i=1; AJvYcCXmm+MnNTLu1OQIhH6/T1CSI+NUWBIno3JIIQrcznyCYXw/hYCg+a4Z07oiNq2lwcbR9Gd7Hud3lCKg@vger.kernel.org
X-Gm-Message-State: AOJu0YzfxTdN30w6S7FHuWPSCGUAGAeQCfsdDqsnGhAwWpfbHpJkBQXj
	h67K/4fpovNOWjMxGP35i8JQP9ndWSQIgA5loHDRr+fPj/frfjXivXxoeaVQKt8=
X-Google-Smtp-Source: AGHT+IG20/vMr5jO3sKFFFJav6yaQrsxk/jjUlMdrKQn/ggqADpoZqnLaMRYzeuxybOr8SZG4u5HAw==
X-Received: by 2002:a05:600c:1548:b0:426:59d3:8cae with SMTP id 5b1f17b1804b1-42bb01b9302mr149065675e9.13.1725356201956;
        Tue, 03 Sep 2024 02:36:41 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:e61d:37d0:a59f:d06f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-376914bfca1sm790793f8f.18.2024.09.03.02.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 02:36:41 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Steev Klimaszewski <steev@kali.org>
Subject: [PATCH v2 3/3] arm64: dts: qcom: sc8280xp-x13s: model the PMU of the on-board wcn6855
Date: Tue,  3 Sep 2024 11:36:28 +0200
Message-ID: <20240903093629.16242-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903093629.16242-1-brgl@bgdev.pl>
References: <20240903093629.16242-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a node for the PMU of the WCN6855 and rework the inputs of the wifi
and bluetooth nodes to consume the PMU's outputs.

Tested-by: Steev Klimaszewski <steev@kali.org> # Thinkpad X13s
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 98 ++++++++++++++++---
 1 file changed, 86 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 6a28cab97189..88b31550f9df 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -400,6 +400,67 @@ usb1_sbu_mux: endpoint {
 			};
 		};
 	};
+
+	wcn6855-pmu {
+		compatible = "qcom,wcn6855-pmu";
+
+		pinctrl-0 = <&wlan_en>;
+		pinctrl-names = "default";
+
+		wlan-enable-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
+		bt-enable-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
+
+		vddio-supply = <&vreg_s10b>;
+		vddaon-supply = <&vreg_s12b>;
+		vddpmu-supply = <&vreg_s12b>;
+		vddrfa0p95-supply = <&vreg_s12b>;
+		vddrfa1p3-supply = <&vreg_s11b>;
+		vddrfa1p9-supply = <&vreg_s1c>;
+		vddpcie1p3-supply = <&vreg_s11b>;
+		vddpcie1p9-supply = <&vreg_s1c>;
+
+		regulators {
+			vreg_pmu_rfa_cmn_0p8: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn_0p8";
+			};
+
+			vreg_pmu_aon_0p8: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p8";
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator-name = "vreg_pmu_wlcx_0p8";
+			};
+
+			vreg_pmu_wlmx_0p8: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p8";
+			};
+
+			vreg_pmu_btcmx_0p8: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p8";
+			};
+
+			vreg_pmu_pcie_1p8: ldo5 {
+				regulator-name = "vreg_pmu_pcie_1p8";
+			};
+
+			vreg_pmu_pcie_0p9: ldo6 {
+				regulator-name = "vreg_pmu_pcie_0p9";
+			};
+
+			vreg_pmu_rfa_0p8: ldo7 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+			};
+
+			vreg_pmu_rfa_1p2: ldo8 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+			};
+
+			vreg_pmu_rfa_1p7: ldo9 {
+				regulator-name = "vreg_pmu_rfa_1p7";
+			};
+		};
+	};
 };
 
 &apps_rsc {
@@ -927,6 +988,16 @@ wifi@0 {
 		compatible = "pci17cb,1103";
 		reg = <0x10000 0x0 0x0 0x0 0x0>;
 
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
+		vddaon-supply = <&vreg_pmu_aon_0p8>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+
 		qcom,ath11k-calibration-variant = "LE_X13S";
 	};
 };
@@ -1258,20 +1329,16 @@ &uart2 {
 	bluetooth {
 		compatible = "qcom,wcn6855-bt";
 
-		vddio-supply = <&vreg_s10b>;
-		vddbtcxmx-supply = <&vreg_s12b>;
-		vddrfacmn-supply = <&vreg_s12b>;
-		vddrfa0p8-supply = <&vreg_s12b>;
-		vddrfa1p2-supply = <&vreg_s11b>;
-		vddrfa1p7-supply = <&vreg_s1c>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
+		vddaon-supply = <&vreg_pmu_aon_0p8>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p8>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
 
 		max-speed = <3200000>;
-
-		enable-gpios = <&tlmm 133 GPIO_ACTIVE_HIGH>;
-		swctrl-gpios = <&tlmm 132 GPIO_ACTIVE_HIGH>;
-
-		pinctrl-0 = <&bt_default>;
-		pinctrl-names = "default";
 	};
 };
 
@@ -1761,4 +1828,11 @@ reset-pins {
 			bias-disable;
 		};
 	};
+
+	wlan_en: wlan-en-state {
+		pins = "gpio134";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-down;
+	};
 };
-- 
2.43.0


