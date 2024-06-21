Return-Path: <devicetree+bounces-78337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A181911F01
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:43:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13C28283BDA
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46A916B3B9;
	Fri, 21 Jun 2024 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="VlLeZunb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27416D9B3
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 08:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718959367; cv=none; b=eki3uORiu20piE3yLpeHIrOztXWe3HQiF7xTFY2F2/uhk6NvGORbzjZgyItAhVgE49sapEiVYyA4FxJqW72dzROlUIOi7C8KtVSwHBEH8q8KeEiPPszQYkdnyIRVfUWWuAVCjvDhni6wTsv+1jUlHO2V2pnZQ3lJtrMLfWjOJJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718959367; c=relaxed/simple;
	bh=MXze1jYhMoTsEY/3pcrZXiANxHEYX2GyfL/uAm0J2gc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G/BLeFSjLGn6rvPEcs1grXXND5dradAV7h7ZcCe3p0O3PZPQNgR0gKC8yqaCG021lCJVpgaArPOOvRE0ovqH21GvxT3Phw7Oe8EfC81W+E4XVkHM7PKtmHgIUrnNGGd/1wN/iq6JSOdmOeqCf4x1Zrx12QOBIE/fpl0X2ufGRzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=VlLeZunb; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a6fd4d1c173so29597266b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 01:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1718959364; x=1719564164; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b4+yRhm1PhnikZc9N9ZBukPjQZ2cT5ihzYpC2iXD0qs=;
        b=VlLeZunbnUMaxmoA27df+0FmEF/MgT3hJAWJs1BjAsyn4IX+olptoqmCEAPD4Ifwgs
         6aNy/dpfmlupV299jC1Q4PQQlGKgynDR5O3fOfS/R3LyzDp9vXZPAIlm+5H4uPaRtXO7
         Di+d+tC+6wWFFuCDNAA6hRX+LMkWqWBASnwjTVhMO2eH1YoI4lOKIRAtMxFTyGGcp+S5
         hRb7XvCH90RaLJ6d9piFKpt/BK1kBE1akaCA8q5Sxxn3GivxxkXYD/EPprKiZ71oM24h
         r2gR4rfY+DI7C5AjCi6ShdoeWVcc3GzRugtT3nhbBgA6Gm9+y0K4gBTIdb76jF1QSEWe
         pHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718959364; x=1719564164;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b4+yRhm1PhnikZc9N9ZBukPjQZ2cT5ihzYpC2iXD0qs=;
        b=lDDb2UqtZsggv9xxKT7B+EaEv4r8yjwffMiD/MLlPDnVOGY/cSAvUtWa6fc4F4RZbO
         vQDrb0arIhXLkbPKp5fFgD3Pg9mGIJ8rsy0EST1U7G6uupHJ/etGp/DerztRCJOV7iDI
         4zwnxLK+yFEdjsh2YPBTQfuTvTkhC7pg3/DacAAM/j6YSafGQa/bCuaPLL90R+URtLS9
         3qTwBHxJGuO4iE4UugRpaKsX9/GNf9ZTEuNpOlV23Yb6bqVL0ihIc7FEMTz9agxv4Lod
         J1hzI7S9vqKR+claJO7X9JOk7EuebeWxeUR+zpx2k8eeYYAHS/OrIImR+vPQ8XEnEKGE
         yD5w==
X-Forwarded-Encrypted: i=1; AJvYcCU5M+86fvCDdHDUO8IaCWfHsRPgqOZVJlIdXffoYgjdbAy3IscAFwpnMNA5ZOGdja9fv26PMB4z0kM8VAz3pdt5v8SgBUPBAOyMww==
X-Gm-Message-State: AOJu0Yx8awisoytKKiWv07J6u95xJY1053QFpDt3Spj/+4jYLvQ0OmaB
	QroAwNpyr8/vO8GjTbc8cZdZVClVk1prq3IHBIfCpSUPZ+CQi9L8tjdz6SAZ9gU=
