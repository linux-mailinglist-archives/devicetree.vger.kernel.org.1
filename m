Return-Path: <devicetree+bounces-6384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C48387BB24B
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 09:38:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E76651C209EF
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 07:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF64B6D39;
	Fri,  6 Oct 2023 07:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="rgzETPHo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33DE6ADF
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 07:38:48 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49637CA;
	Fri,  6 Oct 2023 00:38:45 -0700 (PDT)
X-UUID: 5e6cfb74641b11ee8051498923ad61e6-20231006
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=NpjQf2iDyeOrTFf2sZXNewTLGrDPghYA7MGAwOOkHP8=;
	b=rgzETPHoDT40GnluNfsRSVSlY6XEDnj80kTqAGsR7R6rlWU3Jrc+0/b3sXxq55Yz2UGYjMaKd8WwM8+D2ux5ek+JZtWPgYTvP2i1sAZp550m/XeomVHFJn80KSq69Dgbk38iJblPbztEtLG6ZqBntgR4zA74aib9n6VUcBLirik=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:8a924461-2960-44b1-89a5-3716441cc3a0,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:9ddb82f0-9a6e-4c39-b73e-f2bc08ca3dc5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 5e6cfb74641b11ee8051498923ad61e6-20231006
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <shawn.sung@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1140599805; Fri, 06 Oct 2023 15:38:40 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 6 Oct 2023 15:38:33 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 6 Oct 2023 15:38:33 +0800
From: Hsiao Chien Sung <shawn.sung@mediatek.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, "CK
 Hu" <ck.hu@mediatek.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, "Mauro Carvalho
 Chehab" <mchehab@kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	Singo Chang <singo.chang@mediatek.com>, "Nancy . Lin"
	<nancy.lin@mediatek.com>, "Jason-JH . Lin" <jason-jh.lin@mediatek.com>,
	"Hsiao Chien Sung" <shawn.sung@mediatek.com>
Subject: [PATCH v7 00/23] Add display driver for MT8188 VDOSYS1
Date: Fri, 6 Oct 2023 15:38:08 +0800
Message-ID: <20231006073831.10402-1-shawn.sung@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--3.700500-8.000000
X-TMASE-MatchedRID: FmqsJbMu0XkyRohotsnq523NvezwBrVmvtVce6w5+K+CsBeCv8CM/bou
	M63AneY0KRSPua7nDcG1u7bGu6KdZWdvGUEuKvScDko+EYiDQxECfg/sW4pUUHOMCXNrYTWiBzW
	QqFQdsUgIT+/jqQ4NauA+Ozq1G2C7o7P6PRBIQ93nx2TmxvCbKDFcf92WG8u/e5Q84fGfhIYmnJ
	20oZzAnFLqN0CL1E4kAYe21DJnUKfNkOxTi82/ckLEoH0ynuZVI9yVcHNDU7aOUV82NDH4AjAzx
	XEecc9kWX4eTcjDZsSAMuqetGVetnyef22ep6XYxlblqLlYqXLEMEYR9LN6+c5FdRCbceR+6Ri7
	oZTxwwEqfzRlupF5LvdZdccIp615/2GgoOuyHSMIBVWV//SkW2p2WjODXsWrmlO3UyKqW3eOh+w
	yNBrFXDJiNuKohDcKzKSG3JdyKAPqtV2AGMNPaiHWPYzouJUy
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.700500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	123163A46AF04A6F4F42F561AFEB63EBF9A301939A7428D1441C97C1314B0B392000:8
X-MTK: N
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,RDNS_NONE,SPF_HELO_PASS,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Changes in v7:
- Start/Stop the components in OVL Adaptor with function pointers
- Refine Padding driver
- Fix underrun when the layer is switching off

Changes in v6:
- Separate the commits into smaller ones
- Add DPI input mode setting
- Fix VDOSYS1 power-on issues

Changes in v5:
- Reuse .clk_enable/.clk_disable in struct mtk_ddp_comp_funcs
  in mtk_disp_ovl_adaptor.c
