Return-Path: <devicetree+bounces-273027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HL+J9PtrmkWKQIAu9opvQ
	(envelope-from <devicetree+bounces-273027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:57:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CA023C3D8
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:57:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C61030DA1C2
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:53:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04E8B3E0C65;
	Mon,  9 Mar 2026 15:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="lyEjYnU9"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013034.outbound.protection.outlook.com [40.107.162.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889BA3D903E;
	Mon,  9 Mar 2026 15:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773071594; cv=fail; b=L+qYYWwUNbkYJiFMN8Oaw4KHnXbJ3UNy9LnlY8jxtYbikYyAkzS8w1Jq7ViaqI8WTKP4nhRcpcauVA58sfhgytLV59Puc7ipqOqsunSAMgjADoPc98B7mrXUwJ3D0xPvL7+JsIJiU23I0Mp0n8Idw1OxQzjbsBVdk4vgektaAAw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773071594; c=relaxed/simple;
	bh=7T8t0EjPPFj24lYZdQqJlRqHfWKy0ehI7T9E2SAI7mo=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=rc7de5/vt2zys5aYOwNHnuunQxadCOdHcHlYyV37LIjlmWgLck9IAo6YohooI+g6s4ysxYEWRrHTgzQNu1VTMfCGYuwySrhem9qxSGvqbtRmRVN2V/mXKPBSbRwV8V2mjC2EmVvu30QljzzHj0cKGCX90vDSZ9YD5hzXtsWzoM0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=lyEjYnU9; arc=fail smtp.client-ip=40.107.162.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a8kM4IPq29TKY4Ndy09CB+ywPDKe2FFJqRb/4K0FtsZnS4XjgGTE07CgO8TKX7GBsYgD17u55mmDODraGfsjyAAynikM1bvzaAuHzTKE63++JPPhEqFukPh7AeR0Bake+RS36kgmTlMnuVE5fY0K3yscp5TikVyjp01yKzfgVLsMfRpoKni1oKrT+swSoOOVh9elojIcCyn8dGRZZZVQcFJZQ6mbXpFD3o01KS/egz63XzLjCwQH9oDeSFWQMYVjvb+2oDvgPj9A/hLXpbWIp0X9pyqnjsBcESqhUwg32Fltuoc0vHL1ciSYmZ9o5+6C40nrhpbMcwHgyUoMOaEhlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zLxHIiPXhPCLRk9Rk2IP0a9N6dlrJDHLe67RAUGCH8A=;
 b=V7kxl48Uod7rpz2slVHqjUPJhzu/vP61eYnihiX72WfZ7ONFxepiR0PYhu8Xyc6R8mxiq/HXH7YRYlUvqY0tVBQ10Vx6wlKGPgvVCXN8o2i2NRdOkEwYtaNvemF4Y22OdUsxZmtWX0iHBjJ+nA8dIIaZStzVvzweLRptteC9BFUQ5edKIHn4aH7KLbOZk3SLBNtF0rZcgjhq8ouyxbLd5ga2ZQFOKHvpKPZdqeSyTTqcPXxwaHh9OaABuZVb/7+EgYaveANh9NbaLA2O2VJ98lh0Wwie3os6vwvnxPMOyGerQUnahIE4Nwolw+g/cWB48YIAz1QwAj+td6jGAT5atw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=diasemi.com smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zLxHIiPXhPCLRk9Rk2IP0a9N6dlrJDHLe67RAUGCH8A=;
 b=lyEjYnU981a6kQrLLn4+2DB+50wOJ5LVELy3FCnQTI0zYfDTn4uIZwIb3oh2PVnz5GzlCCW4Xjg7KKKPmNE5WXb16zubBoipTMiPRdE9FxCDBcqxYCFVFbOej72IOBamSFxD8ao+ksPNyXz9yQVbnvKCYF6zMDoX8ZQtA7keAsk=
Received: from CWLP123CA0181.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:19b::9)
 by AM7PR02MB5971.eurprd02.prod.outlook.com (2603:10a6:20b:1a0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.20; Mon, 9 Mar
 2026 15:53:09 +0000
Received: from AMS0EPF000001A8.eurprd05.prod.outlook.com
 (2603:10a6:400:19b:cafe::a1) by CWLP123CA0181.outlook.office365.com
 (2603:10a6:400:19b::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.25 via Frontend Transport; Mon,
 9 Mar 2026 15:52:43 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 AMS0EPF000001A8.mail.protection.outlook.com (10.167.16.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 15:53:09 +0000
Received: from se-mail01w.axis.com (10.20.40.7) by se-mail11w.axis.com
 (10.20.40.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1748.39; Mon, 9 Mar
 2026 16:53:07 +0100
Received: from se-mail10w.axis.com (10.20.40.10) by se-mail01w.axis.com
 (10.20.40.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.61; Mon, 9 Mar
 2026 16:53:07 +0100
Received: from se-intmail02x.se.axis.com (10.4.0.28) by se-mail10w.axis.com
 (10.20.40.10) with Microsoft SMTP Server id 15.2.1748.39 via Frontend
 Transport; Mon, 9 Mar 2026 16:53:07 +0100
Received: from pc63539-2527.se.axis.com (pc63539-2527.se.axis.com [10.85.100.100])
	by se-intmail02x.se.axis.com (Postfix) with ESMTP id 458621AED;
	Mon,  9 Mar 2026 16:53:07 +0100 (CET)
Received: by pc63539-2527.se.axis.com (Postfix, from userid 17419)
	id 4076E6074F0E; Mon,  9 Mar 2026 16:53:07 +0100 (CET)
From: =?utf-8?q?Andr=C3=A9_Svensson?= <andre.svensson@axis.com>
Subject: [PATCH 0/2] Allow caching of buck registers when no GPIO input
 control is configured
Date: Mon, 9 Mar 2026 16:52:34 +0100
Message-ID: <20260309-no-gpio-control-v1-0-06d2365917c6@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMLsrmkC/x3MQQqAIBBA0avErBswi8iuEi3KJhsIJzQiEO+et
 HyL/xNECkwRxipBoIcjiy9o6grssXhHyFsxaKV71SqDXtBdLGjF30FONNYqvTY0GNNBqa5AO7/
 /cZpz/gAd7CYqYQAAAA==
X-Change-ID: 20260309-no-gpio-control-9cc02b1e8994
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
X-MS-TrafficTypeDiagnostic: AMS0EPF000001A8:EE_|AM7PR02MB5971:EE_
X-MS-Office365-Filtering-Correlation-Id: 44e316b7-01b7-4b47-039c-08de7df3f647
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	VnTkawKD4SspVXCnkxgM1bfBJ7gJKG61cNYnzcGJWj2MLenz5zYvQBaYRoGwLY7SJgtQaBlswu9kWlL1Z+IGwrXQOf9Bbs/lu1VHY8YP7lk5R36tHm3b488u4V8Bu+QH60Ta3pPPT8K6ri4q0rAxL3+YaiZL6WUApWRbRZ2JfIXFX7ExFme6VhIMehxsGHbaGnK7TEzKL1MnH+iA6yhoSvN/vVOrzHdLzJVjptcAaGKgL2bSnSkYjUGeXLFxx2Eem9eurijn/rWb3q970iotow1ti0+iEDGQ/V32XVeAet68yjEKltc3Ak1R6FWNHYh4UGryfvB+E+v0320RIa7eQbblMqMizXkZBxyNiBU+3yVSQbiFD/0+t8cqatka9s4WAKZBYUIOwJ3RTMdTZ71BBrf0uYsyObkmOcTBML3q1Ku4kd7fkWXvpC7/2tAhnci9SYnvVimz8rw3YaWGvZoOQofdfMBJeGR9AmgWrHcauRmXfxkuS+aAw2jSxNWLP061vq9frE1XtPO9uCYcqp+MEjbs52lEDLn61tKdQ4cK8vMKgJEAHb0IahrrPY+TPfa4Vv09YHFE1j1wsacm+vGASFkmUqE6m/e2tYeCVmnd617yS1B5MXqjGPcJ0yDr5OEQNk0nMBjiBfre7VGBxp6rOLkUF1PF8hzL8GEGOq/OO7XSA3ntiqMiXmQxUJ+pts1LQgdnUCtwwApoX79TfmvSe5I53rNTd6rL9H4Uzu5UkyTb4fT0kH9H9HpgUncD1Dj5KW0b0mUWbgoB0VM+2MqG1g==
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	MEg8PatppFG5wnPnL/6RqR7EOoYQkZ4IXMpH2NftWIGo/YUupTG+yi79Ne/jN1Jsn4uO4WLrZIp85tQpsBfmZN14YbJG5NAQUskoqm74FlIP2h8z0vuixZoB7u++ewLoh7wO98Z2yiOrtMcJtSDsxjcMxBxhxtrXP+p2yu3X7cuBg4cZM3cOwRKWz0wuUWiU5phIEDfMZ6s6G4rSfL+cU6Mqq9efe8XZJXqrmRA8t79iXjddQzcYusFhAolmz7rNppdYnPvZg9T1YpBbs0iNFQVXYlzBLH1oAdG/smK2bL8kZ7nJacf5AcYoFDovpZliUaDJ8+o9Z5z/JWgN9/dD90glAuqC9SjRJM07BCgbDx2Pmwf2EPNL/RwY1djWyIDuf5V1xBsEPkXRmw56FCt1dasjnGdU7icjnvPQLlBDVUOAWBiW92or5vpAE31yP5ml
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 15:53:09.5158
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 44e316b7-01b7-4b47-039c-08de7df3f647
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001A8.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR02MB5971
X-Rspamd-Queue-Id: 41CA023C3D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273027-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.959];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Action: no action

This series introduces a boolean DT property, dlg,no-gpio-control, for
the DA91xx regulators. Use this property to indicate that GPIO control
is not configured with the functions DVC/RELOAD/EN, allowing buck
registers to be cached.

The DA9121 driver checks dlg,no-gpio-control and updates regmap_config's
volatile_table if the property is present. Buck registers are removed
from the volatile_table if the property is present, enabling caching of
the registers, which removes I2C reads when performing an I2C write to
the buck registers.

---
André Svensson (2):
      regulator: dt-bindings: dlg,da9121: Add dlg,no-gpio-control
      regulator: da9121: Allow caching BUCK registers

 .../devicetree/bindings/regulator/dlg,da9121.yaml  | 49 ++++++++++++++++++++++
 drivers/regulator/da9121-regulator.c               | 35 +++++++++++++---
 2 files changed, 78 insertions(+), 6 deletions(-)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260309-no-gpio-control-9cc02b1e8994

Best regards,
-- 
André Svensson <andre.svensson@axis.com>


