Return-Path: <devicetree+bounces-246011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5500DCB7BD7
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F956304484B
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CE92C028A;
	Fri, 12 Dec 2025 03:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="hruJY3+c"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9598B28727F;
	Fri, 12 Dec 2025 03:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509313; cv=none; b=IoVShDOXh4auKrk6mLDpltVYB5sJy867BJSye49ve1ZnztVbR0AvzwFhfBgVLOB0+iSIUQGnfbVoEvVDb5bXhQGwJJZqLoKljpH0TMeTIDrsdD7Bviezh7BVj/ucPIimxn2CRxNBuhX2VDqWzCOplD8Vc6b8HxjOySWgFMMTd0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509313; c=relaxed/simple;
	bh=J37NGfrnJF007OL6N3pSxPGh3I1kYDLVPZe0Uat/B8I=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sWG2L3FFjXdN0Kj7VhU8aEXdZJoD1DmMo+pQ+ylkLumQSujY1EIfGKFPHL4NcnlcapNJIxFiBunQxiaRO9va58+CXg2qJMN7TAZ0HBdf051X8c/IBBOQrafHBYKvxl4VrMyqoX3449cwPkZXiD6jgqCntlr6TbM7ryhif2Nhfh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=hruJY3+c; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: c087e03cd70811f0b33aeb1e7f16c2b6-20251212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=TuyDECpbExg+nEmnOMQ7o3o65WKLu/fmobzAQ2nsiYs=;
	b=hruJY3+cgW5kwovUVPS7JKjzM741fiRT2bqCUQqVr+OenIrHcagEtxUbMjmt4p336ksgU2ltEvleaW3hQa+q56q2FEunnfCtlOb8RBsjqRVHE+5EKE2Bam5CjWCmRKt2yYgMOG/EWcFBrhKdEv3Ld93DpuAZ3dycLojn4AbGSFM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:3f4996da-66f6-4fed-be02-f194818c50cd,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:dff71aaa-6421-45b1-b8b8-e73e3dc9a90f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|888|898,TC:-5,Content:0|15
	|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,
	OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: c087e03cd70811f0b33aeb1e7f16c2b6-20251212
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw02.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1138972844; Fri, 12 Dec 2025 11:15:03 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 12 Dec 2025 11:15:02 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Fri, 12 Dec 2025 11:15:02 +0800
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
Subject: [PATCH 2/4] soc: mediatek: mtk-devapc: Add support for MT8189 DEVAPC
Date: Fri, 12 Dec 2025 11:13:43 +0800
Message-ID: <20251212031450.489128-3-xiaoshun.xu@mediatek.corp-partner.google.com>
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

Add support for MT8189 DEVAPC, DEVAPC debug registers have new version,
so refine the structure of devapc_regs_ofs_xxxx to devapc_regs_ofs_verX,
and rename the infra_base to base in mtk_devapc_context because DEVAPC
not only access the infra_base to dump debug information when violation
happens

Signed-off-by: xiaoshun.xu <xiaoshun.xu@mediatek.com>
---
 drivers/soc/mediatek/mtk-devapc.c | 146 +++++++++++++++++++++++-------
 1 file changed, 114 insertions(+), 32 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-devapc.c b/drivers/soc/mediatek/mtk-d=
evapc.c
index f54c966138b5..6dbec4016a24 100644
--- a/drivers/soc/mediatek/mtk-devapc.c
+++ b/drivers/soc/mediatek/mtk-devapc.c
@@ -26,9 +26,19 @@ struct mtk_devapc_vio_dbgs {
                        u32 addr_h:4;
                        u32 resv:4;
                } dbg0_bits;
+
+               struct {
+                       u32 dmnid:6;
+                       u32 vio_w:1;
+                       u32 vio_r:1;
+                       u32 addr_h:4;
+                       u32 resv:20;
+               } dbg0_bits_ver2;
        };

        u32 vio_dbg1;
