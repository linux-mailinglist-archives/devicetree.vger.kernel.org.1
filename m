Return-Path: <devicetree+bounces-2911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D92717ACDF0
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 04:11:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 62E16281378
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B536010F0;
	Mon, 25 Sep 2023 02:11:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7167D10E2
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 02:11:26 +0000 (UTC)
Received: from out-201.mta1.migadu.com (out-201.mta1.migadu.com [IPv6:2001:41d0:203:375::c9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460DCE3
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 19:11:24 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695607882;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x5tMUp6nQxBrhWd3iRz7QzLsI7eW1vyNH67Y+6fzlTo=;
	b=GoJ0RtsSIsmcJFbakh3Qeo5ead6HnP2cV/+60l0w8vj2EJCxW4NTa2HYmuz3ZTlySkj7Uj
	tUW6cDDlxMItLUshxsTFvSt3M+diGg/ZWahCJsQQctPycDzHVmqaFNAt//DMau2U/Fk4J8
	8RqVE4TuqQPuioRJIFFoxf2ne6lDL0/gylBDU77cwe7zn8TWY83igqBrLiXB0mub+wUeIg
	zE2IgXUVTTIPX7s+2qC0PEsr4HrMB1FF1ahDZlPESEuAO2Dxcw0fAZDcy40fJ9pRs+qwKb
	RRR8qiyLeKPL6mC8mP08rULz5Cxw53POKz1i2AECR09uU1GVdQnMcGCrEVSEQQ==
From: John Watts <contact@jookia.org>
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	John Watts <contact@jookia.org>,
	Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 1/7] drm/panel: nv3052c: Document known register names
Date: Mon, 25 Sep 2023 12:10:52 +1000
Message-ID: <20230925021059.451019-2-contact@jookia.org>
In-Reply-To: <20230925021059.451019-1-contact@jookia.org>
References: <20230925021059.451019-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Many of these registers have a known name in the public datasheet.
Document them as comments for reference.

Signed-off-by: John Watts <contact@jookia.org>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 .../gpu/drm/panel/panel-newvision-nv3052c.c   | 261 +++++++++---------
 1 file changed, 132 insertions(+), 129 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
index 71e57de6d8b2..589431523ce7 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3052c.c
@@ -42,9 +42,9 @@ struct nv3052c_reg {
 };
 
 static const struct nv3052c_reg nv3052c_panel_regs[] = {
-	{ 0xff, 0x30 },
-	{ 0xff, 0x52 },
-	{ 0xff, 0x01 },
+	// EXTC Command set enable, select page 1
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x01 },
+	// Mostly unknown registers
 	{ 0xe3, 0x00 },
 	{ 0x40, 0x00 },
 	{ 0x03, 0x40 },
@@ -62,15 +62,15 @@ static const struct nv3052c_reg nv3052c_panel_regs[] = {
 	{ 0x25, 0x06 },
 	{ 0x26, 0x14 },
 	{ 0x27, 0x14 },
-	{ 0x38, 0xcc },
-	{ 0x39, 0xd7 },
-	{ 0x3a, 0x4a },
+	{ 0x38, 0xcc }, // VCOM_ADJ1
+	{ 0x39, 0xd7 }, // VCOM_ADJ2
+	{ 0x3a, 0x4a }, // VCOM_ADJ3
 	{ 0x28, 0x40 },
 	{ 0x29, 0x01 },
 	{ 0x2a, 0xdf },
 	{ 0x49, 0x3c },
-	{ 0x91, 0x77 },
-	{ 0x92, 0x77 },
+	{ 0x91, 0x77 }, // EXTPW_CTRL2
+	{ 0x92, 0x77 }, // EXTPW_CTRL3
 	{ 0xa0, 0x55 },
 	{ 0xa1, 0x50 },
 	{ 0xa4, 0x9c },
@@ -94,123 +94,126 @@ static const struct nv3052c_reg nv3052c_panel_regs[] = {
 	{ 0xb8, 0x26 },
 	{ 0xf0, 0x00 },
 	{ 0xf6, 0xc0 },
-	{ 0xff, 0x30 },
-	{ 0xff, 0x52 },
-	{ 0xff, 0x02 },
-	{ 0xb0, 0x0b },
-	{ 0xb1, 0x16 },
-	{ 0xb2, 0x17 },
-	{ 0xb3, 0x2c },
-	{ 0xb4, 0x32 },
-	{ 0xb5, 0x3b },
-	{ 0xb6, 0x29 },
-	{ 0xb7, 0x40 },
-	{ 0xb8, 0x0d },
-	{ 0xb9, 0x05 },
-	{ 0xba, 0x12 },
-	{ 0xbb, 0x10 },
-	{ 0xbc, 0x12 },
-	{ 0xbd, 0x15 },
-	{ 0xbe, 0x19 },
-	{ 0xbf, 0x0e },
-	{ 0xc0, 0x16 },
-	{ 0xc1, 0x0a },
-	{ 0xd0, 0x0c },
-	{ 0xd1, 0x17 },
-	{ 0xd2, 0x14 },
-	{ 0xd3, 0x2e },
-	{ 0xd4, 0x32 },
-	{ 0xd5, 0x3c },
-	{ 0xd6, 0x22 },
-	{ 0xd7, 0x3d },
-	{ 0xd8, 0x0d },
-	{ 0xd9, 0x07 },
-	{ 0xda, 0x13 },
-	{ 0xdb, 0x13 },
-	{ 0xdc, 0x11 },
-	{ 0xdd, 0x15 },
-	{ 0xde, 0x19 },
-	{ 0xdf, 0x10 },
-	{ 0xe0, 0x17 },
-	{ 0xe1, 0x0a },
-	{ 0xff, 0x30 },
-	{ 0xff, 0x52 },
-	{ 0xff, 0x03 },
-	{ 0x00, 0x2a },
-	{ 0x01, 0x2a },
-	{ 0x02, 0x2a },
-	{ 0x03, 0x2a },
-	{ 0x04, 0x61 },
-	{ 0x05, 0x80 },
-	{ 0x06, 0xc7 },
-	{ 0x07, 0x01 },
-	{ 0x08, 0x03 },
-	{ 0x09, 0x04 },
-	{ 0x70, 0x22 },
-	{ 0x71, 0x80 },
-	{ 0x30, 0x2a },
-	{ 0x31, 0x2a },
-	{ 0x32, 0x2a },
-	{ 0x33, 0x2a },
-	{ 0x34, 0x61 },
-	{ 0x35, 0xc5 },
-	{ 0x36, 0x80 },
-	{ 0x37, 0x23 },
-	{ 0x40, 0x03 },
-	{ 0x41, 0x04 },
-	{ 0x42, 0x05 },
-	{ 0x43, 0x06 },
-	{ 0x44, 0x11 },
-	{ 0x45, 0xe8 },
-	{ 0x46, 0xe9 },
-	{ 0x47, 0x11 },
-	{ 0x48, 0xea },
-	{ 0x49, 0xeb },
-	{ 0x50, 0x07 },
-	{ 0x51, 0x08 },
-	{ 0x52, 0x09 },
-	{ 0x53, 0x0a },
-	{ 0x54, 0x11 },
-	{ 0x55, 0xec },
-	{ 0x56, 0xed },
-	{ 0x57, 0x11 },
-	{ 0x58, 0xef },
-	{ 0x59, 0xf0 },
-	{ 0xb1, 0x01 },
-	{ 0xb4, 0x15 },
-	{ 0xb5, 0x16 },
-	{ 0xb6, 0x09 },
-	{ 0xb7, 0x0f },
-	{ 0xb8, 0x0d },
-	{ 0xb9, 0x0b },
-	{ 0xba, 0x00 },
-	{ 0xc7, 0x02 },
-	{ 0xca, 0x17 },
-	{ 0xcb, 0x18 },
-	{ 0xcc, 0x0a },
-	{ 0xcd, 0x10 },
-	{ 0xce, 0x0e },
-	{ 0xcf, 0x0c },
-	{ 0xd0, 0x00 },
-	{ 0x81, 0x00 },
-	{ 0x84, 0x15 },
-	{ 0x85, 0x16 },
-	{ 0x86, 0x10 },
-	{ 0x87, 0x0a },
-	{ 0x88, 0x0c },
-	{ 0x89, 0x0e },
-	{ 0x8a, 0x02 },
-	{ 0x97, 0x00 },
-	{ 0x9a, 0x17 },
-	{ 0x9b, 0x18 },
-	{ 0x9c, 0x0f },
-	{ 0x9d, 0x09 },
-	{ 0x9e, 0x0b },
-	{ 0x9f, 0x0d },
-	{ 0xa0, 0x01 },
-	{ 0xff, 0x30 },
-	{ 0xff, 0x52 },
-	{ 0xff, 0x02 },
+	// EXTC Command set enable, select page 2
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x02 },
+	// Set gray scale voltage to adjust gamma
+	{ 0xb0, 0x0b }, // PGAMVR0
+	{ 0xb1, 0x16 }, // PGAMVR1
+	{ 0xb2, 0x17 }, // PGAMVR2
+	{ 0xb3, 0x2c }, // PGAMVR3
+	{ 0xb4, 0x32 }, // PGAMVR4
+	{ 0xb5, 0x3b }, // PGAMVR5
+	{ 0xb6, 0x29 }, // PGAMPR0
+	{ 0xb7, 0x40 }, // PGAMPR1
+	{ 0xb8, 0x0d }, // PGAMPK0
+	{ 0xb9, 0x05 }, // PGAMPK1
+	{ 0xba, 0x12 }, // PGAMPK2
+	{ 0xbb, 0x10 }, // PGAMPK3
+	{ 0xbc, 0x12 }, // PGAMPK4
+	{ 0xbd, 0x15 }, // PGAMPK5
+	{ 0xbe, 0x19 }, // PGAMPK6
+	{ 0xbf, 0x0e }, // PGAMPK7
+	{ 0xc0, 0x16 }, // PGAMPK8
+	{ 0xc1, 0x0a }, // PGAMPK9
+	// Set gray scale voltage to adjust gamma
+	{ 0xd0, 0x0c }, // NGAMVR0
+	{ 0xd1, 0x17 }, // NGAMVR0
+	{ 0xd2, 0x14 }, // NGAMVR1
+	{ 0xd3, 0x2e }, // NGAMVR2
+	{ 0xd4, 0x32 }, // NGAMVR3
+	{ 0xd5, 0x3c }, // NGAMVR4
+	{ 0xd6, 0x22 }, // NGAMPR0
+	{ 0xd7, 0x3d }, // NGAMPR1
+	{ 0xd8, 0x0d }, // NGAMPK0
+	{ 0xd9, 0x07 }, // NGAMPK1
+	{ 0xda, 0x13 }, // NGAMPK2
+	{ 0xdb, 0x13 }, // NGAMPK3
+	{ 0xdc, 0x11 }, // NGAMPK4
+	{ 0xdd, 0x15 }, // NGAMPK5
+	{ 0xde, 0x19 }, // NGAMPK6
+	{ 0xdf, 0x10 }, // NGAMPK7
+	{ 0xe0, 0x17 }, // NGAMPK8
+	{ 0xe1, 0x0a }, // NGAMPK9
+	// EXTC Command set enable, select page 3
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x03 },
+	// Set various timing settings
+	{ 0x00, 0x2a }, // GIP_VST_1
+	{ 0x01, 0x2a }, // GIP_VST_2
+	{ 0x02, 0x2a }, // GIP_VST_3
+	{ 0x03, 0x2a }, // GIP_VST_4
+	{ 0x04, 0x61 }, // GIP_VST_5
+	{ 0x05, 0x80 }, // GIP_VST_6
+	{ 0x06, 0xc7 }, // GIP_VST_7
+	{ 0x07, 0x01 }, // GIP_VST_8
+	{ 0x08, 0x03 }, // GIP_VST_9
+	{ 0x09, 0x04 }, // GIP_VST_10
+	{ 0x70, 0x22 }, // GIP_ECLK1
+	{ 0x71, 0x80 }, // GIP_ECLK2
+	{ 0x30, 0x2a }, // GIP_CLK_1
+	{ 0x31, 0x2a }, // GIP_CLK_2
+	{ 0x32, 0x2a }, // GIP_CLK_3
+	{ 0x33, 0x2a }, // GIP_CLK_4
+	{ 0x34, 0x61 }, // GIP_CLK_5
+	{ 0x35, 0xc5 }, // GIP_CLK_6
+	{ 0x36, 0x80 }, // GIP_CLK_7
+	{ 0x37, 0x23 }, // GIP_CLK_8
+	{ 0x40, 0x03 }, // GIP_CLKA_1
+	{ 0x41, 0x04 }, // GIP_CLKA_2
+	{ 0x42, 0x05 }, // GIP_CLKA_3
+	{ 0x43, 0x06 }, // GIP_CLKA_4
+	{ 0x44, 0x11 }, // GIP_CLKA_5
+	{ 0x45, 0xe8 }, // GIP_CLKA_6
+	{ 0x46, 0xe9 }, // GIP_CLKA_7
+	{ 0x47, 0x11 }, // GIP_CLKA_8
+	{ 0x48, 0xea }, // GIP_CLKA_9
+	{ 0x49, 0xeb }, // GIP_CLKA_10
+	{ 0x50, 0x07 }, // GIP_CLKB_1
+	{ 0x51, 0x08 }, // GIP_CLKB_2
+	{ 0x52, 0x09 }, // GIP_CLKB_3
+	{ 0x53, 0x0a }, // GIP_CLKB_4
+	{ 0x54, 0x11 }, // GIP_CLKB_5
+	{ 0x55, 0xec }, // GIP_CLKB_6
+	{ 0x56, 0xed }, // GIP_CLKB_7
+	{ 0x57, 0x11 }, // GIP_CLKB_8
+	{ 0x58, 0xef }, // GIP_CLKB_9
+	{ 0x59, 0xf0 }, // GIP_CLKB_10
+	// Map internal GOA signals to GOA output pad
+	{ 0xb1, 0x01 }, // PANELD2U2
+	{ 0xb4, 0x15 }, // PANELD2U5
+	{ 0xb5, 0x16 }, // PANELD2U6
+	{ 0xb6, 0x09 }, // PANELD2U7
+	{ 0xb7, 0x0f }, // PANELD2U8
+	{ 0xb8, 0x0d }, // PANELD2U9
+	{ 0xb9, 0x0b }, // PANELD2U10
+	{ 0xba, 0x00 }, // PANELD2U11
+	{ 0xc7, 0x02 }, // PANELD2U24
+	{ 0xca, 0x17 }, // PANELD2U27
+	{ 0xcb, 0x18 }, // PANELD2U28
+	{ 0xcc, 0x0a }, // PANELD2U29
+	{ 0xcd, 0x10 }, // PANELD2U30
+	{ 0xce, 0x0e }, // PANELD2U31
+	{ 0xcf, 0x0c }, // PANELD2U32
+	{ 0xd0, 0x00 }, // PANELD2U33
+	// Map internal GOA signals to GOA output pad
+	{ 0x81, 0x00 }, // PANELU2D2
+	{ 0x84, 0x15 }, // PANELU2D5
+	{ 0x85, 0x16 }, // PANELU2D6
+	{ 0x86, 0x10 }, // PANELU2D7
+	{ 0x87, 0x0a }, // PANELU2D8
+	{ 0x88, 0x0c }, // PANELU2D9
+	{ 0x89, 0x0e }, // PANELU2D10
+	{ 0x8a, 0x02 }, // PANELU2D11
+	{ 0x97, 0x00 }, // PANELU2D24
+	{ 0x9a, 0x17 }, // PANELU2D27
+	{ 0x9b, 0x18 }, // PANELU2D28
+	{ 0x9c, 0x0f }, // PANELU2D29
+	{ 0x9d, 0x09 }, // PANELU2D30
+	{ 0x9e, 0x0b }, // PANELU2D31
+	{ 0x9f, 0x0d }, // PANELU2D32
+	{ 0xa0, 0x01 }, // PANELU2D33
+	// EXTC Command set enable, select page 2
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x02 },
+	// Unknown registers
 	{ 0x01, 0x01 },
 	{ 0x02, 0xda },
 	{ 0x03, 0xba },
@@ -227,10 +230,10 @@ static const struct nv3052c_reg nv3052c_panel_regs[] = {
 	{ 0x0e, 0x48 },
 	{ 0x0f, 0x38 },
 	{ 0x10, 0x2b },
-	{ 0xff, 0x30 },
-	{ 0xff, 0x52 },
-	{ 0xff, 0x00 },
-	{ 0x36, 0x0a },
+	// EXTC Command set enable, select page 0
+	{ 0xff, 0x30 }, { 0xff, 0x52 }, { 0xff, 0x00 },
+	// Display Access Control
+	{ 0x36, 0x0a }, // bgr = 1, ss = 1, gs = 0
 };
 
 static inline struct nv3052c *to_nv3052c(struct drm_panel *panel)
-- 
2.42.0


