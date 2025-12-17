Return-Path: <devicetree+bounces-247251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCF2CC6448
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 07:34:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1EA083029B5E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 06:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF3E313E38;
	Wed, 17 Dec 2025 06:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="nmO+CsoA"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FEC03128CC;
	Wed, 17 Dec 2025 06:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765953283; cv=none; b=dQ/pzxofj5MG1+94ECPCUx+L+vGN4M9ANP0MdO3Ztc7qZRxRLOmpnnP8CQr39bY367PbdD1+lfumr/ihTtBjszUD0QRwXu9aMragvNBvSQiwG4R4YOTy1U6aUm9iRBrrwknwrxdSdIJj0SfvEfjM/0BrG0CJugTxX/Mr0RGYjpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765953283; c=relaxed/simple;
	bh=9oYQNK4WmXFh3Cy2ofDXQYnsrLoXQ8mmqzi3FfTrWwA=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ot1cDE/rcy8Y18/PxKU8WhELjpAzWSWNt0otx5XJyT3UHiBXI4sOixvlHSU5Zk0bpjMvAnxTHs9c8CPYbv9w+dWVCkMW56mwWLKkHNhsJO9sXDxScvdIJGVWH4KxDILG/nlZCUcrk3jXEohnxr4bbbx8LR6DleEeMH/Lxrw4xPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=nmO+CsoA; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: 73742accdb1211f0b33aeb1e7f16c2b6-20251217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=rtCOBMOAcLhzdU56zPzHYieYlK5X0cs0WzXrXcU35tM=;
	b=nmO+CsoAOXSwNLro6QRc+xaSCeT3HTfFwMP7GqoFYcDwzpduLOhp1yr0Cp/pxSrFowRxG1ppuBTxAmgnK45q1q71QvPOFoPiYfrvPXDMwKZYtU4+WuUgQdN5TP0DFOzit1PAL8dDrlur2Pl3AzCOusLVN0NM5TrREsMtm4EvrDg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:23f0378a-a1ee-47ca-9df5-1325274aa284,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:663288c6-8a73-4871-aac2-7b886d064f36,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102|888|898,TC:-5,Content:0|15|50,ED
	M:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 73742accdb1211f0b33aeb1e7f16c2b6-20251217
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1469727451; Wed, 17 Dec 2025 14:34:34 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 17 Dec 2025 14:34:32 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 14:34:32 +0800
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
Subject: [PATCH v2 0/4] soc: mediatek: Add devapc support for MT8189
Date: Wed, 17 Dec 2025 14:34:09 +0800
Message-ID: <20251217063429.1157084-1-xiaoshun.xu@mediatek.corp-partner.google.com>
X-Mailer: git-send-email 2.45.2
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


From: Xiaoshun Xu <xiaoshun.xu@mediatek.com>

Based on tag: next-20251216, linux-next/master

This series of patches add support for Mediatek devapc of MT8189 soc.

Changes in v2:
  - Updated cover letter subject
  - Updated yaml for dt-bindings
  - Add support for MT8189 devapc
  - Refine devapc clock control flow
  - Refine devapc interrupt handler

Changes in v1:
Xiaoshun Xu (4):
  dt-bindings: soc: mediatek: devapc: Add bindings for MT8189
  soc: mediatek: mtk-devapc: Add support for MT8189 devapc
  soc: mediatek: mtk-devapc: refine devapc clock control
  soc: mediatek: mtk-devapc: refine devapc interrupt handler

 .../bindings/soc/mediatek/devapc.yaml         |  10 +-
 drivers/soc/mediatek/mtk-devapc.c             | 189 ++++++++++++++----
 2 files changed, 159 insertions(+), 40 deletions(-)

--
2.45.2


