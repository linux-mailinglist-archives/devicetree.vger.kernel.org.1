Return-Path: <devicetree+bounces-273026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GA0LFtHtrmkWKQIAu9opvQ
	(envelope-from <devicetree+bounces-273026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:57:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7F823C3D0
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:57:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26A6730D72E2
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A513DFC8B;
	Mon,  9 Mar 2026 15:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="WnIcTDFG"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011007.outbound.protection.outlook.com [52.101.70.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724003D7D84;
	Mon,  9 Mar 2026 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.7
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071594; cv=fail; b=CLrtMNL1x9oDmxZe7uqWH7jM3oc31s87wnzZn10y4+6o0dU7RexY01L2QjSdxSz0aseN+fP7LavxnTC2xa10KSMQZeRbyWkDDPHNf4FDIEx88cUFnKKngxzwXij5CbQ8sXI5WaKxWtbMU8h4lgPjGGcX+jAlhAvwW2v8XyErbMQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071594; c=relaxed/simple;
	bh=oTN7F/H5J43buSnhiqUmXTe0HpYw5e5KiyEZ1kM40+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=MCYFUQE/Dssq6O8hN8ogDZ4p12w8F7OAsQ44sgeyv9Y7Rr8GHeW2byRWvcPzTVbMap1+MwJstMkgpYNcy+UHFXzFWRtjAyzcYEdeSYL5o/YPgOleSN3k9e0IvSt03in2dZyv8xZmv7bfWS69Ew8JvLgSBlzg/lz5dG5J4HFnf3M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=WnIcTDFG; arc=fail smtp.client-ip=52.101.70.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wDG/lP/G5wIkR0Jo2JahSuECvuUAaA4W3fbbPh3dV87/4HGXRAqzWjK/BhEAAiGBldukEU+uysXicwF7fE7VMablcrggPRa5zYr5t/Al2fhnjODePiKcgoF/GV36OYGX2JQRhqbWo4+vaNbzr/95fTHUVXApvLRiFMfWiMquQC4Hp/Uqcz788KiuggygheKAyMANXVMqoNRBJT4Z1u/xsn4AZUCTNlDfArfxtyAZIgSF60QoDV9Gtps5qSzTMGjqOqok3f+w3Y+Gyz7uK3groBZG7HGJEQYbosyn9dEzucPzg4rwVERrzq9gNqV12TQ17jft+CdAGg5ssJO00anXrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=efk5nC8WfBgiXQy4lVOJlWUd1JpEymB75FbsxupjDBE=;
 b=VKUb4lmT/irNJ+wdS7Ub6jisb0KVic8yDPIvyh67dpGAzOfqWTetUX/LFcFfCo4zJt3P5df/cQd1v6hiSt5JSsA/QN6t/u4QoVIQ18tiyBXztj/EQca9Xw0783vcE5i6yKk1iPPU6l1scWX8VdgjoZW+nToPjUo5be65ANoxnikKHvHAX8r9aaD/AtDyXRRaVxzjyXdaoRMo+srfg/f8NWjiepkDZPTmbXz/tNN8ei1FKnzKNBEqQzPed1bpUjssi32McT4uuVNRfcY/0dJyq0/zDDHG8f+hDjjLOp74nkDb14E+b7jovCIJa9wfQ72AxjuqTKD1cBpO4xdlJC7SEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=diasemi.com smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=efk5nC8WfBgiXQy4lVOJlWUd1JpEymB75FbsxupjDBE=;
 b=WnIcTDFGiECw4c9qL/twT0Xv4un9mDvuw6V3WFAGisRno1UwLMuQcN+IUBm2td6RhRp8dRAqK964Gr6OZOsB8ECOyiV7BHKn6R5I4AUu/ZIe9QotFcS3MR2p8G4xZKVpl4N+CHxXeZCVN107eDqZBfJ3tDqOyUL7fADoPTEKy7c=
Received: from AM0PR02CA0139.eurprd02.prod.outlook.com (2603:10a6:20b:28d::6)
 by DB9PR02MB7916.eurprd02.prod.outlook.com (2603:10a6:10:33b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Mon, 9 Mar
 2026 15:53:08 +0000
Received: from AM2PEPF0001C714.eurprd05.prod.outlook.com
 (2603:10a6:20b:28d:cafe::bb) by AM0PR02CA0139.outlook.office365.com
 (2603:10a6:20b:28d::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.24 via Frontend Transport; Mon,
 9 Mar 2026 15:53:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 AM2PEPF0001C714.mail.protection.outlook.com (10.167.16.184) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 15:53:08 +0000
Received: from SE-MAILARCH01W.axis.com (10.20.40.15) by se-mail10w.axis.com
 (10.20.40.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1748.39; Mon, 9 Mar
 2026 16:53:07 +0100
Received: from se-mail10w.axis.com (10.20.40.10) by SE-MAILARCH01W.axis.com
 (10.20.40.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.61; Mon, 9 Mar
 2026 16:53:07 +0100
Received: from se-intmail02x.se.axis.com (10.4.0.28) by se-mail10w.axis.com
 (10.20.40.10) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Mon, 9 Mar 2026 16:53:07 +0100
Received: from pc63539-2527.se.axis.com (pc63539-2527.se.axis.com [10.85.100.100])
	by se-intmail02x.se.axis.com (Postfix) with ESMTP id 469861B03;
	Mon,  9 Mar 2026 16:53:07 +0100 (CET)
Received: by pc63539-2527.se.axis.com (Postfix, from userid 17419)
	id 426D66074F0D; Mon,  9 Mar 2026 16:53:07 +0100 (CET)
From: =?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
Date: Mon, 9 Mar 2026 16:52:36 +0100
Subject: [PATCH 2/2] regulator: da9121: Allow caching BUCK registers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID: <20260309-no-gpio-control-v1-2-06d2365917c6@axis.com>
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
X-MS-TrafficTypeDiagnostic: AM2PEPF0001C714:EE_|DB9PR02MB7916:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c427503-42a5-4cf9-16c0-08de7df3f560
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700016;
X-Microsoft-Antispam-Message-Info:
	OLkOjzd8m+yDIRdXhMk/YpZiGJqPcHF9/QNAdtDVEKY4Np3qnHTqRE/uHG9CB1ICQpmV7iq+tDSdiTiRoM+IWwX8bm9UImCNaR8iC/scjcC+P7n2g8afR+rIDEt+V7eq/PC7z/XE5eEvYtf/uGBQXM4kE1CdRoa4UwyBa+9N4XxRr+2LzEPs9OYVGpEvFe2WCQrDQOns43RkCQw/05KULZrfjQ9mxeRSrR+1msboWIG78UTAhQuPFbbtGAF7hkh43t7a3Hh91FLEydGtuHM+RXgCvAAvQlRuXtefgPK+KgVqzBMXR+OVIxtSea8Jz5GL8E9RcRbwqZOFKAN3aGhbiinshTPMNTb8G7++UdlGEpEcHspZyIGZvJXnUdmUP2VA7TgQpW0BhgxDuknXDxn/aHxBTP+7JmDzG1orHSIvuyS8w7y8uRwPNEfO2t64V4ld+cBWGrTqiscv7xem6+Gne3MbAPNsdvc1PthBNRLUrrY8h96QF45o8yYzq60aYPxr7411Wh3J+iBWFCCeFXOg0Z+eiUerzmMshHXbDaeEErMBDSmJF8BLvDwmGMq3F9raWilVdDDCK64/L5tK8BgsttFpioL641896Mw7wjnMmqxW6+6GgMC31wIyNZodvOOYTjlZyXHJ/v/LLUx+YxZWsnOZIxeJJt1lZX76k2azLBmxnYAFB/jDlC24X3AmXnKd55PG/5k3rZOVgBckGFyXrN5dFUjI1SQk1May4GyQYeexpUiFoDFgPtRlZP3WYDLsJ9qyD/nV43XS4eQk0Z6iJw==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	j/iVc8pgyx/iSYzBlqoBwYj4+UviT1q42s2rH0ZhnkjHuUMBLUN2zOET5t37Wg7McZLO3BjmWP4P1LFM7Il/3nmrSnGDqxKyD8Hbw6JQcYnjScxfqaoHzsicOrYa0QHkuSaE21wKARPLeuFWcVeHyk4lcjDilKRYcJzPjZoh1SLexzWBP3GZQAhlC8M0vbqEVV95xUXp2K3wnHfI+khA8K/qwvGYeC27nH1i+/2f7wf4jBRhKx6AEC+yxOzvDh8R53VzS7MYrK+7vKO8mxVKGQI9B6CSl8ZL9so2pWNWbHkOYY4dfZBmjFDn9ew+aCIWglMt02WY3qAuInKC0AgvgMOaptTbeCtiilIrssTAt7JopCh3teQCgTL1RTmOksr++9r74aRUZX4ampEIrq1yp/sb6nd7hPbO0KM+32G0pIHkYh5jfB3vSJ0hj2vWkZaX
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 15:53:08.0071
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c427503-42a5-4cf9-16c0-08de7df3f560
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AM2PEPF0001C714.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB7916
X-Rspamd-Queue-Id: BF7F823C3D0
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
	TAGGED_FROM(0.00)[bounces-273026-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[diasemi.com,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axis.com:dkim,axis.com:email,axis.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.svensson@axis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axis.com:+];
	NEURAL_HAM(-0.00)[-0.957];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Action: no action

Some BUCK registers may change without software writes when GPIO pins
are configured for functions DVC/RELOAD/EN. If the board does
not use these pin-controlled features, caching is possible.

Caching buck registers removes unnecessary I2C reads when performing
register updates. For example, updating regulator mode can result in
two I2C reads, one from the regulator core regulator_set_mode and one
from the DA9121 driver, where da9121_buck_set_mode uses
regmap_update_bits (read/modify/write).

Check for the optional DT property dlg,no-gpio-control. When present,
select the regmap configuration which does not mark the BUCK1 register
block (DA9121_REG_BUCK_BUCK1_0..DA9121_REG_BUCK_BUCK1_6) as volatile, so
that regmap can cache BUCK1 registers and avoid unnecessary I2C reads.

The dlg,no-gpio-control property is mutually exclusive with
enable-gpios, regardless of whether the referenced GPIO is connected to
a GPIO pin or the IC_EN pin, since pulling IC_EN low powers down the
regulator and registers are reinitialized at startup, leaving cached
values stale.

Co-developed-by: Waqar Hameed <waqar.hameed@axis.com>
Signed-off-by: Waqar Hameed <waqar.hameed@axis.com>
Signed-off-by: André Svensson <andre.svensson@axis.com>
---
 drivers/regulator/da9121-regulator.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/regulator/da9121-regulator.c b/drivers/regulator/da9121-regulator.c
index ef161eb0ca27..ed62a41deb84 100644
--- a/drivers/regulator/da9121-regulator.c
+++ b/drivers/regulator/da9121-regulator.c
@@ -864,6 +864,21 @@ static const struct regmap_access_table da9121_volatile_table = {
 	.n_yes_ranges = ARRAY_SIZE(da9121_volatile_ranges),
 };
 
+/*
+ * When GPIO functions DVC/RELOAD/EN are not used, the registers in the range
+ * DA9121_REG_BUCK_BUCK1_0 to DA9121_REG_BUCK_BUCK1_6 need not be volatile
+ * because register writes to these registers can only be performed via I2C.
+ */
+static const struct regmap_range da9121_volatile_ranges_no_gpio_ctrl[] = {
+	regmap_reg_range(DA9121_REG_SYS_STATUS_0, DA9121_REG_SYS_EVENT_2),
+	regmap_reg_range(DA9121_REG_SYS_GPIO0_0, DA9121_REG_SYS_GPIO2_1),
+};
+
+static const struct regmap_access_table da9121_volatile_table_no_gpio_ctrl = {
+	.yes_ranges = da9121_volatile_ranges_no_gpio_ctrl,
+	.n_yes_ranges = ARRAY_SIZE(da9121_volatile_ranges_no_gpio_ctrl),
+};
+
 /* DA9121 regmap config for 1 channel variants */
 static const struct regmap_config da9121_1ch_regmap_config = {
 	.reg_bits = 8,
@@ -994,10 +1009,18 @@ static int da9121_assign_chip_model(struct i2c_client *i2c,
 			struct da9121 *chip)
 {
 	const struct regmap_config *regmap;
+	struct regmap_config regmap_config_1ch = da9121_1ch_regmap_config;
+	struct regmap_config regmap_config_2ch = da9121_2ch_regmap_config;
+
 	int ret = 0;
 
 	chip->dev = &i2c->dev;
 
+	if (of_property_read_bool(i2c->dev.of_node, "dlg,no-gpio-control")) {
+		regmap_config_1ch.volatile_table = &da9121_volatile_table_no_gpio_ctrl;
+		regmap_config_2ch.volatile_table = &da9121_volatile_table_no_gpio_ctrl;
+	}
+
 	/* Use configured subtype to select the regulator descriptor index and
 	 * register map, common to both consumer and automotive grade variants
 	 */
@@ -1005,29 +1028,29 @@ static int da9121_assign_chip_model(struct i2c_client *i2c,
 	case DA9121_SUBTYPE_DA9121:
 	case DA9121_SUBTYPE_DA9130:
 		chip->variant_id = DA9121_TYPE_DA9121_DA9130;
-		regmap = &da9121_1ch_regmap_config;
+		regmap = &regmap_config_1ch;
 		break;
 	case DA9121_SUBTYPE_DA9217:
 		chip->variant_id = DA9121_TYPE_DA9217;
-		regmap = &da9121_1ch_regmap_config;
+		regmap = &regmap_config_1ch;
 		break;
 	case DA9121_SUBTYPE_DA9122:
 	case DA9121_SUBTYPE_DA9131:
 		chip->variant_id = DA9121_TYPE_DA9122_DA9131;
-		regmap = &da9121_2ch_regmap_config;
+		regmap = &regmap_config_2ch;
 		break;
 	case DA9121_SUBTYPE_DA9220:
 	case DA9121_SUBTYPE_DA9132:
 		chip->variant_id = DA9121_TYPE_DA9220_DA9132;
-		regmap = &da9121_2ch_regmap_config;
+		regmap = &regmap_config_2ch;
 		break;
 	case DA9121_SUBTYPE_DA9141:
 		chip->variant_id = DA9121_TYPE_DA9141;
-		regmap = &da9121_1ch_regmap_config;
+		regmap = &regmap_config_1ch;
 		break;
 	case DA9121_SUBTYPE_DA9142:
 		chip->variant_id = DA9121_TYPE_DA9142;
-		regmap = &da9121_2ch_regmap_config;
+		regmap = &regmap_config_2ch;
 		break;
 	default:
 		return -EINVAL;

-- 
2.43.0


