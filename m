Return-Path: <devicetree+bounces-14216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C77E7E2C81
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 19:58:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C0BF2815CC
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 18:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E50128DDC;
	Mon,  6 Nov 2023 18:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="H1Hra38O"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7674DDBB
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 18:57:55 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB9C7BB;
	Mon,  6 Nov 2023 10:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To
	:From:subject:date:message-id:reply-to;
	bh=x0KdJV1T5bwu5vuWgfbzxKBUcidqlaq+cthXaDBuzok=; b=H1Hra38O3Zm+m9TWfOFNzqgNhY
	FXJ5HiNpAB0PHcU7xEe4Zc5hGuOs0fNPSpW3lYJEjU6qONoxdgM3nvJ49TnTqO8KHGvr5PJZfaxFB
	gvIRs4cdddEk/F29yYazWGVCGkafQij+Y8jRCLiU0f4YjkFl4sfUoRcdmOwl04XSS02I=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:37940 helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1r04n5-0005zO-OZ; Mon, 06 Nov 2023 13:57:40 -0500
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: hugo@hugovil.com,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Date: Mon,  6 Nov 2023 13:57:36 -0500
Message-Id: <20231106185736.668966-1-hugo@hugovil.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: [PATCH] arm64: dts: imx8mn-var-som-symphony: add vcc supply for PCA9534
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

From: Hugo Villeneuve <hvilleneuve@dimonoff.com>

The following warning is shown when probing device:

    pca953x 1-0020: supply vcc not found, using dummy regulator

Add fixed 3.3v regulator as vcc supply to silence the warning.

Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index a7a57442cb81..583b9859df3a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -79,6 +79,7 @@ pca9534: gpio@20 {
 		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
 		#gpio-cells = <2>;
 		wakeup-source;
+		vcc-supply = <&reg_3v3_fixed>;
 
 		/* USB 3.0 OTG (usbotg1) / SATA port switch, set to USB 3.0 */
 		usb3-sata-sel-hog {

base-commit: d2f51b3516dade79269ff45eae2a7668ae711b25
-- 
2.39.2


