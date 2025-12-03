Return-Path: <devicetree+bounces-243930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6A7C9E8B2
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:43:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4996F3494D2
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57D42E7192;
	Wed,  3 Dec 2025 09:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="LwMsRbJ7"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6C52E6CDB
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754946; cv=none; b=ExmZmrVxzW3gxRQQdYliG8T6fZwCF+U+COK521E2pvtPTePHN13q6d4dt8MB0p50MItYX+lcVgYWrpcI+u5Y+29QOF7tOetr/+z1ww1gL29Tpq8Lkkdngbc4Eq4L0NdYFef/jTYdGZhndhEvOTwVasy0CRmlM2IR9H+jRgGMW9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754946; c=relaxed/simple;
	bh=ZbRjh/XV22Us62QDb+dvBBGjp9csrfXRii4iwDaHyK0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NuJ2oZ9mwOtGrEbyrATv3oo4v0gjps9XPtb2MprIG+jaa7inBk8fFrLotjneaLqAnP3PVRZAJe3HVR91apfsS4HXWba8YdqUgnsWtlSsFQSVDT6t80tIsUQWZ5JqVy7HipQyWEF6LgFlzOS4BVF5BJyUr9nUQgguM61U7lrEwc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=LwMsRbJ7; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764754942;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f3VjpqYWS+HYY33WxM7Y8bRCL5OZA/vX2G2VrJmlJeE=;
	b=LwMsRbJ79M1LTS5mg5ypdlbgjY7wDwPSUowZpZn3pMtvkTx0WMjMcepBUqJByT/1TqxDOa
	eNsmffSZFhhJRQVru2umL9oHkLu6WKKYHl8O/2oK7EOf+jbFdhqC5SznZJ0gtyAFdPeSty
	y23o5uPp8clog+DVjAvVIrnVHNhkW0JXV56g472zjLS1lFi3k4Hvydhw5pn1LeM+tSrmFg
	lJYmJZfqAoYFURiG5XB4hL0+2HcVuu+j6TkR/VLKUr6+GfFN1cFx6nYjiKgY3c1NLgDPnX
	OAiraGZZHCFvx2CI4eqj3U/QL2d55VZtXAmavUkJ0fj1l1N69UU5mckcufZpyw==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Wed, 03 Dec 2025 01:40:53 -0800
Subject: [PATCH v5 04/12] arm64: dts: qcom: sdm845-lg-common: Add LEDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-judyln-dts-v5-4-80c1ffca8487@postmarketos.org>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
In-Reply-To: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Amir Dahan <system64fumo@tuta.io>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>, 
 Amir Dahan <system64fumo@protonmail.com>, Pavel Machek <pavel@ucw.cz>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764754921; l=1402;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=jGPXPz5qA8QKNhCAC3vk0xcjlmS4sLQi+qOedWyBr7g=;
 b=Ur+GhvI0f06LzALx/FNs9IMeUL+lvCZUDeEMqqdORkA4RZQZ9pEDDgOC2OOFQ8a0naD3fPmJv
 wAjFXxEf5SJBwIaHDMmO8A68692sDJlmTX9k5RWMhzjhccOxZ2DdnbY
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

From: Amir Dahan <system64fumo@protonmail.com>

Add the multicolor status LED in the phone's notch.

Signed-off-by: Amir Dahan <system64fumo@tuta.io>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 28 ++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index cbd57eee6ffc..165523db4d49 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -6,6 +6,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
@@ -489,6 +490,33 @@ &pm8998_resin {
 	status = "okay";
 };
 
+&pmi8998_lpg {
+	status = "okay";
+
+	multi-led {
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@3 {
+			reg = <3>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+
+		led@4 {
+			reg = <4>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led@5 {
+			reg = <5>;
+			color = <LED_COLOR_ID_RED>;
+		};
+	};
+};
+
 &sdhc_2 {
 	cd-gpios = <&tlmm 126 GPIO_ACTIVE_LOW>;
 

-- 
2.52.0


