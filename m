Return-Path: <devicetree+bounces-21088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D92C8023CF
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 13:41:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E77E28061E
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16893D26D;
	Sun,  3 Dec 2023 12:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="r7zE6P8J";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="oqf5Wclf"
X-Original-To: devicetree@vger.kernel.org
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C549C2
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 04:41:14 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 035975C0136;
	Sun,  3 Dec 2023 07:41:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 03 Dec 2023 07:41:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607273; x=
	1701693673; bh=0Z34ircSgmagFzebZpYklzEym10DzlMEfWeocShNPWY=; b=r
	7zE6P8JIuCguI2jomXAU+50xySPtpLF/UhhyVSrzIS6RYxccMt2pHW5A3KmyCoHF
	UAvIV6FcNm4zr0IF1AW65A9C/HcjjOJmIFfLRctwafDHt/wbDWkwUD2GSXf/TG9P
	hDHH67RPZPHyT0WQJ+H20gRkktr9fWlWy2PGyAZXCshKjjfFZj6l+e4UsBm8Eqjj
	4As4VPikuD+jPtE67v7QnG98a3eRTX6+ivh464QVwFqjrmgphKMoDNjRD8CKiCvM
	+6Yv0HHpEqWyfFrNfBn3Uz/ER4leyIlMhqEfSKxlOk2jwkb+Hp9JzqLwzU+bF8Vw
	6fTxCYNSZOQLV49Dfjk+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607273; x=
	1701693673; bh=0Z34ircSgmagFzebZpYklzEym10DzlMEfWeocShNPWY=; b=o
	qf5WclfJqgRZLvV626Md+9yITaxMq+aKIuIbk7Zz3OIafdffy/5SI7S18EmaDM/D
	VylGzP5wcUIHkPECuttm16e3uE25kLREp+l6XxQdgvoTBDL09tgPYXV5LmzSZs4K
	+0ptg4tYxrQgzC5Wai1jrNoFdNlUlUwJNFRdojP9lUAVZODS1ZSZcrQ1UIWpx8Co
	yVO34hQdnHEBZNGMIwb1aOplKm8hKDUSjxSwtMvbtprFUIOa9vJ0QJ+K4YaYb10+
	XTiSTJfy0VKY19V1Kf/5Yn4Kn6Uzu+eyGlH1kLCJN0cU2ei81AL3lsxkIXu5eaCI
	2PXfOPv8UM6tYVCJsUh7Q==
X-ME-Sender: <xms:aXdsZalwlioYxsxgfmT-2inw3jtYRtnmVkq30U-3Q_HTMY-UlGuNdw>
    <xme:aXdsZR3qB_3qlp9Ts8BtYD-Eq5sQqN8Rq3WdoxfWH-OdOjyZ0Yh2rWJTNqAyxj8oi
    ZgpYEHCxw>
X-ME-Received: <xmr:aXdsZYoU0chF6GxrVteIX1e79VJ-RwKGeDaMUEZA_U7SNazY2zvehkmi_w_SYYxPcZjm6qUphU1ll_gUELRq1BE9wC6co-EygXY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:aXdsZekmlTlUL7DrijkEC5UopWM4MT5LZWFJx7409Kd86U5HrtovdA>
    <xmx:aXdsZY2rhq5qtTswhf9Q6RfCFnDHaWGQfI3tpvPB0QU5mwEzNNuNeA>
    <xmx:aXdsZVtVWjq5oKamHiRfLeT44fND_80uK41SxRXw9fqIbVEQOxXOgQ>
    <xmx:aXdsZZk1ZDaBVe9rvDo1IgdoJxmJJ7bJPBPDdEKsN3dx8XOCKOAdiw>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:41:09 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:41:06 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 6/8] ARM: dts: rockchip: Add rv1109 SoC
Date: Sun,  3 Dec 2023 23:40:02 +1100
Message-Id: <20231203124004.2676174-7-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Rockchip rv1109 SoC is a dual core version of the rv1126. It is
otherwise identical and shares the same device tree config.

This patch introduces a dtsi file to drop the additional cpu nodes.
Taken from Rockchip BSP kernel.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

(no changes since v2)

Changes in v2:
- new patch

 arch/arm/boot/dts/rockchip/rv1109.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1109.dtsi b/arch/arm/boot/dts/rockchip/rv1109.dtsi
new file mode 100644
index 000000000000..9cbaa08ab1b8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1109.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
+ */
+
+/dts-v1/;
+
+#include "rv1126.dtsi"
+
+/ {
+	compatible = "rockchip,rv1109";
+
+	cpus {
+		/delete-node/ cpu@f02;
+		/delete-node/ cpu@f03;
+	};
+
+	arm-pmu {
+		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+};
-- 
2.40.1


