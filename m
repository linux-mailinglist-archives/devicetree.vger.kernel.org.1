Return-Path: <devicetree+bounces-69236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD70C8CF485
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 16:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F8E71C2039C
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 14:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 640B2171B0;
	Sun, 26 May 2024 14:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Xr25Fouj"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D920416419;
	Sun, 26 May 2024 14:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716734691; cv=none; b=LLrbsPvO/dcW/Mc98xidmZs0esqvjcTXyL6hUV+smqXu2QjGgvVT0bFDzt2H0aZ7gGZJ4nfg8mgcN2xqo3qUgaEkEuDBLhOQkEY08w7/C/NsFu4D0Rpujqdo7TB/ohIwg2BYlWXyVDxaNvQPJHIDihPnxNw+AODiu8eFIXlynzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716734691; c=relaxed/simple;
	bh=dbAiH74zZv1dxloCzFUeauAKdpDIYhSrh4ECpyDYbXo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hupGfNv4AC8Gv/ib4heze63ApkOMnNhN196Fstlf89g7I43JgphlRUFqGcta2TiK6XavibgfLM3b98mZS2T6NngmEp2aNuOzGGYy8zT4BHplJGrKCdktVBlWTW0VI+FwdKve4JiSB/aA77PqsLrf7okT7PcBJj+bKLLPddriDKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Xr25Fouj; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 7e75224c1b6e11efbfff99f2466cf0b4-20240526
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=Sow2zifRFJ27qXvHFwFYruJuCTzj9uRxA50u3n5JPZE=;
	b=Xr25FoujSbV/LmZWW494GHP9EHmpbB6EVdqFWdQo+LBovOK5IkhbT4EFOSRxRBilRpdZLowDgYI3wzIOjkZi0ex+qjyZ8dOO/GVym9ZuT3GCiXEV3sxyQqgA/izUoEhYL2WWnIQUg86rjN3EBTxZv8SJSFqx3g59z+5bRM7kYQ8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38,REQID:3d56f7db-a4c0-4f6d-9abd-dbb6c96445aa,IP:0,U
	RL:0,TC:0,Content:100,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:100
X-CID-META: VersionHash:82c5f88,CLOUDID:70bed387-8d4f-477b-89d2-1e3bdbef96d1,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:801|102,TC:nil,Content:3,EDM:-3,IP:n
	il,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LE
	S:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_ULS,TF_CID_SPAM_SNR
X-UUID: 7e75224c1b6e11efbfff99f2466cf0b4-20240526
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1049332360; Sun, 26 May 2024 22:44:45 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 26 May 2024 22:44:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Sun, 26 May 2024 22:44:43 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: Conor Dooley <conor+dt@kernel.org>, Jason-ch Chen
	<jason-ch.chen@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
	Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
	Shawn Sung <shawn.sung@mediatek.com>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <dri-devel@lists.freedesktop.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Jason-jh Lin
	<jason-jh.lin@mediatek.corp-partner.google.com>
Subject: [PATCH RESEND,v6 0/8] Add CMDQ secure driver for SVP
Date: Sun, 26 May 2024 22:44:35 +0800
Message-ID: <20240526144443.14345-1-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

From: Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>

For the Secure Video Path (SVP) feature, inculding the memory stored
secure video content, the registers of display HW pipeline and the
HW configure operations are required to execute in the secure world.

So using a CMDQ secure driver to make all display HW registers
configuration secure DRAM access permision settings execute by GCE
secure thread in the secure world.

We are landing this feature on mt8188 and mt8195 currently.
---
TODO:
1) Squash cmdq_sec_task_exec_work() into cmdq_sec_mbox_send_data()
2) Call into TEE to query cookie instead of using shared memory in
   cmdq_sec_get_cookie()
3) Register shared memory as command buffer instead of copying normal
   command buffer to IWC shared memory
4) Use SOFTDEP to make cmdq_sec_probe later than OPTEE loaded and then
   move cmdq_sec_session_init into cmdq_sec_probe()
