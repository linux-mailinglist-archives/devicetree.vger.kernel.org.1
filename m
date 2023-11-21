Return-Path: <devicetree+bounces-17540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8687F2C56
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE3FE2819AB
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A6C495D7;
	Tue, 21 Nov 2023 11:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="GYYbo9Ql"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84D6A1A2;
	Tue, 21 Nov 2023 03:56:49 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 852916607324;
	Tue, 21 Nov 2023 11:56:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567808;
	bh=XEVVBoXHkUpKz+mYu2BhuD+v7qTvXaba6bcEiQ5SYSg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GYYbo9QldXFXkudLNK5rBpyLOm3Syq0rkmS15Dw5elqhdCQEjLJ8kZzlIAH/9feSQ
	 fKlAppZeczG0BvHBMcVMzFWOKlTqcdLR38gs+mDI8TFzbgqxnvL3+7ke7vlfaIarOE
	 WD4+zgmW1iKsLDiocSUyAnRL7xZwxGw2tTmygpebAcSBxHok6hcBdGsl3UxPU4RhG9
	 8XEQk0x8kv80N5b4iMA7KyObYnlaCUOR78JlP1dzoe2MuBlgaduv01uzC1TJkOv2/K
	 NbRxwgmUpxDmArQm49ItmhnUMfHWIiHPkJZFJP92lDNXXN9DWJqILJhvwM+4X/RRD7
	 +oX/uQYLfW/Jg==
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
Subject: [PATCH v2 16/20] soc: mediatek: mtk-svs: Check if SVS mode is available in the beginning
Date: Tue, 21 Nov 2023 12:56:20 +0100
Message-ID: <20231121115624.56855-17-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
References: <20231121115624.56855-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The svs_init01() and svs_init02() functions are already checking if the
INIT01 and INIT02 modes are available - but that's done in for loops and
for each SVS bank.

Give those a shortcut to get out early if no SVS bank features the
desired init mode: this is especially done to avoid some locking in
the svs_init01(), but also to avoid multiple for loops to check the
same, when no bank supports a specific mode.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index ae0cc22a2941..16a16c5a3f24 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -1400,6 +1400,16 @@ static irqreturn_t svs_isr(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static bool svs_mode_available(struct svs_platform *svsp, u8 mode)
+{
+	int i;
+
+	for (i = 0; i < svsp->bank_max; i++)
+		if (svsp->banks[i].mode_support & mode)
+			return true;
+	return false;
+}
+
 static int svs_init01(struct svs_platform *svsp)
 {
 	struct svs_bank *svsb;
@@ -1408,6 +1418,9 @@ static int svs_init01(struct svs_platform *svsp)
 	int ret = 0, r;
 	u32 opp_freq, opp_vboot, buck_volt, idx, i;
 
+	if (!svs_mode_available(svsp, SVSB_MODE_INIT01))
+		return 0;
+
 	/* Keep CPUs' core power on for svs_init01 initialization */
 	cpuidle_pause_and_lock();
 
@@ -1575,6 +1588,9 @@ static int svs_init02(struct svs_platform *svsp)
 	int ret;
 	u32 idx;
 
+	if (!svs_mode_available(svsp, SVSB_MODE_INIT02))
+		return 0;
+
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
 
-- 
2.42.0


