Return-Path: <devicetree+bounces-25713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C73081440C
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 09:58:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 197D31F233F0
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 08:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B09E3171AC;
	Fri, 15 Dec 2023 08:57:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SHSQR01.spreadtrum.com (mx1.unisoc.com [222.66.158.135])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF46F17981;
	Fri, 15 Dec 2023 08:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=unisoc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=unisoc.com
Received: from dlp.unisoc.com ([10.29.3.86])
	by SHSQR01.spreadtrum.com with ESMTP id 3BF8upUE027909;
	Fri, 15 Dec 2023 16:56:51 +0800 (+08)
	(envelope-from Chunyan.Zhang@unisoc.com)
Received: from SHDLP.spreadtrum.com (bjmbx02.spreadtrum.com [10.0.64.8])
	by dlp.unisoc.com (SkyGuard) with ESMTPS id 4Ss2xL0H9zz2PfFhY;
	Fri, 15 Dec 2023 16:50:46 +0800 (CST)
Received: from ubt.spreadtrum.com (10.0.73.88) by BJMBX02.spreadtrum.com
 (10.0.64.8) with Microsoft SMTP Server (TLS) id 15.0.1497.23; Fri, 15 Dec
 2023 16:56:49 +0800
From: Chunyan Zhang <chunyan.zhang@unisoc.com>
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Lee
 Jones <lee@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-serial@vger.kernel.org>,
        Baolin Wang
	<baolin.wang@linux.alibaba.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan
 Zhang <zhang.lyra@gmail.com>,
        Chunyan Zhang <chunyan.zhang@unisoc.com>,
        LKML
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 1/4] dt-bindings: mfd: sprd: Add support for UMS9620
Date: Fri, 15 Dec 2023 16:56:27 +0800
Message-ID: <20231215085630.984892-2-chunyan.zhang@unisoc.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215085630.984892-1-chunyan.zhang@unisoc.com>
References: <20231215085630.984892-1-chunyan.zhang@unisoc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SHCAS03.spreadtrum.com (10.0.1.207) To
 BJMBX02.spreadtrum.com (10.0.64.8)
X-MAIL:SHSQR01.spreadtrum.com 3BF8upUE027909

Add bindings for Unisoc UMS9620 system global registers which provide
register maps for clocks.

Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
---
 Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml b/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
index 996bd4a17ca3..a750fa23d7e7 100644
--- a/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
+++ b/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
@@ -19,7 +19,9 @@ description:
 properties:
   compatible:
     items:
-      - const: sprd,ums512-glbregs
+      - enum:
+          - sprd,ums512-glbregs
+          - sprd,ums9620-glbregs
       - const: syscon
       - const: simple-mfd
 
-- 
2.41.0


