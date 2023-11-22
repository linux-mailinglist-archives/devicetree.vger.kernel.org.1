Return-Path: <devicetree+bounces-17891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8A97F45E6
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5ED64B211C0
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9699A4D5A3;
	Wed, 22 Nov 2023 12:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=feathertop.org header.i=@feathertop.org header.b="ytR+75FW";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="tFbPc20q"
X-Original-To: devicetree@vger.kernel.org
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C45E7
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:23:03 -0800 (PST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id DC81A320094F;
	Wed, 22 Nov 2023 07:23:01 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Wed, 22 Nov 2023 07:23:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655781; x=
	1700742181; bh=fHjqMIVkUoOeZZGQ1RvEQKU4oOmmUmOkrhmvKngdij4=; b=y
	tR+75FWO3I9WwYckjqUleW9WUb+UeP/B2dqbMhW9GpRL+xLNfpBps7xXw9XR1psQ
	gaB3h03v2xyLnzSHU3NM5V1ubufnCRGLg4FYe0sRLd4CKSOUrfpgUYCHy/8PxUwa
	+gNtkS8f3gjv382h04Jux+xIWApoIssDCZewcgS4OFSwzFIpbiUgyd4ZLy/sD/Ga
	vdCCUlT0c9v0bJfRa5ngzwtoPewt6wa/YuYTXfFrL6D/xpG2cazstNs8iENcOZ9B
	0Ddhjfwnv+aS6e0VA37r9AsC6IzirZGxQ6qpsvLdBl/bxqJx77dktQe0cZehyaRU
	VmBwAX4f9tJbTl6jBJtBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655781; x=
	1700742181; bh=fHjqMIVkUoOeZZGQ1RvEQKU4oOmmUmOkrhmvKngdij4=; b=t
	FbPc20qGKnKSmZCpRqleLVMR0SlTmEy1HWqTQKCiICvwCHpnFOkSM8tdtn8xPFwq
	fGWTZbG/gbfWsISTyO7dfVQTu4U8Yk9f6/pYWkUcFtKww8g+3h0rP/n4ekrr6cuc
	uzgE/5wyJ5Uu9z/V23JDz82nwVF2c4Y8Sc1fL61+4wMR6hFW6MCjW+YEWdUOhcCP
	72TWNDyPx297ASRhISktKEKMYvFpHmOLCrUkTYQh4FozkBSxyYezVfJBBTlZui7E
	VDEpGmjB+dkPyqWo+25kqTVa6HjteGllOxDJalUOzkeP+Pe4tBoZ8wTIkmBqHXt6
	gaFeMo6kYPkftpiwxlctA==
X-ME-Sender: <xms:pfJdZfNKy5yxXFiR9ZAHfBGUnS2wRUARJO97PKS5l9dFytL4RKClAg>
    <xme:pfJdZZ9X34EZcjReE38vTE4hih0CKCKlU5_lPoM83ssPdxGGtb1kdie8Hh0YSi_Jq
    r_eTvnvPA>
X-ME-Received: <xmr:pfJdZeSAxZRtOJRTP3GwrpmC5uq5aHuKFJ5UDMuyhAS8hd324zRQR1srd01qHwWQK4pRJB-8ay_VVEPs_DAsPSRYEv-xdPdzhd4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:pfJdZTsl-JhI8HBU6rxNcEyJONZlIFhXRhXbrUWwLUABM0TzdXLywA>
    <xmx:pfJdZXegwssAh-PkVYbEk77wgu5_3hBEbchcOCNT9F1OtQCEpeLW1Q>
    <xmx:pfJdZf3Yoz65x3LCYTSDdaPDFVkJy1qh0xznB7H8EAS0KgRjDZN8Cg>
    <xmx:pfJdZZsH2v7mWWp56-EOBziomaCnuUKKjhIXsy-r3Q5PopRjyO50ug>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:22:56 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:22:53 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 1/9] ARM: dts: rockchip: rv1126: Add alternate UART pins
Date: Wed, 22 Nov 2023 23:22:24 +1100
Message-Id: <20231122122232.952696-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add uart3m2_xfer and uart4m2_xfer pins for Rockchip RV1126. These are
used as serial ports for the indicator and Zigbee radio on the iHost.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index bb34b0c9cb4a..4f85b7b3fc4c 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -263,6 +263,14 @@ uart3m0_xfer: uart3m0-xfer {
 				/* uart3_tx_m0 */
 				<3 RK_PC6 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart3m2_xfer: uart3m2-xfer {
+			rockchip,pins =
+				/* uart3_rx_m2 */
+				<3 RK_PA1 4 &pcfg_pull_up>,
+				/* uart3_tx_m2 */
+				<3 RK_PA0 4 &pcfg_pull_up>;
+		};
 	};
 	uart4 {
 		/omit-if-no-ref/
@@ -273,6 +281,14 @@ uart4m0_xfer: uart4m0-xfer {
 				/* uart4_tx_m0 */
 				<3 RK_PA4 4 &pcfg_pull_up>;
 		};
+		/omit-if-no-ref/
+		uart4m2_xfer: uart4m2-xfer {
+			rockchip,pins =
+				/* uart4_rx_m2 */
+				<1 RK_PD4 3 &pcfg_pull_up>,
+				/* uart4_tx_m2 */
+				<1 RK_PD5 3 &pcfg_pull_up>;
+		};
 	};
 	uart5 {
 		/omit-if-no-ref/
-- 
2.40.1


