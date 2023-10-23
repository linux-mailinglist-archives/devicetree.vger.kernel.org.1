Return-Path: <devicetree+bounces-10763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 640827D2A4F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:21:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FB5F281438
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 06:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF0163D4;
	Mon, 23 Oct 2023 06:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="yVgDjFsK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F08E568E
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 06:21:33 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 869C710D9;
	Sun, 22 Oct 2023 23:21:31 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id B22CA4C0CF;
	Mon, 23 Oct 2023 11:21:11 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698042072; bh=LE4M+4BoGWR3AG2eTo3yWZAS7TbtqWSMeFL22HkUE/g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=yVgDjFsKUTLlUFp86vRaEKR32Z/eqUeft91isQBTxF14E3oIun0SPgqoP3AoRoSkF
	 2H8/PoCMdmBaTQPr4V9kXOfKCEkt6JFr3t9phNJ2NZ3uLNJRSGkbsMcNIApMd3CMI7
	 xeJD0TujgfglPVuBFOnl6aGhxVfYIewtJ3b1HS1fED+2oi5qMJaiV/QEHQON9bzbud
	 FBPdt+P521Ot4VNzWpjJFCax1ueUy2GaELvgaCBeEPN69GrOsRyIX7RLJnJsSr9bvE
	 XEPpypY3D5aJb52YVd99oSRxwJzrvEh9j5ldaryCz+p8JWjqAh7uN1TgqXWWUZ4OlW
	 kP72kaXnngYxA==
From: Nikita Travkin <nikita@trvn.ru>
Date: Mon, 23 Oct 2023 11:20:34 +0500
Subject: [PATCH v2 3/3] arm64: dts: qcom: msm8916-longcheer-l8150: Add
 battery and charger
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-pm8916-dtsi-bms-lbc-v2-3-343e3dbf423e@trvn.ru>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2452; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=LE4M+4BoGWR3AG2eTo3yWZAS7TbtqWSMeFL22HkUE/g=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlNhDRAVqwuDanZgTc9o1vFaHcsS/w8USKj22lF
 lB3GiI6pnGJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTYQ0QAKCRBDHOzuKBm/
 daPTEACFYCoq42J8LVnT9OP7NvNIFkkl1eb8y2BzwydJgrLaUkMH98E5S0bRiZCSD8roC4tExdT
 5dGj5FcYAYQWy5t7O+3UJqPNGHR4ixDK2X/6S/klYj07JKprA+yogU/5odKyqlMVT85dH3397W1
 fFtiSvnLteNmxHMOv12+RfSKxCuXwXN0/moXv9HYpiecM8b9HrweS4CSF8yXwKDafumvIwvKB6D
 G4Mv0xOc0QeSBlYuSozjs5sDmrLwqPzhH3cf+Hn68JgWQKgD0NQoz6PXs2nnFL6fBBNr0zeGERH
 rzMhg2Mxzu8oj+A8QtNxAeDlxVBZMLws0lxk5A5WvMpGjH4g69ljDvV9pmAgn9MWv7e6ruwrpBu
 CbVOYW5p84Zk0XxRFM4kIa5zU6GgqSx1NPN0YpMYGah4CKkqrByL3Lpw2WIIICwjl3K4d/BMsTJ
 EfQzc81BNgD86OZPR0PYKA/X/sRnPCjZp+/BQ5FyMXJpIUKWjy1Sc/jngKHMEebGjtCDo5Yqyri
 knLVlMn2voVAVL6BgqYkOctQkd22RRl91xwVUPXY7JWWkVYyZk/IPRDi9qHIIG+Xr8Tz1dcFgVU
 3IDCuvkVO0V+1J3p3ml0RS2msY3h9FhVOejUmyCalKtY64vnGIXN9uEkQYznhpISOAw0Q2N/YfJ
 0XSyXgj8hnlqeWQ==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

Longcheer L8150 doesn't have any dedicated fuel-gauge or charger,
instead making use of the pmic hardware blocks for those purposes.

Add pm8916 bms and charger, as well as the battery cell description
that those blocks rely on.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
 .../boot/dts/qcom/msm8916-longcheer-l8150.dts      | 43 +++++++++++++++++++---
 1 file changed, 37 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
index 47d1c5cb13f4..d35d34ef60d2 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
@@ -38,6 +38,25 @@ wcnss_mem: wcnss@8b600000 {
 		};
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		voltage-min-design-microvolt = <3400000>;
+		voltage-max-design-microvolt = <4350000>;
+		energy-full-design-microwatt-hours = <9500000>;
+		charge-full-design-microamp-hours = <2500000>;
+
+		ocv-capacity-celsius = <25>;
+		ocv-capacity-table-0 = <4330000 100>, <4265000 95>,
+			<4208000 90>, <4153000 85>, <4100000 80>, <4049000 75>,
+			<4001000 70>, <3962000 65>, <3919000 60>, <3872000 55>,
+			<3839000 50>, <3817000 45>, <3798000 40>, <3783000 35>,
+			<3767000 30>, <3747000 25>, <3729000 20>, <3709000 16>,
+			<3688000 13>, <3681000 11>, <3680000 10>, <3679000 9>,
+			<3677000 8>, <3674000 7>, <3666000 6>, <3641000 5>,
+			<3597000 4>, <3537000 3>, <3457000 2>, <3336000 1>,
+			<3000000 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 
@@ -225,6 +244,22 @@ &blsp_uart2 {
 	status = "okay";
 };
 
+&pm8916_bms {
+	status = "okay";
+
+	monitored-battery = <&battery>;
+	power-supplies = <&pm8916_charger>;
+};
+
+&pm8916_charger {
+	status = "okay";
+
+	monitored-battery = <&battery>;
+
+	qcom,fast-charge-safe-current = <900000>;
+	qcom,fast-charge-safe-voltage = <4300000>;
+};
+
 &pm8916_resin {
 	status = "okay";
 	linux,code = <KEY_VOLUMEDOWN>;
@@ -237,10 +272,6 @@ pm8916_l17: l17 {
 	};
 };
 
-&pm8916_usbin {
-	status = "okay";
-};
-
 &pm8916_vib {
 	status = "okay";
 };
@@ -257,11 +288,11 @@ &sdhc_2 {
 &usb {
 	status = "okay";
 	dr_mode = "peripheral";
-	extcon = <&pm8916_usbin>;
+	extcon = <&pm8916_charger>;
 };
 
 &usb_hs_phy {
-	extcon = <&pm8916_usbin>;
+	extcon = <&pm8916_charger>;
 };
 
 &venus {

-- 
2.41.0


