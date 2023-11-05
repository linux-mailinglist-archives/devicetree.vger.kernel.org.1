Return-Path: <devicetree+bounces-13932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA137E1686
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:48:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAD572813DC
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 20:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54F1F18655;
	Sun,  5 Nov 2023 20:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mai.rs header.i=@mai.rs header.b="jrI3xx3J";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="tD1JtOwf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810FE156E0
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 20:48:13 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08F1CE0;
	Sun,  5 Nov 2023 12:48:12 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 730685C00D7;
	Sun,  5 Nov 2023 15:48:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sun, 05 Nov 2023 15:48:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mai.rs; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699217291; x=
	1699303691; bh=1K37D2+VOVrXb9yfYRMGapSEDdiKrRQuOAXt91kHDg8=; b=j
	rI3xx3JT1kIXim8W1+amxDu5JVFauoxlr9elkqow970myyd5d4WAPDAnbxjAHGXU
	xFNsVTxVV9FBni1DEAkNKesT+UpERpbJ+Dq8m5UZSkt1WgyP3rcLvkC/X+cOQEmb
	3H8VOLwAmXitgjKC2K+iDRQ4/mLwpTunJbi0gDc/zFOZqk01s6HZLw0xq3F5ETBp
	rUlsegSpbv/xGWvPklqCKN8aYItKXw+kkqQSQd7Gp/t3kz2Glb8505UmGu5RWDTN
	fey3OdHBZZ7YjNqt2dSrmEGZQrC4Vp0PfwzUVZM01zB1w59pNAn4z357ElKi0IBI
	d1Byy8YLHdxB61hjY97Eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1699217291; x=1699303691; bh=1
	K37D2+VOVrXb9yfYRMGapSEDdiKrRQuOAXt91kHDg8=; b=tD1JtOwfcooo1bV1Q
	9chf50CU+lMly1VdKe8Yjd1ntETfu0ae9BhkXcU8TVM17ClfujLwaloePb6JRpcR
	OLuIido1PbQLTqlrOytN39UW3kkEFGfmeLbi+qa++SjRp25zIuRJl0OSNkzmmhgS
	Ya5EgNpERgz9eSjUgld4bL6kBLiD2UTwUuCPTruoBGDF6NmrFQm5/u9e1zYQEbvP
	cMQhzFSRv7rXDwtpq1snrJY4Zgy00m8GI2KpxYVcjy8FDHNKHSAyGpEV3haix6rg
	2PhnaO6k6nXTxzM/wqQeYN89EuzHcDhyFSJnUAh+iKDJPOPR5TlQ/F0B5FX5+tlt
	b9NLw==
X-ME-Sender: <xms:i_9HZb4lbiI3SaxCtGcWyrtTl3cfoY54A-YIHoNs3KQrtyKrQCIRPg>
    <xme:i_9HZQ7i7HW5O8PXB82ZwbsvNerXNKAaosCMARfgCbwAo1ATW-rRg1PK2uYbo3Rc4
    khsEv1kGgn2dF8woQ>
X-ME-Received: <xmr:i_9HZScsPYnbhwgspUZi6w7FpeE53nc94nq-ce6OfRmrRjP1XskKl-Iez4rApNo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudduvddgudegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepuehrhigr
    nhhtucforghirhhsuceosghrhigrnhhtsehmrghirdhrsheqnecuggftrfgrthhtvghrnh
    epvdegkeekkeehffehveeltdekvdfhffejuefgjeelfeefgffgleekheeffefggeefnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsghrhigrnh
    htsehmrghirdhrsh
X-ME-Proxy: <xmx:i_9HZcJCji8c2FriM5V2vAwjF-w8i_qWNgeqC2uBWhOIA6ppTpRdPA>
    <xmx:i_9HZfJ8qBL97Ef_tqgq4poDvzYRBqsOkjGgceu4qVDV_q95ZGnOaw>
    <xmx:i_9HZVw7_d3awGTq7jD2-sbVXTdRGxc8d0z1CEz0C2bHSLsfWImzPQ>
    <xmx:i_9HZcAv0Pt6o1ML3sXZ5MuFkTbpljaE5EhHbLhxJ1vYW_QyNp7mOw>
Feedback-ID: i891b436e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 5 Nov 2023 15:48:09 -0500 (EST)
From: Bryant Mairs <bryant@mai.rs>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: [PATCH 4/7] ARM: dts: qcom: Disable pm8941 & pm8226 smbb charger by default
Date: Sun,  5 Nov 2023 21:46:19 +0100
Message-ID: <20231105204759.37107-5-bryant@mai.rs>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231105204759.37107-1-bryant@mai.rs>
References: <20231105204759.37107-1-bryant@mai.rs>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some platforms don't use the built-in charging hardware (e.g. milletwifi).
As this is an optional peripheral, default it to off.

