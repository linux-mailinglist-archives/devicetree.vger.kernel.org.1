Return-Path: <devicetree+bounces-130057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C20C99EDCB9
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 703B1283782
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E195A146A69;
	Thu, 12 Dec 2024 00:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nCIDFUqZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2151D1CFA9
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964466; cv=none; b=sbkdWFTFidItmyPSkXVourlHl5mU+Qil6eGZHv9ZIkhNBRxhQIeb4tU/IbNYP43YIfOMgzdaH9xk4VkgAxro/Ca6KpMzVlQLRTa4oPqbLWG0Sx7/6oHYOM7btsQIZsEKmPCiKV/87ZgIHvGbd0nGKMjOAeVpi1cmPgys06jsMd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964466; c=relaxed/simple;
	bh=tyapNoEQY3XYO+jmzcvBF2+W19GTvYciSfkZQRjl4gE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l1Uhuw/N5BjtmqoOsFRaAeSQz/pfPE/1zRRm7sMezUlA6hktWKNbJK8+Yg0HdfbyIyV3HULRCRxm2MAwDNn1SAzVk2jalO92gzBEUmTMH8VCig8pyjbsf+v1grJq7PbH6YfitvVvKVemlOljokELwcC1wyIpdH9HN9MG2RTzhlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nCIDFUqZ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-382610c7116so11125f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964462; x=1734569262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MeswejV8LMfcb7qwCslWXku0mWaecv3bAOXmE+9YQHo=;
        b=nCIDFUqZC1EYfaWP4mXqjCQiKZbE2+3ycLkcLsNwfWHH3GRPtUJUkRl3xniTPgwBu0
         er5csjwZPBrS/V00d/86Q6mHu5VB2RQtbQQq1K8WLOs6ppQ0kbgajOgpXcES+KgsIUwJ
         D15vFpmbB+9BJhG7dhwzvzz0tVst2bZQ/utRtdqUkcrVsGlWgWZeBUmJ6q/Nv19ZOmip
         bGPSSe+t0KScCcd3vy9fwkXBVvuwoXT69xmbKGxvpUVqEmZW4SymO2CVSxIMbhAYBx/Y
         kDHy4/v9Hr30QgtxO9KM+34ddg4Tc2Rj+UHFGxbneNW14KNUm0hpEkJQfU94Ar7dQQZJ
         KNbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964462; x=1734569262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MeswejV8LMfcb7qwCslWXku0mWaecv3bAOXmE+9YQHo=;
        b=AhnZ7ocKgO2fFP1yz8D23pKRmwfQoRuJQG/PU2/OfcVA2lVEoFKz7Y7o8a7SI8hsek
         lnTK9BsKcNsYEsmxN1A0ksi3Zz1qDJCtFtMzJ1jCCcNsCILz6aFcMBN4VN21ZHVmOUYu
         NioKMD1RM1LE6xW0KOYNlGpBR1Inpw29ybbF8oIlKaGJgoE8TdeLEDLDLD9shXwDsx9S
         tXEv3YS7LBCn5uYXRvcQ+alW+se9kS5HAJ8MExj3ZdzhB+T/3iD9mjp98F+/EP0lBlo0
         cGa2dHVAVxIyufEzuhhwL4tdg3vcD0VbeUfGvyRVwrJOIccisGjizUGsZQwBPazx6cvC
         AXxA==
X-Forwarded-Encrypted: i=1; AJvYcCWOyYHEHNsBqLO0gp/TX6fxnP6gsIO7S5XOwMlUlmns+vOJXxcOcQObxadtugnDNO7affrso95Y/Sq3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzu5qP78/KflR6UPkoHykjSyBtunj57rXJgV8jlZ8y53lY/Pb9o
	0imDxDl+SbHHTL2SkR823gxsfmK6x47VeVwOnMUwg7U1Q9oRP0zUr/29qXwTbAM=
