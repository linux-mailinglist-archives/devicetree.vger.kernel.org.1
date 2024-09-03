Return-Path: <devicetree+bounces-99377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AAED196993B
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 11:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3811C1F24AF8
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5430D1C62CE;
	Tue,  3 Sep 2024 09:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="N0yixplp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C369B1B9823
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 09:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725356204; cv=none; b=NqQCAfkCfEaMyeGeg+jlglFmIfAbidxYU515u4TuxlFSqzhSblr1Sz3xf9hdGKMcTYQj6lsT7lFImjdx8YhweK156QdsAzbaBjFfo9uVrtxnC9ofLUUhBLHFQbLxIN0qyOs5+W4ULCG7NGEF4m/BehfQcIdBZ9NTdvwC5dMiXJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725356204; c=relaxed/simple;
	bh=z1iqNeAiGpUeHwKHbsDWQIu946SEuEYhjJT9klq2P8g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XHg6mh5MFV0GQ/5rMePD4CYvwp/UKUC0j4CVJO17QAbMEXQ8IKkRdiR+pMWRcxXmTX/Iu5caXC5fRLMLUUurdkFAqNI/IvfU3WecJY/T+NjsQOr35SPPEaaWCbZZvbTkSZ7CiaFa/J5ektry8pkI7MywIFDgu/SOvN0qfIhUIFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=N0yixplp; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4280ca0791bso43921355e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 02:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725356200; x=1725961000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HIani+GzGnctSoq5cM9yHplasfYRkpXJ8EQCOX25EFg=;
        b=N0yixplpHqmKdZw+ppGeMhl1COVzAL0eQ3IYiTh5gS9DNvUEYBKaTtcSkFpY8XyrhK
         s4AzF83a5kLSSUsnc8rEcU8koUx7zQskDZEAPMgcBRiyuJ+o5aa44Mc6kKFJpqS+TwM7
         OxKVXAV3m1sPXjGeBMuG92nHFZ7oRucsZN8ave8PR0i3GWrgL6/CF3dXQwxXfHQk0wHl
         OaJqGjS6WIp/P3YjoK+UPXn0G/H71ZIpRA3DKROJ02U6iYC44qjieNygwyGpHRshPlWQ
         W5hLzR4DRrpEWJgBKYUdhz7iVg7GOFML9IeqzTw1hfbTHltXVSdW/1hHHAkYD0hLlbZI
         F7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725356200; x=1725961000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HIani+GzGnctSoq5cM9yHplasfYRkpXJ8EQCOX25EFg=;
        b=mZP61CFoD9gbLCH9YwhcoYAxqgi4H/tElfxoyKumrvASQ/Rhmuu2uYxIEfi0b3X/8u
         0F3TnBzdj1L8H/7kGkUnupKqVIi8oN3vZur/HzKfaONU3rztjzrN5+moCVhY+9BSkExI
         wop7Tu1cORJzV1AnMhvEhqhxNtBJTAIJr8zc0iDn5Y/aAgpOMlGzPlzN9F1m4b5dMqBS
         SVHUOqgQvAdLnPHxN+XIFkHzZNn3rbgrY8ktVU200p6Z+PIH9t4TCLYSluei92Y9WGUF
         rZ2N3YRrE3BSJVs6PobAzmMVj205cOcLmw+vwxFgimLiQP2lnICmtiSA52ej9EWC2pu3
         1mug==
X-Forwarded-Encrypted: i=1; AJvYcCUu9+wKkWo0fMfaA2ZLph6pGJOezELgaRS3c6M/jNEDYikFF9zYWI0demp9+qdhaK6yRXYqWrH2LLSs@vger.kernel.org
X-Gm-Message-State: AOJu0YzNeV0nTxwMiNc5wpMgOkKdlGKXkF8qSuahQhSWYtbwM2I8Vaxy
	ozss/c0rbKSIOEVMJzIeg8T7scHTVUaLpu1o5NsZKhGk4okMMTgWD9oJAZW1pGF3AjYahqZvDrT
	5
X-Google-Smtp-Source: AGHT+IFpTAnlLWSyFFJ2OhIzJWDhPga3IVZnbI7MzsLTbso5YG0mQbMIn954aeK/dk8PINOddSfouw==
X-Received: by 2002:a05:600c:358b:b0:426:5416:67de with SMTP id 5b1f17b1804b1-42c8de9de13mr1113215e9.30.1725356199886;
        Tue, 03 Sep 2024 02:36:39 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:e61d:37d0:a59f:d06f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-376914bfca1sm790793f8f.18.2024.09.03.02.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 02:36:39 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 1/3] arm64: dts: qcom: sc8280xp-crd: model the PMU of the on-board wcn6855
Date: Tue,  3 Sep 2024 11:36:26 +0200
Message-ID: <20240903093629.16242-2-brgl@bgdev.pl>
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

From: Konrad Dybcio <konradybcio@kernel.org>

Add nodes for the WCN6855 PMU, the WLAN module and relevant regulators
and pin functions to fully describe how the wifi is actually wired on
this platform.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
[Bartosz:
  - write the commit message,
  - rebase Konrad's commit,
  - fix one of the supplies' name]
Co-developed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 109 ++++++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 6020582b0a59..ec6bed8395b1 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -177,6 +177,17 @@ vreg_misc_3p3: regulator-misc-3p3 {
 		regulator-always-on;
 	};
 
+	vreg_s10b: regulator-s10b {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_S10B";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	vreg_wlan: regulator-wlan {
 		compatible = "regulator-fixed";
 
@@ -260,6 +271,67 @@ usb1_sbu_mux: endpoint {
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
@@ -276,6 +348,13 @@ vreg_s11b: smps11 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
+		vreg_s12b: smps12 {
+			regulator-name = "vreg_s12b";
+			regulator-min-microvolt = <984000>;
+			regulator-max-microvolt = <984000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l3b: ldo3 {
 			regulator-name = "vreg_l3b";
 			regulator-min-microvolt = <1200000>;
@@ -304,6 +383,13 @@ regulators-1 {
 		compatible = "qcom,pm8350c-rpmh-regulators";
 		qcom,pmic-id = "c";
 
+		vreg_s1c: smps1 {
+			regulator-name = "vreg_s1c";
+			regulator-min-microvolt = <1888000>;
+			regulator-max-microvolt = <1888000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l1c: ldo1 {
 			regulator-name = "vreg_l1c";
 			regulator-min-microvolt = <1800000>;
@@ -583,6 +669,23 @@ &pcie4_phy {
 	status = "okay";
 };
 
+&pcie4_port0 {
+	wifi@0 {
+		compatible = "pci17cb,1103";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn_0p8>;
+		vddaon-supply = <&vreg_pmu_aon_0p8>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p8>;
+		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
+		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
+		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
+	};
+};
+
 &pmc8280c_lpg {
 	status = "okay";
 };
@@ -829,6 +932,12 @@ reset-pins {
 		};
 	};
 
+	wlan_en: wlan-en-state {
+		pins = "gpio134";
+		function = "gpio";
+		bias-pull-down;
+	};
+
 	nvme_reg_en: nvme-reg-en-state {
 		pins = "gpio135";
 		function = "gpio";
-- 
2.43.0


