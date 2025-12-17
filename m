Return-Path: <devicetree+bounces-247254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03706CC6452
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:35:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C6450303996D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2039315D3C;
	Wed, 17 Dec 2025 06:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="YPyJXAW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29609313545;
	Wed, 17 Dec 2025 06:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765953298; cv=none; b=t71POvEAF2VYu3oDoupWLz2olfQM9/JREQdaClT1/EY0q2Z+VzeQcjYkCetNX13s113mZywJyAwcC5f8j3dM3BIcgmP0Nt847ps9lwln5PFMwfQmVHuZsqFFH3K6teTCQ4hBN9sq3+yQDC6JvT6VBRgLf6ESir/qxfytdZqyxfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765953298; c=relaxed/simple;
	bh=Zhq+hf1n0iuomTfYP5MRMLtfw78DDdWKcLXDOuHG9QI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FMe83TNhuolMkaBdzQELUqzf7LownpK8ncWcwQiUaDuUgPa4vWxJbAxRVTgz8sQkHqVkLy1G5b+HllfFVDqbO4UkiTiMzoJdSYbxT6Gty192UzMfwLuJYpEuzjsxTH04cSIwOPbo5vazIPOWuJBJo2PAFaVeHoM/R6tuvjUeCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=YPyJXAW/; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: 76f7e2cedb1211f0b2bf0b349165d6e0-20251217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=W7qCkDiJi277CRsbGMDpiTs3LY7mUx0Vc/wlc2oMoAk=;
	b=YPyJXAW/C96FKJcyHedPPFGMHNqlxq4tbrOgzTwO2JUJnNk5s63x0DleU0zO+myeoMJwn75FKl/jeQo8IPaSKhbsqtBqPyZYj0pVYnhcvv6gffuLTdls0Zvc02MFECW9rwaJoM6LgG2/Lzf3nbiVtuEHmYqMKVbOsIJznkyccg4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:cbbd70c9-e2c7-406c-a7d4-2c571c11ff6e,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:1ab348aa-6421-45b1-b8b8-e73e3dc9a90f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 76f7e2cedb1211f0b2bf0b349165d6e0-20251217
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 530067056; Wed, 17 Dec 2025 14:34:40 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 14:34:38 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 14:34:38 +0800
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
Subject: [PATCH v2 3/4] soc: mediatek: mtk-devapc: refine devapc clock control
Date: Wed, 17 Dec 2025 14:34:12 +0800
Message-ID: <20251217063429.1157084-4-xiaoshun.xu@mediatek.corp-partner.google.com>
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

Because the new devapc design, devapc clock is controlled by
HW power domains, the control flow of devapc clock is not
necessary, but to maintain compatibility with legacy ICs,
keep this part of code.

Signed-off-by: Xiaoshun Xu <xiaoshun.xu@mediatek.com>
---
 drivers/soc/mediatek/mtk-devapc.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-devapc.c b/drivers/soc/mediatek/mtk-d=
evapc.c
index b91df4cf7a61..61628b941d92 100644
--- a/drivers/soc/mediatek/mtk-devapc.c
+++ b/drivers/soc/mediatek/mtk-devapc.c
@@ -373,16 +373,27 @@ static int mtk_devapc_probe(struct platform_device *p=
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
+               dev_err(ctx->dev, "Cannot get devapc clock from CCF\n");
+               ctx->infra_clk =3D NULL;
+       } else {
+               if (clk_prepare_enable(ctx->infra_clk)) {
+                       ret =3D -EINVAL;
+                       goto err;
+               }
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

@@ -401,6 +412,8 @@ static void mtk_devapc_remove(struct platform_device *p=
dev)

        stop_devapc(ctx);

+       clk_disable_unprepare(ctx->infra_clk);
+
        iounmap(ctx->base);
 }

--
2.45.2


