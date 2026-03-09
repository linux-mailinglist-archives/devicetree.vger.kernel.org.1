Return-Path: <devicetree+bounces-273025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIgHIsXtrmkWKQIAu9opvQ
	(envelope-from <devicetree+bounces-273025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:56:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC02123C3A3
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:56:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D344F3037141
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE763D75D0;
	Mon,  9 Mar 2026 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="XhkOlO5M"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012034.outbound.protection.outlook.com [52.101.66.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0403223AB88;
	Mon,  9 Mar 2026 15:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071593; cv=fail; b=VM4XqHIimZ2xteC+z6k0NWGEeEPLtYA1ILCUowsGtalfsDkuRYc/DuctS6sulMtuMHSdNKviFv3rdeFn4Iz2Y8W/ytN2ddRhUOHRWAv4EYebSlYuowiYtTjO1UBu0i7rj6x4XjQzvhGpKmA1hmciXMDhs8yH6FxP2+MsLhzU7A8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071593; c=relaxed/simple;
	bh=HS9WYKyxZYWLcpZTyDn4qgu5ZLmAyO8t6lGY4yjC1ao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=nG2ZMNyCr/fz9lCS3X3PKO38WZQJD+icuiQK1ubT+65BxEwFrnzEJqJexw8dwuax7hx0QFwVxFX0+yykhMseH7X4Kim1DcqKZf7IH0Z/qp403BCggvRFycd+Cpzsl5SnMEk2ZZT1LjZaQNsvGEPDdibH5va+RX0Suu2QUFYF0Yw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=XhkOlO5M; arc=fail smtp.client-ip=52.101.66.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UCxBuT6eKSIfYhHu1DANihLNVopFWz/8vJ4qOI+YivQzQ4J0GYYh12vqip9eOBVmgZwRY8vahjV7TYPgG6fa07LM95/SH+JyD+BfPkaP4HdVIzTiPmax52spKhADtQqtWPz2hqZ0uui4TTv+LRUhALIXaxpNfhwJ9DQTgygFuPxcjc+S7CY2IxBYJBSR+mgyVq6vYnE+Mpan+CzAvOMdjUVxnLDXIGw3Brvia1Quo/LvRWNEtLE4V+fprI9cU0SQrhwRRGHprw63L708tRv/tmaVn1F2DWmEwaez7ls29tsuFYDoE1jr3voTLnrkauhRCRmmsZFWPzHBqyX9epMwBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YkYl4ZgXqFKBod9EoMwOvlT8ot0AUWM8+YzVZ07WZo0=;
 b=Q83tNQeNZbvcQzFota/d46YGCJlsgcUY+dHJUpnXHQ07Q317WVVxqZOktAWok0Lg83G6YTgyo6vX1ZfLVlvwf0zdVQR5quh4TfRFZ+8dRAQQiZoKBSqEsVfz3RuR36Jy7HcZ+zubnMYzxJ7luuXq9c5/aSjcmf7ItYOWZRHkce64pXcJGWnMVXVy+dViSGo82oMXGi7A5FyfO9AVgs62Voslx9nrhsOEr6vOAWMI44tFE7yMhby+5M5/Zz4M7GYSFRSnX5WpqhZ4UbN6q2AhOk0OTUSuDc3ZGqdEOvFK7pIE3DEckN+tRmPU7NlyZSQ2SL2DJhTybxceqn6qipA5+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=diasemi.com smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YkYl4ZgXqFKBod9EoMwOvlT8ot0AUWM8+YzVZ07WZo0=;
 b=XhkOlO5McCyRiHbAvWEDAhIOTJXShj3NMrpYLv/U6Pzbsm+bfYYw73CMJ825SVFs3yx1toO7SOXoD9XqhNAVRKRgM4QcU2SM60G2lo/04VlvgQ7j6U8eywIo7aQ5sVoL7cnUcfxPzRvGjMH1R4Gfuu3mihVRku/PoGf3kkW0VtU=
Received: from CWLP123CA0170.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:19b::21)
 by AS4PR02MB8454.eurprd02.prod.outlook.com (2603:10a6:20b:576::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Mon, 9 Mar
 2026 15:53:08 +0000
Received: from AMS0EPF000001A8.eurprd05.prod.outlook.com
 (2603:10a6:400:19b:cafe::3a) by CWLP123CA0170.outlook.office365.com
 (2603:10a6:400:19b::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.25 via Frontend Transport; Mon,
 9 Mar 2026 15:52:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 AMS0EPF000001A8.mail.protection.outlook.com (10.167.16.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 15:53:08 +0000
Received: from se-mail11w.axis.com (10.20.40.11) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.39; Mon, 9 Mar
 2026 16:53:07 +0100
Received: from se-intmail01x.se.axis.com (10.4.0.28) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Mon, 9 Mar 2026 16:53:07 +0100
Received: from pc63539-2527.se.axis.com (pc63539-2527.se.axis.com [10.85.100.100])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 464311B0F;
	Mon,  9 Mar 2026 16:53:07 +0100 (CET)
Received: by pc63539-2527.se.axis.com (Postfix, from userid 17419)
	id 415B06074F15; Mon,  9 Mar 2026 16:53:07 +0100 (CET)
From: =?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
Date: Mon, 9 Mar 2026 16:52:35 +0100
Subject: [PATCH 1/2] regulator: dt-bindings: dlg,da9121: Add
 dlg,no-gpio-control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID: <20260309-no-gpio-control-v1-1-06d2365917c6@axis.com>
References: <20260309-no-gpio-control-v1-0-06d2365917c6@axis.com>
In-Reply-To: <20260309-no-gpio-control-v1-0-06d2365917c6@axis.com>
To: Support Opensource <support.opensource@diasemi.com>, Liam Girdwood
	<lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Adam Ward <Adam.Ward.opensource@diasemi.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<kernel@axis.com>, Waqar Hameed <waqar.hameed@axis.com>,
	=?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
X-Mailer: b4 0.14.3
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001A8:EE_|AS4PR02MB8454:EE_
X-MS-Office365-Filtering-Correlation-Id: 33f371ef-06ac-41a2-3fe2-08de7df3f59a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700016|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	L1wzjvsYQ68mdb3fiLAMjYVk0SX79OIgGwrJueFZE2FVesKRSbzF5KEIDGGq9ponYCREKIgS5+w+OqcxgRf5WIJG9paJXNA2FFpRUT+zfRAmMz4yw4Yh+jgC2FrBV8EUthTDT3RE5EMNFWIs24px3uvyLcNmCn4Ar95HQn5ZFt0BbJz1hKrjObqWPE1ebTOtUMNTnOWD8+K9fMfs0FrJqF0fNnW0lNJqU1ZTR7flJ4OlVbhK9xe/awybRG/uXJv7Ws++R2Fp+tXHqlrRRfNi54g8QGfjiwGVtONt6tN5ckSVcJeSMG3G1kCnXRTg1pOcNE2RlfXGtZjrw35nAbaPJ7aq2RvvlkYixDJtUd1Bh6Txm0cJkx4+XZHjfOFXbPKMmoGa0t5WZVF3feEFn87lNjKnbQokPGKDpdvp+239RKDWOrPc0k1DsVmInIUiokkvljyrtFoSA7zxL9CeJJbWL32OIQb+9WFcRapQ/J7fUqCwyxwvtNBPNlbab5ftlhZ452VQWobYq92RG5DpQnnd/56EhDLlwMFUn3GdEClebD31sALR41YCTY8EgIoGlfA+4ye6EHiW3Cj7Cu5wW9NM48m+A2JdQIlJGPNne82NE45INffd+E/1NR3OHoA3H4Xqflzh87oQbuV951HBGZ86FP/aFpiByK59HGGqkNJBNyZ/PjG+tn2AgU7p0hqVn7vp2B9V35+g3bVElb69ILhK/59sB1ylO7cv0o02PswmJmNJGT87ymkXzqh6dE6xiPVfH2mY8rI+Rp+Y1S+qrVnGog==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(376014)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	TA5dkcONDiJNEqVUoUMnHNLTklJGKoAwTkK3ulLSkd3KVaBYHSaj+1W9OOdjf+RQTcAHmNR/OHVf34pXvMLrdU+sgVzyrPhaLa6pX4Cwx5grWr5BdQxaj0RnVqS+dbgN9tKcQpc0laUA4c4dFp8p6NRRSJCC1ygOWkXtE3qXfDd4cPoCmv02g7FBQROFs8ZvVrmhHaQ6vZ856wtZJqkd/RtNeB4ejkVF+vvaFErA7Iw0iY486l/jri0qQz/U678DX3jaCrn6BOhncT0fBkO5WvKy5mBdmQm9ka27EaaO+XLH0rGMYggl2v2o8EnsVzlJhSj2gExmfFC4JwnPysDZQ461V3qj6kwp33PMfLszmh6ybeDTNfOewlj8yTpPGHxOcAkcE+NqbqVbbsBMAUOQp8BqwdWf6NMS1oQMyCJNedGLz3npg+bSJDvkWgUa8QP2
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 15:53:08.3855
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f371ef-06ac-41a2-3fe2-08de7df3f59a
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001A8.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR02MB8454
X-Rspamd-Queue-Id: DC02123C3A3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273025-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[diasemi.com,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,axis.com:dkim,axis.com:email,axis.com:mid,0.0.0.68:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.svensson@axis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axis.com:+];
	NEURAL_HAM(-0.00)[-0.968];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Add the optional boolean property dlg,no-gpio-control. When present, it
indicates that no DA91xx GPIO pins are configured/used with functions
RELOAD/DVC/EN, which can affect the output voltage control, regulator
mode control and enable signal control.

It is mutually exclusive with enable-gpios, regardless of whether the
referenced GPIO is connected to a GPIO pin or the IC_EN pin, since
enable-gpios allows the regulator to be controlled via an external
hardware signal.

Co-developed-by: Waqar Hameed <waqar.hameed@axis.com>
Signed-off-by: Waqar Hameed <waqar.hameed@axis.com>
Signed-off-by: André Svensson <andre.svensson@axis.com>
---
 .../devicetree/bindings/regulator/dlg,da9121.yaml  | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/dlg,da9121.yaml b/Documentation/devicetree/bindings/regulator/dlg,da9121.yaml
index 13b3f75f8e5e..ce76eb5b85bd 100644
--- a/Documentation/devicetree/bindings/regulator/dlg,da9121.yaml
+++ b/Documentation/devicetree/bindings/regulator/dlg,da9121.yaml
@@ -81,6 +81,14 @@ properties:
       Specify the polling period, measured in milliseconds, between interrupt status
       update checks. Range 1000-10000 ms.
 
+  dlg,no-gpio-control:
+    type: boolean
+    description: |
+      Available GPIO input pins of the regulator are strapped to fixed levels, therefore
+      GPIO configurable input functions, DVC/RELOAD/EN, cannot dynamically update BUCK
+      registers. GPIO pins connected as output pins are not required to be strapped to a
+      fixed level. Not allowed together with enable-gpios.
+
   regulators:
     type: object
     additionalProperties: false
@@ -134,6 +142,17 @@ allOf:
           properties:
             buck2: false
 
+  - if:
+      required:
+        - dlg,no-gpio-control
+    then:
+      properties:
+        regulators:
+          patternProperties:
+            "^buck([1-2])$":
+              properties:
+                enable-gpios: false
+
 additionalProperties: false
 
 examples:
@@ -168,6 +187,36 @@ examples:
       };
     };
 
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/dlg,da9121-regulator.h>
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      pmic@68 {
+        compatible = "dlg,da9121";
+        reg = <0x68>;
+
+        interrupt-parent = <&gpio6>;
+        interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+
+        dlg,irq-polling-delay-passive-ms = <2000>;
+        dlg,no-gpio-control;
+
+        regulators {
+          DA9121_BUCK: buck1 {
+            regulator-name = "BUCK1";
+            regulator-min-microvolt = <300000>;
+            regulator-max-microvolt = <1900000>;
+            regulator-min-microamp = <7000000>;
+            regulator-max-microamp = <20000000>;
+            regulator-boot-on;
+            regulator-initial-mode = <DA9121_BUCK_MODE_AUTO>;
+          };
+        };
+      };
+    };
+
   - |
     #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>

-- 
2.43.0


