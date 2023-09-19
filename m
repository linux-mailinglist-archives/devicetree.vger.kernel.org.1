Return-Path: <devicetree+bounces-1227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF0E7A5716
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 03:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8BA91C2090E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 01:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4BB1C3E;
	Tue, 19 Sep 2023 01:44:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209741C27
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 01:44:46 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B133194;
	Mon, 18 Sep 2023 18:44:44 -0700 (PDT)
X-UUID: 1a0ba5d8568e11eea33bb35ae8d461a2-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=yt9rNt7h8DE405+Mq7rWtcTRUY7xH9V0TktrYXEFh60=;
	b=Gzlbmmt+7CYofhbBYFIk47uChpVS7nM8KBw/5riULGVFvhYQcXI43t/ifdcojLipDnZqEN1LdMXpxjL5fMSvFEfLUmXecrjzVM5RSPq4uzx6GWxbkM58fP+BadMvQrAdj4OFMalUhk2XeIBfstSs0hqxczQkeWpkhCVhV7p4gQQ=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:535da3f4-9a65-4b2a-8b4e-a944ed3b0626,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:6aa1d9ef-9a6e-4c39-b73e-f2bc08ca3dc5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 1a0ba5d8568e11eea33bb35ae8d461a2-20230919
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <chun-jen.tseng@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 854414845; Tue, 19 Sep 2023 09:44:41 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 19 Sep 2023 09:44:40 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 19 Sep 2023 09:44:40 +0800
From: Mark Tseng <chun-jen.tseng@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Roger Lu <roger.lu@mediatek.com>,
	Kevin Hilman <khilman@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<chun-jen.tseng@mediatek.com>
Subject: [PATCH v3 0/2] soc: mediatek: svs: add support for mt8188
Date: Tue, 19 Sep 2023 09:44:37 +0800
Message-ID: <20230919014439.5795-1-chun-jen.tseng@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--5.329200-8.000000
X-TMASE-MatchedRID: mjDuVRm881CUYaO/E+T/Q1z+axQLnAVBIaLR+2xKRDJrtkNaxER5J/gQ
	nFzx6+s56DB7yJ7eUTOIJs0Up7vkWEkjllSXrjtQFEUknJ/kEl5jFT88f69nG/oLR4+zsDTtjoc
	zmuoPCq0vyXISH/RYkMxjueKjC4GveOFyorNDzUCCgA30pQeF94ViHoWt3zyB
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.329200-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 941405550405806D315C16C92E388B6DD0F813BE60116E68F3EC0BC7955A797D2000:8
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series supports MT8188 Smart Voltage Scaling (SVS) hardware which
used as optimization of opp voltage table for gpu dvfs driver.

Changes since v2:
  - Add Acked-by & Acked-by in patch

Changes since v1:
  - thermal name change to lvts
  - fixed voltage bin flow
  - using svs_get_efuse_data() replace nvmem read API in mt8188 efuse
    parsing 

Mark Tseng (2):
  dt-bindings: soc: mediatek: add mt8188 svs dt-bindings
  soc: mediatek: svs: add support for mt8188

 .../bindings/soc/mediatek/mtk-svs.yaml        |   1 +
 drivers/soc/mediatek/mtk-svs.c                | 184 +++++++++++++++++-
 2 files changed, 181 insertions(+), 4 deletions(-)

-- 
2.18.0


