Return-Path: <devicetree+bounces-221595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C64C0BA13A6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E82CC1C20A71
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:39:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB09331DDB9;
	Thu, 25 Sep 2025 19:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jUV3oltr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED3C31D74F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758829128; cv=none; b=H3Q8J9J+15D+WJsO82i49QS0ZLHs3CweHOYrjq/IqwcFLGebdgv8Uj452EO60fAbfsbp2laXnRlqmfkvRBa2N3k6u7NwS6ouP5bW61U9iwC3tzs1yQpwwiLXabgvgTt05UJQBZgU9XLPBP7GtN3cwWBgEbLQN37nUjsYWWXeyls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758829128; c=relaxed/simple;
	bh=dVbJZqbx8Eys3tgEwO5LcQs4Xy1WsMcwLflFeobXXmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TPPB46P/qVqvGIxWaRdy0wL1Jp8szP0OZmCTWG++uYClDOp8R96Ix3DtfD2TUNOtZt6/wJkGdEdUi0EImjf8Ub68JBfcdUNBf6DJDwIPlCnKS6NWvZ7oyqxpiOGk6GpdWb1p+DhEtGaQFOCdBwWsESkehJ2wR6oExxAEXlsqQhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jUV3oltr; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-61feb87fe26so1841068a12.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758829125; x=1759433925; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZtIsrQ2ambOQN/Zv6YQaNMBcFiHnqO9loLrmuJgo088=;
        b=jUV3oltrwUXZm38MTEIRWSI8VtZIXCll7wweuPnNq1XegHzyHKcfkY4hSSRSBr47do
         9b9bVBcaLiTuLo3VMx7iFPyaxd+AB77LEL84ONJ0arjKwv3alwX3NZSGHDPali3EZwfO
         2ArUHDMiR7SF2UVAqW9PxV3th4Z8q7SGJ8yQ2Ky3CpR95izuEkblKB4eFqGy9kKF9K4h
         pOBV55ggNcXXNgS8C64vbstWsh1j/WCIj+G7sIq3lFrO3IGEXqyUK1JH7N2+2KqSePh9
         P8JhVGtXFUbdVdiaCXj9Qr+/zrrFca/k1JO3lefDQN+QF71MeIaeuJkMVH582D9kA0LZ
         3s/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758829125; x=1759433925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZtIsrQ2ambOQN/Zv6YQaNMBcFiHnqO9loLrmuJgo088=;
        b=OsDqWWSx0GI9fddM11YRjYvlysKUlEvHjqRaJHi0gb7Ge+dkXbpvrxMyqJmvhUYQS+
         8Ma3eatFFiSeuAxS2IJIFwcih4NEtDZ6+dvgRzUv0KABCbtx+nypDQDF1jVS9E0HhSqE
         jC48J1ezc+aypQhClqg/JlKe7njEwdXgDjHOChptvLDw35klrxeowwMaD0l+nBqzifoI
         pZEb0TkTKK8zdnM1KJxhXJKZBVzu3JL/bHDqqjJMijI5gGRKg/H8/LC1b1gyacsLXNz8
         shioN3acapqDHW/2howesT1EQtGRgEBYcRDwdQSM5UbOZ5yttTj5eGRBg8SkKrwgX9gr
         2nnA==
X-Forwarded-Encrypted: i=1; AJvYcCUvQucys+i3T8Y2hQVmAAmmETNuZ9+AnIUDV78KVQU2LplGwHhxdEtpzLybcuyhXReKF+TUm5r3xxYh@vger.kernel.org
X-Gm-Message-State: AOJu0YwyR/qyT5eWX/gNPWbcC03t/jIWLDsAbrVYXgie4orUY+lxcz6N
	gy0AVb3+kQveRr8t22Si87eR5qqoe85+V5rIKiN10WN7OYPPw867wfC9
