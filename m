Return-Path: <devicetree+bounces-137430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 287F4A0909F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:39:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52B3C7A28D9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 12:38:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42AB20DD5E;
	Fri, 10 Jan 2025 12:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="duneBVLu"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917EC20C472;
	Fri, 10 Jan 2025 12:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736512734; cv=none; b=JUbX8BK80KY71GoYVUhp1FAwsv+yCmlnZKPNhLXh5YWWDhc+yHTYrIs7KTS0OajoxTRoF/1LAjPQY6wG0/SKLO+OrfWGwCZu7qhNsK0k4JHaPiUeiG1+4njpcnl/fsaxMbQP9aTXpcf6J7QJX6fN66suTip7m23nkc/vYSaIhDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736512734; c=relaxed/simple;
	bh=4JEELPBg7PpMk1N/C9if0rjfzva6WlrLP4J8aYdyuGk=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=puvtuhAA9UlzEk1HuZ4A7RPkLdGOM3AJ8dqrbLl2GWH88RkSyIRhDaxP/4QzEjBcyIj4rLE9VKfKgj9X2Qx7yMC14M4leCzLy4MprzZm4U8rjCxCjq9LAuB4tHTqL6JHTmljVSitSlsXrs7NUtZf4/5sZ77a+M7UwkO7FhvSFPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=duneBVLu; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: d5ba9254cf4f11efbd192953cf12861f-20250110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=sbyY/dLJKnwhMtn8olYX/SdnuBiSGSBddV3RnGGZbYM=;
	b=duneBVLuuNrtAJ3qXgmXlB7+iRqF4Hm8MLQXMebhYYJBbRdfSCRp8pZzqOFp6IkIn4/LeZiRVdfX36ORlNbgPMZXyCN2dK+CBZ+OsmYmtKPO2ODwCMmihaJmkCqy1LuEqe2AvfNrt2ffoFHmpx0qw/VZNLMT+xRjRxQKlxkw8Ig=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:58f8f350-0e20-4807-b949-056b41d7acba,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:b76f4e13-8831-4185-8e40-f83b1917e828,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:-3,IP:ni
	l,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: d5ba9254cf4f11efbd192953cf12861f-20250110
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <paul-pl.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 549763450; Fri, 10 Jan 2025 20:38:46 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 10 Jan 2025 20:38:45 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 10 Jan 2025 20:38:45 +0800
From: paul-pl.chen <paul-pl.chen@mediatek.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<chunkuang.hu@kernel.org>, <angelogioacchino.delregno@collabora.com>
CC: <matthias.bgg@gmail.com>, <p.zabel@pengutronix.de>,
	<jason-jh.lin@mediatek.com>, <nancy.lin@mediatek.com>,
	<singo.chang@mediatek.com>, <xiandong.wang@mediatek.com>,
	<sirius.wang@mediatek.com>, <paul-pl.chen@mediatek.com>,
	<sunny.shen@mediatek.com>, <fshao@chromium.org>, <treapking@chromium.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH 00/12] Add Mediatek Soc DRM support for mt8196
Date: Fri, 10 Jan 2025 20:33:55 +0800
Message-ID: <20250110123835.2719824-1-paul-pl.chen@mediatek.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: "Paul-pl.Chen" <paul-pl.chen@mediatek.com>

Add support multiple mmsys instances in the one mediatek-drm instance.

Nancy.Lin (7):
  soc: mediatek: add mmsys support for MT8196
  soc: mediatek: mutex: add mutex support for MT8196
  drm/mediatek: add EXDMA support for MT8196
  drm/mediatek: add BLENDER support for MT8196
  drm/mediatek: add OUTPROC support for MT8196
  drm/mediatek: add ovlsys_adaptor support for MT8196
  drm/mediatek: Add support for multiple mmsys in the one mediatek-drm
    driver

Paul-pl.Chen (5):
  dt-bindings: arm: mediatek: mmsys: add compatible for MT8196
  dt-bindings: soc: mediatek: add mutex yaml for MT8196
  dt-bindings: display: mediatek: add EXDMA yaml for MT8196
  dt-bindings: display: mediatek: add BLENDER yaml for MT8196
  dt-bindings: display: mediatek: add OUTPROC yaml for MT8196

 .../bindings/arm/mediatek/mediatek,mmsys.yaml |   5 +
 .../display/mediatek/mediatek,blender.yaml    |  50 ++
 .../display/mediatek/mediatek,exdma.yaml      |  77 ++
 .../display/mediatek/mediatek,outproc.yaml    |  57 ++
 .../bindings/soc/mediatek/mediatek,mutex.yaml |   2 +
 drivers/gpu/drm/mediatek/Makefile             |   4 +
 drivers/gpu/drm/mediatek/mtk_crtc.c           | 350 ++++++--
 drivers/gpu/drm/mediatek/mtk_crtc.h           |   6 +-
 drivers/gpu/drm/mediatek/mtk_ddp_comp.c       | 134 +++-
 drivers/gpu/drm/mediatek/mtk_ddp_comp.h       |   6 +
 drivers/gpu/drm/mediatek/mtk_disp_blender.c   | 352 ++++++++
 drivers/gpu/drm/mediatek/mtk_disp_blender.h   |  17 +
 drivers/gpu/drm/mediatek/mtk_disp_drv.h       |  66 +-
 drivers/gpu/drm/mediatek/mtk_disp_exdma.c     | 447 +++++++++++
 drivers/gpu/drm/mediatek/mtk_disp_outproc.c   | 244 ++++++
 drivers/gpu/drm/mediatek/mtk_disp_outproc.h   |  22 +
 .../drm/mediatek/mtk_disp_ovlsys_adaptor.c    | 758 ++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 287 ++++++-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  28 +-
 drivers/soc/mediatek/mt8196-mmsys.h           | 447 +++++++++++
 drivers/soc/mediatek/mtk-mmsys.c              | 204 ++++-
 drivers/soc/mediatek/mtk-mmsys.h              |  18 +
 drivers/soc/mediatek/mtk-mutex.c              | 233 +++++-
 include/linux/soc/mediatek/mtk-mmsys.h        |  60 ++
 include/linux/soc/mediatek/mtk-mutex.h        |   2 +
 25 files changed, 3734 insertions(+), 142 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,blender.yaml
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,exdma.yaml
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,outproc.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_blender.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_blender.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_exdma.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_outproc.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_outproc.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_disp_ovlsys_adaptor.c
 create mode 100644 drivers/soc/mediatek/mt8196-mmsys.h

-- 
2.34.1


