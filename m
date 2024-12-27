Return-Path: <devicetree+bounces-134325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B555B9FD39E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 12:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D674188523F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 11:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A18131F426A;
	Fri, 27 Dec 2024 11:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="EQ1S957n"
X-Original-To: devicetree@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037B21F3D57
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 11:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735297758; cv=none; b=s5MJQjnjbWBVOMsf9ZUc7fUq3WGqGQRpo/QBO5l/GIBovxT5AS4gqovzW9fTAkY1NnoKXR+gEfu+ItlV04Eipo2ejrYPoP43fk9v/oWWZyYjqdeo1xGA0K4Jr+ucl/YWRJhjYvmYqaFguZW7NrB59MRn2L0HxORNTpt3wozWe04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735297758; c=relaxed/simple;
	bh=CfKDzLVW2HjbFGzbatG7QU1ZUM6EVKr2pWjYtibsVk4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JGSPU83EvdmrsBYWBJVPl/YTBLojiIvqvmLsygxKSWO4+/43CWpMHjf/8fZWvfdBA2SlNSEN7IzYXjV6mT0Km6SOpqytVnzdCoGOVOmLJMEMkyXpNbyBHuU04h9d1ZxnwbWkCp/HpbKuZnleuKIQC3NL9cBUNRoT02AKiS/9ygs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=EQ1S957n; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTPS
	id R2SItTQBH09RnR8DUtqgkx; Fri, 27 Dec 2024 11:09:16 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R8DStoE0Y2Zy0R8DTttMsh; Fri, 27 Dec 2024 11:09:16 +0000
X-Authority-Analysis: v=2.4 cv=Q4EZ4J2a c=1 sm=1 tr=0 ts=676e8adc
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=9cU--O3412mDuayuQzEA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NlbeabqHXI3xJyUbgyHJpY/hBcQISwAxP63/wwrSWEY=; b=EQ1S957nbN777vON3I8QTMMMFW
	1uOLRCM0sOq+ABpPkeK17FyEUYh5iqUuS26JxwigRCx+nCGoQ+qxcYELTE6SS+7KMZ/IKgLcYwPKV
	FmYCRln9U/ixt4dsnINtk6oVtkxuOgbW7ziKb3FRTyqSvq3bgK50atqdRjla6G7zJo7VMNb04VHjL
	UhLuilOXwt9o/rlb1JNWWatD8IPi0PobuGbLW1Lr/1YTqRi1S7G2ohZuRbzzvq4v2hcL9hG5tOvMw
	w9EbNuut4paHzhrWJYDr9Qwbtq2jQ8b/IcCWQEIJjsUrw0NNWxzAIpbu6sV9bfl6hf3aPe+XkTJoO
	E/vHBJIg==;
Received: from [122.165.245.213] (port=50828 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR8DL-000bEK-1q;
	Fri, 27 Dec 2024 16:39:07 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 16:37:57 +0530
Subject: [PATCH 10/22] pinctrl: sunxi: add missed lvds pins for a100/a133
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-10-13b52f71fb14@linumiz.com>
References: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-13b52f71fb14@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735297689; l=4202;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=CfKDzLVW2HjbFGzbatG7QU1ZUM6EVKr2pWjYtibsVk4=;
 b=w92t7AAtXU2zxZzSIWLpVoKxCoU0b+V1CAvgST0eKbfVPBunyhuYXv732riqMFfymg0JfvgjF
 mFkIQo7jCTgCY7CZCZ1tkYb7WKenMTLWY5GhJa/+YHWGCJYyna6m1eO
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR8DL-000bEK-1q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:50828
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 309
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCFnlOCYv9y/7bDwkmM7PRAnzF9j/d8R/WO/D/PffYog1//+tiigkArUi+aIziTVSO9dB7cVZJz2tfuht+n+FQdXfhO3joDoc3gHy+6HkQtcyfjjTLw/
 aMpa5U1DpVCVsWGYs5N6bqsPHiPDrk2jJU/cBXwUl32x1e19h6HdRUrSr0rp9h6cugpQeyID4WPkaxtzEZMT2gDd2MSDJNQOtGs=

lvds, lcd, dsi all shares the same GPIO D bank and lvds0
data 3 lines and lvds1 pins are missed, add them.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
index df90c75fb3c5..b97de80ae2f3 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
@@ -256,72 +256,84 @@ static const struct sunxi_desc_pin a100_pins[] = {
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D12 */
+		  SUNXI_FUNCTION(0x3, "lvds0"),		/* D3P */
 		  SUNXI_FUNCTION(0x4, "dsi0"),		/* DP3 */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 8)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 9),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D13 */
+		  SUNXI_FUNCTION(0x3, "lvds0"),		/* D3N */
 		  SUNXI_FUNCTION(0x4, "dsi0"),		/* DM3 */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 9)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 10),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D14 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D0P */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* CS */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 10)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 11),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D15 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D0N */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* CLK */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 11)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 12),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D18 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D1P */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* MOSI */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 12)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 13),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D19 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D1N */
 		  SUNXI_FUNCTION(0x4, "spi1"),		/* MISO */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 13)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 14),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D20 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D2P */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* TX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 14)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 15),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D21 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D2N */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* RX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 15)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 16),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D22 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* CKP */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* RTS */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 16)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 17),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* D23 */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* CKN */
 		  SUNXI_FUNCTION(0x4, "uart3"),		/* CTS */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 17)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 18),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* CLK */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D3P */
 		  SUNXI_FUNCTION(0x4, "uart4"),		/* TX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 18)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 19),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "lcd0"),		/* DE */
+		  SUNXI_FUNCTION(0x3, "lvds1"),		/* D3N */
 		  SUNXI_FUNCTION(0x4, "uart4"),		/* RX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 19)),
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 20),

-- 
2.39.5