Keep it enabled for all other boards that use smbb.

Signed-off-by: Bryant Mairs <bryant@mai.rs>
---
 arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts          | 2 ++
 arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts       | 2 ++
 arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts              | 2 ++
 arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts           | 4 ++++
 arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts      | 2 ++
 arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts      | 4 ++++
 .../dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts   | 2 ++
 arch/arm/boot/dts/qcom/qcom-pm8226.dtsi                       | 2 ++
 arch/arm/boot/dts/qcom/qcom-pm8941.dtsi                       | 2 ++
 9 files changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts
index aa0e0e8d2a97..e5293755cf88 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-asus-sparrow.dts
@@ -253,6 +253,8 @@ &smbb {
 	qcom,fast-charge-high-threshold-voltage = <4400000>;
 	qcom,auto-recharge-threshold-voltage = <4300000>;
 	qcom,minimum-input-voltage = <4400000>;
+
+	status = "okay";
 };
 
 &tlmm {
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts
index de19640efe55..538309f153d3 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-huawei-sturgeon.dts
@@ -335,6 +335,8 @@ &smbb {
 	qcom,fast-charge-current-limit = <300000>;
 	qcom,fast-charge-safe-current = <600000>;
 	qcom,auto-recharge-threshold-voltage = <4240000>;
+
+	status = "okay";
 };
 
 &tlmm {
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts
index b887e5361ec3..b29c39cec2e0 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-lg-lenok.dts
@@ -292,6 +292,8 @@ &smbb {
 	qcom,fast-charge-high-threshold-voltage = <4350000>;
 	qcom,auto-recharge-threshold-voltage = <4240000>;
 	qcom,minimum-input-voltage = <4450000>;
+
+	status = "okay";
 };
 
 &tlmm {
diff --git a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
index 6d1b2439ae3a..88093d6fae2b 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8074-dragonboard.dts
@@ -403,6 +403,10 @@ &sdhc_2 {
 	pinctrl-1 = <&sdc2_off>;
 };
 
+&smbb {
+	status = "okay";
+};
+
 &tlmm {
 	sdc1_on: sdc1-on-state {
 		clk-pins {
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
index 42d253b75dad..49912e311c31 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-fairphone-fp2.dts
@@ -381,6 +381,8 @@ &smbb {
 	qcom,fast-charge-high-threshold-voltage = <4350000>;
 	qcom,auto-recharge-threshold-voltage = <4240000>;
 	qcom,minimum-input-voltage = <4450000>;
+
+	status = "okay";
 };
 
 &tlmm {
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
index 8230d0e1d95d..a189f5641853 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-oneplus-bacon.dts
@@ -433,6 +433,10 @@ &sdhc_1 {
 	status = "okay";
 };
 
+&smbb {
+	status = "okay";
+};
+
 &tlmm {
 	gpio_hall_sensor_default: gpio-hall-sensor-default-state {
 		pins = "gpio68";
diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
index 11468d1409f7..df57041ae167 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-sony-xperia-shinano-castor.dts
@@ -558,6 +558,8 @@ &smbb {
 	qcom,fast-charge-low-threshold-voltage = <3400000>;
 	qcom,auto-recharge-threshold-voltage = <4200000>;
 	qcom,minimum-input-voltage = <4300000>;
+
+	status = "okay";
 };
 
 &tlmm {
diff --git a/arch/arm/boot/dts/qcom/qcom-pm8226.dtsi b/arch/arm/boot/dts/qcom/qcom-pm8226.dtsi
index 2413778f3715..2fd4f135ed84 100644
--- a/arch/arm/boot/dts/qcom/qcom-pm8226.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-pm8226.dtsi
@@ -82,6 +82,8 @@ smbb: charger@1000 {
 					  "usb-valid",
 					  "dc-valid";
 
+			status = "disabled";
+
 			chg_otg: otg-vbus { };
 		};
 
diff --git a/arch/arm/boot/dts/qcom/qcom-pm8941.dtsi b/arch/arm/boot/dts/qcom/qcom-pm8941.dtsi
index ed0ba591c755..aca0052a02b7 100644
--- a/arch/arm/boot/dts/qcom/qcom-pm8941.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-pm8941.dtsi
@@ -99,6 +99,8 @@ smbb: charger@1000 {
 
 			usb-otg-in-supply = <&pm8941_5vs1>;
 
+			status = "disabled";
+
 			chg_otg: otg-vbus { };
 		};
 
-- 
2.41.0


