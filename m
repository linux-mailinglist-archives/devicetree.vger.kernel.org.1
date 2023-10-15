Return-Path: <devicetree+bounces-8689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 880B37C9B28
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10517B20B69
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30041172B;
	Sun, 15 Oct 2023 20:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="iZYKu6yb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB1811702
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:03:39 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53419C1;
	Sun, 15 Oct 2023 13:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697400213; bh=kLp68k9o+Z3NX4GK3pTddX18ul/eLURnuKSPZR5q97Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=iZYKu6yb9DHMMwmDG9Er8Fd+KL1D1rEieDtFmUEezF0KCyfjsR/QPiHZrnOwj8OHC
	 8//xnOhd8vzsjYhQHJqothiczc2IWnzEtE7Tys+LELouHF15NdOJKfbbLPfv4FaA7j
	 EcLCiZCbXd7cS4G69+klB1b15iaP034/K0F25tso=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Sun, 15 Oct 2023 22:03:09 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: sdm632-fairphone-fp3: Enable
 WiFi/Bluetooth
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231015-fp3-wcnss-v1-4-1b311335e931@z3ntu.xyz>
References: <20231015-fp3-wcnss-v1-0-1b311335e931@z3ntu.xyz>
In-Reply-To: <20231015-fp3-wcnss-v1-0-1b311335e931@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>, 
 Kalle Valo <kvalo@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=872; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=kLp68k9o+Z3NX4GK3pTddX18ul/eLURnuKSPZR5q97Q=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlLEWTrklhyEZhz0lKiMUY6LmIk6xmg/ijZ1rGz
 6UtFtx/ZlmJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSxFkwAKCRBy2EO4nU3X
 VnKrD/45kk+lDiujez6dk+vdMqJ/6yD0XBxjLSrLYSbsOS6OayfTF9nbznHzoNIQYyeJCiXNt31
 /NRAg/gZXe94EXZdMWAeAk3GrTMGaapE6d+S93PyH81HrOxZR+b0OmGF2GibbItX0OZvkazLbvI
 vrorYRzu2b7Zpcs+8U8BpPLXzqkiPSax7pab6ZBpJFLGxzqgfJxpS+PL2cAYw5OrrL5hE1rs/UH
 Mp0tooxIkhsaBs00Wf0ZgLB49cpb8QgZWJZKHVgPZNJFbpJpTNQi6aah6su00wwGyEiVeX+2cTO
 r0RWE+xn6+QcADozVIRLlO2RjidwWGgaVXcAzaXHUzDn+egxGCqGPffuCHeNvehyeaaJIsF0ih+
 B/sxccssMEjV8jZsKpO0cW1JnOXwTaOHT/dd15W0P1N+0zax1eFriayoq2kBfUMPqhZTneK1NCp
 y1ijiqdiK4Ple4wW6NTlDLcL1dbvjN6Au5CKREwqo6xtc2u9e5lhfWlFyQk6bSLYkoac9jgmUkH
 zQTs0aBASH4d1GLGt31RHhgkClsaF+ws9xtIiNOJKJe3tWPRE7i+8NJ0sHZUHx0DBqPgME/C8TT
 421wfgBiv74mvymR+sv6CwDQv6tZGPsO/QTTmEp7A+mx6rUs1GUf+pe+y4g8kxN51rrwJkluYoV
 OGXNKrGSYXVEPpQ==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Configure and enable the WCNSS which provides WiFi and Bluetooth on this
device.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
index 301eca9a4f31..addf56fb7937 100644
--- a/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
+++ b/arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dts
@@ -239,3 +239,18 @@ &usb3 {
 &usb3_dwc3 {
 	dr_mode = "peripheral";
 };
+
+&wcnss {
+	status = "okay";
+
+	vddpx-supply = <&pm8953_l5>;
+};
+
+&wcnss_iris {
+	compatible = "qcom,wcn3680b";
+
+	vddxo-supply = <&pm8953_l7>;
+	vddrfa-supply = <&pm8953_l19>;
+	vddpa-supply = <&pm8953_l9>;
+	vdddig-supply = <&pm8953_l5>;
+};

-- 
2.42.0