- Adjust commits order

Changes in v4:
- Add new functions in mtk_disp_ovl_adaptor.c to enable/disable
  components and reuse them when clock enable/disable
- Rename components in mtk_disp_ovl_adaptor.c and sort them in
  alphabetical order

Changes in v3:
- Define macro MMSYS_RST_NR in mtk-mmsys.h and update reset table
- Fix typos (ETDHR -> ETHDR, VSNYC -> VSYNC)
- Rebase dt-bindings on linux-next
- Refine description of Padding
- Squash reset bit map commits for VDO0 and VDO1 into one

Changes in v2:
- Remove redundant compatibles of MT8188 because it shares the same
  configuration with MT8195
- Separate dt-bindings by modules
- Support reset bit mapping in mmsys driver

Hsiao Chien Sung (23):
  dt-bindings: display: mediatek: ethdr: Add compatible for MT8188
  dt-bindings: display: mediatek: mdp-rdma: Add compatible for MT8188
  dt-bindings: display: mediatek: merge: Add compatible for MT8188
  dt-bindings: display: mediatek: padding: Add MT8188
  dt-bindings: arm: mediatek: Add compatible for MT8188
  dt-bindings: reset: mt8188: Add VDOSYS reset control bits
  soc: mediatek: Support MT8188 VDOSYS1 in mtk-mmsys
  soc: mediatek: Support MT8188 VDOSYS1 Padding in mtk-mmsys
  soc: mediatek: Support reset bit mapping in mmsys driver
  soc: mediatek: Add MT8188 VDOSYS reset bit map
  drm/mediatek: Rename OVL_ADAPTOR_TYPE_RDMA
  drm/mediatek: Refine device table of OVL adaptor
  drm/mediatek: Sort OVL adaptor components
  drm/mediatek: Add component ID to component match structure
  drm/mediatek: Manage component's clock with function pointers
  drm/mediatek: Start/Stop components with function pointers
  drm/mediatek: Support MT8188 Padding in display driver
  drm/mediatek: Add Padding to OVL adaptor
  drm/mediatek: Return error if MDP RDMA failed to enable the clock
  drm/mediatek: Remove the redundant driver data for DPI
  drm/mediatek: Fix underrun in VDO1 when switches off the layer
  drm/mediatek: Power on devices in OVL adaptor when atomic enable
  drm/mediatek: Support MT8188 VDOSYS1 in display driver

 .../bindings/arm/mediatek/mediatek,mmsys.yaml |   1 +
 .../display/mediatek/mediatek,ethdr.yaml      |   6 +-
 .../display/mediatek/mediatek,mdp-rdma.yaml   |   6 +-
 .../display/mediatek/mediatek,merge.yaml      |   3 +
 .../display/mediatek/mediatek,padding.yaml    |  81 ++++++
 drivers/gpu/drm/mediatek/Makefile             |   3 +-
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |   7 +
 drivers/gpu/drm/mediatek/mtk_disp_merge.c     |   2 +-
 .../gpu/drm/mediatek/mtk_disp_ovl_adaptor.c   | 266 +++++++++++-------
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  16 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |   9 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |   9 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |   4 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |   2 +-
 drivers/gpu/drm/mediatek/mtk_mdp_rdma.c       |   3 +-
 drivers/gpu/drm/mediatek/mtk_padding.c        | 206 ++++++++++++++
 drivers/soc/mediatek/mt8188-mmsys.h           | 210 ++++++++++++++
 drivers/soc/mediatek/mtk-mmsys.c              |  27 ++
 drivers/soc/mediatek/mtk-mmsys.h              |  32 +++
 drivers/soc/mediatek/mtk-mutex.c              |  51 ++++
 include/dt-bindings/reset/mt8188-resets.h     |  75 +++++
 include/linux/soc/mediatek/mtk-mmsys.h        |   8 +
 23 files changed, 899 insertions(+), 129 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,padding.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_padding.c

--
2.18.0


