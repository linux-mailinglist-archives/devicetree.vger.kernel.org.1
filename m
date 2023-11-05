Return-Path: <devicetree+bounces-13933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB3C7E1689
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 21:48:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CF39B20DCB
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 20:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60DC8168BB;
	Sun,  5 Nov 2023 20:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mai.rs header.i=@mai.rs header.b="PVyRY3wR";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="eFcYhvQe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9671B1865F
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 20:48:15 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D02F2;
	Sun,  5 Nov 2023 12:48:13 -0800 (PST)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 4F3485C00D8;
	Sun,  5 Nov 2023 15:48:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sun, 05 Nov 2023 15:48:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mai.rs; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699217293; x=
	1699303693; bh=O8fDzcjgQ7pbEFlZ3Prz4CvsbP5ODoTbqCZT7YXk//4=; b=P
	VyRY3wR5akHcZyhS/AuMA4WJeXBJbynx4JlprkOQkRhnFExy52chkCQlkk3b8//Q
	Ptb1jZyoAgCKmZkl4oiwycb10hwT7YvizP+dWUYL8mrXi3bi1K5x2Oxi2NUrHwGG
	XnyT08YnwmvHdXGZdhp0klcGk+fWvqQuf1Ambmf2KJ5nDMgmubqeQWM47XDYc5qC
	qvFtsS95FKyWe9Ta5UfGSDyuJdfO3pg6kRx9959jUzK8KthWYMctD9i2wiy50rSm
	kCAUWaVX2A6r3m6lhXhaukm/iZ6NylcvJjM/NJfHrq5RcAPSk6fJhlNrMo8uMXgs
	93JQ0cTBEsem71dCgaJng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1699217293; x=1699303693; bh=O
	8fDzcjgQ7pbEFlZ3Prz4CvsbP5ODoTbqCZT7YXk//4=; b=eFcYhvQeQBcZ1rUaP
	oJynt5vuKzT5NYNum4/RBiqcw40Hqy2GQ0Nxl/tQhvXhfssggD8U2eeEbG2JAs4V
	Dv3cjbq39jon/gG87NO3yihjQgdy/VpyR2Jc5OczXoLYg/lM1PPmer58v7kSdzpB
	MWzZCTW8tSTV9NzLuG+ipba9dBYZHvvYnMacn5Bf08/r1KazH6BAVwGdSAvQDbdr
	DkPRkDPpaM4SGlgoUw53b3w9mUriz6RVbIyvf5wVGtZZCXo+RXicdpZlBbiaVx5Y
	eyBlSMyKuKNzhSo21fU3nlliHRZK60uvSi3FlccH+P/AURgaS+owEQi/2QgBneEy
	56eAw==
X-ME-Sender: <xms:jf9HZbLgxDd46baBvm-j0ubXe29iat-JkgQXyc3Xb7qL7jpZO2Rv5Q>
    <xme:jf9HZfKzwWjzvvlGeuacehtCIlJ9S7VbVl1ySWmNf6d7tAk0xXmdln0vLk5Enecul
    KlRIL7YBOxfbNvc2A>
X-ME-Received: <xmr:jf9HZTtinVjnwhWveNrlhQebxHlcl8jr9xrr_U8o1GxtgEUjDI_2wVBMMqTX80s>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudduvddgudegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepuehrhigr
    nhhtucforghirhhsuceosghrhigrnhhtsehmrghirdhrsheqnecuggftrfgrthhtvghrnh
    epvdegkeekkeehffehveeltdekvdfhffejuefgjeelfeefgffgleekheeffefggeefnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsghrhigrnh
    htsehmrghirdhrsh
X-ME-Proxy: <xmx:jf9HZUZBix7rpD-37qprrRGw-MdsqTV7pN33zdaxkBDROC_9IoaQeg>
    <xmx:jf9HZSZzuzpsNF3iC8lcBUfQp9ys5pNSOPtbh_g84wkKVp2yTXTxiQ>
    <xmx:jf9HZYDHMgcHPfepNu4aAiTAbGyohrxfTzpkHATsOYZ9B0O7QB8dpw>
    <xmx:jf9HZfQaHV6HrJcOge9ZkquAcVkstyVlEgjl1Jjg0iDAWSK29eSjfQ>
Feedback-ID: i891b436e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 5 Nov 2023 15:48:11 -0500 (EST)
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
Subject: [PATCH 5/7] ARM: dts: qcom: apq8026-samsung-milletwifi: Enable charger
Date: Sun,  5 Nov 2023 21:46:20 +0100
Message-ID: <20231105204759.37107-6-bryant@mai.rs>
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

Enable charging support.

Signed-off-by: Bryant Mairs <bryant@mai.rs>
---
 .../qcom/qcom-apq8026-samsung-milletwifi.dts  | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts
index 545992091c6b..910e8d2f69b0 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8026-samsung-milletwifi.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/power/summit,smb347-charger.h>
 #include "qcom-msm8226.dtsi"
 #include "qcom-pm8226.dtsi"
 
@@ -258,6 +259,26 @@ accelerometer@1d {
 	};
 };
 
+&blsp1_i2c3 {
+	status = "okay";
+
+	charger@6a {
+		compatible = "summit,smb358";
+		reg = <0x6a>;
+
+		interrupts-extended = <&tlmm 115 IRQ_TYPE_EDGE_FALLING>;
+
+		pinctrl-0 = <&charger_int_default_state>;
+		pinctrl-names = "default";
+
+		summit,enable-usb-charging;
+		summit,enable-charge-control = <SMB3XX_CHG_ENABLE_SW>;
+		summit,fast-voltage-threshold-microvolt = <3000000>;
+		summit,chip-temperature-threshold-celsius = <130>;
+		summit,usb-current-limit-microamp = <1500000>;
+	};
+};
+
 &blsp1_i2c4 {
 	status = "okay";
 
@@ -495,6 +516,13 @@ backlight_vddio_default_state: backlight-vddio-default-state {
 		bias-disable;
 	};
 
+	charger_int_default_state: charger-int-default-state {
+		pins = "gpio115";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
 	muic_int_default_state: muic-int-default-state {
 		pins = "gpio67";
 		function = "gpio";
-- 
2.41.0