+       u32 vio_dbg2;
+       u32 vio_dbg3;
 };

 struct mtk_devapc_regs_ofs {
@@ -37,6 +47,8 @@ struct mtk_devapc_regs_ofs {
        u32 vio_sta_offset;
        u32 vio_dbg0_offset;
        u32 vio_dbg1_offset;
+       u32 vio_dbg2_offset;
+       u32 vio_dbg3_offset;
        u32 apc_con_offset;
        u32 vio_shift_sta_offset;
        u32 vio_shift_sel_offset;
@@ -44,16 +56,20 @@ struct mtk_devapc_regs_ofs {
 };

 struct mtk_devapc_data {
-       /* numbers of violation index */
-       u32 vio_idx_num;
+       u32 version;
+       /* Default numbers of violation index */
+       u32 default_vio_idx_num;
        const struct mtk_devapc_regs_ofs *regs_ofs;
 };

 struct mtk_devapc_context {
        struct device *dev;
-       void __iomem *infra_base;
+       void __iomem *base;
        struct clk *infra_clk;
        const struct mtk_devapc_data *data;
+
+       /* numbers of violation index */
+       u32 vio_idx_num;
 };

 static void clear_vio_status(struct mtk_devapc_context *ctx)
@@ -61,12 +77,12 @@ static void clear_vio_status(struct mtk_devapc_context =
*ctx)
        void __iomem *reg;
        int i;

-       reg =3D ctx->infra_base + ctx->data->regs_ofs->vio_sta_offset;
+       reg =3D ctx->base + ctx->data->regs_ofs->vio_sta_offset;

-       for (i =3D 0; i < VIO_MOD_TO_REG_IND(ctx->data->vio_idx_num) - 1; i=
++)
+       for (i =3D 0; i < VIO_MOD_TO_REG_IND(ctx->vio_idx_num - 1); i++)
                writel(GENMASK(31, 0), reg + 4 * i);

-       writel(GENMASK(VIO_MOD_TO_REG_OFF(ctx->data->vio_idx_num) - 1, 0),
+       writel(GENMASK(VIO_MOD_TO_REG_OFF(ctx->vio_idx_num - 1), 0),
               reg + 4 * i);
 }

@@ -76,22 +92,22 @@ static void mask_module_irq(struct mtk_devapc_context *=
ctx, bool mask)
        u32 val;
        int i;

-       reg =3D ctx->infra_base + ctx->data->regs_ofs->vio_mask_offset;
+       reg =3D ctx->base + ctx->data->regs_ofs->vio_mask_offset;

        if (mask)
                val =3D GENMASK(31, 0);
        else
                val =3D 0;

-       for (i =3D 0; i < VIO_MOD_TO_REG_IND(ctx->data->vio_idx_num) - 1; i=
++)
+       for (i =3D 0; i < VIO_MOD_TO_REG_IND(ctx->vio_idx_num - 1); i++)
                writel(val, reg + 4 * i);

        val =3D readl(reg + 4 * i);
        if (mask)
-               val |=3D GENMASK(VIO_MOD_TO_REG_OFF(ctx->data->vio_idx_num)=
 - 1,
+               val |=3D GENMASK(VIO_MOD_TO_REG_OFF(ctx->vio_idx_num - 1),
                               0);
        else
-               val &=3D ~GENMASK(VIO_MOD_TO_REG_OFF(ctx->data->vio_idx_num=
) - 1,
+               val &=3D ~GENMASK(VIO_MOD_TO_REG_OFF(ctx->vio_idx_num - 1),
                                0);

        writel(val, reg + 4 * i);
@@ -118,11 +134,11 @@ static int devapc_sync_vio_dbg(struct mtk_devapc_cont=
ext *ctx)
        int ret;
        u32 val;

-       pd_vio_shift_sta_reg =3D ctx->infra_base +
+       pd_vio_shift_sta_reg =3D ctx->base +
                               ctx->data->regs_ofs->vio_shift_sta_offset;
-       pd_vio_shift_sel_reg =3D ctx->infra_base +
+       pd_vio_shift_sel_reg =3D ctx->base +
                               ctx->data->regs_ofs->vio_shift_sel_offset;
-       pd_vio_shift_con_reg =3D ctx->infra_base +
+       pd_vio_shift_con_reg =3D ctx->base +
                               ctx->data->regs_ofs->vio_shift_con_offset;

        /* Find the minimum shift group which has violation */
@@ -163,22 +179,52 @@ static void devapc_extract_vio_dbg(struct mtk_devapc_=
context *ctx)
        struct mtk_devapc_vio_dbgs vio_dbgs;
        void __iomem *vio_dbg0_reg;
        void __iomem *vio_dbg1_reg;
+       void __iomem *vio_dbg2_reg;
+       void __iomem *vio_dbg3_reg;
+       u32 vio_addr_l, vio_addr_h, bus_id, domain_id;
+       u32 vio_w, vio_r;
+       u64 vio_addr;

-       vio_dbg0_reg =3D ctx->infra_base + ctx->data->regs_ofs->vio_dbg0_of=
fset;
-       vio_dbg1_reg =3D ctx->infra_base + ctx->data->regs_ofs->vio_dbg1_of=
fset;
+       vio_dbg0_reg =3D ctx->base + ctx->data->regs_ofs->vio_dbg0_offset;
+       vio_dbg1_reg =3D ctx->base + ctx->data->regs_ofs->vio_dbg1_offset;
+       vio_dbg2_reg =3D ctx->base + ctx->data->regs_ofs->vio_dbg2_offset;
+       vio_dbg3_reg =3D ctx->base + ctx->data->regs_ofs->vio_dbg3_offset;

        vio_dbgs.vio_dbg0 =3D readl(vio_dbg0_reg);
        vio_dbgs.vio_dbg1 =3D readl(vio_dbg1_reg);
+       if (ctx->data->version >=3D 2U)
+               vio_dbgs.vio_dbg2 =3D readl(vio_dbg2_reg);
+       if (ctx->data->version =3D=3D 3U)
+               vio_dbgs.vio_dbg3 =3D readl(vio_dbg3_reg);
+
+       if (ctx->data->version =3D=3D 1U) {
+               /* arch version 1 */
+               bus_id =3D vio_dbgs.dbg0_bits.mstid;
+               vio_addr =3D vio_dbgs.vio_dbg1;
+               domain_id =3D vio_dbgs.dbg0_bits.dmnid;
+               vio_w =3D vio_dbgs.dbg0_bits.vio_w;
+               vio_r =3D vio_dbgs.dbg0_bits.vio_r;
+       } else {
+               /* arch version 2 & 3 */
+               bus_id =3D vio_dbgs.vio_dbg1;
+
+               vio_addr_l =3D vio_dbgs.vio_dbg2;
+               vio_addr_h =3D ctx->data->version =3D=3D 2U ? vio_dbgs.dbg0=
_bits_ver2.addr_h :
+                                                       vio_dbgs.vio_dbg3;
+               vio_addr =3D ((u64)vio_addr_h << 32) + vio_addr_l;
+               domain_id =3D vio_dbgs.dbg0_bits_ver2.dmnid;
+               vio_w =3D vio_dbgs.dbg0_bits_ver2.vio_w;
+               vio_r =3D vio_dbgs.dbg0_bits_ver2.vio_r;
+       }

        /* Print violation information */
-       if (vio_dbgs.dbg0_bits.vio_w)
+       if (vio_w)
                dev_info(ctx->dev, "Write Violation\n");
-       else if (vio_dbgs.dbg0_bits.vio_r)
+       else if (vio_r)
                dev_info(ctx->dev, "Read Violation\n");

-       dev_info(ctx->dev, "Bus ID:0x%x, Dom ID:0x%x, Vio Addr:0x%x\n",
-                vio_dbgs.dbg0_bits.mstid, vio_dbgs.dbg0_bits.dmnid,
-                vio_dbgs.vio_dbg1);
+       dev_info(ctx->dev, "Bus ID:0x%x, Dom ID:0x%x, Vio Addr:0x%llx\n",
+                bus_id, domain_id, vio_addr);
 }

 /*
@@ -203,7 +249,8 @@ static irqreturn_t devapc_violation_irq(int irq_number,=
 void *data)
  */
 static void start_devapc(struct mtk_devapc_context *ctx)
 {
-       writel(BIT(31), ctx->infra_base + ctx->data->regs_ofs->apc_con_offs=
et);
+
+       writel(BIT(31), ctx->base + ctx->data->regs_ofs->apc_con_offset);

        mask_module_irq(ctx, false);
 }
@@ -215,10 +262,10 @@ static void stop_devapc(struct mtk_devapc_context *ct=
x)
 {
        mask_module_irq(ctx, true);

-       writel(BIT(2), ctx->infra_base + ctx->data->regs_ofs->apc_con_offse=
t);
+       writel(BIT(2), ctx->base + ctx->data->regs_ofs->apc_con_offset);
 }

-static const struct mtk_devapc_regs_ofs devapc_regs_ofs_mt6779 =3D {
+static const struct mtk_devapc_regs_ofs devapc_regs_ofs_ver1 =3D {
        .vio_mask_offset =3D 0x0,
        .vio_sta_offset =3D 0x400,
        .vio_dbg0_offset =3D 0x900,
@@ -229,14 +276,34 @@ static const struct mtk_devapc_regs_ofs devapc_regs_o=
fs_mt6779 =3D {
        .vio_shift_con_offset =3D 0xF20,
 };

+static const struct mtk_devapc_regs_ofs devapc_regs_ofs_ver2 =3D {
+       .vio_mask_offset =3D 0x0,
+       .vio_sta_offset =3D 0x400,
+       .vio_dbg0_offset =3D 0x900,
+       .vio_dbg1_offset =3D 0x904,
+       .vio_dbg2_offset =3D 0x908,
+       .vio_dbg3_offset =3D 0x90c,
+       .apc_con_offset =3D 0xF00,
+       .vio_shift_sta_offset =3D 0xF20,
+       .vio_shift_sel_offset =3D 0xF30,
+       .vio_shift_con_offset =3D 0xF10,
+};
+
 static const struct mtk_devapc_data devapc_mt6779 =3D {
-       .vio_idx_num =3D 511,
-       .regs_ofs =3D &devapc_regs_ofs_mt6779,
+       .version =3D 1,
+       .default_vio_idx_num =3D 511,
+       .regs_ofs =3D &devapc_regs_ofs_ver1,
 };

 static const struct mtk_devapc_data devapc_mt8186 =3D {
-       .vio_idx_num =3D 519,
-       .regs_ofs =3D &devapc_regs_ofs_mt6779,
+       .version =3D 1,
+       .default_vio_idx_num =3D 519,
+       .regs_ofs =3D &devapc_regs_ofs_ver1,
+};
+
+static const struct mtk_devapc_data devapc_mt8189 =3D {
+       .version =3D 3,
+       .regs_ofs =3D &devapc_regs_ofs_ver2,
 };

 static const struct of_device_id mtk_devapc_dt_match[] =3D {
@@ -246,6 +313,9 @@ static const struct of_device_id mtk_devapc_dt_match[] =
=3D {
        }, {
                .compatible =3D "mediatek,mt8186-devapc",
                .data =3D &devapc_mt8186,
+       }, {
+               .compatible =3D "mediatek,mt8189-devapc",
+               .data =3D &devapc_mt8189,
        }, {
        },
 };
@@ -268,10 +338,21 @@ static int mtk_devapc_probe(struct platform_device *p=
dev)
        ctx->data =3D of_device_get_match_data(&pdev->dev);
        ctx->dev =3D &pdev->dev;

-       ctx->infra_base =3D of_iomap(node, 0);
-       if (!ctx->infra_base)
+       ctx->base =3D of_iomap(node, 0);
+       if (!ctx->base)
                return -EINVAL;

+       /*
+        * Set effective vio_idx_num from default value.
+        * If vio_idx_num is 0, get the info from DT.
+        */
+       ctx->vio_idx_num =3D ctx->data->default_vio_idx_num;
+       if (ctx->vio_idx_num =3D=3D 0)
+               if (of_property_read_u32(node,
+                                        "vio-idx-num",
+                                        &ctx->vio_idx_num))
+                       return -EINVAL;
+
        devapc_irq =3D irq_of_parse_and_map(node, 0);
        if (!devapc_irq) {
                ret =3D -EINVAL;
@@ -296,7 +377,7 @@ static int mtk_devapc_probe(struct platform_device *pde=
v)
        return 0;

 err:
-       iounmap(ctx->infra_base);
+       iounmap(ctx->base);
        return ret;
 }

@@ -305,12 +386,13 @@ static void mtk_devapc_remove(struct platform_device =
*pdev)
        struct mtk_devapc_context *ctx =3D platform_get_drvdata(pdev);

        stop_devapc(ctx);
-       iounmap(ctx->infra_base);
+
+       iounmap(ctx->base);
 }

 static struct platform_driver mtk_devapc_driver =3D {
        .probe =3D mtk_devapc_probe,
-       .remove =3D mtk_devapc_remove,
+       .remove_new =3D mtk_devapc_remove,
        .driver =3D {
                .name =3D "mtk-devapc",
                .of_match_table =3D mtk_devapc_dt_match,
--
2.45.2


