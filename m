Return-Path: <devicetree+bounces-239595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC1BC6702C
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 03:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 79DC028FDF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 02:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BAB3254A2;
	Tue, 18 Nov 2025 02:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="FOpXtLMa"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AB2279DC8;
	Tue, 18 Nov 2025 02:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763432694; cv=none; b=uhvX14PMNYNGPI4qCvzF9TdVxAlyNEpkGYwNQhNLOTZ/Oao/h0SL7X4uWuYkMZ6Cpv4e+rBe/SWNOdikQMjyPjwvrqrH3WgM2VwJs7PQVbt6DZCkRS1YK90CRFQixutke4c4h3lP/5h8V0DXAOhOTjMXstIDGaoDyEpIsvLuZ1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763432694; c=relaxed/simple;
	bh=BGATxBqCZ+d1hCHK0Nr2UJDkNdU16AUZyqvTQBDI3jE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YHfwAmHAOQa4i9YkjURVJgmgMfMtK88tjYYaW6EU5Ue8fhRP+KqCUqKCP/Dsi/7k6WtJn26EB2vX2qyE4r7dxYKJ9C+kIwrj8RN/x/vhE4QRBw9vLYnTJs7wZ9xdd6t3twsS3pAdFrfyPQoVefqizq0VhhnOORUnFZ0uCJTggzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=FOpXtLMa; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: be57598cc42511f08ac0a938fc7cd336-20251118
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=h9dbBtldMrix2vmwLqkoYfOaGzIlugE4vywk09nOwwE=;
	b=FOpXtLMam94oszILgbhkxm3zWDEO0JMe/Cdhlq/DGwbl03nKpD8sBIhDUKvWMWQYNCWNbpmeqaeLpXbY9AFkY5Z5ZObR0HRGRveWUEWWKQP3o02pMsfgtrVljdTyuTUJudW5u0qu12BzjKfMQCiGqvLlVuxP8rjGfik/Yl9slZw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:087c58b9-d436-496c-8926-2b6d0e37c2fa,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:d095e8ba-0c02-41a0-92a3-94dc7dc7eeca,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|836|888|898,TC:-5,Content:
	0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OS
	I:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: be57598cc42511f08ac0a938fc7cd336-20251118
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <xiandong.wang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1459504425; Tue, 18 Nov 2025 10:24:43 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 18 Nov 2025 10:24:41 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Tue, 18 Nov 2025 10:24:41 +0800
From: Xiandong Wang <xiandong.wang@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Yongqiang Niu
	<yongqiang.niu@mediatek.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<sirius.wang@mediatek.com>, <vince-wl.liu@mediatek.com>,
	<jh.hsu@mediatek.com>, <Project_Global_Chrome_Upstream_Group@mediatek.com>,
	Xiandong Wang <xiandong.wang@mediatek.com>
Subject: [PATCH 1/1] drm/mediatek: Add check framebuffer width and height size before config ovl
Date: Tue, 18 Nov 2025 10:22:49 +0800
Message-ID: <20251118022437.1284-2-xiandong.wang@mediatek.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20251118022437.1284-1-xiandong.wang@mediatek.com>
References: <20251118022437.1284-1-xiandong.wang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

During the execution of the IGT test kms_cursor_edge_walk,
the screen experiences glitches and the hardware hangs.
It was discovered that the framebuffer dimensions (width and height)
provided by IGT to the display driver are zero, leading to
abnormal parameters that cause the hardware to freeze.
Therefore, it is necessary to verify the buffer dimensions
before successfully passing the IGT test.

Signed-off-by: Xiandong Wang <xiandong.wang@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index f1fa1f1c3ff0..bb207aee91f2 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -611,7 +611,7 @@ void mtk_ovl_layer_config(struct device *dev, unsigned int idx,
 	unsigned int ignore_pixel_alpha = 0;
 	unsigned int con;
 
-	if (!pending->enable) {
+	if (!pending->enable || !pending->height || !pending->width) {
 		mtk_ovl_layer_off(dev, idx, cmdq_pkt);
 		return;
 	}
-- 
2.46.0