5) Remove timeout detection in cmdq_sec_session_send()
---
Resend v6:
1. Rebase on [1] Add mediatek,gce-props.yaml for other bindings reference
   to fix yaml check error
- [1] https://patchwork.kernel.org/project/linux-mediatek/list/?series=819298
2. Fix unused varibale build error

Changes in v6:
1. Rebase to linux-next
2. Change the way to add gce-events prop into dt-binding and add more
   commit message
3. Remove unused parameters in secure mailbox driver
4. Move cmdq_sec_XXX APIs from secure mailbox driver to helper to fix the
   build cycle dependency error
5. Remove finalize loop API and write_s_reg API patch
6. Add cmdq secure helper API patch

Changes in v5:
1. Sync the local changes

Changes in v4:
1. Rebase on mediatek-drm-next(278640d4d74cd) and fix the conflicts
2. This series is based on 20240307013458.23550-1-jason-jh.lin@mediatek.com

Changes in v3:
1. separate mt8188 driver porting patches to another series
2. separate adding 'mediatek,gce-events' event prop to another series
3. sepatate mailbox helper and controller driver modification to a
   single patch for adding looping thread
4. add kerneldoc for secure mailbox related definition
5. add moving reuseable definition patch before adding secure mailbox
   driver patch
6. adjust redundant logic in mtk-cmdq-sec-mailbox

Changes in v2:
1. adjust dt-binding SW event define patch before the dt-binding patch using it
2. adjust dt-binding patch for secure cmdq driver
3. remove the redundant patches or merge the patches of modification for the same API
---


Jason-JH.Lin (8):
  dt-bindings: gce: mt8195: Add CMDQ_SYNC_TOKEN_SECURE_THR_EOF event id
  dt-bindings: mailbox: Add property for CMDQ secure driver
  soc: mediatek: cmdq: Add cmdq_pkt_logic_command to support math
    operation
  mailbox: mtk-cmdq: Support GCE loop packets in interrupt handler
  mailbox: mediatek: Move reuseable definition to header for secure
    driver
  mailbox: mediatek: Add CMDQ secure mailbox driver
  mailbox: mediatek: Add secure CMDQ driver support for CMDQ driver
  soc: mediatek: mtk-cmdq: Add secure cmdq_pkt APIs

 .../mailbox/mediatek,gce-mailbox.yaml         |   8 +-
 drivers/mailbox/Makefile                      |   2 +-
 drivers/mailbox/mtk-cmdq-mailbox.c            | 113 ++-
 drivers/mailbox/mtk-cmdq-sec-mailbox.c        | 931 ++++++++++++++++++
 drivers/mailbox/mtk-cmdq-sec-tee.c            | 195 ++++
 drivers/soc/mediatek/mtk-cmdq-helper.c        | 191 ++++
 include/dt-bindings/gce/mt8195-gce.h          |   6 +
 include/linux/mailbox/mtk-cmdq-mailbox.h      |  35 +
 .../linux/mailbox/mtk-cmdq-sec-iwc-common.h   | 342 +++++++
 include/linux/mailbox/mtk-cmdq-sec-mailbox.h  | 106 ++
 include/linux/mailbox/mtk-cmdq-sec-tee.h      | 105 ++
 include/linux/soc/mediatek/mtk-cmdq.h         | 113 +++
 12 files changed, 2117 insertions(+), 30 deletions(-)
 create mode 100644 drivers/mailbox/mtk-cmdq-sec-mailbox.c
 create mode 100644 drivers/mailbox/mtk-cmdq-sec-tee.c
 create mode 100644 include/linux/mailbox/mtk-cmdq-sec-iwc-common.h
 create mode 100644 include/linux/mailbox/mtk-cmdq-sec-mailbox.h
 create mode 100644 include/linux/mailbox/mtk-cmdq-sec-tee.h

-- 
2.18.0