X-Google-Smtp-Source: AGHT+IHcVAM+IYi7NlP7CfEpTXJ4AGSH/yE2THP3P3A5u6UEjpRFon9GIcJXDLvT+Dj+ETlt7yQjbg==
X-Received: by 2002:a17:907:a584:b0:a6f:4e0e:8689 with SMTP id a640c23a62f3a-a6fab6071b9mr491875166b.13.1718959364532;
        Fri, 21 Jun 2024 01:42:44 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6fcf428c18sm58993166b.24.2024.06.21.01.42.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 01:42:44 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 21 Jun 2024 10:42:30 +0200
Subject: [PATCH 1/2] arm64: dts: qcom: sm7225-fairphone-fp4: Configure
 PM8008 regulators
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240621-fp4-fp5-pm8008-v1-1-dbedcd6f00f1@fairphone.com>
References: <20240621-fp4-fp5-pm8008-v1-0-dbedcd6f00f1@fairphone.com>
In-Reply-To: <20240621-fp4-fp5-pm8008-v1-0-dbedcd6f00f1@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.0

PM8008 regulators are used for the cameras found on FP4. Configure the
chip and its voltages.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 109 +++++++++++++++++++++-
 1 file changed, 108 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index 6d7ab931e56b..a74f3ac09a5e 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -117,6 +117,25 @@ active-config0 {
 				};
 			};
 		};
+
+		pm8008-thermal {
+			polling-delay-passive = <100>;
+			thermal-sensors = <&pm8008>;
+
+			trips {
+				trip0 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				trip1 {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
 	};
 };
 
@@ -404,7 +423,79 @@ &i2c8 {
 };
 
 &i2c10 {
-	/* PM8008 PMIC @ 8 and 9 */
+	clock-frequency = <400000>;
+	status = "okay";
+
+	pm8008: pmic@8 {
+		compatible = "qcom,pm8008";
+		reg = <0x8>;
+
+		interrupts-extended = <&tlmm 59 IRQ_TYPE_EDGE_RISING>;
+		reset-gpios = <&tlmm 58 GPIO_ACTIVE_LOW>;
+
+		vdd-l1-l2-supply = <&vreg_s8e>;
+		vdd-l3-l4-supply = <&vreg_bob>;
+		vdd-l5-supply = <&vreg_bob>;
+		vdd-l6-supply = <&vreg_s2a>;
+		vdd-l7-supply = <&vreg_bob>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pm8008_default>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-ranges = <&pm8008 0 0 2>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
+		#thermal-sensor-cells = <0>;
+
+		regulators {
+			vreg_l1p: ldo1 {
+				regulator-name = "vreg_l1p";
+				regulator-min-microvolt = <528000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vreg_l2p: ldo2 {
+				regulator-name = "vreg_l2p";
+				regulator-min-microvolt = <528000>;
+				regulator-max-microvolt = <1200000>;
+			};
+
+			vreg_l3p: ldo3 {
+				regulator-name = "vreg_l3p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <2800000>;
+			};
+
+			vreg_l4p: ldo4 {
+				regulator-name = "vreg_l4p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <2904000>;
+			};
+
+			vreg_l5p: ldo5 {
+				regulator-name = "vreg_l5p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <2900000>;
+			};
+
+			vreg_l6p: ldo6 {
+				regulator-name = "vreg_l6p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <1800000>;
+			};
+
+			vreg_l7p: ldo7 {
+				regulator-name = "vreg_l7p";
+				regulator-min-microvolt = <1500000>;
+				regulator-max-microvolt = <3140000>;
+			};
+		};
+	};
+
 	/* PX8618 @ 26 */
 	/* SMB1395 PMIC @ 34 */
 	/* awinic,aw8695 @ 5a */
@@ -717,6 +808,22 @@ qup_uart1_sleep_tx: qup-uart1-sleep-tx-state {
 		 */
 		bias-pull-up;
 	};
+
+	pm8008_default: pm8008-default-state {
+		int-pins {
+			pins = "gpio59";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		reset-n-pins {
+			pins = "gpio58";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
 };
 
 &uart1 {

-- 
2.45.2


