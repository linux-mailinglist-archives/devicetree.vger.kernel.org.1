Return-Path: <devicetree+bounces-79774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B1D916D23
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 17:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B63E32824E1
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 15:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9422816FF4F;
	Tue, 25 Jun 2024 15:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="eX+cEiFI"
X-Original-To: devicetree@vger.kernel.org
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF6C16F8E7;
	Tue, 25 Jun 2024 15:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.248
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719329614; cv=none; b=F6LEoE5p2iRucCbBLkpSnXjpM/n8b5MO0wv/XKFQKd/y9ZeRr/58lnyx+5tnWrY4U4BNTrYg11XpxpazmXvtonCT7EH3uV8KhtMOHbMRbZKa7dValizih20vGEdoLDxH+50Eyt08GkDSgiHvc1RN0s/3rTuSo5F1u2+mEmtYVzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719329614; c=relaxed/simple;
	bh=C/eJ2oldCk7CM6mmg1mVPEzlNezqURJcD7otGNJc+Yk=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qt4giYI8XDgvLIUbfBLgLSs5yUmE/OLq4VjRkecR3PmuNpjJHc86uBYREAd9k7JU8qDqPuuxHTKsJFk+yhHbqMDklgvcTaBrp2N3FMU+fv5oBn0JnbsqztxDjcMXeHPnaCFuhflYtl3N1EWCUdDphNrBy7a4fbwPHZcPYvUEbF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=eX+cEiFI; arc=none smtp.client-ip=198.47.23.248
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 45PFXQRl076632;
	Tue, 25 Jun 2024 10:33:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1719329606;
	bh=3tH31x9G6ABuIo6tdJFVlBKDn1OeVXxNSanUJ9qJ7BI=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=eX+cEiFIgwVJVN2gR0ygEGjIjui4iMPvkhm2z9n8ogZm0tH6izgnNnRK2cEY4b9U/
	 SFCnwxYqBwF88nnhwKI34PaTWVxioZND0Xhf5GUzX9vVxPF+Q6mhJHD/8BfhzBvDbp
	 L1biRWLQK/HHHFqDJY9Y6vtmTIMsckDuGnXqQDuw=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 45PFXQPv011738
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 25 Jun 2024 10:33:26 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 25
 Jun 2024 10:33:26 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 25 Jun 2024 10:33:26 -0500
Received: from lelv0854.itg.ti.com (lelv0854.itg.ti.com [10.181.64.140])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 45PFXQlO113884;
	Tue, 25 Jun 2024 10:33:26 -0500
Received: from localhost (danish-tpc.dhcp.ti.com [10.24.69.25])
	by lelv0854.itg.ti.com (8.14.7/8.14.7) with ESMTP id 45PFXPDg017365;
	Tue, 25 Jun 2024 10:33:26 -0500
From: MD Danish Anwar <danishanwar@ti.com>
To: Suman Anna <s-anna@ti.com>, Conor Dooley <conor+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Santosh
 Shilimkar <ssantosh@kernel.org>, Nishanth Menon <nm@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <srk@ti.com>,
        Vignesh Raghavendra
	<vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        MD Danish Anwar
	<danishanwar@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/2] dt-bindings: soc: ti: pruss: Add documentation for PA_STATS support
Date: Tue, 25 Jun 2024 21:03:16 +0530
Message-ID: <20240625153319.795665-3-danishanwar@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240625153319.795665-1-danishanwar@ti.com>
References: <20240625153319.795665-1-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

Add documentation for pa-stats node which is syscon regmap for
PA_STATS registers. This will be used to dump statistics maintained by
ICSSG firmware.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: MD Danish Anwar <danishanwar@ti.com>
---
 .../devicetree/bindings/soc/ti/ti,pruss.yaml  | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
index c402cb2928e8..3cb1471cc6b6 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
@@ -278,6 +278,26 @@ patternProperties:
 
     additionalProperties: false
 
+  ^pa-stats@[a-f0-9]+$:
+    description: |
+      PA-STATS sub-module represented as a SysCon. PA_STATS is a set of
+      registers where different statistics related to ICSSG, are dumped by
+      ICSSG firmware. This syscon sub-module will help the device to
+      access/read/write those statistics.
+
+    type: object
+
+    additionalProperties: false
+
+    properties:
+      compatible:
+        items:
+          - const: ti,pruss-pa-st
+          - const: syscon
+
+      reg:
+        maxItems: 1
+
   interrupt-controller@[a-f0-9]+$:
     description: |
       PRUSS INTC Node. Each PRUSS has a single interrupt controller instance
-- 
2.34.1


