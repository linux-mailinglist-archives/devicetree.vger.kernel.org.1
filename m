Return-Path: <devicetree+bounces-287739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iImNAQFU4GkNfAAAu9opvQ
	(envelope-from <devicetree+bounces-287739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 05:14:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAE9409E18
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 05:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E03E6303A4ED
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 03:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB2092BEC52;
	Thu, 16 Apr 2026 03:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="Ug3WBcCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038AE27B34E;
	Thu, 16 Apr 2026 03:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.61.82.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776309188; cv=none; b=WytJAHEyy7zjspF41LCXM8ZRYzw9+/DjrqFvDbSDdYIXJ9Ga4+5NeLzELC/kGgaCODKxaYVv3P8YTaWfi56ORKdcOC475bui9ZP6Ts1/zYqBPK9XUvKd3aj9HeaZc5PQ9kLkbJcvH19lE/lDYRpapC7C7tUBHTbJtmZNUz6E9Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776309188; c=relaxed/simple;
	bh=6+QVgHTNtoloKP3HspN0B1/WB8NorNprsw4k0Xh9sCw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U8Kwh3xn5rCOn6L8IuwED8msbsbLBdbwc3H5YCiFnPWr5vXRhF76zROvbm2Zos3KWFBnP25VPYSTW22TG/3vWHDSR8d9WVj+RhdUhuT9DWtJJeHl7rqktJJQtAQ0xHdy8GtKJ5OhbWxeuTrvM8iyp73BCg//uLKCPcl/v2pmIbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=Ug3WBcCR; arc=none smtp.client-ip=210.61.82.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 2d16fd32394211f19a16598d5ca7f8ec-20260416
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=DCLd1lZvH8brKu2Kcl503V3/+5qyEGb5W2m9w1XK3dk=;
	b=Ug3WBcCRdqEDBGiF072iHxP5pJpA/z60kcfxqcg9md+gjEQuJJh87hJDb3YiFpjVbejSbXqZQsmLyiROPVxiW31BdlAAKaNtR4+oOfbFTbdHj5kAtGOflDq/LjFXKVc+MRTCCqksv1p+gGddCtj7atPuTz+GmJh2PSSEy7B9wpg=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:30576726-e10b-491d-a3ab-955dff4b32ad,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:2796eb24-cb5c-4236-a89a-9a7fb20c9bc4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|836|865|888|898,TC:-5,Cont
	ent:0|15|50,EDM:-3,IP:nil,URL:0,File:130,RT:0,Bulk:nil,QS:nil,BEC:-1,COL:0
	,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 2d16fd32394211f19a16598d5ca7f8ec-20260416
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <xiaoshun.xu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2106952652; Thu, 16 Apr 2026 11:13:01 +0800
Received: from mtkmbs11n1.mediatek.inc (172.21.101.185) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 16 Apr 2026 11:12:59 +0800
Received: from mtksitap99.mediatek.inc (10.233.130.16) by
 mtkmbs11n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.2562.29 via Frontend Transport; Thu, 16 Apr 2026 11:12:59 +0800
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
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH v3 4/6] dt-bindings: soc: mediatek: devapc: Add bindings for MT8189
Date: Thu, 16 Apr 2026 11:12:07 +0800
Message-ID: <20260416031231.2932493-5-xiaoshun.xu@mediatek.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260416031231.2932493-1-xiaoshun.xu@mediatek.com>
References: <20260416031231.2932493-1-xiaoshun.xu@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-287739-lists,devicetree=lfdr.de];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.5.7.0.0.1.0.0.e.5.1.c.3.0.0.6.2.asn6.rspamd.com:server fail];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xiaoshun.xu@mediatek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[0.155.191.24:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mediatek.com:email,mediatek.com:dkim,mediatek.com:mid]
X-Rspamd-Queue-Id: 6AAE9409E18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Extend the devapc device tree bindings to support the MediaTek MT8189
SoC. This includes:

- Adding "mediatek,mt8189-devapc" to the list of compatible strings.
- Introducing the "vio-idx-num" property to specify the number of bus
  slaves managed by devapc.

These changes enable proper configuration and integration of devapc on
MT8189 platforms, ensuring accurate device matching and resource
allocation in the device tree.

Signed-off-by: Xiaoshun Xu <xiaoshun.xu@mediatek.com>
---
 .../devicetree/bindings/soc/mediatek/devapc.yaml       | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml b/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
index 99e2caafeadf..06a096440331 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/devapc.yaml
@@ -14,13 +14,14 @@ description: |
   analysis and countermeasures.
 
 maintainers:
-  - Neal Liu <neal.liu@mediatek.com>
+  - Xiaoshun Xu <xiaoshun.xu@mediatek.com>
 
 properties:
   compatible:
     enum:
       - mediatek,mt6779-devapc
       - mediatek,mt8186-devapc
+      - mediatek,mt8189-devapc
 
   reg:
     description: The base address of devapc register bank
@@ -30,6 +31,10 @@ properties:
     description: A single interrupt specifier
     maxItems: 1
 
+  vio-idx-num:
+    description: Describe the number of bus slaves controlled by devapc
+    $ref: /schemas/types.yaml#/definitions/uint32
+
   clocks:
     description: Contains module clock source and clock names
     maxItems: 1
@@ -42,8 +47,6 @@ required:
   - compatible
   - reg
   - interrupts
-  - clocks
-  - clock-names
 
 additionalProperties: false
 
@@ -55,6 +58,7 @@ examples:
     devapc: devapc@10207000 {
       compatible = "mediatek,mt6779-devapc";
       reg = <0x10207000 0x1000>;
+      vio-idx-num = <132>;
       interrupts = <GIC_SPI 168 IRQ_TYPE_LEVEL_LOW>;
       clocks = <&infracfg_ao CLK_INFRA_DEVICE_APC>;
       clock-names = "devapc-infra-clock";
-- 
2.45.2