X-Gm-Gg: ASbGncu6eFKx7Y7LkHKhqUq0mssUG0fMA1Z15wCCm+31FkNfSsvDM0vsnx8oT87hW2J
	a/8nCsn2euSJVHb3eHoJZYloGGreOThqCB0hh8342gncBcLXNfsMTS15ExPLF99bmkVxS4oeb8o
	GmT8P1mdu3hXZg/ksNz0Q3Jbd0cDi/hNzyk5xd6Mf5ERTioDpaL1y8OrebmY0wRS6pAWK5Bu/Rs
	6BM2luGvz3RrNaohuQecoc4DBo+UTluZ9gOyXl3EooluIe3gAH6SGmCn0S0rbl+GYgw4eR6
X-Google-Smtp-Source: AGHT+IHgKENLpDieQsFB14HFzmuxdYzoOXPmh+CHOUJNHXU2LbSWQXM8lcVrkY+JONlF+DyQH9GcDw==
X-Received: by 2002:a05:6000:68e:b0:385:cf9d:2720 with SMTP id ffacd0b85a97d-3864ce55a73mr3615290f8f.23.1733964462584;
        Wed, 11 Dec 2024 16:47:42 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:41 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/14] arm64: dts: qcom: qrb4210-rb2: add wcd937x codec support
Date: Thu, 12 Dec 2024 00:47:19 +0000
Message-ID: <20241212004727.2903846-7-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

wcd937x codec contains soundwire RX and TX slave devices
and can convert digital audio to analog audio and vice versa.
The codec node also requires description of reset pin/gpio.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index edfb18c85da8..6217bc6e6282 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -146,6 +147,25 @@ codec {
 		};
 	};
 
+	wcd937x: codec {
+		compatible = "qcom,wcd9370-codec";
+		pinctrl-0 = <&wcd_reset_n>;
+		pinctrl-names = "default";
+		reset-gpios = <&tlmm 82 GPIO_ACTIVE_LOW>;
+		vdd-buck-supply = <&vreg_l9a_1p8>;
+		vdd-rxtx-supply = <&vreg_l9a_1p8>;
+		vdd-px-supply = <&vreg_l9a_1p8>;
+		vdd-mic-bias-supply = <&vdc_vbat_som>;
+		qcom,micbias1-microvolt = <1800000>;
+		qcom,micbias2-microvolt = <1800000>;
+		qcom,micbias3-microvolt = <1800000>;
+		qcom,micbias4-microvolt = <1800000>;
+		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000 500000 500000 500000 500000>;
+		qcom,rx-device = <&wcd937x_rx>;
+		qcom,tx-device = <&wcd937x_tx>;
+		#sound-dai-cells = <1>;
+	};
+
 	vreg_hdmi_out_1p2: regulator-hdmi-out-1p2 {
 		compatible = "regulator-fixed";
 		regulator-name = "VREG_HDMI_OUT_1P2";
@@ -599,6 +619,26 @@ &sleep_clk {
 	clock-frequency = <32000>;
 };
 
+&swr1 {
+	status = "okay";
+
+	wcd937x_rx: codec@0,4 {
+		compatible = "sdw20217010a00";
+		reg = <0 4>;
+		qcom,rx-port-mapping = <1 2 3 4 5>;
+	};
+};
+
+&swr0 {
+	status = "okay";
+
+	wcd937x_tx: codec@0,3 {
+		compatible = "sdw20217010a00";
+		reg = <0 3>;
+		qcom,tx-port-mapping = <1 1 2 3>;
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <43 2>, <49 1>, <54 1>,
 			       <56 3>, <61 2>, <64 1>,
@@ -683,6 +723,13 @@ sdc2_card_det_n: sd-card-det-n-state {
 		drive-strength = <2>;
 		bias-pull-up;
 	};
+
+	wcd_reset_n: wcd-reset-n-state {
+		pins = "gpio82";
+		function = "gpio";
+		drive-strength = <16>;
+		output-high;
+	};
 };
 
 &uart3 {
-- 
2.45.2


