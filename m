Return-Path: <devicetree+bounces-139901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CCAA17783
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 07:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 694FA3AA018
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 06:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843591B21B4;
	Tue, 21 Jan 2025 06:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="BbZCrBMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B71B0F10;
	Tue, 21 Jan 2025 06:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737442195; cv=none; b=GsJpRc4SYEesrs/DOcyqmiU+d03eGCDgLYMfTe512t7fwvwz52AB7HpYbIoPKwsLWJaT1/XNxvhkRbE7uiMOfjod3xoFVxzhgiVVx49RrI/VMWc+KAfnc+4qoL0h3FDC49DWoXmEgA3ajQnBNZZi7oM5l5rluovkH0JX7XlvYi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737442195; c=relaxed/simple;
	bh=8NTqBanm/p/LB0ecoG9fBDq1ZC0H94AgywFhdRTULbY=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BIAJipWQK/ZI0mCK3hCIszJy2XWCdE8tQjkIy/s9ClZPZ2ONB971hY8MdZX99Dc+GU8IsVm3ibL30ughvNtPN0avYaMgBnQgHwq2StGwtthvo8aPgLx7+y+eIoXi85HAwMtb6OBruF+GMf0zgTM9NERQZMkso1khk1YjXGQEgZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=BbZCrBMv; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: e2268ad0d7c311efbd192953cf12861f-20250121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=Nv0nlySpmHEDQFS9UhiHgOMyua1HM2zv947aKDDgC2E=;
	b=BbZCrBMvcxCS8ptn2Rz5usqBeTVeAZteKTgeh1zIZ37weKr1d03Ys0twrCsxembRJCWyAMW9GWFW3axvfJ0Wr6Qt1cvetQs8SyHWiszcAfELa+46JjhHDRcfzfojs8N7sUmFWD3s5+faF4uOub40LFh21YwULh2du3JtfYqJjW4=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:8f8ecbcf-ae80-4a31-89b2-c5cb5c4e865f,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:60aa074,CLOUDID:35895d85-0f10-4f52-bb41-91703793d3e4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0|50,EDM:-3,IP:ni
	l,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES
	:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULS
X-UUID: e2268ad0d7c311efbd192953cf12861f-20250121
Received: from mtkmbs09n1.mediatek.inc [(172.21.101.35)] by mailgw02.mediatek.com
	(envelope-from <friday.yang@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 641294439; Tue, 21 Jan 2025 14:49:38 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Tue, 21 Jan 2025 14:49:37 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Tue, 21 Jan 2025 14:49:36 +0800
From: Friday Yang <friday.yang@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>, Krzysztof Kozlowski <krzk@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Friday Yang
	<friday.yang@mediatek.com>
Subject: [PATCH v3 0/2] Add SMI reset and clamp for MediaTek MT8188 SoC
Date: Tue, 21 Jan 2025 14:49:25 +0800
Message-ID: <20250121064934.13482-1-friday.yang@mediatek.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Based on tag: next-20250120, linux-next/master

When we enable/disable power domain, the SMI LARBs linked to this power
domain could be affected by the bus glitch. To avoid this issue, SMI
need to apply clamp and reset opereations.

This patch mainly add these functions:
1) Register genpd callback for SMI LARBs and handle this power domain
   status change in SMI driver.
2) Add bindings to support SMI Sub Common for MT8188.
3) Add bindings to support SMI larbs reset opearation.

Changes v3:
- Remove redundant descriptions for 'resets' and 'reset-names'
- Modify the requirements for 'resets' and 'reset-names'
- Rename 'mtk_smi_larb_parse_clamp' to 'mtk_smi_larb_parse_clamp_optional'
- Rename 'mtk_smi_larb_parse_reset' to 'mtk_smi_larb_parse_reset_optional'
- Merge 'mtk_smi_larb_clamp_protect_enable' and
  'mtk_smi_larb_clamp_protect_disble' into one function
- Modify the definition for mtk_smi_larb_clamp_port_mt8188,
  use 'larbid' as the index of the array
- Use 'syscon_regmap_lookup_by_phandle' instead of 'device_node_to_regmap'
- Do Not parse 'resets', just check the return value of
  'devm_reset_control_get'
- Add 'has_gals' flag for 'mtk_smi_sub_common_mt8188'

v2:
https://lore.kernel.org/lkml/20241120063701.8194-2-friday.yang@mediatek.com/
https://lore.kernel.org/lkml/20241120063701.8194-3-friday.yang@mediatek.com/

friday.yang (2):
  dt-bindings: memory: mediatek: Add support for SMI reset and clamp
  memory: mtk-smi: mt8188: Add support for SMI reset and clamp

 .../mediatek,smi-common.yaml                  |   2 +
 .../memory-controllers/mediatek,smi-larb.yaml |  20 +++
 drivers/memory/mtk-smi.c                      | 141 +++++++++++++++++-
 3 files changed, 159 insertions(+), 4 deletions(-)

--
2.46.0