X-Gm-Gg: ASbGncsMNX4amq814gPYWcibSvqOHV4YEJy+y7b5yunz8EcIDEw2Y42iRs/E0ymAla+
	fI9+bgMRUfQo7iB5HDgKqEwzjOW9iQ3ZdIY/vMVdOYV/15DXjAVUmG0W8bxOQuIF+is/eUrcQ17
	5msASd86NkGBBbpCBON9x9kbwxMW4WbGnyPd8rPqHVtLm/iq+RnTGCDt4glfppbKALhevcp+QDj
	cCfhjILr0YMylKWxaLZcGhxgwk4fabsM2ziLorP1zfROQ0Q5jyZwPNfj57/kEzPD+N8/baAVDOa
	AjSITlLLqIayptCau9uKyrtk9bDRfw6wYSN5ZCongwe6/gET9WelVzFwwaFPf0+bck6faPej/nJ
	nJYOB6ThGtDBPcKoyin0n
X-Google-Smtp-Source: AGHT+IGIaoI0QIGsptEmy/zUDPGWEwozC0jFD+1UjA2IM++0FbcXdq1jKF7H9wPnN5ACaE4kEPmI+w==
X-Received: by 2002:a17:907:96a1:b0:b07:c1df:875 with SMTP id a640c23a62f3a-b34bd444342mr547091466b.56.1758829125020;
        Thu, 25 Sep 2025 12:38:45 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b353efa4c35sm222820766b.26.2025.09.25.12.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 12:38:44 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Thu, 25 Sep 2025 22:38:38 +0300
Subject: [PATCH v4 2/3] arch: arm64: dts: qcom: sdm845-starqltechn: fix
 max77705 interrupts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-starqltechn-correct_max77705_nodes-v4-2-93b706bdda58@gmail.com>
References: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
In-Reply-To: <20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dzmitry Sankouski <dsankouski@gmail.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758829121; l=2156;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=dVbJZqbx8Eys3tgEwO5LcQs4Xy1WsMcwLflFeobXXmQ=;
 b=mVEtkmNzsfTC01FP2fTvSRSvf7ttZJ0Q0FdpjVqxp4AtggXQFuRoBmOlN15PMhn+y2RP5fiZQ
 VVW40DjkNSbDznm8s3L4ldoiHKEgqGOTBhNNEtRGuOdn+JfRaPZyBkF
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Since max77705 has a register, which indicates interrupt source, it acts
as an interrupt controller.

Direct MAX77705's subdevices to use the IC's internal interrupt
controller, instead of listening to every interrupt fired by the
chip towards the host device.

Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")
Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes for v2:
- fix commit message to be more clear

Changes for v2:
- fix commit msg header prefix to 'arm64: dts: qcom: sdm845-starqltechn:'
- remove binding header for interrupt numbers
- make interrupt-cells 1, because irq trigger type is not used
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 45c7aa0f602d..41c93c801703 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -599,13 +599,15 @@ &uart9 {
 &i2c14 {
 	status = "okay";
 
-	pmic@66 {
+	max77705: pmic@66 {
 		compatible = "maxim,max77705";
 		reg = <0x66>;
 		interrupt-parent = <&pm8998_gpios>;
 		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
 		pinctrl-0 = <&pmic_int_default>;
 		pinctrl-names = "default";
+		#interrupt-cells = <1>;
 
 		leds {
 			compatible = "maxim,max77705-rgb";
@@ -644,8 +646,8 @@ max77705_charger: charger@69 {
 		reg = <0x69>;
 		compatible = "maxim,max77705-charger";
 		monitored-battery = <&battery>;
-		interrupt-parent = <&pm8998_gpios>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&max77705>;
+		interrupts = <0>;
 	};
 
 	fuel-gauge@36 {
@@ -653,8 +655,8 @@ fuel-gauge@36 {
 		compatible = "maxim,max77705-battery";
 		power-supplies = <&max77705_charger>;
 		maxim,rsns-microohm = <5000>;
-		interrupt-parent = <&pm8998_gpios>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&max77705>;
+		interrupts = <2>;
 	};
 };
 

-- 
2.39.5


