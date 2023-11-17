Return-Path: <devicetree+bounces-16541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C73CF7EEF06
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:43:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4CA8FB20B97
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601D915EAC;
	Fri, 17 Nov 2023 09:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="F5IXmwIy"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A787199D;
	Fri, 17 Nov 2023 01:42:53 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 27FDE6607390;
	Fri, 17 Nov 2023 09:42:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700214172;
	bh=P8X/98SRN6b58tyqRku7rqXinlOozOu5V7sRiK56qy0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F5IXmwIy38/fn23gDLxutrx/u8ezb9RKv66d3sxgwtwtqHzmo5NVoIKEFJvkwXZoc
	 FqNAkMqP5dhJBy04ctNGA9n6ZOiqEuw1KsuImURIMDXVzpt+SXtnum1z19F7n5TWTb
	 /GczntLx6lys/5PZ5802zi+qaWDgsb63dQHBQCfgsop9E+nKjH1Le7mkg4MyOZhNpB
	 f7LNImqXvXJL17GXLDDAXs2jrV/NPq8OFTvQ2UlKJ9PloDib+PwcP8esUHpWWzkzfy
	 dGTFjbgQ36BeuOramFMBJEcFqG0+xK5L3Uvxrj6uoNLgFI7aZyYEEhJVyHQ42TZK1t
	 8UnQ4cH+2eJuA==
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
Subject: [PATCH v1 17/20] soc: mediatek: mtk-svs: Use ULONG_MAX to compare floor frequency
Date: Fri, 17 Nov 2023 10:42:25 +0100
Message-ID: <20231117094228.40013-18-angelogioacchino.delregno@collabora.com>
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

The `freq` variable is of type unsigned long and, even though it does
currently work with u32 because no frequency is higher than U32_MAX,
it is not guaranteed that in the future we will see one.
Initialize the freq variable with ULONG_MAX instead of U32_MAX.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index 16a16c5a3f24..df39e7430ba9 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -1804,7 +1804,7 @@ static int svs_bank_resource_setup(struct svs_platform *svsp)
 			return count;
 		}
 
-		for (i = 0, freq = U32_MAX; i < svsb->opp_count; i++, freq--) {
+		for (i = 0, freq = ULONG_MAX; i < svsb->opp_count; i++, freq--) {
 			opp = dev_pm_opp_find_freq_floor(svsb->opp_dev, &freq);
 			if (IS_ERR(opp)) {
 				dev_err(svsb->dev, "cannot find freq = %ld\n",
-- 
2.42.0


