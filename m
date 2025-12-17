Return-Path: <devicetree+bounces-247253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89861CC6457
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0448F3039FD0
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A407B315D3F;
	Wed, 17 Dec 2025 06:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Ly4FPhxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB19F314A7F;
	Wed, 17 Dec 2025 06:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765953297; cv=none; b=eSopcEbk6IXiKZ2M8sHxH356819Q9Dt/UjYoamnJTR378Tve+H3+qbcIogkVbt5aSWW+1kkKHEVsCZOwgnpyMjZDi3sJj3DX/RMyPSf8/fQr7tg+EaiVn7ZBhybruBEV1nXPfQItmfdtHoSkPdPlC6vHq/Yj+xFH/WaJHtS5ZNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765953297; c=relaxed/simple;
	bh=I60O0gXMPyR9kAZBitzz3X4RdYftgEhOU2VjbxfzZbc=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bvgNSst462cLHhqHSRSyEfizMoQD3u4sUE/2B6tmYusqXnRO3+xGWbYEeWFO0hgGcZ8cOFz7X+4UwTuUZFCFJqBDfZeg7d4iU/pVDcaXbLUH7VN5TMaZtR6mRgvAIpvO5qS5kN92JKMOxUKa99N0iWzI9lPMr3rmNoIFscSg6hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Ly4FPhxG; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: 777ca824db1211f0b2bf0b349165d6e0-20251217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=U26zkVH5d+38dGjc9TpfhT1XgnH0NEu83IWC3L9CNRg=;
	b=Ly4FPhxGFVkV7/oLlmXX5lTQRZjLKr1XIP7GK8LrChOUWPqw1vKf4BoO7ewMvEUtoThtHaRbAFdquuenUJZa6ff+WZyo7wlQgPowTu+yqZmnBd5z6uvh7xusItKPCANC3vEY3ktRA9Q4SRlsC+mX3iXGzhz+WclJNB1PYLB3q2Q=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:22e063e4-85b1-4bf1-a664-a1a3facdc503,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:b93288c6-8a73-4871-aac2-7b886d064f36,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 777ca824db1211f0b2bf0b349165d6e0-20251217
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2129783388; Wed, 17 Dec 2025 14:34:40 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 14:34:39 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 14:34:39 +0800
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
Subject: [PATCH v2 4/4] soc: mediatek: mtk-devapc: refine devapc interrupt handler
Date: Wed, 17 Dec 2025 14:34:13 +0800
Message-ID: <20251217063429.1157084-5-xiaoshun.xu@mediatek.corp-partner.google.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251217063429.1157084-1-xiaoshun.xu@mediatek.corp-partner.google.com>
References: <20251217063429.1157084-1-xiaoshun.xu@mediatek.corp-partner.google.com>
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


From: Xiaoshun Xu <xiaoshun.xu@mediatek.com>

Because the violation IRQ uses a while loop, it might cause the
system to remain in the interrupt handler indefinitely. We are
currently optimizing this part of the process to handle only 20
violations for debug violation issues, and then exit the loop

Signed-off-by: Xiaoshun Xu <xiaoshun.xu@mediatek.com>
---
 drivers/soc/mediatek/mtk-devapc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-devapc.c b/drivers/soc/mediatek/mtk-d=
evapc.c
index 61628b941d92..ea38086c5554 100644
--- a/drivers/soc/mediatek/mtk-devapc.c
+++ b/drivers/soc/mediatek/mtk-devapc.c
@@ -12,6 +12,7 @@
 #include <linux/of_irq.h>
 #include <linux/of_address.h>

+#define MAX_VIO_NUM 20
 #define VIO_MOD_TO_REG_IND(m)  ((m) / 32)
 #define VIO_MOD_TO_REG_OFF(m)  ((m) % 32)

@@ -234,13 +235,18 @@ static void devapc_extract_vio_dbg(struct mtk_devapc_=
context *ctx)
  */
 static irqreturn_t devapc_violation_irq(int irq_number, void *data)
 {
+       u32 vio_num =3D 0;
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


