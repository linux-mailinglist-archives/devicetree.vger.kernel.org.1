Return-Path: <devicetree+bounces-278099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mI9aAIr4vGlW5AIAu9opvQ
	(envelope-from <devicetree+bounces-278099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:34:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E332D6A7A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD40C3096052
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 07:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052FF3346A0;
	Fri, 20 Mar 2026 07:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="bMWnG3QN"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11010060.outbound.protection.outlook.com [52.101.84.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7902EBDDE;
	Fri, 20 Mar 2026 07:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773992031; cv=fail; b=UzMFPkVnDy1geJmFq7rflFvKy5NCnA6lAp9SBB3/p4e92VVgYiLLoedqZo6EbJhFFWEIz+/W2jI82mBq+jpMyHfO4yv+SFBNWshU+qWs98V7kgtpLJ9lVvaPpJiqRg57wPf4HSg5J7Kkvt30ZKmsg8kgsrHmKR1t32DJ3K+Tsgg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773992031; c=relaxed/simple;
	bh=DZ3tsECejSyz1lwR47p9E50/RH1aMc9TAp0OVWCVsb0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=TlmicNpjyTnK4tJ8hamLoVYsc//5nE0NAOTjRPkwfYkMAIGpS0657vbIXPbmRdJB7vhH7PXkeopgPaxO1v3mWSio0DhUHmCOzgD0F8iu+3ZrrtnSVGKHm30gWDBygv+vV98/qKPEWZ/M1HuGnpoUOlP4NxvFrcdI491U5uIvghI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=bMWnG3QN; arc=fail smtp.client-ip=52.101.84.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ul/D6i5PeJd3cFXzgvPmSWl4UJXAx5VYuYHOILrIkuMcCOaQGcK5FrvoVdzlajhvRJJBW3dPQ1JgSlHZmPuYFSDKXcSFX24oKru5kEs9bLlc8Kp190HJ32/WTcVtLX634+l57u72OA689zOl8al1liS4y414skd6SfpMB7HwbDQQdW/iSz0YwgSF7f7XyR43Jl8VvV8vI2QtJD/XwdmHlML9nS2oSA1+HiyisiKZpv4ZtOQO8LTpxdgIld4AG4Sh3dZ0wXl9Qs7WTI9T6mvEULj/joZFJsY2QUm2wqw18UKTHbv0Azm61k2ZWKaU/qaf+13cxh7O/n9Z2BA//VFJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8W3dUmbSFRDYk7f/ASQqtLJ1UJyCxVFzfdtiaEdmWVs=;
 b=SvmKLjUVkrSCsxhGcjiwfdwm59V2c3PX47qaisL6S9YOOv98HM/V0jsZKYiM03u+XLcbSW2H158wkFj11ibC0pOemUaBMCu1DUNssc8E5YHP656zdBpZ576Ql8rXYlk69olVThHFANAKNtYkUg0dHEo2+lEyEakLqUC7WMrn46kM28Xd4yI2/ZnvVwGDkx8+PA7k9SN0NiZnTsKMHgnv5ztWs7vNolGCzrdj8Mw9pJqW0FrxZn9hdgj3iOoqdzQPnbXMSaQqkjhfm4sv5dJuVg4lF25evfLSWePCocoeOMqGrJ60n0WFxZ6PFCtkezenf8Vh0DB+iCWcoXULM6qQKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=diasemi.com smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8W3dUmbSFRDYk7f/ASQqtLJ1UJyCxVFzfdtiaEdmWVs=;
 b=bMWnG3QN9wAvc1kbM0lwf6uPhou+Ti0OUVryE8l4gmdSdF+SQwWrQHgKpVP/6GNUc2JOhpSKw3tLa/WbmFeLnOIATosCSe/VQYpP3Cjpu/DUUYuB9qwu2egPZJu2mZROeZcocyq3XASdh7teNuuGi+ciKJlq24NuvXvTybh6r0s=
Received: from DUZP191CA0062.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4fa::25)
 by DB8PR02MB5961.eurprd02.prod.outlook.com (2603:10a6:10:119::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.23; Fri, 20 Mar
 2026 07:33:45 +0000
Received: from DU2PEPF00028D06.eurprd03.prod.outlook.com
 (2603:10a6:10:4fa:cafe::f8) by DUZP191CA0062.outlook.office365.com
 (2603:10a6:10:4fa::25) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9723.23 via Frontend Transport; Fri,
 20 Mar 2026 07:33:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 DU2PEPF00028D06.mail.protection.outlook.com (10.167.242.166) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.19 via Frontend Transport; Fri, 20 Mar 2026 07:33:45 +0000
Received: from SE-MAILARCH01W.axis.com (10.20.40.15) by se-mail10w.axis.com
 (10.20.40.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1748.39; Fri, 20 Mar
 2026 08:33:44 +0100
Received: from se-mail11w.axis.com (10.20.40.11) by SE-MAILARCH01W.axis.com
 (10.20.40.15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.61; Fri, 20 Mar
 2026 08:33:44 +0100
Received: from se-intmail01x.se.axis.com (10.4.0.28) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Fri, 20 Mar 2026 08:33:44 +0100
Received: from pc63539-2527.se.axis.com (pc63539-2527.se.axis.com [10.85.100.100])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 9EFA22ECA;
	Fri, 20 Mar 2026 08:33:44 +0100 (CET)
Received: by pc63539-2527.se.axis.com (Postfix, from userid 17419)
	id 9CEC5604326C; Fri, 20 Mar 2026 08:33:44 +0100 (CET)
From: =?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
Date: Fri, 20 Mar 2026 08:33:25 +0100
Subject: [PATCH v2 2/2] regulator: da9121: Allow caching BUCK registers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID: <20260320-no-gpio-control-v2-2-dbc938e462cb@axis.com>
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
X-MS-TrafficTypeDiagnostic: DU2PEPF00028D06:EE_|DB8PR02MB5961:EE_
X-MS-Office365-Filtering-Correlation-Id: 7132a89a-33ce-442f-b62a-08de8653050b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700016|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	0mOj4BVVva3bb4/9ga+OEZ3HhAs8sbv8/IrYMFF/ruCtpSkqqP4UU9hDmuvchBSoOfC8F102ahavgL3wRYqwNGUVA9f93+kXldIJD9ikwQ9pziN1gWyNf4bi/8PUSw57Oh6C5c/FHxbqG/vNuZ7AY92Q/XgXKg5Hrl4Y3PBZls9zHtmE1BkqJpcuFi6gj4Yg8PnBoJCbyMXXCC5QQLtapgQ3dzrlCLohNGQ/S1jzXXLLUz2GJdaXF0kb5sDd4YEkAMbyDfXVV4z3pu5YH3j43j/tsyFUME5FNYJZtPZJmZZ2fHP6hLUslz1phzvWLL7f9DW0FmB4sobI7EP/Qp7GnqmDv+t/V2uczsH/d2Uok1IxkgmhcgYkvaUyeauB9XIad7wJgUHBhPUhYd6xTG1qRI1ccuo4ehsLTMYzalGwjgzK0pOvL9TJRNvBrHZDWKcJW9zdWZtVR1lc41xv0SYiVoOnRqwdwsmbD1NoCr7OVLoFHwPT5bnAWXRQJXxXjXrDm2cLVFaGiqDyMrY4SwUOBERvOZP9Ccd5xFdq/TbU8jTKBcvUjIq5so1ER9551kRgW6zg2lFUYv7OTYtYkwg9ufcFfkg30Zq5WBf0CpAKDgMe66QB0ET9xRZRnjol5PYGMqE5asVVTsiofrTObTKMRbx3i/1LvPIGuEPiQNrbtGF7gNIOkGI1tEEqiLtzMsxsHnEh+G1ti76SIiglfJuZcNJ6m33HOsLFCIf2tsLa4IhCDG7LAS5FEPAdBO4OJJml0fKMmV6nwnBsX/7yRRYFeQ==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700016)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	1Dbr8bBrx9WtZmaM/d4FCNJB8ozvFnk6g4R3KQdl/rEDdAi87BvbiTC+kZ+zt43EU69S/uogWtSkS+tH95jsXqce1ScGbcMb7GJs5PQP5CMfyW/8R6i23B/m/URkxD8X0bbot1N5WV8PZilrceMyoSFqPQOTGzg6+t8DoRnPBsrL61H4x2dYEMJ8Ki9OQBas85LmOHG01N4GWdD6WbiFZ9eucZTewYPniWS7sw298fDp8RiIhoGS48typOsH9HLrAPnGOoFxHGss+9c1MDYKmXDwFcF5n56jdN/8S51BdcLUa4bKEyv2y/BR5XPi5cRITE84UyG0Asly7YUoC8pHq7pmT4i67bYjQfawLTazw4L3C2bEvL2oFluS5oYaioaoVT2PvganBn023djjYuRDbZwr78kOqqxMZyr3qKBs18u6a+OUxqRj8nc/YhUNEuDw
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2026 07:33:45.7704
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7132a89a-33ce-442f-b62a-08de8653050b
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D06.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR02MB5961
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-278099-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[diasemi.com,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,axis.com:dkim,axis.com:email,axis.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.svensson@axis.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axis.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: 59E332D6A7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some BUCK registers may change without software writes when GPIO pins
are configured for functions DVC/RELOAD/EN. If the board does
not use these pin-controlled features, caching is possible.

Caching BUCK registers removes unnecessary I2C reads when performing
register updates. For example, updating regulator mode can result in
two I2C reads, one from the regulator core regulator_set_mode() and one
from the DA9121 driver, where da9121_buck_set_mode() uses
regmap_update_bits() (read/modify/write).

Check for the optional DT property dlg,no-gpio-control. When present,
select the regmap configuration that does not mark the BUCK1 register
block (DA9121_REG_BUCK_BUCK1_0..DA9121_REG_BUCK_BUCK1_6) as volatile, so
that regmap can cache BUCK1 registers and avoid unnecessary I2C reads.
The property dlg,no-gpio-control is required to ensure that BUCK1
registers can be cached, as the absence of relevant GPIO DT properties
does not imply that the RELOAD/DVC/EN GPIO functions are unused. These
functions are provided by DA91xx GPIO pins and may be controlled by
external hardware without corresponding GPIO DT properties. The
dlg,no-gpio-control property explicitly indicates that none of these
GPIO functions are used.

The dlg,no-gpio-control property is mutually exclusive with
enable-gpios, regardless of whether the referenced GPIO is connected to
a GPIO pin or the IC_EN pin, since pulling IC_EN low powers down the
regulator and registers are reinitialized at startup, leaving cached
values stale.

Co-developed-by: Waqar Hameed <waqar.hameed@axis.com>
Signed-off-by: Waqar Hameed <waqar.hameed@axis.com>
Signed-off-by: André Svensson <andre.svensson@axis.com>
---
 drivers/regulator/da9121-regulator.c | 43 ++++++++++++++++++++++++++++++------
 1 file changed, 36 insertions(+), 7 deletions(-)

diff --git a/drivers/regulator/da9121-regulator.c b/drivers/regulator/da9121-regulator.c
index ef161eb0ca27..2b150bb4d471 100644
--- a/drivers/regulator/da9121-regulator.c
+++ b/drivers/regulator/da9121-regulator.c
@@ -400,8 +400,14 @@ static int da9121_of_parse_cb(struct device_node *np,
 						GPIOD_OUT_HIGH |
 						GPIOD_FLAGS_BIT_NONEXCLUSIVE,
 						"da9121-enable");
-	if (!IS_ERR(ena_gpiod))
+	if (!IS_ERR(ena_gpiod)) {
+		if (of_property_read_bool(chip->dev->of_node, "dlg,no-gpio-control")) {
+			gpiod_put(ena_gpiod);
+			dev_err(chip->dev, "dlg,no-gpio-control conflicts with enable-gpios\n");
+			return -EINVAL;
+		}
 		config->ena_gpiod = ena_gpiod;
+	}
 
 	if (variant_parameters[chip->variant_id].num_bucks == 2) {
 		uint32_t ripple_cancel;
@@ -864,6 +870,21 @@ static const struct regmap_access_table da9121_volatile_table = {
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
@@ -994,10 +1015,18 @@ static int da9121_assign_chip_model(struct i2c_client *i2c,
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
@@ -1005,29 +1034,29 @@ static int da9121_assign_chip_model(struct i2c_client *i2c,
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


