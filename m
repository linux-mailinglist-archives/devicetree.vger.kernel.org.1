Return-Path: <devicetree+bounces-10764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F767D2A54
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:21:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1651B20D6C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A4866AA5;
	Mon, 23 Oct 2023 06:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="ejXquwX3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697FC63C0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:21:33 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA1D10D5;
	Sun, 22 Oct 2023 23:21:31 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 0BBE44C0CE;
	Mon, 23 Oct 2023 11:21:11 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698042071; bh=cGxQVt+NVbaQIsSjfqmJUKIMf/PR6FSgo/FLAfIdsik=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ejXquwX3PnnIL3dZ7rb01Fjajr9FkFcJAWX30feIVvRbMCbZ3rmgqCfQyl/IkBDoo
	 GbeJgr7DIi8cARGXqSK6svS7dkF4TMu3CQEJs0c/q0IIcKiti2kWynIbBIZfvgRVvO
	 tBOIcW/RRXbbx+9ODfvB6xgFSTukqiUiVOj2rh0ERPCJ8mn+4BHm0jiMX5ePw9UUOk
	 4QpzNk1zTtXMc/lhxbKmkY40nD9L3FrB2hOfSeKk0jObrsjUY1jmSk4A3QIGUw21Ax
	 9eml7e9Zd8YYREc+ks0ZRwXoNhf9zDEdIb62T8GPCuyAGJcJZGBoRUllgAeKUoF7jd
	 WexgptyP2qxQA==
From: Nikita Travkin <nikita@trvn.ru>
Date: Mon, 23 Oct 2023 11:20:33 +0500
Subject: [PATCH v2 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-pm8916-dtsi-bms-lbc-v2-2-343e3dbf423e@trvn.ru>
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
In-Reply-To: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2360; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=cGxQVt+NVbaQIsSjfqmJUKIMf/PR6FSgo/FLAfIdsik=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlNhDRHM6Gt64pGbufSe8l9M5t5S0bp3svifn+y
 QLkTSjDZFiJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTYQ0QAKCRBDHOzuKBm/
 dUxWEACdupMPoHhHcJ6VkcR5ikUEQLdMOqy04PTeJ1Jv3dwSUXnsHHA69p6wmYwCASI6zEtDEAx
 mQK6Ao5Q4r31Q8s9CZzZW8PzJC70O9V275q8jd5+IlR8x8iArR1ToZ59hOk6lfp9Wruaf38f3kW
 bOSuEh/NpiGWe7F4ULq001IchM4AbHCdhzfOuoIZGbZDFtwbAGSPGx6I7uIKlVRIDpNRWQO2Jzw
 bBV3lUc04oRkJqaLeLc6eoJpBGyl20dFI57OPOp0JK3qtloWtymm+e73OZA+ynhtnPQiI8+8pcV
 Ix14alS3x1tu/G1HH8oioUhNTxE+JGCZpDGckiZYm1OnMgqtso4DCUqDLFybPPZavG6881oSuez
 74pHrFo4g6Q6zYoM1o3K/z20NO6bZOiAlbdyulDAjZrs6ISgWQ/OrtSWJDyIqpAosofDhlclNq3
 V/8vdcZ7ZgHs7Sz6WGej3wpvYs9BsEywKcY7H6i1rxhffhhCBz2LMBQY8jazQe/VorJfrLB2+Cw
 kRRllP5wnizvQWdWhnRob4k2RcM2Doynf8qe+KCVNP3N3/L65BpuAI/NobdNiolPteO9dqU047a
 wFMQjpT1nJU9vRPFUt7lz0kLwvakcjwLMvzcGVoaTimuVreiwqYmwob6/7BxGORMqI5xEfxVH+W
 GaVDiepL/8mTaIQ==
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


