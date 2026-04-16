Return-Path: <devicetree+bounces-287735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id VntfBcNT4GkNfAAAu9opvQ
	(envelope-from <devicetree+bounces-287735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 05:13:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B636409DCB
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 05:13:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F1DC309712B
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 03:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3226726ED45;
	Thu, 16 Apr 2026 03:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="mAJHxGpf"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A1319CD03;
	Thu, 16 Apr 2026 03:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776309180; cv=none; b=Op1ZdHp85N+accnWg2mpVlYC+zLbgjnXYSj2N9R/3WX+DIkQDPYoWxKPaA73i4WsihXLnG5dr2wx8H5NhlY5U2KRAO0c+DeSuEBy2fKflqsGbOfzMJQ5bCp7Bh45n95UmEB3dEAw5QLsHCNWm3dE9xJ4FaQoo3TfmaHS+zhG2DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776309180; c=relaxed/simple;
	bh=3l3aR/xUw3gzKQh5JkBKYz6Dyo8szPv3RRmNpmE2PgM=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=KfvtLU8nL7Oy1VVbNNjQRMk/hj0vQuzo9Mx7ywD95Ecz+0o4cCjye3MLVkQegbvYUz9xgEE+Ish/H9XbXn5ZCErCxjD8Z7ZWPmaixoDQwodAwGG1rqNXB314IJrl/RqKa0x1OVmuP/caDuHF5HQrl5iuwkwCdRhWjH0HSpPhEBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=mAJHxGpf; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 27467928394211f1ae70033691e9ac7d-20260416
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=f0PQ1q7dwuqOBFQH2fGiZw4qdYkUa9V4Qn3JGatAdH8=;
	b=mAJHxGpf7hxBYjPnrCl1SyN2f0UZLBnSuj3bUoW/RDTYQEvP+33aSf2LGnPaS3Xa9YgT70emt7EN9Ppsq1xq3h+Iu0ikfCQHCk6WfXUJHyoDCBTYCohHHDx7rFssor1oTOGZYDFbGgiNNB/jNOL2DE8v4J39N1m9n8sF1IRf0wg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:2a33fd76-3fcb-4730-8a45-3259bda86443,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:9d95eb24-cb5c-4236-a89a-9a7fb20c9bc4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102|836|865|888|898,TC:-5,Content:0|
	15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-1,COL:0,OSI:0
	,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 27467928394211f1ae70033691e9ac7d-20260416
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1907121294; Thu, 16 Apr 2026 11:12:51 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 mtkmbs13n1.mediatek.inc (172.21.101.193) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 16 Apr 2026 11:12:50 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Thu, 16 Apr 2026 11:12:50 +0800
From: Xiaoshun Xu <xiaoshun.xu@mediatek.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
	<matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Xiaoshun Xu
	<xiaoshun.xu@mediatek.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	Sirius Wang <sirius.wang@mediatek.com>, Vince-wl Liu
	<vince-wl.liu@mediatek.com>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, Xiaoshun Xu
	<xiaoshun.xu@mediatek.corp-partner.google.com>
Subject: [PATCH v3 0/6] soc: mediatek: Add devapc support
Date: Thu, 16 Apr 2026 11:12:03 +0800
Message-ID: <20260416031231.2932493-1-xiaoshun.xu@mediatek.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-287735-lists,devicetree=lfdr.de];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.c.6.3.0.1.0.0.e.4.0.c.3.0.0.6.2.asn6.rspamd.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	DKIM_TRACE(0.00)[mediatek.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xiaoshun.xu@mediatek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:dkim,mediatek.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3B636409DCB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Xiaoshun Xu <xiaoshun.xu@mediatek.corp-partner.google.com>

Based on tag: next-20260415, linux-next/master

This series of patches add support for Mediatek devapc of MT8189 and
MT8196 soc.

Xiaoshun Xu (6):
  soc: mediatek: mtk-devapc: refine devapc interrupt handler
  soc: mediatek: mtk-devapc: refine DEVAPC clock control
  soc: mediatek: mtk-devapc: Add support for MT8189 DEVAPC
  dt-bindings: soc: mediatek: devapc: Add bindings for MT8189
  soc: mediatek: mtk-devapc: Add support for MT8196 DEVAPC
  dt-bindings: soc: mediatek: devapc: Add bindings for MT8196

Changes in v3:
  - Add support for MT8196 devapc
  - Updated yaml for dt-bindings

Changes in v2:
  - Updated cover letter subject
  - Updated yaml for dt-bindings
  - Add support for MT8189 devapc
  - Refine devapc clock control flow
  - Refine devapc interrupt handler

Changes in v1:
  - Add support for MT8189 devapc
  - Updated yaml for MT8189

 .../bindings/soc/mediatek/devapc.yaml         |  11 +-
 drivers/soc/mediatek/mtk-devapc.c             | 197 ++++++++++++++----
 2 files changed, 168 insertions(+), 40 deletions(-)

-- 
2.45.2


