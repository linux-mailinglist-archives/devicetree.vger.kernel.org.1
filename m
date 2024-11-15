Return-Path: <devicetree+bounces-122054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F09AF9CD962
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2BEA4B25443
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 06:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4861F189BA2;
	Fri, 15 Nov 2024 06:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p3aLKwft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650161885BF
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731653969; cv=none; b=qHgQuv7PopVN3+SKoCCM3eliap8RrDNxwiKIOwQ27tDG6Qx07ABgO48SjHRlk51UxyuWzq/6ccA2aIRh7MENmvv9zyjojWryy9dTxTarnWMVbk8jfl7DZHLG+IlfeStwp672nmhIFubKEbIRgPBXnVNK5XkfcnMiDDC3USh4nxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731653969; c=relaxed/simple;
	bh=HXNjR8Sm/+nBUm59cnvLQV1bXfEUUnciRNOgqIuawLw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JNGt3xeL8yhfpcjaHrLWTCcTaYJT4k/PRg2ku9OiUSTUegYXrxYGRMXNribbsQCsnC/qVLapWtgw1V6KfKGq2LxfaFP6LYeS4fahEfLCggYiXSiIHtgU9x8mrsVTuVD1OAcpp/GSOMQ97OE+kG/aqqov9tthZZ3+aSb3Gt6OOiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p3aLKwft; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53da5511f3cso1441397e87.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 22:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731653965; x=1732258765; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=awbFiXiCJ3TWVxhnMYPxaTyDtWQawLpXURyhC6EJAKU=;
        b=p3aLKwftmaAySIWVIzUiJQVayxQyc9Meha/T4l5IOLBCjzywoufpQBWfxQMf2RXtVD
         b/EdlZuwnisizy5E+z9IfYAQACM1cjThX38m6eMvDPgDXLoL2R/b3F10Oov5xZUARfom
         X4K/mrOHT+4d/mfC8ifTwPnu7cjsf1ugmRJLkFWCkJ3+swSAVMf5PcNXz8bZ5qym8i5X
         1B983ALX0u/9gOZTx49SX0/ZaMT7vZRCOLZho5+XHsE88mpLPW+fAjtvI3TkZJaCPMWf
         fX2qisMHF0Q4NyEfVL8Qw3g3UtM4nHE2BnXa8tEnHfjXEVFfijBRjXlopPCZAy+FbTya
         lYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731653965; x=1732258765;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=awbFiXiCJ3TWVxhnMYPxaTyDtWQawLpXURyhC6EJAKU=;
        b=F5GM3rJWJU4h9YvLilG5gm5o+klw476hYoy3N1PlwZIcq+7dk61TG54Pb4qa2RVfVA
         zjNP1jVhK9abS+aBAUierQs7QSG4YHZegD2BKbKfMqUuH7PIQgaesML4CfTr/wsCmd86
         1KECLqxR6nya+D5nOkqOhelbunCeqi1yWpG4yh3Ymbbbv30t+h0UiioM6ZA2O8RLr0ay
         TKC2s01nCgw+lqEigc6yJ1TcyYeENh67dVeZZQjE/C6wavodQ22zVT/2i1UW1LEybNh2
         DmxKjbV2pXg8b+H9i6xgafEuZfg8YIjiJAa9n0xc9ISvizSiyJYIt3yEeUVYUhB6WB91
         Zovg==
X-Forwarded-Encrypted: i=1; AJvYcCWMzQ9Xo0HU7JkE46OA8rx/TYNvTAPP0Amv7YqpFwtbi4h9e0aGL31hognz64oNUCSWMS1J1zbhtV4g@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7d93KfYZBxa4snxe5XxZURcmB9QV79Ma/1vjRGSi70MJu23+H
	H7iGh7UMqaFihG3udhM1NUaXR+wka66C+aq7MmcuB+y0xrwb6FUGDoGszlwbchY=
X-Google-Smtp-Source: AGHT+IFz7o/EEIflFQcZ7DSu8KT8HNlKcJb54KLUkcojE+7YN8KCS3Dmh8cjnKGEHPikBwI06WST3w==
X-Received: by 2002:a05:651c:906:b0:2fb:5c20:43e0 with SMTP id 38308e7fff4ca-2ff6062c366mr6729681fa.15.1731653965484;
        Thu, 14 Nov 2024 22:59:25 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff5988ffdbsm4438281fa.111.2024.11.14.22.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:59:24 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Nov 2024 08:59:20 +0200
Subject: [PATCH RFC 1/2] arm64: dts: qcom: sm8450: move board clocks to DTS
 files
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241115-fix-board-clocks-v1-1-8cb00a4f57c2@linaro.org>
References: <20241115-fix-board-clocks-v1-0-8cb00a4f57c2@linaro.org>
In-Reply-To: <20241115-fix-board-clocks-v1-0-8cb00a4f57c2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3540;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=HXNjR8Sm/+nBUm59cnvLQV1bXfEUUnciRNOgqIuawLw=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ7rZRw/xmzkvBPk/1yrLMe13F1ERPdFpvdH+jeo9lw8hw
 R/eVuV1MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAin/ez/881DPMR7uiwz5BX
 6Mr5aa5Q/sh/ukPIjlAzzUUHZ5YKKWg81dDWl5n92GLmhBc7nf9G8IUw3S2Y0eUlnPbWUr6Pv/P
 tVtdbRUHMnFxBoS/CdioZsGrN7X7Nw+FlXLWvL/l2y4HH14oY38UH3bUKS1O8fGzajw3ySc2PPH
 X54899eGbEa+rW9OjNzDVd7em8/+4E2Cf+l5zwdUvM+vd35tQ93954OfKWwo2sXTue31Fml9/1+
 Xymw4rvkxQWfSzR2LPY5NgN2/v3TcL+TzZdOyVvQ1Hoz7nLizbKpMx1erQp26uzmkN+oVPmuttJ
 /3wSrI3NTAp3RHs0CMdVd4llXCybJJln/aG3tqZIw3oJAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

SM8450 is one of the platforms where board-level clocks (XO, sleep) are
fully defined in the SoC dtsi file. This is not correct and doesn't
fully follow the DT guidelines. Move these two clocks to the board files
completely.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts                 | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts                 | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi                    | 14 --------------
 4 files changed, 42 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index 2ff40a120aadf9e7556bb568b5c99847584189fa..f50a6cbd4b6800a0236f1e5b4e0242c50472cbf3 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -59,6 +59,20 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	clocks {
+		xo_board: xo-board {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <76800000>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <32000>;
+		};
+	};
+
 	hdmi-out {
 		compatible = "hdmi-connector";
 		type = "a";
diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 8c39fbcaad802893870141582731ea8105994dd1..c330f019a4ed42ee8a0ead2cd39c6b1dc45cb1b7 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -28,6 +28,20 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	clocks {
+		xo_board: xo-board {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <76800000>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <32000>;
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index cc1335a07a35c7a4239d684f978d958f7d47f533..135666c96493c65ed4d926df7396f170f9b36356 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -28,6 +28,20 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	clocks {
+		xo_board: xo-board {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <76800000>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <32000>;
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		label = "gpio-keys";
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 53147aa6f7e4acb102dd5dee51f0aec164b971c7..7dc183cc5c29374a19aabb36086e27edfffeaf37 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -33,20 +33,6 @@ / {
 
 	chosen { };
 
-	clocks {
-		xo_board: xo-board {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <76800000>;
-		};
-
-		sleep_clk: sleep-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <32000>;
-		};
-	};
-
 	cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;

-- 
2.39.5


