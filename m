Return-Path: <devicetree+bounces-12694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AFF7DAE90
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 22:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F6F51C2094F
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 21:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822E112E4B;
	Sun, 29 Oct 2023 21:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sholland.org header.i=@sholland.org header.b="ZgqMwS2D";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="tJmCwC8a"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE33712E53
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 21:27:52 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A992E97;
	Sun, 29 Oct 2023 14:27:51 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 221405C00F5;
	Sun, 29 Oct 2023 17:27:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sun, 29 Oct 2023 17:27:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1698614871; x=
	1698701271; bh=pqggGLCwnACae2UnEHHjv/s1fXcJLCQyy4ZCbqoi31o=; b=Z
	gqMwS2D+kJ4kswoDW9i2nb/5RDjHHQQg/nlgEd+ZmGnvnSfPEq3ES4y4nD1TbFC2
	fk/CoxFMftMxtamvIarT2HF1MXgW2vRqFrkprnSsXkfpUB5hm2VBwEhY5oMts6fk
	4zLhwSAIAsZCLlJNMVHuBmSc1hle3Oon+3m2xjMeSYL3v3kj56ANZ2ZbGuv1w5oA
	Ma0vPwUHAfPAiTtRqH0NqrkdtWmA47gFZwirZpl4MZPV7ROWZyno/PLVAfnD4Lsm
	wxROGu+uMI873u4cbReIwIa5PKA2DCXYZ0krA8IsdoIZ8JetvnOv89oHeX/UcLJ0
	WIofRgq9xo3JZFoy9NnFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1698614871; x=
	1698701271; bh=pqggGLCwnACae2UnEHHjv/s1fXcJLCQyy4ZCbqoi31o=; b=t
	JmCwC8aYLZGOFM9dYO+XRT+YMxeyVgPh1nmN2/K5bCGlXN/NFlsIJcq9Hyf3S8x5
	1oHvNdoRcU8JL4W5BtlCKNwtwWW//yz53YCczG2LR7re3TtlT3rSRjb21wC91AF0
	+j30s5Czv8ylIRQJ3SXlB8PKxO8iOKjvHppIztWa/GNKq/aWK/mtKlhRyKJpjnJW
	RYsjlzwef55QiKeto2DCKbLGh9U3/OHFG8s4c7m2LdFUy5PLt3IOXqAvrPOZMmLr
	NM420mpp94tD41XaMfJdVy7sgqoHpP3fNHf7OaGM38lpBv1n7lNtvb/DY1Bo+yPY
	hAgDv+JuMEage2Jujp/GA==
X-ME-Sender: <xms:V84-ZYpNXs0l4jUWUxn0HR_h-mpilzyOxma2J1uNMOHd33fChwL0oA>
    <xme:V84-Zeob_5mYcbaFW3RjVmO-p7qsJv9m8fr2c9xqMyZTdroD8ccqK2SNpx_9M-zcq
    4Gou1KlM15SZDRlZQ>
X-ME-Received: <xmr:V84-ZdN2y2PI5UOHn0AuaJY5ZHLPOUM5KvrNRuKEgtxRFnwjestQtKSphdBtIQuqyLPOdgZObhqNDk8LQ-FoquRCQcGStnwjlNs7QsBRKS6GzN4TyZIcKLFxcIlzW0puvWzssw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrleekgddugeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepudekteeuudehtdelteevgfduvddvjefhfedulefgudevgeeghefg
    udefiedtveetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:V84-Zf6VyhNSgo-hr84p5F_xXi94fn0nGjpBWDDayw4UXN3Skgi1Fg>
    <xmx:V84-ZX7VbzZlzchlI8ynPStFghcN00SFf0aGf7blOdpiHoHLf49QNQ>
    <xmx:V84-Zfi2ezyHLXh_hYDOMReXa4KxWGJLg6Gu1KNtU7m390CQ5JYcoQ>
    <xmx:V84-Zcr0ShP3pvYkZmTrErI_4LGVgwT1JQQF9_0psqGzotL3lTv1HA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 Oct 2023 17:27:50 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@ucw.cz>,
	linux-leds@vger.kernel.org,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Guo Ren <guoren@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	John Watts <contact@jookia.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maksim Kiselev <bigunclemax@gmail.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Trevor Woerner <twoerner@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v8 5/5] riscv: dts: allwinner: d1: Add RGB LEDs to boards
Date: Sun, 29 Oct 2023 16:26:59 -0500
Message-ID: <20231029212738.7871-6-samuel@sholland.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231029212738.7871-1-samuel@sholland.org>
References: <20231029212738.7871-1-samuel@sholland.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some D1-based boards feature an onboard RGB LED. Enable them.

Acked-by: Guo Ren <guoren@kernel.org>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Tested-by: Trevor Woerner <twoerner@gmail.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---

(no changes since v5)

Changes in v5:
 - New patch for v5

 .../boot/dts/allwinner/sun20i-d1-lichee-rv-dock.dts | 12 ++++++++++++
 arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts   | 13 +++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1-lichee-rv-dock.dts b/arch/riscv/boot/dts/allwinner/sun20i-d1-lichee-rv-dock.dts
index 08cf716328a0..feaa75d5aead 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1-lichee-rv-dock.dts
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1-lichee-rv-dock.dts
@@ -59,6 +59,18 @@ &ehci1 {
 	status = "okay";
 };
 
+&ledc {
+	pinctrl-0 = <&ledc_pc0_pin>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	multi-led@0 {
+		reg = <0x0>;
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+	};
+};
+
 &mmc1 {
 	bus-width = <4>;
 	mmc-pwrseq = <&wifi_pwrseq>;
diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts b/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts
index 8dbe717c79ce..73840ea300f0 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1-nezha.dts
@@ -22,6 +22,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 
 /dts-v1/;
 
@@ -121,6 +122,18 @@ pcf8574a: gpio@38 {
 	};
 };
 
+&ledc {
+	pinctrl-0 = <&ledc_pc0_pin>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	multi-led@0 {
+		reg = <0x0>;
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+	};
+};
+
 &mdio {
 	ext_rgmii_phy: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.41.0


