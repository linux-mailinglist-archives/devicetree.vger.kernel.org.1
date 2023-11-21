Return-Path: <devicetree+bounces-17536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F32137F2C50
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3015F1C21A11
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7201495C2;
	Tue, 21 Nov 2023 11:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aHceQ1vn"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BDB8184;
	Tue, 21 Nov 2023 03:56:46 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 670666607286;
	Tue, 21 Nov 2023 11:56:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700567805;
	bh=8hsTcNhO6pxrVZKfxLeF/xkr1pZ2hVQ5uEBZ0ICc55k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aHceQ1vnHLfI/3+yTa2b7QL3S0LI+9WlXjTnX+1I+7R6QLQ2voofHoPC3YRlLZ/0w
	 H7Qj10n/A7JdsOcTFietCEnmzPO5wa2+chGKztg03Jm9uIwXTXm7nHSta9DW0GIlbG
	 MKUhgeXEMPqBB7kMjURu14yuNzk8XCzhyQxPTStLQ6QWrpFfpMiRVmat9gcXxawTh8
	 Xz7T5RcX2r8D8/SP/D/c3RuaMTRlsJLJB77T+wbTTwvyLDbSvr4/u03PBLQbYQPBJb
	 l43CIJKgfN4WXpIY7DKLjJLdEZS7hAQwVgWEtlmsUHEgL0v/R8h8C5psmlIlDSKN0i
	 P+sWo4uig3Gkw==
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
Subject: [PATCH v2 13/20] soc: mediatek: mtk-svs: Remove redundant print in svs_get_efuse_data
Date: Tue, 21 Nov 2023 12:56:17 +0100
Message-ID: <20231121115624.56855-14-angelogioacchino.delregno@collabora.com>
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

Callers of svs_get_efuse_data() are already printing an error in case
anything goes wrong, and the error print for nvmem_cell_read() failure
is redundant: remove it.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index cd5064683506..5fd9884dd20f 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -1822,8 +1822,6 @@ static int svs_get_efuse_data(struct svs_platform *svsp,
 
 	*svsp_efuse = nvmem_cell_read(cell, svsp_efuse_max);
 	if (IS_ERR(*svsp_efuse)) {
-		dev_err(svsp->dev, "cannot read \"%s\" efuse: %ld\n",
-			nvmem_cell_name, PTR_ERR(*svsp_efuse));
 		nvmem_cell_put(cell);
 		return PTR_ERR(*svsp_efuse);
 	}
-- 
2.42.0


