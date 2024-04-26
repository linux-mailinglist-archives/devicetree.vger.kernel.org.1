Return-Path: <devicetree+bounces-63237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B238B4176
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 23:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27EC11C2095D
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 21:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA7736AE4;
	Fri, 26 Apr 2024 21:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="P7W+i6+u";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="XpOS38W2"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C0AE3613E
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 21:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167733; cv=none; b=D5ZExJmRWEc+unPTeeq5HqUJDBcssJuXxf/q7wv+pE4LlWbEs3xd7ZFispnlrO4RwxqDwluu3/3vXMWMr3JCfOGONgpvA+ZttThHFf/C0fUbgr9csD97xuFR4V7YNb9g9PWc9AMxF3R7kHCAx5cA176govDOSLBbhMQKJMNQx38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167733; c=relaxed/simple;
	bh=l9ll46tEFf24Z25BbGjTvd8fUJlKHRDdmxgNtMIO1R4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qb2tbKolWnKky5px9tBGxbTRsOvV0KogW7ZMdIi6nK1vuVmJzi3ZQRSBf1Z3C0RIsAiRes9eSwY4Fmya6QGkIZ7Kj3/wOo3geVAYaDiGkBuyXyWYX08GRev+bpB32PF4/8mFpDntQbpfOwzn1vJx11EG2ImfUiEgFQF+T1gnAjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=P7W+i6+u; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=XpOS38W2; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id A949F11400B1;
	Fri, 26 Apr 2024 17:42:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Fri, 26 Apr 2024 17:42:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1714167729; x=
	1714254129; bh=Z1apldijlyUlJmE3AuajoRDLvwCNFadsWNEDp4XPtdo=; b=P
	7W+i6+u4gfUBZP+5zQ4Tda/M0dwy+9eTqxuQnotWzji7LX4v1hIXu7fqwOO+oyKr
	12Np+UR3c+vFwO2wEMae1FAf30/FJKICOZMSLMi8V4J794ymMB5D8cc7cLh+zx2e
	iWObrZyIwdwW1ElB46aoXIma63loJm0ESxzKC8+QZkUO4iLUCoatYXV2nABT0PdV
	zrUCSlvcVr9zdXcvNwFNYz+xL3zNwA0HwGcKZZEVxaGG9XPBEpcKZycx3pNKyMCh
	tNjRi2O56DruQ/OlVJ3UMcrjcuL7wDGyC9P64B8roILcp5kojcAUWFLRj9N99g5S
	MH1PK5Xo3rdGtrDVXfYYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1714167729; x=
	1714254129; bh=Z1apldijlyUlJmE3AuajoRDLvwCNFadsWNEDp4XPtdo=; b=X
	pOS38W2HWDJxNnBoJ/1tC19LwiHtx5bEMOPu3bRFlb+zOKSWfAXmhfsSyp5x5dva
	zf4fLJjNGMnw4TN18fcp4m8I9xqUVy8IWO6SENUMMQk8E1Zt9MGqUXAq83RhIyCn
	Y/EcUZ1k4znJwCrfKbN1NscVd84rd8+fWYzs2wBbz8YoOBS4z2anKInm047FDxUd
	r1F4EPpv/qnhBOGfV5+A/uMqCzBeTU7UaAiopUClQaH72hbtIH40JkU0wweozw2J
	t0612LErFH6dvkHAJdBQBcRgwvbhafRt7Ae2/6p+fqeylagFmmCjzAz4YOCNLhIN
	U0wqP1di4pdWMJb2y6r0A==
X-ME-Sender: <xms:sR8sZihFF1uSJGUBM3tUS-oaJ29iv2V4WKbeoWWlkKTuPrS5-PcUxA>
    <xme:sR8sZjB-4GmG2xvPpa1uzuPSV8KiGShm8RoDU7TRl926bDvS7K8wEL1JpkeXFjCth
    NMCHHqjnlNwcRSN8w>
