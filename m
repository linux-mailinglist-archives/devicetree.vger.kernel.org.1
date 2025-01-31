Return-Path: <devicetree+bounces-142177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0D3A24514
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 23:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A4AE166F87
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:12:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 713581F4724;
	Fri, 31 Jan 2025 22:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="weutNsL5"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18021F470B;
	Fri, 31 Jan 2025 22:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738361522; cv=none; b=r7QCr7+G5Y2zFTlEyRLzm65T0HRk59+0GEIPDu7NyIRCez+ne2ZEeOh7NVIfhTalhLpyiQzlgzjUiqsBeSzbqhZ4AlRo7p5v93w6rnr74l2+9crGsA87oZsoqKv5Xky2x3NdFA+y0AfqZuPT2Fn+WPvtaskXChX5HwvT7azEkDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738361522; c=relaxed/simple;
	bh=L5MmjyuvQRnFMwb4/Kyl8meWviNS3V8qYI+12W4U0pI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZOkdiE0Fc/kqbApoPpOhgX9qr/nyIwuRnD6pOJcc+PBVAQX3B90z+GCwkK5OwpSzo9G1JGnf9xztx5j9NkrVJXe+A5BLfmn+3v09JN5oxYbLIk8jEaFc+ZSuyYmR536i4OH9dzUDWTujVnwX/DUhTSGVzj6R4Lj3SVZKxPvx+Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=weutNsL5; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50VMBeXc2551646
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 31 Jan 2025 16:11:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1738361500;
	bh=ZY997roUOTlXyxylbEMvp0F5Ad/fPy2pXpkn1UxtkRE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=weutNsL5hgjvU0aXjh1F7734ZXImNikZXbcvdjGaGXs/hJqUUqjf3yIRwEUD7a/pX
	 FVejwBYYyZ5aQlQXgCVSOke9P22E6zzQPx4fAo6PwXDb2I4N7PVSeGirzUaBTHK2oa
	 IPqakL0pMkDic5yr8NVlpm7PBtcNnj4u+nmCXggY=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50VMBesg042917
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 31 Jan 2025 16:11:40 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 31
 Jan 2025 16:11:39 -0600
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 31 Jan 2025 16:11:39 -0600
Received: from DMZ007XYY.dhcp.ti.com (dmz007xyy.dhcp.ti.com [128.247.29.11])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50VMBd20111306;
	Fri, 31 Jan 2025 16:11:39 -0600
From: Shree Ramamoorthy <s-ramamoorthy@ti.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <aaro.koskinen@iki.fi>,
        <andreas@kemnade.info>, <khilman@baylibre.com>, <rogerq@kernel.org>,
        <tony@atomide.com>, <lee@kernel.org>, <linux-omap@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
CC: <m-leonard@ti.com>, <praneeth@ti.com>
Subject: [PATCH v4 2/5] regulator: dt-bindings: Add TI TPS65214 PMIC bindings
Date: Fri, 31 Jan 2025 16:11:36 -0600
Message-ID: <20250131221139.342967-3-s-ramamoorthy@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250131221139.342967-1-s-ramamoorthy@ti.com>
References: <20250131221139.342967-1-s-ramamoorthy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

- TPS65214 is a Power Management IC with 3 Buck regulators and 2 LDOs.
- TPS65214 has 2 LDOS and 1 GPO, whereas TPS65219 has 4 LDOs and 2 GPOs.
- TPS65214's LDO1 maps to TPS65219's LDO3.
- A key difference between TPS65215 & TPS65214 are the LDO current and
  voltage output ranges and the configurable options available.
- The remaining features for both devices are the same.

Signed-off-by: Shree Ramamoorthy <s-ramamoorthy@ti.com>
---
 .../bindings/regulator/ti,tps65219.yaml          | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml b/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
index b0d47415bf83..b56e7f8fe88e 100644
--- a/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
+++ b/Documentation/devicetree/bindings/regulator/ti,tps65219.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/regulator/ti,tps65219.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: TI TPS65215/TPS65219 Power Management Integrated Circuits
+title: TI TPS65214/TPS65215/TPS65219 Power Management Integrated Circuit
 
 maintainers:
   - Jerome Neanne <jerome.neanne@baylibre.com>
@@ -18,9 +18,13 @@ description: |
   TI TPS65215 is a derivative of TPS65219 with 3 Buck regulators, 2 Low
   Drop-out Regulators (LDOs), 1 GPIO, 1 GPO, and power-button.
 
+  TI TPS65214 is a derivative of TPS65219 with 3 Buck regulators, 2 Low
+  Drop-out Regulators (LDOs), 1 GPIO, 1 GPO, and power-button.
+
 properties:
   compatible:
     enum:
+      - ti,tps65214
       - ti,tps65215
       - ti,tps65219
 
@@ -98,6 +102,16 @@ required:
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,tps65214
+    then:
+      properties:
+        regulators:
+          patternProperties:
+            "^ldo[3-4]$": false
   - if:
       properties:
         compatible:
-- 
2.43.0


