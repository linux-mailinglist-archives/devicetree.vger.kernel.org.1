Return-Path: <devicetree+bounces-246012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02486CB7BE0
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE3203029F7A
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30F6B2C325B;
	Fri, 12 Dec 2025 03:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="GmL1LiFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98802BE02A;
	Fri, 12 Dec 2025 03:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509322; cv=none; b=I8r4o92flTYGNwc8Dr1cPH9qf6f9eyp1yFDaqJ8qTbyqdDipFdeT5s9/YQuJjcrEKpB7gvh6aANIj426j8CQD41KFtDC6d33A7vv2SIuss9j6lKhnsIGYI+K7H9qHWrPWNM3z2l7X523fmy4B1Ak7QpfLDlxgm8d1QxnY9IXe2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509322; c=relaxed/simple;
	bh=dS04nuxx+8yVH7wR2r8OWSN7II0lVE9ggH6hlNox+RM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n6Ei6NLKfw9swQFZxgbEVLLP8/6W2xdtKev8U0KCCGPjDJ+tpv+0JQwXjc4t/Ve8Bz1A/V07f8yJbtiTfeArAxyibh2uHIFdd3EBC18VqbSawApx+OIYIxG8TeV2bVwPqkVGvXvkd9bGOsJf5h5LgP0EL+5Z4GJXa8bVOKJeppA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=GmL1LiFF; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: c200d3ecd70811f0b2bf0b349165d6e0-20251212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=uP6o3k14zjZ9k2pmrlwCKibulk4puvnqf209+mWCUco=;
	b=GmL1LiFFcnq/pacUcICbjX92ZIZTa76QGy0Kffivce0HMeiD+C32zHdFnryViLF3EshaNAIEQkNQZeNl/7EJFYTNWamXssKJpyKi3BaJLOxX+/9Pxkzny2R/WryjpocCOydgP5XMeOs6CpHBg/fmuV6SvtW/9y3fzeI8mvdI1GQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:e71db7de-ec3d-43dc-a0a4-032c71405cda,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:d9655ac6-8a73-4871-aac2-7b886d064f36,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: c200d3ecd70811f0b2bf0b349165d6e0-20251212
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 719589274; Fri, 12 Dec 2025 11:15:06 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 12 Dec 2025 11:15:04 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Fri, 12 Dec 2025 11:15:04 +0800
From: Xiaoshun Xu <xiaoshun.xu@mediatek.corp-partner.google.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Xiaoshun Xu
	<xiaoshun.xu@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	Sirius Wang <sirius.wang@mediatek.com>, Vince-wl Liu
	<vince-wl.liu@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH 4/4] soc: mediatek: mtk-devapc: refine DEVAPC irq handler
Date: Fri, 12 Dec 2025 11:13:45 +0800
Message-ID: <20251212031450.489128-5-xiaoshun.xu@mediatek.corp-partner.google.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251212031450.489128-1-xiaoshun.xu@mediatek.corp-partner.google.com>
References: <20251212031450.489128-1-xiaoshun.xu@mediatek.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain


External email : Please do not click links or open attachments until you ha=
ve verified the sender or the content.


From: "xiaoshun.xu" <xiaoshun.xu@mediatek.com>

Because the violation IRQ uses a while loop, it might cause the
system to remain in the interrupt handler indefinitely. We are
currently optimizing this part of the process to handle only 20
violations for debug violation issues, and then exit the loop

Signed-off-by: xiaoshun.xu <xiaoshun.xu@mediatek.com>
---
 drivers/soc/mediatek/mtk-devapc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-devapc.c b/drivers/soc/mediatek/mtk-d=
evapc.c
index 18964d82ff08..30b7ee8b880a 100644
--- a/drivers/soc/mediatek/mtk-devapc.c
+++ b/drivers/soc/mediatek/mtk-devapc.c
@@ -15,6 +15,8 @@
 #define VIO_MOD_TO_REG_IND(m)  ((m) / 32)
 #define VIO_MOD_TO_REG_OFF(m)  ((m) % 32)

+#define MAX_VIO_NUM 20
+
 struct mtk_devapc_vio_dbgs {
        union {
                u32 vio_dbg0;
@@ -234,13 +236,18 @@ static void devapc_extract_vio_dbg(struct mtk_devapc_=
context *ctx)
  */
 static irqreturn_t devapc_violation_irq(int irq_number, void *data)
 {
+       unsigned int vio_num =3D 0;
        struct mtk_devapc_context *ctx =3D data;

-       while (devapc_sync_vio_dbg(ctx))
+       mask_module_irq(ctx, true);
+
+       for (vio_num =3D 0; (vio_num < MAX_VIO_NUM) && (devapc_sync_vio_dbg=
(ctx)); ++vio_num)
                devapc_extract_vio_dbg(ctx);

        clear_vio_status(ctx);

+       mask_module_irq(ctx, false);
+
        return IRQ_HANDLED;
 }

--
2.45.2


