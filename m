Return-Path: <devicetree+bounces-2370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 891867AAA0A
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3B9C3283365
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 07:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725E919BD8;
	Fri, 22 Sep 2023 07:21:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C9D18C2D
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 07:21:36 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C817198;
	Fri, 22 Sep 2023 00:21:33 -0700 (PDT)
X-UUID: a198456a591811ee8051498923ad61e6-20230922
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=GwRcQkIPa0RidP1cB9AF+xbKbSI3AyGl3ep1MeePw+8=;
	b=hosr9nH5n6grvsKXfMxtFkKMHp7pIIfI+GvMcktLfyih7wkY2jGIpgXoP9c0YngFK3vJ0dIkIXaVlCv945fxwSBS799xEXFm0Wzd6KEW8czs5n+WzPY1u9wiiw027NDtgZeGMR0T3O+W9JdHkJ4+wgl3KhAQxSwaphRSEGeH7Ac=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:a5367575-aaa0-4c80-a5f4-576510034ad0,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:5f78ec9,CLOUDID:f08a00f0-9a6e-4c39-b73e-f2bc08ca3dc5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: a198456a591811ee8051498923ad61e6-20230922
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <moudy.ho@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1987355008; Fri, 22 Sep 2023 15:21:22 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 22 Sep 2023 15:21:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 22 Sep 2023 15:21:17 +0800
From: Moudy Ho <moudy.ho@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Daniel Vetter
	<daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Hans Verkuil
	<hverkuil-cisco@xs4all.nl>
CC: <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-media@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, "Moudy
 Ho" <moudy.ho@mediatek.com>
Subject: [PATCH v6 00/16] introduce more MDP3 components in MT8195
Date: Fri, 22 Sep 2023 15:21:00 +0800
Message-ID: <20230922072116.11009-1-moudy.ho@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--4.140900-8.000000
X-TMASE-MatchedRID: jaDo7zRnnqvsAGjS6lxxKhlckvO1m+Jc0r/qCu/cY51GL0g1nVmkYT5R
	eTebdoC/c3vVJixkSry06j7mNfWkLhHYera7K0OLqbg9uWhLYLdkbdIIs/tC0lyXWUkr/Kkslw+
	39nTtEGwU+viiDxBlnQ9iGlH7LPmcxEEtnnH5KRfuykw7cfAoICoTaU3L23VCmyiLZetSf8mfop
	0ytGwvXiq2rl3dzGQ1XFvBhI5Hg86LT+koH7+Zhsoux4uQ/X3YXTeh+jKjqu4/s5eHgEi4ZgLRb
	yOHU4kkeFspb5rEQuvXssLCpakOsgqhzvteG/XZoVx+33HsKxN0BNB20+SxH7f8mJY57oZddJaB
	DYald1lvF9+X2GEIHA==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.140900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: A77D4AEDECC94738E90500CFA5460A673A2068746427C2A25D501AD49C0ED74E2000:8
X-MTK: N
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,
	SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Changes since v5:
- Rebase on v6.6-rc2.
- Dependent dtsi files:
  https://patchwork.kernel.org/project/linux-mediatek/list/?series=786511
- Depends on:
  Message ID = 20230911074233.31556-5-shawn.sung@mediatek.com
- Split out common propertis for RDMA.
- Split each component into independent patches.

Changes since v4:
- Rebase on v6.6-rc1
- Organize identical hardware components into their respective files.

Hi,

The purpose of this patch is to separate the MDP3-related bindings from
the original mailing list mentioned below:
https://lore.kernel.org/all/20230208092209.19472-1-moudy.ho@mediatek.com/
Those binding files describe additional components that
are present in the mt8195.

Moudy Ho (16):
  dt-bindings: media: mediatek: mdp3: correct RDMA and WROT node with
    generic names
  dt-bindings: media: mediatek: mdp3: split out general properties
  dt-bindings: media: mediatek: mdp3: include common properties
  dt-bindings: media: mediatek: mdp3: rename to MT8183 RDMA
  dt-bindings: media: mediatek: mdp3: add support MT8195 RDMA
  dt-bindings: media: mediatek: mdp3: add component FG for MT8195
  dt-bindings: media: mediatek: mdp3: add component HDR for MT8195
  dt-bindings: media: mediatek: mdp3: add component STITCH for MT8195
  dt-bindings: media: mediatek: mdp3: add component STITCH for MT8195
  dt-bindings: media: mediatek: mdp3: add component TDSHP for MT8195
  dt-bindings: display: mediatek: aal: add compatible for MT8195
  dt-bindings: display: mediatek: color: add compatible for MT8195
  dt-bindings: display: mediatek: merge: add compatible for MT8195
  dt-bindings: display: mediatek: ovl: add compatible for MT8195
  dt-bindings: display: mediatek: split: add compatible for MT8195
  dt-bindings: display: mediatek: padding: add compatible for MT8195

 .../display/mediatek/mediatek,aal.yaml        |  1 +
 .../display/mediatek/mediatek,color.yaml      |  1 +
 .../display/mediatek/mediatek,merge.yaml      |  1 +
 .../display/mediatek/mediatek,ovl.yaml        |  1 +
 .../display/mediatek/mediatek,padding.yaml    |  4 +-
 .../display/mediatek/mediatek,split.yaml      |  1 +
 .../bindings/media/mediatek,mdp3-fg.yaml      | 61 +++++++++++++++++
 .../bindings/media/mediatek,mdp3-hdr.yaml     | 60 +++++++++++++++++
 .../media/mediatek,mdp3-rdma-8183.yaml        | 65 +++++++++++++++++++
 .../media/mediatek,mdp3-rdma-8195.yaml        | 64 ++++++++++++++++++
 ...ma.yaml => mediatek,mdp3-rdma-common.yaml} | 49 ++++----------
 .../bindings/media/mediatek,mdp3-stitch.yaml  | 61 +++++++++++++++++
 .../bindings/media/mediatek,mdp3-tcc.yaml     | 60 +++++++++++++++++
 .../bindings/media/mediatek,mdp3-tdshp.yaml   | 61 +++++++++++++++++
 .../bindings/media/mediatek,mdp3-wrot.yaml    | 23 ++++---
 15 files changed, 467 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-fg.yaml
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-hdr.yaml
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8183.yaml
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-rdma-8195.yaml
 rename Documentation/devicetree/bindings/media/{mediatek,mdp3-rdma.yaml => mediatek,mdp3-rdma-common.yaml} (57%)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-stitch.yaml
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-tcc.yaml
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-tdshp.yaml

-- 
2.18.0


