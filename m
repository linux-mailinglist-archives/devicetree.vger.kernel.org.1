Return-Path: <devicetree+bounces-101646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1975C972CC1
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 11:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32ED1F25BB4
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 09:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 858BB188CB1;
	Tue, 10 Sep 2024 09:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hXaSXFh3";
	dkim=pass (1024-bit key) header.d=amazonses.com header.i=@amazonses.com header.b="UPaiIJzi"
X-Original-To: devicetree@vger.kernel.org
Received: from a7-28.smtp-out.eu-west-1.amazonses.com (a7-28.smtp-out.eu-west-1.amazonses.com [54.240.7.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F89A187871;
	Tue, 10 Sep 2024 09:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.240.7.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725958906; cv=none; b=shSnM6y71SBJF5hnYZ9XAsUiKcYiIxtUTqh/8mbuahpNZj+Kg1MgfW8jgwE/EWvAVhd5GD5gth0YFj6hyonzit+l1nhh8BWhzMcTmAQhEdbpdYTQrqKi1amWU1n0c+WXXuW3q2H86jXNbj23QAhpx0Gzqvl8Ik6NHoGkfs0U0ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725958906; c=relaxed/simple;
	bh=GzLfsDTUMMdGBR6iRZk3PPetRE7pbsieNX4s440SIME=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dtyg0GjvAuPfVYvX61R4AxBcX77bq7tZbf8lrfW6GZ5eUzLm/YgARq8HfopYGYVepWtZc+onHqXC0Msi5eMTB/QjdunvTkhZ3mTiYu45hdyDeKlGSF0Wg+u8uZEIIjyW2uNm23UQWe7Q1sN6wnC4/Es9LGQsVppbvvtOSWvuJz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=amazonses.collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hXaSXFh3; dkim=pass (1024-bit key) header.d=amazonses.com header.i=@amazonses.com header.b=UPaiIJzi; arc=none smtp.client-ip=54.240.7.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazonses.collabora.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1725958902;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=GzLfsDTUMMdGBR6iRZk3PPetRE7pbsieNX4s440SIME=;
	b=hXaSXFh3Xn9vshD81c/7qVKyPw3piq5WqRxzXfC4GVFeQ3UUnO3vX4+D/2I7DOfQ
	H4pfbIfxrQFAPjPXrsA7KKAtv37WCARqeVejxQtV9xGDxexQr4GjRj7y6ZPmfuy34+p
	WMXXqX+HO01Gwskb2sUmDZfWbulvgRfYSfu3pfMPyDWp4EosSvIT02+mvT5NA0MLUAi
	Xtvnj3Y1rURSdld7xl33Es7/N0QZwLPTYV9GjYUuiBG1MK0/P5DMws91QnMCA97g48F
	rshdQ9TkAiPWAR79VIpyIhDbf8/fAonMwmNVJ+NPWwBYqOozz3p5FvG/agc8wwDg3Wl
	uzqxDfnMFQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1725958902;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=GzLfsDTUMMdGBR6iRZk3PPetRE7pbsieNX4s440SIME=;
	b=UPaiIJziNX8fkkVk/YAq72IeeWjbkSozMUh1OxU1D1u3rvPTrFJtPbWcqxbMbprQ
	Iq2LH//8dl6mh1+EeGimNcB0JrfuuJcFY+hK1em/pY4mt7NG7VGzNAGhcdCJkMbUwku
	v3ZiHBaTuTDca3aG8JfeoXc0uAiMvnJhPP/A24CY=
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, shawn.sung@mediatek.com, 
	yu-chang.lee@mediatek.com, ck.hu@mediatek.com, 
	jitao.shi@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, wenst@chromium.org, 
	kernel@collabora.com, sui.jingfeng@linux.dev, michael@walle.cc, 
	sjoerd@collabora.com, Alexandre Mergnat <amergnat@baylibre.com>, 
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH v9 2/3] dt-bindings: arm: mediatek: mmsys: Add OF graph support for board path
Date: Tue, 10 Sep 2024 09:01:42 +0000
Message-ID: <01020191db2ad3bd-dafdac93-c1ab-4ef4-9287-5a17c3dccfd4-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240910090127.78905-1-angelogioacchino.delregno@collabora.com>
References: <20240910090127.78905-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.10-54.240.7.28

Document OF graph on MMSYS/VDOSYS: this supports up to three DDP paths
per HW instance (so potentially up to six displays for multi-vdo SoCs).

The MMSYS or VDOSYS is always the first component in the DDP pipeline,
so it only supports an output port with multiple endpoints - where each
endpoint defines the starting point for one of the (currently three)
possible hardware paths.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Tested-by: Michael Walle <mwalle@kernel.org> # on kontron-sbc-i1200
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/arm/mediatek/mediatek,mmsys.yaml | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
index b3c6888c1457..3f4262e93c78 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
@@ -93,6 +93,34 @@ properties:
   '#reset-cells':
     const: 1
 
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Output port node. This port connects the MMSYS/VDOSYS output to
+      the first component of one display pipeline, for example one of
+      the available OVL or RDMA blocks.
+      Some MediaTek SoCs support multiple display outputs per MMSYS.
+    properties:
+      endpoint@0:
+        $ref: /schemas/graph.yaml#/properties/endpoint
+        description: Output to the primary display pipeline
+
+      endpoint@1:
+        $ref: /schemas/graph.yaml#/properties/endpoint
+        description: Output to the secondary display pipeline
+
+      endpoint@2:
+        $ref: /schemas/graph.yaml#/properties/endpoint
+        description: Output to the tertiary display pipeline
+
+    anyOf:
+      - required:
+          - endpoint@0
+      - required:
+          - endpoint@1
+      - required:
+          - endpoint@2
+
 required:
   - compatible
   - reg
-- 
2.46.0


