Return-Path: <devicetree+bounces-278098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLWiLYX4vGlW5AIAu9opvQ
	(envelope-from <devicetree+bounces-278098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:34:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F35992D6A73
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44647303CE00
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1DE31F992;
	Fri, 20 Mar 2026 07:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="FExhj6WM"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013054.outbound.protection.outlook.com [40.107.162.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B02E2E9729;
	Fri, 20 Mar 2026 07:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773992031; cv=fail; b=IGD2xMtzDrWQ4sA2AmwPgpjAicfnrwYi1m6dJF9xMiGOLbPP/M8VMuXev6v41o6yBF6Yy2y7/VzPsI2uosekPSu+SvPGTGM062yZyF0EThgUMr3Qt6xZh+N7htyfdEAUcVFRSOUFSYQOxoz3oFar7/A0bm9jnQmFeqHC1sdh1ZQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773992031; c=relaxed/simple;
	bh=gjZytuWnO/M5wYPEL8JdxGe2kk/ICcyF7QQSiY4UC08=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=jM5MdGD8O5g7UbXdp53iUWugOPWOUb/AQ2UeQ1ja4ly6HMZz2PyjylOkVYX9WzYqks0YooN7o8xoHSeqYaExrNZ7s3n4C8cP5ad0MFGlL420QFOHBtf/4qOn6biFITalYhJyVbSyygusKy5hvb+nRMVGd5jA/3hAoMKaj/l1smI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=FExhj6WM; arc=fail smtp.client-ip=40.107.162.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HTqNclUUCN3gQqe8sKGrQ375ieKpe5adFu8FC1fPVdvFmf4pEblwK2dWQEle8GLXHsrfM2r01A1SK0JssJtV+89ddkGDgkKX+X4CQTUu3seiOCBxunpB39DlJEHVOyaisjQZ6rUqPpksc7HFgVVZB0h2CfVseTq4OuDZIzfYxUn9egAujgIEG8FJ0VxpWgZiR/IYIN6obxIvbKSlwd5nA5lmRY/IxFASwjmDuyRu63K+oviVVdUORR6yhSiVSnUK/D+P3MWLODMfEF11B9FON76hp3MSbQZMWfvyFqqYbm/+KTJwN3fc1orREULNxKC1Rd3gGSmGNrLHL/urBw7yvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EjLS/nifromMGTUIG1yaTU2S30baC1N0id59StmOdIA=;
 b=V+eGXbDb6eAvPq0whPJ7SEM+8T8PZzYCANx8sCkUOwJU5DUaAeeafhz3Sa4QL2F5mwQcKdsusCE8ayhckP4AsXKhHf0l9hwdhEqSt4HqO4Zv3zazkvWfdftFQgCjW7TqHXc3oAyeNkClM5tdaCSqcT5WLkJoJmoDpQRrJ9HFWQZJ0vmWBTVQ0kVV602KcSycoqBnRooCQ12zOR/QOePjvxM6NzYAReDP/RHP6vQ3/n7rxh6uw3dyH+1f5JURn68YqbkWDkIiRXBdz/zL9kfSLefgwW9qLQDiTuYJALvQozcTkNu3aIeC2KODDW77mr+18iJoY7p0Eh0tL8QVkBxteg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=diasemi.com smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EjLS/nifromMGTUIG1yaTU2S30baC1N0id59StmOdIA=;
 b=FExhj6WMpF/YyB2ksr6z0RX5nsyS9j9O9MvUYIOHycKVNyvRN8KG5mdYuW8TnbMjwWLGWjCv5T3wj6lnlwLTTStzyF5d68K8zW6br/YSIRiPOgsE0jm8VnEEIJEWPDBTHwtPF2vpPvWnhqDw/zWxBIMQZEYR0X98NLYYhKAR+DI=
Received: from DU6P191CA0006.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:540::8) by
 PA6PR02MB10497.eurprd02.prod.outlook.com (2603:10a6:102:3cd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Fri, 20 Mar
 2026 07:33:45 +0000
Received: from DB3PEPF0000885B.eurprd02.prod.outlook.com
 (2603:10a6:10:540:cafe::4f) by DU6P191CA0006.outlook.office365.com
 (2603:10a6:10:540::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9723.23 via Frontend Transport; Fri,
 20 Mar 2026 07:33:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 DB3PEPF0000885B.mail.protection.outlook.com (10.167.242.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.19 via Frontend Transport; Fri, 20 Mar 2026 07:33:45 +0000
Received: from se-mail10w.axis.com (10.20.40.10) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.39; Fri, 20 Mar
 2026 08:33:44 +0100
Received: from se-intmail01x.se.axis.com (10.4.0.28) by se-mail10w.axis.com
 (10.20.40.10) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Fri, 20 Mar 2026 08:33:44 +0100
Received: from pc63539-2527.se.axis.com (pc63539-2527.se.axis.com [10.85.100.100])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 9EA132EB8;
	Fri, 20 Mar 2026 08:33:44 +0100 (CET)
Received: by pc63539-2527.se.axis.com (Postfix, from userid 17419)
	id 9BC77603DECC; Fri, 20 Mar 2026 08:33:44 +0100 (CET)
From: =?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
Date: Fri, 20 Mar 2026 08:33:24 +0100
Subject: [PATCH v2 1/2] regulator: dt-bindings: dlg,da9121: Add
 dlg,no-gpio-control
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID: <20260320-no-gpio-control-v2-1-dbc938e462cb@axis.com>
References: <20260320-no-gpio-control-v2-0-dbc938e462cb@axis.com>
In-Reply-To: <20260320-no-gpio-control-v2-0-dbc938e462cb@axis.com>
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
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885B:EE_|PA6PR02MB10497:EE_
X-MS-Office365-Filtering-Correlation-Id: 6863a3a4-cc2a-44f0-dddd-08de865304fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|376014|82310400026|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	cI0VggBxqHUfB+CVSU7YS9QYlYF8T5XuxeWQNTQH4cFKuNzBKg5ynSqd7IrIfGjLsm13cCwoCl5H/ndBRwgq4dcZ/3aTzjMdT6jBjAqPVPMu3Hift0S/pl7Htjg5t/BzSyenf31qDqP7mW5cY7w+BTyFzuNqMbim3dIjL/Pbtsq5GEV+l6E8ysZ4iBiLGEFg1DE9WOrFft3evIhCWK4n3Nla6NDPPDsA3XXn3uLOneAusRQ3IHJvCJxoilu0lfsG1avGsiXp2jC9dzsPmh5j+I2I6aZYFyWKZCto8WkMIPsXOREGmpEos30OAFjhO5vlVqGIXksdbrleI224/7x0V/llTzz+eH4pk6sYRqmSfXh5hsQfu59CPFwDEj1cZAd50bJ8E5W4jqkC0KINbOrFG8rSlOn1b3Kk3EDKu9mEJaJ/yR78x8uHhzi0OQbI+eII5Eg5oea84oG5hn29BcWKEK8vrRglZ+i1apCldZO4jHB54uhLnHSxQsHVmRqc2bGcSWkanGL3lnwm4DIgYomrSky8Se8D0V0XCeNF0NhxeO5LN/5/5u5m/jVC55OIUkVk1JQgmDOzG43liXz0w7tTFdUrnIiUVZZ4sSt7zfED7XJozORAEaARfqUodYQayKsH24BTByyb6fSFtcVUawFTGIcJ6Fpms0WRrTutqEoPZCNboJzplllrbBQumYM5CCFADWrv7Jq51jetOcHpxpBYyNnvNgirJlJWw+vz/ye3S2sbyr4lH+INbZZQyJ7pkFoVs8RBFRK6sbVd3TZrSevJGA==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(376014)(82310400026)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	vEuoKfdNvMl6Ld3dFK1Yq/wEe1rFL4cUNesAgY+dFrk3sndM3TL4rUFP9Gs5pX4ySuKGxi+xsUr0zrViYqBBi1dmra2SspaZgDQEaO2tD+0Q1UjnEvUWrEoiCc9NPS/GJJGbb6V4MsylUiA/Pg15FIwGg0KFIvTiTqYmEn2CMmmvMu8hT1hhzIv3sGVWuyn6+A+YgdB+FFDamSqoiLLOUIrQAmFXGEKYumqMlx4RpvgHX2vdzxKewGuIGvp8Fkdsj4R5wnOJtJpmZ0rkv4l9xT6Y0IDR14vEo/MS65CnEyNqHAFDjo/CVPT7QkLwsGLmd5eznj/jXADyNF/gQUDm6IGUXmZwYh+RwusqnQSrX3zLPQHsqygOnO1ZuXlSGKb0f36V6jv/ChCnpU4vOh0yxoQT2nbMoMeXglvO1dYXvdWuL0Tv+mVtrnli1/DcS7aa
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 07:33:45.6839
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6863a3a4-cc2a-44f0-dddd-08de865304fd
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB3PEPF0000885B.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR02MB10497
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-278098-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[diasemi.com,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.68:email,axis.com:dkim,axis.com:email,axis.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.svensson@axis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axis.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: F35992D6A73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the optional boolean property dlg,no-gpio-control. When present, it
indicates that no DA91xx GPIO pins are configured/used with functions
RELOAD/DVC/EN, which can affect the output voltage control, regulator
mode control and enable signal control.

The absence of relevant GPIO DT properties does not imply that the
RELOAD/DVC/EN GPIO functions are unused. These functions are provided by
DA91xx GPIO pins and may be controlled by external hardware without
corresponding GPIO DT properties. The dlg,no-gpio-control property
explicitly indicates that none of these GPIO functions are used.

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


