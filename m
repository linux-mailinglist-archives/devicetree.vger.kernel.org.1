Return-Path: <devicetree+bounces-130610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB6D9F087B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:51:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8710D169EBE
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 09:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55191B6D0B;
	Fri, 13 Dec 2024 09:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="ZMbuDTuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7CCA1B415F;
	Fri, 13 Dec 2024 09:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734083457; cv=none; b=aJZsAcGp6WoNvvRy9GQPUE9P9sIrpuKGzZgLpm0sSUcW7O3vrt6XFc/R7UX9PvCWvzgTqoHkkl4Brpyk8U4C/Zwi541dsBF4dkx34LpHsAMtY1fEtStTmM3sDy9Kt6UjH1FVnFs9Ao82v6WCPkJ9yt71ey1czNcZ5F5fiy5CUj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734083457; c=relaxed/simple;
	bh=BFrI8vDN+QjnKEZoqwu40aL8E/41x0o1YJqK+z2dmGE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=EhYpmEvy8VRs0p+wQ43i63ekS7gDA0zOaV+OLSXw0IV4lxq80eh/K0RoQASBW9QerUI16n9p7IUY6T8eyo+d2UJeb7EXMOOeIUxtcZXuVLgEjR9v533OyWwgVLnbUy4P7ccqOX8Qmg4ObFXDo5SnvHPYdcobK+292PL7vp6dkwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=ZMbuDTuA; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: bbd0587ab93711ef99858b75a2457dd9-20241213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=u96Mek6muR+FMOL8ghgPTboq8EkCtrWjhvHihSR4wYY=;
	b=ZMbuDTuA9w7eNzmBLN8CJRDgIZIpaYXoGzY+iZDBKP/hez7C4CP387eCFZsHqMuKnqrmRDrX5/Jt3uha5f0TLumzhwUVcUu/SPvreSqOJyK+Cnc6p6KMvKROyZtWetkv20lNc0AQezpKBi+Co5f6TMjJcuBZmphgYD7fl2ViH1M=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:ae6d1f06-f379-4928-8e98-067d65359ae4,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:117a1513-8f5d-4ac6-9276-7b9691c7b8d6,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,
	SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: bbd0587ab93711ef99858b75a2457dd9-20241213
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 350017580; Fri, 13 Dec 2024 17:50:49 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 13 Dec 2024 17:50:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 13 Dec 2024 17:50:46 +0800
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
Subject: [PATCH v2 0/3] Update MT8188 OVL compatible from MT8183 to MT8195
Date: Fri, 13 Dec 2024 17:50:41 +0800
Message-ID: <20241213095044.23757-1-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--1.276900-8.000000
X-TMASE-MatchedRID: M8Ani9L88+RuS4qoWRE6OhWCVBr+Ay98gdNXa4lpKNtw8MSVsP4X8s0z
	jHUi+uXRjwQarLbSitQRs1kezRVUMsLk3xw1Sf9eXP5rFAucBUFyETzgIO4sapI7pKjpAaDKwHb
	kJ3CI10bQkGj4hVOCcd52diAVzqN2zrfv4DmGmcWeAiCmPx4NwBnUJ0Ek6yhjxEHRux+uk8ifEz
	J5hPndGc7OdGs895LlmarI0Rv6SjtqthQRKRKNU0eKDMJf9cV5pk3nTRYPeUGeymZ/d+Z3Ne84j
	zGCUoKRVHB2Mz7feH2a2La8y2eZTnmVKZusLp922v9OjYWA2uMMswg45VMfPadst5iAforfVlxr
	1FJij9s=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--1.276900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 56412E99850523C5DA6B3BCC1E5FD357930DC2222C597F04EC455D971BE8E4272000:8
X-MTK: N

This patch series updates the compatible strings for the MediaTek OVL
in the MT8188 dts and the corresponding dt-binding.
The changes ensure that the MT8188 OVL device is correctly identified
and managed by the appropriate drivers.

The 1st patch is resending the reviewed and acked patch from:
- https://lore.kernel.org/all/5d9e6f6c-604d-4e2d-a448-fc5b8bd24a75@collabora.com/
and rebase it to the latest linux-next-20241212.

The 2nd and the 3rd patches are updating the mt8188.dtsi and mt8195.dtsi
according to the 1st patch.

---

Change in v2:
1. Add missing mt8195 compatible in the beginning of compatible property.
2. Add fix patch to mt8195.

---

Hsiao Chien Sung (1):
  dt-bindings: display: mediatek: ovl: Modify rules for MT8195/MT8188

Jason-JH.Lin (2):
  dts: arm64: mediatek: mt8188: Update OVL compatible from MT8183 to
    MT8195
  dts: arm64: mediatek: mt8195: Remove MT8183 compatible for OVL

 .../bindings/display/mediatek/mediatek,ovl.yaml          | 9 ++++-----
 arch/arm64/boot/dts/mediatek/mt8188.dtsi                 | 2 +-
 arch/arm64/boot/dts/mediatek/mt8195.dtsi                 | 2 +-
 3 files changed, 6 insertions(+), 7 deletions(-)

-- 
2.43.0


