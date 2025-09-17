Return-Path: <devicetree+bounces-218276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A4DB7DA2C
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FB721BC311B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 08:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B799230E0D0;
	Wed, 17 Sep 2025 08:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="K1QP+/yt"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.samsung.com (mailout2.samsung.com [203.254.224.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B1A30E0C2
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758099051; cv=none; b=jCplHoHMT4GIYpck3q93HRhahQd9eoboXSRCj3p/MUdSSsRKjgilkKacGeV39w7c1fLXn6qbkSKAHWX7XwPp4VAQOJ4wjJspno5WIB53h5T39R9+O0i8/e41ht5tvZeUHHtLt9sF77QOhzzsdLynmnQS/ZgXsBnZswWfu6+eW8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758099051; c=relaxed/simple;
	bh=z5AU+AcaSpgLSAp8iiFns+tzDK4hMZBGOsnJYN4yqjc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:MIME-Version:
	 Content-Type:References; b=U5olwQrvr4YcMrk9QvxUgQBtYC5UbU7gdkpHB+sUf5C5uFz1UQQQGFGVzvya6YXK6Ka97+scifml+PrW0K2sXwRSsicsmdyTKOLj/Y2c2t0TxnsqhtJfLBjPtGplzqNuk8G4acUMNj95ae/CWMgSrkSp8hMN4Xe5TngUPHyg5Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=K1QP+/yt; arc=none smtp.client-ip=203.254.224.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20250917085048epoutp02c628f7a25cf51bbff746f9d3e8861156~mBcUQ7ryK1723017230epoutp02d
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:50:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20250917085048epoutp02c628f7a25cf51bbff746f9d3e8861156~mBcUQ7ryK1723017230epoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1758099048;
	bh=gQSI2Z6Vaf3GExSLoiurGcbk31x6P0OBsed/AHWLWVI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K1QP+/ytx2y8HBCcCiCibm4+/s+FabthX9/sQL0Kc+3vz/9MRvLaRpwpngswBgy8u
	 DLU/ITJNU2DVNqTvn0AUjrtfGrpNpVVRKEuY2AzuTBrUDfp22pVOA2Q8+0B6gyAZM5
	 5SjjZoe/Fe9nij7ylw068arLsqMqSZkAA7nAFjQk=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20250917085047epcas5p2e115ee7f90ed7893acbbb81969d42a0a~mBcTlOlw60263602636epcas5p25;
	Wed, 17 Sep 2025 08:50:47 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.91]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4cRXY25GGjz3hhTJ; Wed, 17 Sep
	2025 08:50:46 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250917085045epcas5p2905ed7f307ca892997e14c33ad68f9fa~mBcR1cAXW0743007430epcas5p2T;
	Wed, 17 Sep 2025 08:50:45 +0000 (GMT)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250917085041epsmtip2143cbf9e7da6b24bf6725269cffea700~mBcNd2pqB2767927679epsmtip2c;
	Wed, 17 Sep 2025 08:50:41 +0000 (GMT)
From: Ravi Patel <ravi.patel@samsung.com>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jesper.nilsson@axis.com, lars.persson@axis.com, mturquette@baylibre.com,
	sboyd@kernel.org, alim.akhtar@samsung.com, s.nawrocki@samsung.com,
	cw00.choi@samsung.com
Cc: ravi.patel@samsung.com, ksk4725@coasia.com, smn1196@coasia.com,
	linux-arm-kernel@axis.com, krzk@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	pjsin865@coasia.com, gwk1013@coasia.com, bread@coasia.com,
	jspark@coasia.com, limjh0823@coasia.com, lightwise@coasia.com,
	hgkim05@coasia.com, mingyoungbo@coasia.com, shradha.t@samsung.com,
	swathi.ks@samsung.com, kenkim@coasia.com
Subject: [PATCH 5/7] dt-bindings: arm: axis: Add ARTPEC-9 alfred board
Date: Wed, 17 Sep 2025 14:20:02 +0530
Message-ID: <20250917085005.89819-6-ravi.patel@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250917085005.89819-1-ravi.patel@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250917085045epcas5p2905ed7f307ca892997e14c33ad68f9fa
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250917085045epcas5p2905ed7f307ca892997e14c33ad68f9fa
References: <20250917085005.89819-1-ravi.patel@samsung.com>
	<CGME20250917085045epcas5p2905ed7f307ca892997e14c33ad68f9fa@epcas5p2.samsung.com>

Document the Axis ARTPEC-9 SoC binding and the alfred board
which uses ARTPEC-9 SoC.

Signed-off-by: Ravi Patel <ravi.patel@samsung.com>
---
 Documentation/devicetree/bindings/arm/axis.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/axis.yaml b/Documentation/devicetree/bindings/arm/axis.yaml
index 63e9aca85db7..3062901196a6 100644
--- a/Documentation/devicetree/bindings/arm/axis.yaml
+++ b/Documentation/devicetree/bindings/arm/axis.yaml
@@ -31,6 +31,12 @@ properties:
               - axis,artpec8-grizzly
           - const: axis,artpec8
 
+      - description: Axis ARTPEC-9 SoC board
+        items:
+          - enum:
+              - axis,artpec9-alfred
+          - const: axis,artpec9
+
 additionalProperties: true
 
 ...
-- 
2.17.1


