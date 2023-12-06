Return-Path: <devicetree+bounces-22310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B992F807180
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7565A281670
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6ED3C486;
	Wed,  6 Dec 2023 14:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="N5ENjqoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A75ACD1;
	Wed,  6 Dec 2023 06:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1701871274; x=1733407274;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=O4CmXiD4H2GDfd2pvRFzdhdUUelff8b5Vm8JldcwMnQ=;
  b=N5ENjqoNYfex1JREqZgpdQUfxNK12Gule7KMCTHuyI3BbxQI/zAKyB6W
   ydpMkhV6YZmP6KB3QW0oBtXgWfNajRtjfeifv/g2ovrl1Bk6CXA0uZ4yI
   eMhEUyEPhAw1b/xb9E6Ue6esJUUkjcT9/z6lF9K1ooEfygu0e//pmu/Ys
   X/mMoZaa2YdaDzN1T5UhQmfbPjLuzYT6YGKgWLL8Ldf2Ok9uegshJoUnA
   0Ca4fPhHtfFTIZgIc5U1A4YML/YT7OrpO0PV2Iegp6t1b7IKHbx5/Wleh
   pVhRE4NXzclksuBj3DCZlZf/4keUAOtDn20dNQr8+3LPzCM4xVmBZbp33
   A==;
X-IronPort-AV: E=Sophos;i="6.04,255,1695679200"; 
   d="scan'208";a="34361964"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Dec 2023 15:01:11 +0100
Received: from [127.0.1.1] (herburgerg-w2.tq-net.de [10.122.52.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C71FE280084;
	Wed,  6 Dec 2023 15:01:11 +0100 (CET)
From: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Date: Wed, 06 Dec 2023 15:01:01 +0100
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add TQ-Systems LX2160A based
 boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231206-for-ml-tqmlx2160a-v1-1-622e41ae4d8e@ew.tq-group.com>
References: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>
In-Reply-To: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Li Yang <leoyang.li@nxp.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com, 
 gregor.herburger@ew.tq-group.com
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701871271; l=1125;
 i=gregor.herburger@ew.tq-group.com; s=20230829; h=from:subject:message-id;
 bh=Dr13gFEcKVYNuwkxYQOxotlQibTqzU7n4vHfxmO9oqg=;
 b=AmqJjs139gD3wyO4gAAFuQqAbMKe9lGpO8WpbgnCeXu2sFLk6KhObg7CO8tAjdWjDP/QEUZMr
 jETjlVfnG1KCHRMmds/cgGpZ3eya+6ilqV60AP11QpCEX60QMMHEZxh
X-Developer-Key: i=gregor.herburger@ew.tq-group.com; a=ed25519;
 pk=+eRxwX7ikXwazcRjlOjj2/tbDmfVZdDLoW+xLZbQ4h4=

TQMLX2160A is a TQ-Systems GmbH SoM using the LX2160A SoC.
MBLX2160a is the starterkit baseboard for TQMLX2160A.

Signed-off-by: Gregor Herburger <gregor.herburger@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 32b195852a75..97413df64f55 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1476,6 +1476,16 @@ properties:
           - const: solidrun,lx2162a-som
           - const: fsl,lx2160a
 
+      - description:
+          TQ-Systems TQMLX2160A is a series of socketable SOM featuring
+          LX2160A system-on-chip variants. MBLX2160A mainboard can be used a
+          starterkit.
+        items:
+          - enum:
+              - tq,lx2160a-tqmlx2160a-mblx2160a
+          - const: tq,lx2160a-tqmlx2160a
+          - const: fsl,lx2160a
+
       - description: S32G2 based Boards
         items:
           - enum:

-- 
2.34.1


