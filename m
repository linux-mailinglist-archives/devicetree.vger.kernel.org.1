Return-Path: <devicetree+bounces-12066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 093AA7D7C93
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F356B212BA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 05:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7AC5FC07;
	Thu, 26 Oct 2023 05:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="cMRIFO8i"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485A0C8C2
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 05:54:11 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E73E115;
	Wed, 25 Oct 2023 22:54:09 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id A5F3F408DC;
	Thu, 26 Oct 2023 10:54:05 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698299646; bh=cGxQVt+NVbaQIsSjfqmJUKIMf/PR6FSgo/FLAfIdsik=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cMRIFO8iR4u7ni/wvP438REG8eTCIjhISo4W+J8afGG095biNsazGkd3IxX/2OpzP
	 UgqXL2BK6uYzdSUyAMf99oLS2lDCOPDAJdZSz6LJOQd7AQ9sSx9nT9fA4uhG30xgFy
	 r+PZnZO7jXke7YAq9uyoRKYxpHCncdBVSdHtj33SS7/+a50+qoBg9x04aVJdf04vN/
	 J4qc8+LKyOeejHBAv5iuh6+jA3jfyUZAELDzqtPFZYQZlj0c3eSTO2YHd6cDmP8384
	 DOkpqFTWxlIGXgRKjjITwuYV2b8CDjovsncWrG4ybgr+fCWkzSKnCbIrqJEfPGMdqj
	 q2yN+n9Yf/CWA==
From: Nikita Travkin <nikita@trvn.ru>
Date: Thu, 26 Oct 2023 10:53:44 +0500
Subject: [PATCH v3 1/2] arm64: dts: qcom: pm8916: Add BMS and charger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231026-pm8916-dtsi-bms-lbc-v3-1-fad1ff22306e@trvn.ru>
References: <20231026-pm8916-dtsi-bms-lbc-v3-0-fad1ff22306e@trvn.ru>
In-Reply-To: <20231026-pm8916-dtsi-bms-lbc-v3-0-fad1ff22306e@trvn.ru>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2360; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=cGxQVt+NVbaQIsSjfqmJUKIMf/PR6FSgo/FLAfIdsik=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlOf786mSA7Fd6gRwKZ9lU+BF+J3LEVXlUCvRPl
 GQO5qfR/H+JAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTn+/AAKCRBDHOzuKBm/
 dVGoD/9bDMivDCFrNYXKGHF181bxTzkVoolGqOSJbmR1N8eXHP/wD0uj69lmVNV4CxxJAgLhFaI
 D//aPiG20VqZ7pWzkvHxg1TfWOL5ICw4XDt2SigFjUluTPHTwisUjk2aNbyk6TnSqukvmwwN+Nn
 QUWYpRSzDddytCbqP1yBPSRsbrH5Gor/hQr0hD5BHcYk6h75YSu92cHjBypFAoG68rXo9gPzvUy
 8gBAlWLWq+eZIms9FOiGEBnWU7s3HX7lCohLvWuncxIb5aD6pFyEnLKHYbqW7dP5W9Zl3b9sfi5
 HSEo7q3oiQbIkBOt55q8+JF7al3Bs0yilZM6zfeyqXc5PODWFL161SK1onuA0bNs7ZTCCPnXM7I
 BGh3iP62DLy8zdK5n9eEEksu7sHgyetk1kTMP1BwazASDvgfuQubAO1RRYltdc6zKEevoiga7/a
 ytqebVIVhPQVATLq/v74KZCrfbquDpY9HkQFrBfg1Ww4QNcM8e+dq9J/T7LQ1k0FaJEdO7qbCft
 zleBtYSy7qKGJMxANOceaBake48Vvkv62DxQ8rEg2uvWBZ5lboMV75CClfQiKRZgNgZdQ6uGg6D
 i3nyFITPhJbK+R6UZhIb9qjwVtLP7B+9k+iOUwyxKcUVRZ4wujDhfskvt6WdWdXnC1cKypwNJmW
 DtO998XZeDJDA/g==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

pm8916 contains some hardware blocks for battery powered devices:

- VM-BMS: Battery voltage monitoring block.
- LBC: Linear battery charger.

Add them to the pmic dtsi so the devices that make use of those blocks
can enable them.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
 arch/arm64/boot/dts/qcom/pm8916.dtsi | 48 ++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
index f4de86787743..4b2e8fb47d2d 100644
--- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
@@ -41,6 +41,35 @@ watchdog {
 			};
 		};
 
+		pm8916_charger: charger@1000 {
+			compatible = "qcom,pm8916-lbc";
+			reg = <0x1000>, <0x1200>, <0x1300>, <0x1600>;
+			reg-names = "chgr", "bat_if", "usb", "misc";
+
+			interrupts = <0x0 0x10 0 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x10 5 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x10 6 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x10 7 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x12 0 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x12 1 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x13 0 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x13 1 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x13 2 IRQ_TYPE_EDGE_BOTH>,
+				     <0x0 0x13 4 IRQ_TYPE_EDGE_BOTH>;
+			interrupt-names = "vbat_det",
+					  "fast_chg",
+					  "chg_fail",
+					  "chg_done",
+					  "bat_pres",
+					  "temp_ok",
+					  "coarse_det",
+					  "usb_vbus",
+					  "chg_gone",
+					  "overtemp";
+
+			status = "disabled";
+		};
+
 		pm8916_usbin: usb-detect@1300 {
 			compatible = "qcom,pm8941-misc";
 			reg = <0x1300>;
@@ -91,6 +120,25 @@ channel@f {
 			};
 		};
 
+		pm8916_bms: battery@4000 {
+			compatible = "qcom,pm8916-bms-vm";
+			reg = <0x4000>;
+			interrupts = <0x0 0x40 0 IRQ_TYPE_EDGE_RISING>,
+				     <0x0 0x40 1 IRQ_TYPE_EDGE_RISING>,
+				     <0x0 0x40 2 IRQ_TYPE_EDGE_RISING>,
+				     <0x0 0x40 3 IRQ_TYPE_EDGE_RISING>,
+				     <0x0 0x40 4 IRQ_TYPE_EDGE_RISING>,
+				     <0x0 0x40 5 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "cv_leave",
+					  "cv_enter",
+					  "ocv_good",
+					  "ocv_thr",
+					  "fifo",
+					  "state_chg";
+
+			status = "disabled";
+		};
+
 		rtc@6000 {
 			compatible = "qcom,pm8941-rtc";
 			reg = <0x6000>, <0x6100>;

-- 
2.41.0


