Return-Path: <devicetree+bounces-5444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A77877B659A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4AF642814E9
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8A0FC13;
	Tue,  3 Oct 2023 09:37:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F45D52F
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 09:37:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D560C433C8;
	Tue,  3 Oct 2023 09:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696325851;
	bh=B/iAAs2ePsgWsNpeeLQ+e32y/CM8Jf9SdJ3FS1CPSPc=;
	h=From:To:Cc:Subject:Date:From;
	b=umOfp6Pih7ivlxJgoGuHJsDbR990MULTMt3Q7dH02lW9KtVz1EWAHfrwoR/Hl+xht
	 p7v62EzjzYn0QURcJmMdxPbF/0IuKH9kkWF//vJ5EPq0NoQI1M1gJWH1/PgcbwdO2h
	 t3g80oNW3pPcoTWbF8nCBx1unYnmdYjh/+/CA0OKqn7RiU6hVJDgddowPM4kjPTmqx
	 YgnxsoJa7DVzwP+sNdcGChhhbV2HoTllQ7w+G7htKqyGXNDndwRv0qFdWL0M0Br7K7
	 vxZtCmjboc+pJFle8KKuvskVQaKC9GuNo/olf+9EKpQ14pFDq796IQ/AwoRanCGE2r
	 WMiLmyg12DcdA==
Received: from johan by xi.lan with local (Exim 4.96)
	(envelope-from <johan+linaro@kernel.org>)
	id 1qnbqW-00010i-2k;
	Tue, 03 Oct 2023 11:37:41 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH] arm64: dts: qcom: sc8280xp-x13s: add missing camera LED pin config
Date: Tue,  3 Oct 2023 11:36:47 +0200
Message-ID: <20231003093647.3840-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the missing pin configuration for the recently added camera
indicator LED.

Fixes: 1c63dd1c5fda ("arm64: dts: qcom: sc8280xp-x13s: Add camera activity LED")
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index 387907e14afc..467e1d8b081f 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -82,6 +82,9 @@ switch-lid {
 	leds {
 		compatible = "gpio-leds";
 
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam_indicator_en>;
+
 		led-camera-indicator {
 			label = "white:camera-indicator";
 			function = LED_FUNCTION_INDICATOR;
@@ -1434,6 +1437,13 @@ hstp-sw-ctrl-pins {
 		};
 	};
 
+	cam_indicator_en: cam-indicator-en-state {
+		pins = "gpio28";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio25";
 		function = "gpio";
-- 
2.41.0


