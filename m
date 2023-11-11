Return-Path: <devicetree+bounces-15128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 848667E8A1D
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 10:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1B3E1C208C3
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 09:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B556125B8;
	Sat, 11 Nov 2023 09:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="emd5VAr3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48002125A6
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 09:56:23 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC6093C01
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:56:21 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-32ddfb38c02so1666757f8f.3
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 01:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699696580; x=1700301380; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lpzX6h8PWU1xREbs5GYzoX3Re681Yo1+Vb8qPNBLrYw=;
        b=emd5VAr330rTHsXN68GRrrtP3wNi0k7RQ0kBUgsQ3Csdz5vUn07+1Q/tAwAmiHmcd/
         o4crPe46TAm7y4vPZGvGCLMLhhsUM6W/8ecNTdy1kiMeesCFFEkE76UciZgg1i62BLpz
         mEjstj2QaHACt2n7aeiYb7ezn98PWA7MXuix3vWRABz6+ZIjhy6rKnajDDE22d/NRMnb
         SkMxYm18RH71GtXYCeRg9/g3BkS/Shk9V5DL5awGiQQIwpxKgPxApQIKfSWw91SwovZf
         tGunm2iiC/KWQmAgfsqtiWgmp0BrbWQ6FfS3oRQdPJppRIpNb2bLHX+nZGoTHsieT113
         lMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699696580; x=1700301380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lpzX6h8PWU1xREbs5GYzoX3Re681Yo1+Vb8qPNBLrYw=;
        b=StYwIZHl0yuNN6MQoGkvPSjMDixZRqc3BBjh7/wB4t0aZORPX5DpumaLS1/5LCNmXn
         leuHK3PE5uUSvXA+EQmas8XW8/oMpH6tG03yIwnb6D4yVusxeAZecvLiqt3wyZ8yREDP
         JV8rmM0hg1uSNY3eHv2xE11Xh6wb8MiWTiK3ANkLGpBsluCs4+meyOvTUfBHQxTxvs9h
         5grDWJKT8AngczgsLm5HHE+sdxUvM1PYb/16/h96QI3rEqGy9pr18CY6bKBVJnjjlvW6
         /8yEyCya4UObzvZSzjjh6jIXDmmdcdM4Dq+JuvbrwiEZVxiz/ecnQJN4CuL4czA0OiKu
         QAPg==
X-Gm-Message-State: AOJu0YzrN7JE7wbmvmODN8tkab+ztrdd5/OYsz0UzWuO0ywW5VqZrxDT
	/u4Jj/QCbLLRXwdTdyeUn4nj1Ek9KS2n4AQw3jw=
X-Google-Smtp-Source: AGHT+IG5pXxbzHreJnFDWFXaQ+20C6wJWCRm4jaJ0Pnef9WVmuAwhYsUzyp2lEsbbtAy67P7fu6g4A==
X-Received: by 2002:a5d:59a4:0:b0:32f:9268:be5c with SMTP id p4-20020a5d59a4000000b0032f9268be5cmr959507wrr.56.1699696580335;
        Sat, 11 Nov 2023 01:56:20 -0800 (PST)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id i7-20020adffc07000000b0032dcb08bf94sm1152867wrr.60.2023.11.11.01.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 01:56:19 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Vivek Gautam <vivek.gautam@codeaurora.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: sdm845: correct Soundwire node name
Date: Sat, 11 Nov 2023 10:56:17 +0100
Message-Id: <20231111095617.16496-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111095617.16496-1-krzysztof.kozlowski@linaro.org>
References: <20231111095617.16496-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Soundwire Devicetree bindings expect the Soundwire controller device
node to be named just "soundwire":

  sdm845-db845c.dtb: swm@c85: $nodename:0: 'swm@c85' does not match '^soundwire(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts           | 2 +-
 arch/arm64/boot/dts/qcom/sdm845-wcd9340.dtsi         | 2 +-
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 2 +-
 arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 7e7bf3fb3be6..ab6220456513 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -1130,7 +1130,7 @@ &wcd9340 {
 	vdd-rx-supply = <&vreg_s4a_1p8>;
 	vdd-io-supply = <&vreg_s4a_1p8>;
 
-	swm: swm@c85 {
+	swm: soundwire@c85 {
 		left_spkr: speaker@0,1 {
 			compatible = "sdw10217201000";
 			reg = <0 1>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-wcd9340.dtsi b/arch/arm64/boot/dts/qcom/sdm845-wcd9340.dtsi
index c15d48860646..6172cd1539e6 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-wcd9340.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-wcd9340.dtsi
@@ -54,7 +54,7 @@ wcdgpio: gpio-controller@42 {
 				reg = <0x42 0x2>;
 			};
 
-			swm: swm@c85 {
+			swm: soundwire@c85 {
 				compatible = "qcom,soundwire-v1.3.0";
 				reg = <0xc85 0x40>;
 				interrupts-extended = <&wcd9340 20>;
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 92a812b5f423..41a3c2dbc2f7 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -797,7 +797,7 @@ &wcd9340 {
 	qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
 	qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
 
-	swm: swm@c85 {
+	swm: soundwire@c85 {
 		left_spkr: speaker@0,3 {
 			compatible = "sdw10217211000";
 			reg = <0 3>;
diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
index 543837316001..26217836c270 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
@@ -658,7 +658,7 @@ &wcd9340 {
 	qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
 	qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
 
-	swm: swm@c85 {
+	swm: soundwire@c85 {
 		left_spkr: speaker@0,3 {
 			compatible = "sdw10217211000";
 			reg = <0 3>;
-- 
2.34.1


