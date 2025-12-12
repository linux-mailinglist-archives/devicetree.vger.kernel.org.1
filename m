Return-Path: <devicetree+bounces-246010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C256CB7BD1
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:15:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 918833020CCA
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3830D29D29B;
	Fri, 12 Dec 2025 03:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="spV+eO7e"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573832882B2;
	Fri, 12 Dec 2025 03:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509311; cv=none; b=CYNXRvSmmicYlwL/uxuHRiPqY/VRjYxTxc2seFzlkiV/Y2ABHlT/rUpZ24PV61dHSG6d216TJQbPpEuULhwtFjSKvklM4mfcArbJW5w49hsTZoXsVJE30wCp89W+HuUsyDTn9PRUTqGddyM2yZk+yCLRgyexkF0Wg8V3dpHj3AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509311; c=relaxed/simple;
	bh=BwBal1u0AakRralxN8mjYxRZRztkAhurCw+vOI6n9Hs=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OZTD3k8RlmU/BhelDH7ErVB+ZLy81jVN1cPi/uGJLLZBN8M+RPDNIOtbpmYFa+F/Gg2c3Zo/C7hlfqF7JFiphJFQeMabgderCqhSJfllvQ6/ea6tsyUTL5anmxOUcBdBq+myPjCR9qV+S6zGCvM3zYuDM4w8zTCFGoxP1We4Y30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=spV+eO7e; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: c12bb270d70811f0b2bf0b349165d6e0-20251212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=kcV6NEcq51kyXUtDsmy9sHqc1AYH7sK3cB59XxnrfG8=;
	b=spV+eO7efJ5HgDQNL/U/3IDbqbzSl38x5Acm8czmuoPIGYGMCPov3UnnWUnM/cxw8cwlp/EqXC8Y1OXkzVv4f51Z1uQCHqyjQsAsYTKw97kRy3DSevKrCJth1IYu8nkgYxm4iur64T5zk/vkjBxtNL/pX439bgLoH0Nh5D6HCv4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:daf97a40-8d05-4294-89a4-671db1e73a0c,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:ab655ac6-8a73-4871-aac2-7b886d064f36,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: c12bb270d70811f0b2bf0b349165d6e0-20251212
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1063764658; Fri, 12 Dec 2025 11:15:04 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 12 Dec 2025 11:15:03 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Fri, 12 Dec 2025 11:15:03 +0800
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
Subject: [PATCH 3/4] soc: mediatek: mtk-devapc: refine DEVAPC clock control
Date: Fri, 12 Dec 2025 11:13:44 +0800
Message-ID: <20251212031450.489128-4-xiaoshun.xu@mediatek.corp-partner.google.com>
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

Because the new DEVAPC design, DEVAPC clock is controlled by
HW power domains, the control flow of DEVAPC clock is not
necessary, but to maintain compatibility with legacy ICs,
keep this part of code.

Signed-off-by: xiaoshun.xu <xiaoshun.xu@mediatek.com>
---
 drivers/soc/mediatek/mtk-devapc.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-devapc.c b/drivers/soc/mediatek/mtk-d=
evapc.c
index 6dbec4016a24..18964d82ff08 100644
--- a/drivers/soc/mediatek/mtk-devapc.c
+++ b/drivers/soc/mediatek/mtk-devapc.c
@@ -359,16 +359,25 @@ static int mtk_devapc_probe(struct platform_device *p=
dev)
                goto err;
        }

-       ctx->infra_clk =3D devm_clk_get_enabled(&pdev->dev, "devapc-infra-c=
lock");
+       /*
+        * The new design of DAPC clock is controlled by HW power domains,
+        * making it unnecessary to provide the clock control driver.
+        */
+       ctx->infra_clk =3D devm_clk_get_optional(&pdev->dev, "devapc-infra-=
clock");
        if (IS_ERR(ctx->infra_clk)) {
-               ret =3D -EINVAL;
-               goto err;
+               dev_dbg(ctx->dev, "Cannot get devapc clock from CCF\n");
+               ctx->infra_clk =3D NULL;
+       } else {
+               if (clk_prepare_enable(ctx->infra_clk))
+                       return -EINVAL;
        }

        ret =3D devm_request_irq(&pdev->dev, devapc_irq, devapc_violation_i=
rq,
-                              IRQF_TRIGGER_NONE, "devapc", ctx);
-       if (ret)
+                              IRQF_TRIGGER_NONE | IRQF_SHARED, "devapc", c=
tx);
+       if (ret) {
+               clk_disable_unprepare(ctx->infra_clk);
                goto err;
+       }

        platform_set_drvdata(pdev, ctx);

@@ -387,6 +396,8 @@ static void mtk_devapc_remove(struct platform_device *p=
dev)

        stop_devapc(ctx);

+       clk_disable_unprepare(ctx->infra_clk);
+
        iounmap(ctx->base);
 }

--
2.45.2


