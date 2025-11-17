Return-Path: <devicetree+bounces-239532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A791C6618B
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 21:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id A756D295D4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 20:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2585432ABD0;
	Mon, 17 Nov 2025 20:22:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.prodrive-technologies.com (mail.prodrive-technologies.com [212.61.153.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F83C30AAB6;
	Mon, 17 Nov 2025 20:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.61.153.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763410949; cv=none; b=KcB6d4PrrmKzb131vBV0dmeCdi+KKPMNXwsZmSHjeBMdM9yioUxs1g/+njmAfPo5TWv5o7X1L5ROGLK7JOKJLA4ZNgeZIhwdxl2mOl1Jk9fSzr/SrO8rydyNIDBuzAQ+S4RP/hHGGI9GINWuCSxFKM54tF6MG5vSUNpL+v891Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763410949; c=relaxed/simple;
	bh=VTPv5qw/PNjIbjAlwpTbSfqByThQJDS/EOeJxYYGnfw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=CF2i57jYOhkWT9EKSFlspTUJiIIyz3d7IPU1SWTcB/7+qEqW24Mxh2pYSqv+Sa7i8g+QdeZ3ha6+G4TqiJV16VfMuA7NTft8wb6kH7ew+NzFzfp37cpefnNU5xi/SWctFJGslVp2upRb6e/D2qmEjHpjJsPFwoJ3jmruUJpvKJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=prodrive-technologies.com; spf=pass smtp.mailfrom=prodrive-technologies.com; arc=none smtp.client-ip=212.61.153.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=prodrive-technologies.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=prodrive-technologies.com
Received: from EXCOP01.bk.prodrive.nl (10.1.0.22) by EXCOP01.bk.prodrive.nl
 (10.1.0.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4; Mon, 17 Nov
 2025 21:22:17 +0100
Received: from lnxdevrm02.prodrive.nl (10.1.1.121) by EXCOP01.bk.prodrive.nl
 (10.1.0.22) with Microsoft SMTP Server id 15.2.1544.4 via Frontend Transport;
 Mon, 17 Nov 2025 21:22:17 +0100
From: Martijn de Gouw <martijn.de.gouw@prodrive-technologies.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, "Rob
 Herring" <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, Robin Gong <yibin.gong@nxp.com>
CC: Martijn de Gouw <martijn.de.gouw@prodrive-technologies.com>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v3 1/2] dt-bindings: regulator: pca9540: add debounce timer configuration
Date: Mon, 17 Nov 2025 21:22:13 +0100
Message-ID: <20251117202215.1936139-1-martijn.de.gouw@prodrive-technologies.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Make the different debounce timers configurable from the devicetree.
Depending on the board design, these have to be set different than the
default register values.

Signed-off-by: Martijn de Gouw <martijn.de.gouw@prodrive-technologies.com>
---
 .../regulator/nxp,pca9450-regulator.yaml      | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml b/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
index a5486c36830f0..8ae2fa08d47b9 100644
--- a/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/nxp,pca9450-regulator.yaml
@@ -124,6 +124,30 @@ properties:
       When WDOG_B signal is asserted a warm reset will be done instead of cold
       reset.
 
+  nxp,pmic-on-req-on-debounce-us:
+    enum: [ 120, 20000, 100000, 750000 ]
+    description: Debounce time for PMIC_ON_REQ high.
+
+  nxp,pmic-on-req-off-debounce-us:
+    enum: [ 120, 2000 ]
+    description: Debounce time for PMIC_ON_REQ is asserted low
+
+  nxp,power-on-step-ms:
+    enum: [ 1, 2, 4, 8]
+    description: Time step configuration during power on sequence
+
+  nxp,power-down-step-ms:
+    enum: [ 2, 4, 8, 16 ]
+    description: Time step configuration during power down sequence
+
+  nxp,restart-ms:
+    enum: [ 250, 500 ]
+    description: Time to stay off regulators during Cold reset
+
+  npx,pmic-rst-b-debounce-ms:
+    enum: [ 10, 50, 100, 500, 1000, 2000, 4000, 8000 ]
+    description: PMIC_RST_B debounce time
+
 required:
   - compatible
   - reg
-- 
2.39.2


