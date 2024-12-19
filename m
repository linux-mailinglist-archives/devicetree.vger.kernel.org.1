Return-Path: <devicetree+bounces-132813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF3A9F8305
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D56A118862FA
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:16:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095AD1A76BB;
	Thu, 19 Dec 2024 18:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="DpZ/hGDl"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA96C1A2550;
	Thu, 19 Dec 2024 18:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734632143; cv=none; b=nUICJPU3iBYcDMM07IM/VApS5HwDcVTcP/3Yvno6+2KmXrL49wmi7EOPDypQd0SzDUjpY9F46QVVB/UCwUVvg1vRTS/OI8M8gEQXmIBD5R+Uc7ve+viTJyBrt9Lrg89c+J72g0ugPUAezQYVWkQHI9q2YeZtiBScr9hj2Yc0u0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734632143; c=relaxed/simple;
	bh=JsJOytuT1vpxxab4XW4QtWVsdZMg96Q2GNZTGYYwAp8=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=OosKdTcVFmK3Bawr7UAl6J0xrq1fQUMNUjUpPM4LI1lKqtXduhu8ZAwEocDWOVSJhzWkvYSfT4/UIw3q/taHrAYNDQ4NOrLy79GYKENx5epOFQ4k0jJF7J8ZLBfY+yDy5ig1jrG7SCt2eTUziO1NXGQaHgbThJa9nXsDECKv6QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=DpZ/hGDl; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 3e09fa24be3511efbd192953cf12861f-20241220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=ZRNlClTpyAMqK+J6+xpp8yNx43isLwpFhXRlwgj4Ew4=;
	b=DpZ/hGDlxdTcwqUw7s+9F2Tlj7deXDsqVE4oROcN+eEFI5NMLX26qT+UC8gyTgVv7DpNWjLHEzvvxyAeNEHXLFB+RbciCFMFnKi5eC8RSoITqwVIkJNIjxSqZvRtA1uaBUSES2/JQT9djiydjzFFGGYx7q+ShlDKQ9kIlrPXMK0=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:45438874-5ef6-42b7-8287-ae0bea902230,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:7020cc28-d2eb-4de2-b5c9-495d1bc17256,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,RT:100,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_ULS,TF_CID_SPAM_SNR
X-UUID: 3e09fa24be3511efbd192953cf12861f-20241220
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 397039482; Fri, 20 Dec 2024 02:15:35 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Dec 2024 02:15:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Dec 2024 02:15:34 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, "Jason-JH . Lin"
	<jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, "Nancy
 Lin" <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>,
	<dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Fei Shao
	<fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v3 0/4] Update MT8188 OVL compatible from MT8183 to MT8195
Date: Fri, 20 Dec 2024 02:15:27 +0800
Message-ID: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-MTK: N

This patch series updates the compatible strings for the MediaTek OVL
in the MT8188 dts and the corresponding dt-binding.
The changes ensure that the MT8188 OVL device is correctly identified
and managed by the appropriate drivers.

The first patch is adding the MT8188 compatible strings, refer to:
- https://lore.kernel.org/all/20241218105320.38980-2-angelogioacchino.delregno@collabora.com/

The 2nd patch is resending the reviewed and acked patch from:
- https://lore.kernel.org/all/5d9e6f6c-604d-4e2d-a448-fc5b8bd24a75@collabora.com/
and rebase it to the latest linux-next-20241212.

The 3rd and the 4th patches are updating the mt8188.dtsi and mt8195.dtsi
according to the 1st patch.

---

Change in v3:
1. Add a dt-bindings ptach for MT8188 MDP3 OVL.

Change in v2:
1. Add missing mt8195 compatible in the beginning of compatible property.
2. Add fix patch to mt8195.

---

Hsiao Chien Sung (1):
  dt-bindings: display: mediatek: ovl: Modify rules for MT8195/MT8188

Jason-JH.Lin (3):
  dt-bindings: display: mediatek: ovl: Add compatible strings for MT8188
    MDP3
  dts: arm64: mediatek: mt8188: Update OVL compatible from MT8183 to
    MT8195
  dts: arm64: mediatek: mt8195: Remove MT8183 compatible for OVL

 .../bindings/display/mediatek/mediatek,ovl.yaml      | 12 +++++++-----
 arch/arm64/boot/dts/mediatek/mt8188.dtsi             |  2 +-
 arch/arm64/boot/dts/mediatek/mt8195.dtsi             |  2 +-
 3 files changed, 9 insertions(+), 7 deletions(-)

-- 
2.43.0


