Return-Path: <devicetree+bounces-14111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8837E20C6
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E22C1C20BA7
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E933B1EA8F;
	Mon,  6 Nov 2023 12:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="LJ+HYexB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9151EB29
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:04:55 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56515D6B;
	Mon,  6 Nov 2023 04:04:52 -0800 (PST)
X-UUID: adc62d147c9c11eea33bb35ae8d461a2-20231106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=tDdbTuWdtMHx44dMsP7Vdfz0hNjFshKJXaC0iWiaF9M=;
	b=LJ+HYexBqfopbIwUBMNf+w5+bPwWSJMO8HVnVXCT+y1Fc2V8eoAtF/hDev3DTCaQO+YhxfIVjzRp5Ne8frww5Hd1fzHd6dhvthy7Q+QqTaCGVdskj2GRPofFdysSWBTCcF7izjyr5Go0Ztsd73cl5NEeXKWQOsu2gTTlu8JrqqU=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:06711c2b-587b-4e8f-bdde-c2885bc9fb98,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:364b77b,CLOUDID:8e485472-1bd3-4f48-b671-ada88705968c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: adc62d147c9c11eea33bb35ae8d461a2-20231106
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <yunfei.dong@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 646622998; Mon, 06 Nov 2023 20:04:46 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 6 Nov 2023 20:04:45 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 6 Nov 2023 20:04:44 +0800
From: Yunfei Dong <yunfei.dong@mediatek.com>
To: Jeffrey Kardatzke <jkardatzke@google.com>, "T . J . Mercier"
	<tjmercier@google.com>, John Stultz <jstultz@google.com>, Yong Wu
	<yong.wu@mediatek.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?=
	<nfraprado@collabora.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Nathan Hebert <nhebert@chromium.org>
CC: Chen-Yu Tsai <wenst@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
	Fritz Koenig <frkoenig@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Steve
 Cho <stevecho@chromium.org>, Yunfei Dong <yunfei.dong@mediatek.com>,
	<linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v2,18/21] media: medkatek: vcodec: remove parse nal_info in kernel
Date: Mon, 6 Nov 2023 20:04:20 +0800
Message-ID: <20231106120423.23364-19-yunfei.dong@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231106120423.23364-1-yunfei.dong@mediatek.com>
References: <20231106120423.23364-1-yunfei.dong@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-MTK: N

The hardware can parse syntax to get nal_info, needn't to use cpu.

Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
---
 .../vcodec/decoder/vdec/vdec_h264_req_multi_if.c    | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h264_req_multi_if.c b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h264_req_multi_if.c
index a1a68487131c..2dfb3043493e 100644
--- a/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h264_req_multi_if.c
+++ b/drivers/media/platform/mediatek/vcodec/decoder/vdec/vdec_h264_req_multi_if.c
@@ -645,11 +645,10 @@ static int vdec_h264_slice_lat_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 	struct vdec_h264_slice_inst *inst = h_vdec;
 	struct vdec_vpu_inst *vpu = &inst->vpu;
 	struct mtk_video_dec_buf *src_buf_info;
-	int nal_start_idx, err, timeout = 0;
+	int err, timeout = 0;
 	unsigned int data[2];
 	struct vdec_lat_buf *lat_buf;
 	struct vdec_h264_slice_share_info *share_info;
-	unsigned char *buf;
 
 	if (vdec_msg_queue_init(&inst->ctx->msg_queue, inst->ctx,
 				vdec_h264_slice_core_decode,
@@ -673,14 +672,6 @@ static int vdec_h264_slice_lat_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 	share_info = lat_buf->private_data;
 	src_buf_info = container_of(bs, struct mtk_video_dec_buf, bs_buffer);
 
-	buf = (unsigned char *)bs->va;
-	nal_start_idx = mtk_vdec_h264_find_start_code(buf, bs->size);
-	if (nal_start_idx < 0) {
-		err = -EINVAL;
-		goto err_free_fb_out;
-	}
-
-	inst->vsi->dec.nal_info = buf[nal_start_idx];
 	lat_buf->src_buf_req = src_buf_info->m2m_buf.vb.vb2_buf.req_obj.req;
 	v4l2_m2m_buf_copy_metadata(&src_buf_info->m2m_buf.vb, &lat_buf->ts_info, true);
 
@@ -689,7 +680,7 @@ static int vdec_h264_slice_lat_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 		goto err_free_fb_out;
 
 	if (!inst->ctx->is_secure_playback)
-		vdec_h264_insert_startcode(inst->ctx->dev, buf, &bs->size,
+		vdec_h264_insert_startcode(inst->ctx->dev, bs->va, &bs->size,
 					   &share_info->h264_slice_params.pps);
 
 	*res_chg = inst->resolution_changed;
-- 
2.18.0


