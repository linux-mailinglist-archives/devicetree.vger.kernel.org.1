Return-Path: <devicetree+bounces-172729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 697B8AA6123
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 18:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04F681B67512
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 16:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 663802036ED;
	Thu,  1 May 2025 16:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tva87hYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5A618DB16
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 16:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746115355; cv=none; b=rG+w/stuC0PMJWv41cfadU7gXVTy3/6RC2YMYEZvZ+VJgOISC2VfAepxE0F8SvjWSXI4kwPqgTd+BB6AitzBRBCIHcZW5kk8O00/ORsm/aPE2Inhtcb2v7DtADdcPTS7N6ppWOY7T/P+BuJKNQ7PWwXEvM7k6LRq3+GHEJzOvUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746115355; c=relaxed/simple;
	bh=QNMj9c7xzZA7s922XwLPN1HkAdbTpiqetXxKdDoDB+U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=l6ST1T0YSvSKzCZU06I16k0dSa358HF7zeGGDQoUmykbwU97yUIC16Mj2tICAjVKFuOKPXRCV37uagZEWF5G64+h5Sz2YgpqssYXyd9gBCTnslZMmiqY4NHPe27e1sN35ov38ZFq4Xj+s5P72ZgTJWAU9pHUd67Kcn/GiVdJdYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tva87hYU; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-44069f5f3aaso1220725e9.2
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 09:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746115351; x=1746720151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AHBhDJr9lHxrn2vY9UPMIfGx/gl5O7ayeNtcPr9WFCU=;
        b=tva87hYUXgF0z4p04BJvwUMQ4oLUu8rsSDWyfNroUKZWBrzyCAo3EjIq4B8IHIBx2H
         Q3XlzztAw6XUL8FOIdevsS1mirDSCMsoCvYWrXCocU6FKIwol+lyk53mmAFFHnq2yBXC
         wPequDWZbE+fOOROOK8I11Xx1tcqo5010fgVg3R3Qsw1d3OpnkZeNzA11XgovZKH7G6S
         ktOritZrQjSJSSfLyMBJnV2JuEGuVKo9kTbsn68vNoSBLB6IFEGlrnHNhHR4kFiwMn7i
         XwcTkCY9nDNWh9j6fw3+M1ekz8fiQTSuOEl78lWS9rmGp3kWseISPObASmpK/iIS5cJc
         siPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746115351; x=1746720151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AHBhDJr9lHxrn2vY9UPMIfGx/gl5O7ayeNtcPr9WFCU=;
        b=J7JuHwtxmUhQKgJH+XytA4S/kNNLF0tRW7a49UzGo3yqfkZ3+ZXhH5kzKoO+mE0gGk
         KTAkckZfWyKRDhmeorzMG/VB3hGYv+DidCAHi/w596t+jMw+0q0zvlBEY3YS/pmnRsNq
         Ud7jzFJVnAp8JTE4u0fTNHInulDFS2ASwvZLjR38lfnpAKw8oYc62g6xQYtIZ/76DQBA
         Tg/Dd9wrgb4oWLuiWQOpxYDn1rp+pxq/q7kW/LhzdEi+Xq+nrSQ8H+ZnbOZMC3U2/Mzm
         rXz/3ybY1x9mFG5LQF7CP/AADfgmTVMZ2JBrYVnAZHU+uHuuQ4owepNdqUYwRljnLFy4
         0dUw==
X-Forwarded-Encrypted: i=1; AJvYcCWikXApR3ohYJVOu5pT8/xBkFS5rZjmPh+CPSBQhD3aUjViUTphCrlYN7L/cGXv2P+1skPERpAHDffr@vger.kernel.org
X-Gm-Message-State: AOJu0YzD1JQlKE+/6LL1DD2Si5JmPd9rTHIl6Wii3M1RgGt0YXf7ozwK
	dUxkQwXnw9IDwVowNUU8YkT044sXu7A6weTJk9AIm9MPWupmbcxbr1V5265Cy2s=
X-Gm-Gg: ASbGncto3vu1d9D/sVd8QygSIa7zbszhpdtx/jAOtJ/bTQPH88ZTlTjZqUrpVvFXfL/
	h1DG0VHDHwbzUdkFEdG96VpLgGtYup0oMpbqTxHscbwG8ZXVV3XbhONfEeargBoq2yAb+AuFBes
	pBsd9jozcf+4vWoWkoGYLDlHtsiG8v8aXmrwcyaQbO0EoEz8uMBueiwhBtllGfHtpypxd/IMR1F
	f+fvABtAcqEcG+y8T+lhlnFqy7YT4TmiFiS8mp8aCPbgdv3B1nKzXPcONI3fMGmHVncItacUAT9
	ZFxk6TXSGGgjC/O7Bm6NuGYAHgA2e4rDaVKlNbGPhZC9YpbzkOPYhwZQL0o+
X-Google-Smtp-Source: AGHT+IFv6+BkJpDpCldaI1QMFxLx2QRvznPegaig/IEHjKtay4AMQqYqpupZvjAUZH9aHFXpPyrmmw==
X-Received: by 2002:a05:6000:310c:b0:3a0:7a00:61e9 with SMTP id ffacd0b85a97d-3a0940033b3mr872751f8f.0.1746115351533;
        Thu, 01 May 2025 09:02:31 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a095a88298sm1163557f8f.62.2025.05.01.09.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 09:02:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND] arm64: dts: mediatek: mt8183: Switch to undeprecated qcom,calibration-variant
