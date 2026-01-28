Return-Path: <devicetree+bounces-260273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMKOE8XZeWlI0AEAu9opvQ
	(envelope-from <devicetree+bounces-260273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:41:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9483D9EF0A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 151E83064507
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87711349B0F;
	Wed, 28 Jan 2026 09:36:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022119.outbound.protection.outlook.com [52.101.126.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B499434847E;
	Wed, 28 Jan 2026 09:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.119
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592987; cv=fail; b=GPkX+ynyKCjMSLSSj5Kcfp6sVWnF10sl/BXsQrYbmtmsTT0jsCaSOjUqKIhzsQMhLnM40lzs6Z0qadGultZCKGST3hTggwStK3BFrxaAl73PWYbGqUBJiCxAs/rlGjjHt67vJcmpGeOiq/QHvfnElaKNyfleCeqFaPJKt7lb5Rs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592987; c=relaxed/simple;
	bh=odUc3X+VVoPfw7bsoj4g3t6PQrO9S0fzz4ThameH7HU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ORlvzVlTvp7b4Wu8DUJqnlfTlgwNzFROkPZrJFeDkL/+FOAuhAv5i1rQUrKPgRw8lm4UPfxz7g3l1OQ2FiObWSkg2tKP6ryDRuZdf1usQmOoSgXvNO+hvgYQZw0qJOcfTVktWSG/rRRhbm5K9+PfcGFkDokT8xyKZLYEIDmaylM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xWurJi74G79GP4BWN5FsXm4UJqw5OQtThxw0AOstvZBKApZsbEXTgwi6zz54yO2fR14d9PuBB9IV0bRGOn2LmCX1bnWsP3LqdJe9Ss06odjwD5UTtECn7R4CnB53jJy8V1e1h3O/YPPULFMMl4z/DwKNRIDSAaUxLYE0K3fg8qKikgprfdaYcZfa26HLJDf+S9ld9XdgJO7FEjyzS87o6FYoqSvLNv/2CMih9RGnPU95L9qxH5CKcKYZ8fHZPDkiO2CjHq8FMiliLQ6AL1GEOCtUKfO7dzlMcd6OB2fekHnCQCCRIzGr+OaCfH55lu1+bF+CqHRPfvbflhieRIVVBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRkfg6lzT0php/2O7PjWai6nsN//ZW66M8ji8oiMULU=;
 b=zG8urlrhxEiFCt1Ktl8mX64SZilUuGnYF4US7OkkpH6uaKtCbn36ls21qaBgk9kCqOp6xv9KFsgG8RXSm6ao/ksmCdMGViO2Mx/IhOEe3I6my+Wpw/NKgi31a1/wHWGhZOovW8GwtF/YcAT/SDR+Bg5fknKxHu4PmhK5LG7NVu25IxIJYqWbiHSmWfX2aJcMw9FS0jNLcvIlYiuTb33XaxMzcmHXK++gfGh9sLNECw/Mp83YYh2BwGp42vYC9hZ+KmwVqVVVGP8UzyIB+ikXDxkq/vBoY6LR/n1tjBspm2pciNKcIphhPECdaUbPRonqlU88AIwOju9PIaxG1ujNVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR02CA0092.apcprd02.prod.outlook.com (2603:1096:300:5c::32)
 by TYSPR06MB7245.apcprd06.prod.outlook.com (2603:1096:405:81::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Wed, 28 Jan
 2026 09:36:13 +0000
Received: from OSA0EPF000000CC.apcprd02.prod.outlook.com
 (2603:1096:300:5c:cafe::bd) by PS2PR02CA0092.outlook.office365.com
 (2603:1096:300:5c::32) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.16 via Frontend Transport; Wed,
 28 Jan 2026 09:36:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CC.mail.protection.outlook.com (10.167.240.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Wed, 28 Jan 2026 09:36:12 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 057F24350706;
	Wed, 28 Jan 2026 17:36:12 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v4 1/3] dt-bindings: reset: add sky1 reset controller
Date: Wed, 28 Jan 2026 17:36:09 +0800
Message-ID: <20260128093611.1932770-2-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260128093611.1932770-1-gary.yang@cixtech.com>
References: <20260128093611.1932770-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CC:EE_|TYSPR06MB7245:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d4d2b36a-7c4c-44be-681a-08de5e50ad4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?TzRZGFHsFbpbxqlKn/m39FJmFMgB0c2THpjGCL7TB6FY2Cmf5bwr0VGDVrkd?=
 =?us-ascii?Q?aDHB5/I2o1cQFJLKwNzwMpfOeHvz6hdFcogYDQuYJIp4yI+PPinUMBgGyXN4?=
 =?us-ascii?Q?WdGs/FO949gKFm/TnoHdbpiGE1sEguF9JuDvoErAyyV9EE5LhnoESDgtqFKW?=
 =?us-ascii?Q?Up1APhB3xO56azJ9uUKY/96CZuXc9++alTyCua5IXg+uqFPuzKKwIuF3w7m0?=
 =?us-ascii?Q?PRyfSdUXvCadWsqrjZnW+C2tMIx71Iy8SrzKGa/RE/Ri+wz/J6QgZCpaeFzi?=
 =?us-ascii?Q?mY6AgqG+C/kvNtmMygN9TePQrBpBE3Y9owwo9X8ifO9Ptt+KxqZUnqY04rMW?=
 =?us-ascii?Q?HRRLclBv7qk51CN3bm4MGewkgAA8vaNJUtHe07LIWmtXBvL4rEYuCS3aTK2K?=
 =?us-ascii?Q?LGqEPcX6lXD8evhoqI8KJJaKE3e50FaTGRBun3caSnPnP9QlmhO//47F+0uM?=
 =?us-ascii?Q?eqGIx9vOb026y3F9I4AkPcZRI2Btxcelmkxp1NEpotbvaUxbPlfSNUrwoysB?=
 =?us-ascii?Q?n0nAHqtxpNAxrGg70kPtCV16GXjmSUuI5y0uSINm45rf5hEPdC3ty9gNuQau?=
 =?us-ascii?Q?Pyj4b70nBic1bEjiCUrhsdCKCWWkng/7J1AFe2e8+LE6xay6xUc+HxI3j00j?=
 =?us-ascii?Q?cR2n3/FpW1akR7wnh/YMNS2DlW3R1bXzP9m3YKYBAVusorqjhr4rjX7zGstD?=
 =?us-ascii?Q?GskZwx8f1+eIWvRbipHcGMyzQjiudGmyUNqiQv0KZUes68WdYZLJAqhCnU7Z?=
 =?us-ascii?Q?94AWAWDWS5LTqIrvhG/Y6GaV5MQERU3CA40hthVyV17VcbeOvR9owP0Hnlzj?=
 =?us-ascii?Q?rLu2GZ/262x9i8ZwtKnEofo7QF4bblBthPnyzNESpT4PxjXE1RcFR7+fXuK3?=
 =?us-ascii?Q?EwlxRtYMXvl9R2ZC6qNucYK69lp00vRyBEFs+SHf8ekmAl6l/24wdTzzTmUW?=
 =?us-ascii?Q?WUZWsaWDv2fhGxeZ/yksAjskLmzJYI5eHpq2KqZWdtr/6QqPRbj/GUL+C/ts?=
 =?us-ascii?Q?+bQk+UeDq23QzBC1ETaiA2uxTYJxmeykcGaJIFTk3+alMJmuK2BxUFWsONzv?=
 =?us-ascii?Q?T06fAmKAwQ/sJ2/qjvr7nb3IDwnRa/JYDbftAJIGe7nLzphezl7hQvFlxB/A?=
 =?us-ascii?Q?fdU1pPU+lgqjh9n09D6/445azXN5adBCtH/pKo36GZgXMKBnzDwSb2VMI5ar?=
 =?us-ascii?Q?h7k6oFBAzpaG0NbPbirI2RKXTDazhX9bEVU7RZmHsD0y4Pq9n4Uw4pWtbUJm?=
 =?us-ascii?Q?yepStD4tiDhzBKLSXTf1VeThl1khJMCEp3I4mmrUDY/sl2wgVwrPpy/HI+Ue?=
 =?us-ascii?Q?IqyaBT8xvFTXYHbn1/awPi2jy0+gdVaHoHAMmnfvgDbD9iyK1VOo2urrEJmk?=
 =?us-ascii?Q?ZV8g2dcvruWBrW0EbiI/b/5auB9ZvqqfdoOTFe41onOn7RfPZz2T0BtOBAxS?=
 =?us-ascii?Q?gh9KcNEUCH0hYSty4PjkHu1NK4rQ4AbyIvy4MOiDbQGiIhw0sK4peNB/C0rX?=
 =?us-ascii?Q?a5fDQSvKOHQ8CQyEY0fm6Go8RGjeSaqBvm3vEU8jKmNtsqDYFCh2DspJqF07?=
 =?us-ascii?Q?bB36ynM0dayyZzBOXGEpA8689t4whP0uC16vX1hTKhGiGgLKZ/3YDrkfKbRb?=
 =?us-ascii?Q?/g=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014)(13003099007);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 09:36:12.8838
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d4d2b36a-7c4c-44be-681a-08de5e50ad4f
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CC.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR06MB7245
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-260273-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_COUNT_SEVEN(0.00)[7];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:mid,cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,0.244.36.0:email]
X-Rspamd-Queue-Id: 9483D9EF0A
X-Rspamd-Action: no action

There are two reset controllers on Cix sky1 Soc.
One is located in S0 domain, and the other is located
in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
Link: https://lore.kernel.org/r/20251124063235.952136-2-gary.yang@cixtech.com
Signed-off-by: Peter Chen <peter.chen@cixtech.com>
---
 .../devicetree/bindings/mfd/syscon.yaml       |   7 +
 .../bindings/reset/cix,sky1-rst.yaml          |  46 +++++
 .../soc/cix/cix,sky1-system-controller.yaml   |  48 +++++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 +++++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++++++
 5 files changed, 307 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 55efb83b1495..be864a6b8efb 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -170,6 +170,8 @@ properties:
               - cirrus,ep7209-syscon1
               - cirrus,ep7209-syscon2
               - cirrus,ep7209-syscon3
+              - cix,sky1-system-controller
+              - cix,sky1-s5-system-controller
               - cnxt,cx92755-uc
               - freecom,fsg-cs2-system-controller
               - fsl,imx93-aonmix-ns-syscfg
@@ -254,6 +256,11 @@ properties:
           - const: microchip,pic64gx-sysreg-scb
           - const: microchip,mpfs-sysreg-scb
           - const: syscon
+      - items:
+          - enum:
+              - cix,sky1-system-controller
+              - cix,sky1-s5-system-controller
+          - const: syscon
 
   reg:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
new file mode 100644
index 000000000000..4323acdc2c45
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/cix,sky1-rst.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: CIX Sky1 Reset Controller
+
+maintainers:
+  - Gary Yang <gary.yang@cixtech.com>
+
+description: |
+  CIX Sky1 reset controller can be used to reset various set of peripherals.
+  There are two reset controllers, one is located in S0 domain, the other
+  is located in S0 and S5 domain.
+
+  See also:
+  - include/dt-bindings/reset/cix,sky1-rst.h
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - cix,sky1-rst
+          - cix,sky1-rst-fch
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@16000000 {
+      compatible = "cix,sky1-s5-system-controller", "syscon",
+                "simple-mfd";
+      reg = <0x0 0x16000000 0x0 0x1000>;
+      src: reset-controller {
+        compatible = "cix,sky1-rst";
+        #reset-cells = <1>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
new file mode 100644
index 000000000000..f6e2776e3f53
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/cix/cix,sky1-system-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cix Sky1 SoC system controller register region
+
+maintainers:
+  - Gary Yang <gary.yang@cixtech.com>
+
+description:
+  An wide assortment of registers of the system controller on Sky1 SoC,
+  including resets and usb.
+
+allOf:
+  - $ref: /schemas/mfd/syscon.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - contains:
+          - enum:
+              - cix,sky1-system-controller
+              - cix,sky1-s5-system-controller
+          - const: syscon
+          - const: simple-mfd
+
+  reg:
+    maxItems: 2
+
+patternProperties:
+  "^reset(-controller)?$":
+    $ref: /schemas/reset/cix,sky1-rst.yaml#
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@16000000 {
+      compatible = "cix,sky1-s5-system-controller", "syscon", "simple-mfd";
+      reg = <0x0 0x16000000 0x0 0x1000>;
+    };
+
diff --git a/include/dt-bindings/reset/cix,sky1-rst-fch.h b/include/dt-bindings/reset/cix,sky1-rst-fch.h
new file mode 100644
index 000000000000..8e67d7eb92aa
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-rst-fch.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_FCH_SKY1_H
+#define DT_BINDING_RESET_FCH_SKY1_H
+
+/* func reset for sky1 fch */
+
+#define SW_I3C0_RST_FUNC_G_N	0
+#define SW_I3C0_RST_FUNC_I_N	1
+#define SW_I3C1_RST_FUNC_G_N	2
+#define SW_I3C1_RST_FUNC_I_N	3
+#define SW_UART0_RST_FUNC_N	4
+#define SW_UART1_RST_FUNC_N	5
+#define SW_UART2_RST_FUNC_N	6
+#define SW_UART3_RST_FUNC_N	7
+#define SW_TIMER_RST_FUNC_N	8
+
+/* apb reset for sky1 fch */
+#define SW_I3C0_RST_APB_N	9
+#define SW_I3C1_RST_APB_N	10
+#define SW_DMA_RST_AXI_N	11
+#define SW_UART0_RST_APB_N	12
+#define SW_UART1_RST_APB_N	13
+#define SW_UART2_RST_APB_N	14
+#define SW_UART3_RST_APB_N	15
+#define SW_SPI0_RST_APB_N	16
+#define SW_SPI1_RST_APB_N	17
+#define SW_I2C0_RST_APB_N	18
+#define SW_I2C1_RST_APB_N	19
+#define SW_I2C2_RST_APB_N	20
+#define SW_I2C3_RST_APB_N	21
+#define SW_I2C4_RST_APB_N	22
+#define SW_I2C5_RST_APB_N	23
+#define SW_I2C6_RST_APB_N	24
+#define SW_I2C7_RST_APB_N	25
+#define SW_GPIO_RST_APB_N	26
+
+/* fch rst for xspi */
+#define SW_XSPI_REG_RST_N	27
+#define SW_XSPI_SYS_RST_N	28
+
+#endif
diff --git a/include/dt-bindings/reset/cix,sky1-rst.h b/include/dt-bindings/reset/cix,sky1-rst.h
new file mode 100644
index 000000000000..2f0990922aad
--- /dev/null
+++ b/include/dt-bindings/reset/cix,sky1-rst.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/* Author: Jerry Zhu <jerry.zhu@cixtech.com> */
+#ifndef DT_BINDING_RESET_SKY1_H
+#define DT_BINDING_RESET_SKY1_H
+
+/* reset for csu_pm */
+
+#define SKY1_CSU_PM_RESET_N		0
+#define SKY1_SENSORFUSION_RESET_N	1
+#define SKY1_SENSORFUSION_NOC_RESET_N	2
+
+/* reset group0 for s0 domain modules */
+#define SKY1_DDRC_RESET_N		3
+#define SKY1_GIC_RESET_N		4
+#define SKY1_CI700_RESET_N		5
+#define SKY1_SYS_NI700_RESET_N		6
+#define SKY1_MM_NI700_RESET_N		7
+#define SKY1_PCIE_NI700_RESET_N		8
+#define SKY1_GPU_RESET_N		9
+#define SKY1_NPUTOP_RESET_N		10
+#define SKY1_NPUCORE0_RESET_N		11
+#define SKY1_NPUCORE1_RESET_N		12
+#define SKY1_NPUCORE2_RESET_N		13
+#define SKY1_VPU_RESET_N		14
+#define SKY1_ISP_SRESET_N		15
+#define SKY1_ISP_ARESET_N		16
+#define SKY1_ISP_HRESET_N		17
+#define SKY1_ISP_GDCRESET_N		18
+#define SKY1_DPU_RESET0_N		19
+#define SKY1_DPU_RESET1_N		20
+#define SKY1_DPU_RESET2_N		21
+#define SKY1_DPU_RESET3_N		22
+#define SKY1_DPU_RESET4_N		23
+#define SKY1_DP_RESET0_N		24
+#define SKY1_DP_RESET1_N		25
+#define SKY1_DP_RESET2_N		26
+#define SKY1_DP_RESET3_N		27
+#define SKY1_DP_RESET4_N		28
+#define SKY1_DP_PHY_RST_N		29
+
+/* reset group1 for s0 domain modules */
+#define SKY1_AUDIO_HIFI5_RESET_N	30
+#define SKY1_AUDIO_HIFI5_NOC_RESET_N	31
+#define SKY1_CSIDPHY_PRST0_N		32
+#define SKY1_CSIDPHY_CMNRST0_N		33
+#define SKY1_CSI0_RST_N			34
+#define SKY1_CSIDPHY_PRST1_N		35
+#define SKY1_CSIDPHY_CMNRST1_N		36
+#define SKY1_CSI1_RST_N			37
+#define SKY1_CSI2_RST_N			38
+#define SKY1_CSI3_RST_N			39
+#define SKY1_CSIBRDGE0_RST_N		40
+#define SKY1_CSIBRDGE1_RST_N		41
+#define SKY1_CSIBRDGE2_RST_N		42
+#define SKY1_CSIBRDGE3_RST_N		43
+#define SKY1_GMAC0_RST_N		44
+#define SKY1_GMAC1_RST_N		45
+#define SKY1_PCIE0_RESET_N		46
+#define SKY1_PCIE1_RESET_N		47
+#define SKY1_PCIE2_RESET_N		48
+#define SKY1_PCIE3_RESET_N		49
+#define SKY1_PCIE4_RESET_N		50
+
+/* reset group1 for usb phys */
+#define SKY1_USB_DP_PHY0_PRST_N		51
+#define SKY1_USB_DP_PHY1_PRST_N		52
+#define SKY1_USB_DP_PHY2_PRST_N		53
+#define SKY1_USB_DP_PHY3_PRST_N		54
+#define SKY1_USB_DP_PHY0_RST_N		55
+#define SKY1_USB_DP_PHY1_RST_N		56
+#define SKY1_USB_DP_PHY2_RST_N		57
+#define SKY1_USB_DP_PHY3_RST_N		58
+#define SKY1_USBPHY_SS_PST_N		59
+#define SKY1_USBPHY_SS_RST_N		60
+#define SKY1_USBPHY_HS0_PRST_N		61
+#define SKY1_USBPHY_HS1_PRST_N		62
+#define SKY1_USBPHY_HS2_PRST_N		63
+#define SKY1_USBPHY_HS3_PRST_N		64
+#define SKY1_USBPHY_HS4_PRST_N		65
+#define SKY1_USBPHY_HS5_PRST_N		66
+#define SKY1_USBPHY_HS6_PRST_N		67
+#define SKY1_USBPHY_HS7_PRST_N		68
+#define SKY1_USBPHY_HS8_PRST_N		69
+#define SKY1_USBPHY_HS9_PRST_N		70
+
+/* reset group1 for usb controllers */
+#define SKY1_USBC_SS0_PRST_N		71
+#define SKY1_USBC_SS1_PRST_N		72
+#define SKY1_USBC_SS2_PRST_N		73
+#define SKY1_USBC_SS3_PRST_N		74
+#define SKY1_USBC_SS4_PRST_N		75
+#define SKY1_USBC_SS5_PRST_N		76
+#define SKY1_USBC_SS0_RST_N		77
+#define SKY1_USBC_SS1_RST_N		78
+#define SKY1_USBC_SS2_RST_N		79
+#define SKY1_USBC_SS3_RST_N		80
+#define SKY1_USBC_SS4_RST_N		81
+#define SKY1_USBC_SS5_RST_N		82
+#define SKY1_USBC_HS0_PRST_N		83
+#define SKY1_USBC_HS1_PRST_N		84
+#define SKY1_USBC_HS2_PRST_N		85
+#define SKY1_USBC_HS3_PRST_N		86
+#define SKY1_USBC_HS0_RST_N		87
+#define SKY1_USBC_HS1_RST_N		88
+#define SKY1_USBC_HS2_RST_N		89
+#define SKY1_USBC_HS3_RST_N		90
+
+/* reset group0 for rcsu */
+#define SKY1_AUDIO_RCSU_RESET_N			91
+#define SKY1_CI700_RCSU_RESET_N			92
+#define SKY1_CSI_RCSU0_RESET_N			93
+#define SKY1_CSI_RCSU1_RESET_N			94
+#define SKY1_CSU_PM_RCSU_RESET_N		95
+#define SKY1_DDR_BROADCAST_RCSU_RESET_N		96
+#define SKY1_DDR_CTRL_RCSU_0_RESET_N		97
+#define SKY1_DDR_CTRL_RCSU_1_RESET_N		98
+#define SKY1_DDR_CTRL_RCSU_2_RESET_N		99
+#define SKY1_DDR_CTRL_RCSU_3_RESET_N		100
+#define SKY1_DDR_TZC400_RCSU_0_RESET_N		101
+#define SKY1_DDR_TZC400_RCSU_1_RESET_N		102
+#define SKY1_DDR_TZC400_RCSU_2_RESET_N		103
+#define SKY1_DDR_TZC400_RCSU_3_RESET_N		104
+#define SKY1_DP0_RCSU_RESET_N			105
+#define SKY1_DP1_RCSU_RESET_N			106
+#define SKY1_DP2_RCSU_RESET_N			107
+#define SKY1_DP3_RCSU_RESET_N			108
+#define SKY1_DP4_RCSU_RESET_N			109
+#define SKY1_DPU0_RCSU_RESET_N			110
+#define SKY1_DPU1_RCSU_RESET_N			111
+#define SKY1_DPU2_RCSU_RESET_N			112
+#define SKY1_DPU3_RCSU_RESET_N			113
+#define SKY1_DPU4_RCSU_RESET_N			114
+#define SKY1_DSU_RCSU_RESET_N			115
+#define SKY1_FCH_RCSU_RESET_N			116
+#define SKY1_GICD_RCSU_RESET_N			117
+#define SKY1_GMAC_RCSU_RESET_N			118
+#define SKY1_GPU_RCSU_RESET_N			119
+#define SKY1_ISP_RCSU0_RESET_N			120
+#define SKY1_ISP_RCSU1_RESET_N			121
+#define SKY1_NI700_MMHUB_RCSU_RESET_N		122
+
+/* reset group1 for rcsu */
+#define SKY1_NPU_RCSU_RESET_N			123
+#define SKY1_NI700_PCIE_RCSU_RESET_N		124
+#define SKY1_PCIE_X421_RCSU_RESET_N		125
+#define SKY1_PCIE_X8_RCSU_RESET_N		126
+#define SKY1_SF_RCSU_RESET_N			127
+#define SKY1_RCSU_SMMU_MMHUB_RESET_N		128
+#define SKY1_RCSU_SMMU_PCIEHUB_RESET_N		129
+#define SKY1_RCSU_SYSHUB_RESET_N		130
+#define SKY1_NI700_SMN_RCSU_RESET_N		131
+#define SKY1_NI700_SYSHUB_RCSU_RESET_N		132
+#define SKY1_RCSU_USB2_HOST0_RESET_N		133
+#define SKY1_RCSU_USB2_HOST1_RESET_N		134
+#define SKY1_RCSU_USB2_HOST2_RESET_N		135
+#define SKY1_RCSU_USB2_HOST3_RESET_N		136
+#define SKY1_RCSU_USB3_TYPEA_DRD_RESET_N	137
+#define SKY1_RCSU_USB3_TYPEC_DRD_RESET_N	138
+#define SKY1_RCSU_USB3_TYPEC_HOST0_RESET_N	139
+#define SKY1_RCSU_USB3_TYPEC_HOST1_RESET_N	140
+#define SKY1_RCSU_USB3_TYPEC_HOST2_RESET_N	141
+#define SKY1_VPU_RCSU_RESET_N			142
+
+#endif
-- 
2.49.0


