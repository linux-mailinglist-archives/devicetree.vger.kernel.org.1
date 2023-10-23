Return-Path: <devicetree+bounces-10815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DD07D2CE4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:38:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A52211C20A1B
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 068F8F4F8;
	Mon, 23 Oct 2023 08:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="krtyTdHD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39273125AE
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:38:51 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 563F4D67;
	Mon, 23 Oct 2023 01:38:50 -0700 (PDT)
X-UUID: 93829532717f11eea33bb35ae8d461a2-20231023
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=SRNqRps3CGBBaZ+7ttdHnWTO7l+/Fifh5VHyZDlIus0=;
	b=krtyTdHDYttRgyfDsNbQi2WAVQTj63HD9u0PhxdDt2h59avClgBKD2yfSkqU/l88KtgZUA/GzGK2CQBqSTXOMvsiNW8sqLbhsxusknFoqgSs3p4h0jg03XTTC7E78wz5TTyp9QZooMuczycKyVbO04xVqdxzAamgRiQB6oFf2Qw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:1b77de31-cf47-4ff9-8180-cabfaf0db096,IP:0,U
	RL:0,TC:0,Content:100,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:100
X-CID-META: VersionHash:5f78ec9,CLOUDID:81d08494-10ce-4e4b-85c2-c9b5229ff92b,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:801|102,TC:nil,Content:3,EDM:-3,IP:n
	il,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR
	:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 93829532717f11eea33bb35ae8d461a2-20231023
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <jason-ch.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 680619989; Mon, 23 Oct 2023 16:38:44 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 23 Oct 2023 16:38:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 23 Oct 2023 16:38:43 +0800
From: Jason-ch Chen <jason-ch.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Eugen Hristev
	<eugen.hristev@collabora.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
	"Alexandre Mergnat" <amergnat@baylibre.com>
CC: =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?=
	<nfraprado@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
	jason-ch chen <Jason-ch.Chen@mediatek.com>
Subject: [PATCH v6 3/4] dt-bindings: soc: mediatek: pwrap: Modify compatible for MT8188
Date: Mon, 23 Oct 2023 16:38:38 +0800
Message-ID: <20231023083839.24453-4-jason-ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20231023083839.24453-1-jason-ch.chen@mediatek.com>
References: <20231023083839.24453-1-jason-ch.chen@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--1.247500-8.000000
X-TMASE-MatchedRID: 2JzysEMO32XU4D7YCSb+lOLdprnA5EQRVGf/uPixyaHfc2Xd6VJ+yugY
	NLLnK4fdLYexjI/F2s7xHXxxAO/d2SaIC0lz+Wv3dARARTk4h599LQinZ4QefPcjNeVeWlqY+gt
	Hj7OwNO28bRUed1HGAun91R5L5gookHCWXgkwWCVyIxe86Rg2l4s4lMw1m4/iSdKh13FOPiZ/6A
	dUqv4o1T5cNYcpx6Vm1ZmrWLjqccMCLX9BIDsxInZrUbEZipAEiWT09mQz7szw9kH8zAy44aOuV
	Lnx3A74
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--1.247500-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: E477473E303D34B14628D0F01BADA993E88918BB46809C122074819BEF6D92EA2000:8
X-MTK: N

From: jason-ch chen <Jason-ch.Chen@mediatek.com>

The reason for changing the patch was that while MT8188 uses the same
pwrap as MT8195, the original code was only applicable to 'compatible =
"mediatek,mt8188-pwrap"'. To resolve the DTBS check warning that
'['mediatek,mt8188-pwrap', 'mediatek,mt8195-pwrap', 'syscon'] is too
long', it is necessary to modify the code.

Signed-off-by: jason-ch chen <Jason-ch.Chen@mediatek.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml    | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml b/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
index a06ac2177444..4737e5f45d54 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
+++ b/Documentation/devicetree/bindings/soc/mediatek/mediatek,pwrap.yaml
@@ -41,7 +41,6 @@ properties:
               - mediatek,mt8173-pwrap
               - mediatek,mt8183-pwrap
               - mediatek,mt8186-pwrap
-              - mediatek,mt8188-pwrap
               - mediatek,mt8195-pwrap
               - mediatek,mt8365-pwrap
               - mediatek,mt8516-pwrap
@@ -50,6 +49,11 @@ properties:
               - mediatek,mt8186-pwrap
               - mediatek,mt8195-pwrap
           - const: syscon
+      - items:
+          - enum:
+              - mediatek,mt8188-pwrap
+          - const: mediatek,mt8195-pwrap
+          - const: syscon
 
   reg:
     minItems: 1
-- 
2.18.0


