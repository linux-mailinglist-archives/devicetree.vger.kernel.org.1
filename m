Return-Path: <devicetree+bounces-16526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9837EEEEF
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:42:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF2B01C2089A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EEEC15EB2;
	Fri, 17 Nov 2023 09:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BeE7QsE8"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEEF3D4E;
	Fri, 17 Nov 2023 01:42:37 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E54486607391;
	Fri, 17 Nov 2023 09:42:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700214156;
	bh=N42OlgtNsTN3hPgxRyKN1KLxCwyU6QyhLsWFXT5/rjk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BeE7QsE8mOzNICHzweqGtHYpDl3Mo+qrNevUZAS7+otN2WqGaRr56A4IodFQKPQKV
	 lxI4zN341kiFSPYwNJCrgB6v6LfYrFps1IhE1jboetwf98/Mt97HDCjwdPqpHBXNat
	 T0/sMyyigNW1jWSsQaSAyA8SwAGLshmybu3pqCKRNNZoCmxCzVVzWNufcJUkMYygIm
	 I1+Hgjax8ZxQBvH+luaxCxOAayZLltpGFnpcdRAmiJKBp9wesvVr1K5ieDaHHiEGhJ
	 eWGTw9gxM0PnRshD79D2HFPuN/GCjaPpMf0Q26ytkNtL5ptZKP087F0P0FUx/mPoWL
	 SAcU9NEte1wzA==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH v1 02/20] soc: mediatek: mtk-svs: Subtract offset from regs_v2 to avoid conflict
Date: Fri, 17 Nov 2023 10:42:10 +0100
Message-ID: <20231117094228.40013-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
References: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The svs_regs_v2 array of registers was offsetted by 0xc00 because the
SVS node was supposed to have the same iostart as the thermal sensors.
That's wrong for two reasons:
 1. Two different devices cannot have the same iostart in devicetree,
    as those would technically be the same device otherwise; and
 2. SVS and Thermal Sensor (be it LVTS or AUXADC thermal) are not the
    same IP, and those two do obviously have a different iospace.

Even though there already are users of this register array, the only
one that declares a devicetree node for SVS is MT8183 - but it never
actually worked because the "tzts1" thermal zone missed thermal trips,
hence this driver's probe always failed on that SoC.