Date: Thu,  1 May 2025 18:02:28 +0200
Message-ID: <20250501160227.96609-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=9360; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=QNMj9c7xzZA7s922XwLPN1HkAdbTpiqetXxKdDoDB+U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE5sTib8djgM1Gu0yA8gFWoHk1YSKSWcphXXwG
 H+pTqw6bi+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBObEwAKCRDBN2bmhouD
 14BqD/0U9iFpl95iwFEjx2lYIrm78gyjk1DvaU4sK6rYr55Ab8wA2q35YGM3znYvpwIg/EigUjQ
 VvSpmVLWCdHF8FoHtnz6p3hD+OsUHYBNC6fvrOF0/u1pJgVKu1K8cRTUGaI8NeoySFPMr0DeRH9
 qmGNjKuzpRJCoUuo/P96jK6Lpc+4zETPiFKjtFz1dDGmrZa30RqHYsGUafrUutJSyqIGwRfUyyv
 Ai+tb+wUr4vslzoW9l4gKwSmfAtUEAm4igL9ocrFuOFulURgfkMMLnqObAK395Q/rirFPNxdUHJ
 avhJJiEEJkUTe1MVESjPnL3Dsfwt0pQcm6W54nIub/LSkBznHyn8gByubGS0CU/bKgCbu/dzgeF
 glrodZj0lJ+RMNJVXnu9I3d9lkWK9Py84Dmt9ks1mfGFPrraOZX9xX6CNMSOJlgteemwqbv2J5r
 UBwoT48Hxkzt43qWOCgueGsCWeiE9tEYWR77FzlphPb73bYYbibQpDwqqxP0vrrg69QfAdDYnf6
 B//1C8maHftbk/GaZwtkexRhnJ+6u+6PQb8X6FeAMMMwWDdSircOCYInf9ysz3FruTSRJwd/8iR
 rmcPPHF4nIkMsDnvwKuvW+Hpx6tFNjVjSknPeMa32cRNlWEnliETQSNCAnFH6ZrzKmqDY+pBhYL 0xsgjkC+wVFkT3w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Resending with tag after dependency got merged. This can be applied as
is.
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts     | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts      | 2 +-
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts      | 2 +-
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts      | 2 +-
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts      | 2 +-
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14-sku2.dts    | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts  | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi  | 2 +-
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts      | 2 +-
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts      | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi   | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi           | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts       | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts       | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi           | 2 +-
 arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi            | 2 +-
 16 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
index 83bbcfe62083..f2303d9f125f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cozmo.dts
@@ -35,5 +35,5 @@ trackpad@2c {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_COZMO";
+	qcom,calibration-variant = "GO_COZMO";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 7bc7c2687d6f..ebcfaa0498f9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -28,7 +28,7 @@ &mt6358codec {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_DAMU";
+	qcom,calibration-variant = "GO_DAMU";
 };
 
 &i2c2 {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
index 863f3e403de8..21d1a80125ca 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
@@ -36,6 +36,6 @@ &touchscreen {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL";
+	qcom,calibration-variant = "GO_FENNEL";
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
index e0a583ce4a0b..5280ba22b96d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
@@ -24,6 +24,6 @@ &touchscreen {
 
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL";
+	qcom,calibration-variant = "GO_FENNEL";
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
index 7874c9a20e12..f3049f3f51f9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
@@ -24,6 +24,6 @@ &touchscreen {
 
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL";
+	qcom,calibration-variant = "GO_FENNEL";
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14-sku2.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14-sku2.dts
index 877256eab262..3a81786084da 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14-sku2.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14-sku2.dts
@@ -14,5 +14,5 @@ / {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+	qcom,calibration-variant = "GO_FENNEL14";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
index b981dd31a430..959c4d3d9707 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel14.dts
@@ -14,5 +14,5 @@ / {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+	qcom,calibration-variant = "GO_FENNEL14";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi
index 078bc765646f..4788edaeab87 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-juniper.dtsi
@@ -22,6 +22,6 @@ trackpad@2c {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_JUNIPER";
+	qcom,calibration-variant = "GO_JUNIPER";
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
index ddb993521bbf..01cd59993a7c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku0.dts
@@ -14,7 +14,7 @@ / {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+	qcom,calibration-variant = "GO_FENNEL14";
 };
 
 &mmc1_pins_uhs {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
index 10c4f920a7d8..c939ef3965ec 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-makomo-sku1.dts
@@ -14,7 +14,7 @@ / {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_FENNEL14";
+	qcom,calibration-variant = "GO_FENNEL14";
 };
 
 &mmc1_pins_uhs {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi
index c942e461a177..14d03419b92c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-willow.dtsi
@@ -37,5 +37,5 @@ trackpad@2c {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_JUNIPER";
+	qcom,calibration-variant = "GO_JUNIPER";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
index ff02f63bac29..c4c08c0f715e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
@@ -370,7 +370,7 @@ keyboard-controller {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_KAKADU";
+	qcom,calibration-variant = "GO_KAKADU";
 };
 
 &panel {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
index 2b5a8d1f900e..7428efec95a0 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
@@ -32,5 +32,5 @@ &panel {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_KATSU";
+	qcom,calibration-variant = "GO_KATSU";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
index 75fadf2c7059..a36b6ddb71f6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
@@ -32,7 +32,7 @@ &panel {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_KATSU";
+	qcom,calibration-variant = "GO_KATSU";
 };
 
 &sound {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
index da6e767b4cee..2b283a55f653 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
@@ -349,7 +349,7 @@ keyboard-controller {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "GO_KODAMA";
+	qcom,calibration-variant = "GO_KODAMA";
 };
 
 &i2c_tunnel {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
index 8b56b8564ed7..00da50a41574 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-krane.dtsi
@@ -353,7 +353,7 @@ keyboard-controller {
 };
 
 &qca_wifi {
-	qcom,ath10k-calibration-variant = "LE_Krane";
+	qcom,calibration-variant = "LE_Krane";
 };
 
 &sound {
-- 
2.45.2


