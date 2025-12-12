Return-Path: <devicetree+bounces-246009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 154DFCB7BD4
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:15:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AEE43023A23
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DF5296BD8;
	Fri, 12 Dec 2025 03:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Sza5faWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63342285CA4;
	Fri, 12 Dec 2025 03:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765509308; cv=none; b=bisosW36z4y82jCNh8bzO+DImP2EPbYzFQCFDSIMrGRbcj1he6sAvLRQ5zt1Z9wG8ggFIXOicwYbkCz1pqNjIPMbqeBXSmen7Nb5QVWCgutZTP3N7VloosNbOrqTX6LyuShDVRlp3Tjzc9+Am3Ngmzh74C0qiuH2spIjkuCtPcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765509308; c=relaxed/simple;
	bh=171cQJEJRtgbLCsZCLPe/pSF3FS8PYCZyvjII47YsmM=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=q0ovyl16cRq8HKCBieSLyS/NfAHIaMElm1WJTP8Yi9rsfjJgRbjtYGT+x9rAME0zWh8bKyMARro0y5nxbWMDq+zu+zIQ/a5aM9uQPiwDDDTEpyxvSw+nJ8gEaCAfzOGX25P9mPFv4kEn2oTMZwudamd0fkFkLNS6il0RAq1h/Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Sza5faWF; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=reject dis=none) header.from=mediatek.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=mediatek.corp-partner.google.com
X-UUID: be02cec6d70811f0b33aeb1e7f16c2b6-20251212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=FPKF2r4D2AqXgn4tnEGPB9oAIHy/c5u5kiIsp8cFLww=;
	b=Sza5faWFLZPxh4C79Nb8goFsxFuRjfKOD+0m+5eAEnsxPNFHD8/+a1/qbBA8FMEhuFp5evjKTvRs0SMKLpywXqAzGvQNNpS+3v54vjvZby95eL6rDoe2/j51xmxBxOWsaS7upxuQD3CNTSrjxM8d7sZkFCAbVHLPkmCZCwBaiJk=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.6,REQID:3003bc9c-ef6d-45e4-9e97-1c87388d0941,IP:0,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:0
X-CID-META: VersionHash:a9d874c,CLOUDID:79655ac6-8a73-4871-aac2-7b886d064f36,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102|888|898,TC:-5,Content:0|15|50,ED
	M:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: be02cec6d70811f0b33aeb1e7f16c2b6-20251212
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.corp-partner.google.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1301740816; Fri, 12 Dec 2025 11:14:59 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 12 Dec 2025 11:14:58 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1748.26 via Frontend Transport; Fri, 12 Dec 2025 11:14:58 +0800
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
Subject: [PATCH 0/4] *** SUBJECT HERE ***
Date: Fri, 12 Dec 2025 11:13:41 +0800
Message-ID: <20251212031450.489128-1-xiaoshun.xu@mediatek.corp-partner.google.com>
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

v1:
1. Add dt-bindings compatible and vio-idx-num attribute of MT8189
2. Add support DEVAPC of MT8189
3. Refine MT8189 DEVAPC clock control flow
4. Refine MT8189 DEVAPC interrupt handler

*** BLURB HERE ***

xiaoshun.xu (4):
  dt-bindings: soc: devapc: Add for support MT8189
  soc: mediatek: mtk-devapc: Add support for MT8189 DEVAPC
  soc: mediatek: mtk-devapc: refine DEVAPC clock control
  soc: mediatek: mtk-devapc: refine devapc interrupt handler

 .../bindings/soc/mediatek/devapc.yaml         |   6 +
 drivers/soc/mediatek/mtk-devapc.c             | 176 ++++++++++++++----
 2 files changed, 144 insertions(+), 38 deletions(-)

--
2.45.2