X-ME-Received: <xmr:sR8sZqEylbFK4YRWX9N7VeuTahALLA3I5afdq_UPexgwFlBQc5LFT4FahQNM-nUDIxnkOMbtqyUE7alD8F41tIC7qXQ6Yc2Oj__UrmpLYv8roxcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddttddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomheptfihrghn
    ucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrdgtohhmqeenucggtffrrg
    htthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeevueetffetteduffevgeei
    ieehteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hrhigrnhesthgvshhtthhorghsthdrtghomh
X-ME-Proxy: <xmx:sR8sZrSgUjeh1slGo-WXtXCkFkEvwbmxcLAq_btfs2xxQc4wucgMQA>
    <xmx:sR8sZvzow0SwQxTaRxMkfKIMOiiF0Qea1yz030x645__49-bQjm1Og>
    <xmx:sR8sZp438xsIje8DuhNW1liSDVyb02fvCuHeJl1_5xTNTC1nleYOnQ>
    <xmx:sR8sZswzzCaJyYZ-nH582YPnU3EhrzKZq6qWaLOA-2QLcUjbnAFd8g>
    <xmx:sR8sZt5tXrGdzrMIvXpa6NH_NCgqY8v57LITiz_4X7AASBdEotTPx5Wj>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Apr 2024 17:42:06 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Andre Przywara <andre.przywara@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v5 3/4] arm64: dts: allwinner: h700: Add RG35XX-Plus DTS
Date: Sat, 27 Apr 2024 09:35:12 +1200
Message-ID: <20240426213505.69273-12-ryan@testtoast.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426213505.69273-5-ryan@testtoast.com>
References: <20240426213505.69273-5-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RG35XX-Plus adds a RTL8221CS SDIO Wifi/BT chip to the RG35XX (2024).

Enabled in this DTS:
- WiFi
- Bluetooth
- Supporting power sequence and GPIOs

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
Changelog v1..v2:
- Update copyright
- Spaces -> Tabs
- Remove redundant &uart0 node and DTS version tag
- Add GPIO bank comments
- Use generic pwrseq name

Changelog v2..v3:
- Add DTB to Makefile
- Correct Wifi vqmmc-supply to ALDO4
- Move changelog below fold-line

Changelog v3..v4:
- Fix sdio_wifi node indent

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../sun50i-h700-anbernic-rg35xx-plus.dts      | 53 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 6f997157968e..4217328b1889 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -48,3 +48,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero2w.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-orangepi-zero3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h618-transpeed-8k618-t.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
new file mode 100644
index 000000000000..60a8e4922103
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-plus.dts
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright (C) 2024 Ryan Walklin <ryan@testtoast.com>.
+ */
+
+#include "sun50i-h700-anbernic-rg35xx-2024.dts"
+
+/ {
+	model = "Anbernic RG35XX Plus";
+	compatible = "anbernic,rg35xx-plus", "allwinner,sun50i-h700";
+
+	wifi_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rtc CLK_OSC32K_FANOUT>;
+		clock-names = "ext_clock";
+		pinctrl-0 = <&x32clk_fanout_pin>;
+		pinctrl-names = "default";
+		post-power-on-delay-ms = <200>;
+		reset-gpios = <&pio 6 18 GPIO_ACTIVE_LOW>; /* PG18 */
+	};
+};
+
+/* SDIO WiFi RTL8821CS */
+&mmc1 {
+	vmmc-supply = <&reg_cldo4>;
+	vqmmc-supply = <&reg_aldo4>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&pio>;
+		interrupts = <6 15 IRQ_TYPE_LEVEL_LOW>; /* PG15 */
+		interrupt-names = "host-wake";
+	};
+};
+
+/* Bluetooth RTL8821CS */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&pio 6 17 GPIO_ACTIVE_HIGH>; /* PG17 */
+		enable-gpios = <&pio 6 19 GPIO_ACTIVE_HIGH>; /* PG19 */
+		host-wake-gpios = <&pio 6 16 GPIO_ACTIVE_HIGH>; /* PG16 */
+	};
+};
-- 
2.44.0


