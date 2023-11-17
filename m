Return-Path: <devicetree+bounces-16538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 600567EEF00
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBD341F26CB4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8BC171AC;
	Fri, 17 Nov 2023 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="Z+fSvUnL"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 070B6171F;
	Fri, 17 Nov 2023 01:42:49 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1AC936607392;
	Fri, 17 Nov 2023 09:42:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700214167;
	bh=8hsTcNhO6pxrVZKfxLeF/xkr1pZ2hVQ5uEBZ0ICc55k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z+fSvUnL1gj75KYI3HpvktkOA9JG35A6afAdiB0GMjeNvERRDLUU9sxaYdF7SLqXF
	 PM4N6PFFRa/PIZIpbo6APiwiOFlgOt/G+3TPzbMJ9UhEehZgsLQL2ryhLSNaum7mmf
	 57nD7DDKll2bNedL0eYtKI4fDtsr4rV3jE1JD2qL7Bn3hr3fq5L3KEYSVX95KISL7i
	 DBs7UBkNsSwRjXTElIj0tvSe8PRhHzcPNdTYLxgEhopjq6IdkyklMHvkPi31XGN+Bp
	 LTPgFFXwD7EZTm7gDPWg+0L6/m/twAJCDzS4sjP7Daha6nuUgqLupaQ5qIGT2njfwU
	 bVYx39Hy2l/fg==
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
Subject: [PATCH v1 13/20] soc: mediatek: mtk-svs: Remove redundant print in svs_get_efuse_data
Date: Fri, 17 Nov 2023 10:42:21 +0100
Message-ID: <20231117094228.40013-14-angelogioacchino.delregno@collabora.com>
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