Knowing this - it is safe to say that keeping compatibility with older
device trees is pointless, hence simply subtract the 0xc00 offset from
the register offset array.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 108 ++++++++++++++++-----------------
 1 file changed, 54 insertions(+), 54 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index 0f7cfbe5630b..416e9b313c0a 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -256,60 +256,60 @@ enum svs_reg_index {
 };
 
 static const u32 svs_regs_v2[] = {
-	[DESCHAR]		= 0xc00,
-	[TEMPCHAR]		= 0xc04,
-	[DETCHAR]		= 0xc08,
-	[AGECHAR]		= 0xc0c,
-	[DCCONFIG]		= 0xc10,
-	[AGECONFIG]		= 0xc14,
-	[FREQPCT30]		= 0xc18,
-	[FREQPCT74]		= 0xc1c,
-	[LIMITVALS]		= 0xc20,
-	[VBOOT]			= 0xc24,
-	[DETWINDOW]		= 0xc28,
-	[CONFIG]		= 0xc2c,
-	[TSCALCS]		= 0xc30,
-	[RUNCONFIG]		= 0xc34,
-	[SVSEN]			= 0xc38,
-	[INIT2VALS]		= 0xc3c,
-	[DCVALUES]		= 0xc40,
-	[AGEVALUES]		= 0xc44,
-	[VOP30]			= 0xc48,
-	[VOP74]			= 0xc4c,
-	[TEMP]			= 0xc50,
-	[INTSTS]		= 0xc54,
-	[INTSTSRAW]		= 0xc58,
-	[INTEN]			= 0xc5c,
-	[CHKINT]		= 0xc60,
-	[CHKSHIFT]		= 0xc64,
-	[STATUS]		= 0xc68,
-	[VDESIGN30]		= 0xc6c,
-	[VDESIGN74]		= 0xc70,
-	[DVT30]			= 0xc74,
-	[DVT74]			= 0xc78,
-	[AGECOUNT]		= 0xc7c,
-	[SMSTATE0]		= 0xc80,
-	[SMSTATE1]		= 0xc84,
-	[CTL0]			= 0xc88,
-	[DESDETSEC]		= 0xce0,
-	[TEMPAGESEC]		= 0xce4,
-	[CTRLSPARE0]		= 0xcf0,
-	[CTRLSPARE1]		= 0xcf4,
-	[CTRLSPARE2]		= 0xcf8,
-	[CTRLSPARE3]		= 0xcfc,
-	[CORESEL]		= 0xf00,
-	[THERMINTST]		= 0xf04,
-	[INTST]			= 0xf08,
-	[THSTAGE0ST]		= 0xf0c,
-	[THSTAGE1ST]		= 0xf10,
-	[THSTAGE2ST]		= 0xf14,
-	[THAHBST0]		= 0xf18,
-	[THAHBST1]		= 0xf1c,
-	[SPARE0]		= 0xf20,
-	[SPARE1]		= 0xf24,
-	[SPARE2]		= 0xf28,
-	[SPARE3]		= 0xf2c,
-	[THSLPEVEB]		= 0xf30,
+	[DESCHAR]		= 0x00,
+	[TEMPCHAR]		= 0x04,
+	[DETCHAR]		= 0x08,
+	[AGECHAR]		= 0x0c,
+	[DCCONFIG]		= 0x10,
+	[AGECONFIG]		= 0x14,
+	[FREQPCT30]		= 0x18,
+	[FREQPCT74]		= 0x1c,
+	[LIMITVALS]		= 0x20,
+	[VBOOT]			= 0x24,
+	[DETWINDOW]		= 0x28,
+	[CONFIG]		= 0x2c,
+	[TSCALCS]		= 0x30,
+	[RUNCONFIG]		= 0x34,
+	[SVSEN]			= 0x38,
+	[INIT2VALS]		= 0x3c,
+	[DCVALUES]		= 0x40,
+	[AGEVALUES]		= 0x44,
+	[VOP30]			= 0x48,
+	[VOP74]			= 0x4c,
+	[TEMP]			= 0x50,
+	[INTSTS]		= 0x54,
+	[INTSTSRAW]		= 0x58,
+	[INTEN]			= 0x5c,
+	[CHKINT]		= 0x60,
+	[CHKSHIFT]		= 0x64,
+	[STATUS]		= 0x68,
+	[VDESIGN30]		= 0x6c,
+	[VDESIGN74]		= 0x70,
+	[DVT30]			= 0x74,
+	[DVT74]			= 0x78,
+	[AGECOUNT]		= 0x7c,
+	[SMSTATE0]		= 0x80,
+	[SMSTATE1]		= 0x84,
+	[CTL0]			= 0x88,
+	[DESDETSEC]		= 0xe0,
+	[TEMPAGESEC]		= 0xe4,
+	[CTRLSPARE0]		= 0xf0,
+	[CTRLSPARE1]		= 0xf4,
+	[CTRLSPARE2]		= 0xf8,
+	[CTRLSPARE3]		= 0xfc,
+	[CORESEL]		= 0x300,
+	[THERMINTST]		= 0x304,
+	[INTST]			= 0x308,
+	[THSTAGE0ST]		= 0x30c,
+	[THSTAGE1ST]		= 0x310,
+	[THSTAGE2ST]		= 0x314,
+	[THAHBST0]		= 0x318,
+	[THAHBST1]		= 0x31c,
+	[SPARE0]		= 0x320,
+	[SPARE1]		= 0x324,
+	[SPARE2]		= 0x328,
+	[SPARE3]		= 0x32c,
+	[THSLPEVEB]		= 0x330,
 };
 
 /**
-- 
2.42.0


