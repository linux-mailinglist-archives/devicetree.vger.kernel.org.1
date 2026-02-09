Return-Path: <devicetree+bounces-264095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMi1MT0YimmsGwAAu9opvQ
	(envelope-from <devicetree+bounces-264095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:24:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E399113053
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:24:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B940302AF24
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA5C538A705;
	Mon,  9 Feb 2026 17:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Zjsz6Lqj"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013031.outbound.protection.outlook.com [40.93.196.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1475838A286;
	Mon,  9 Feb 2026 17:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.31
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770657817; cv=fail; b=t3eDFxUCDDccn7eqwEoHWc4uYN+cnLZo8PEqX2DlU3E7k6MDHpb0Xq+NZ5xavXd8600L+RNLrmHGHlq5jluIJEoz0y2JzIptRLNZSJjPkg2t/wBaNpSyElQC1F6uD5c4IXbpZh+JjtnuFB8NQ/AqwW7q0RflsGJjXNC7s19NmY0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770657817; c=relaxed/simple;
	bh=drEVc0ZodwzQi347DvTYUEJtPE4szq5sOLh+q2o9svg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=q8NdeKKEflRURyoLRYX7BNWiQTpI1CJdcp4xd8Yrf8iY7UFmZQ9GK9wOew1d5T4pP4QRaxurG7JO6GEpLPpAfHDbyti+MSaGdqwOsOmbyNOAkE41dndQukZu/K77VZYC4enZZA2+uMdbrMOqEByePEXZyLKkaTpRMHSJGmKg1ko=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Zjsz6Lqj; arc=fail smtp.client-ip=40.93.196.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ANXmK5hIbpHqnlXCtd9Ioh+anOnJeztLqmxpE+pgr39AW5aYPNQAmE1rte8W5PrjMP/+6vGxFpPBznaMJPwkuVcHB3zise5OipWfRfCyLLVxMnzKjuV2BT+syGgvfvb1IPC3oxNFHSZ3/TdSDpxpjBqe3wwTXvCIUnqTcSYgh7lZG2o6By24ZPXkr9shIzwg2XpAgD9v2hmwPm8gwnb0+9X15lzRavAC1nITZX9j3R+HonI5/jr1Aiicu7lkMHisxDa/ih5r79AymGMjUkfD5rqxdWozdSjR0sChkOKp6jPtD+vs01WshrUtHZDCz0IwnbW/YQ17voBlzMxZnjPosg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aURdM4BX7ur5Rh361kVNzPk4uS3w5T92xS0ffwcAx2M=;
 b=mKelE1Hb6uzApueovuQeqoAFcD+KXpwNu4oA6exZmsr6rrq3zNpwZcJqyW1M1lua9cVXJ6Gnv5JnEO96ooXTChr+J60e5RZ63WXSKf/OplHDJ1jmbH/yrEkADxSEcuS+u1jFwV0rDYJRTbqYMBr8qe+pbXLxAaByD1gOJeC/nZxbnh80TS+Q52ExFX7muu44NblCvxaceFZD0L7EzCJyDHnlui+XCTcBqJqkuCpU1kbJflzCN99SpczLRi4eYh5RIh6ceRveW5jkGbrOlzzzps/ZfN8XNzpM0yMuVbh4DOuqvXA7QHODLAAi2j08yTqD5foUUocfPRXhB0S+fUzW7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aURdM4BX7ur5Rh361kVNzPk4uS3w5T92xS0ffwcAx2M=;
 b=Zjsz6LqjA6ejUR7t/nIjuRetQBeri572YblKXrMVOf61lydRYVDCd7FYVuB1s8i3x9lK1lccq92cqwwDYUojRPqiqenkNDod+GyeX3yORcySD4P5q3UnZ0uo+mBClFIGz/sH+Sk0MRKf/9gwQZCX7XDItrBVxsVIlOG3dzS3k4Q=
Received: from BYAPR06CA0058.namprd06.prod.outlook.com (2603:10b6:a03:14b::35)
 by SA2PR10MB4778.namprd10.prod.outlook.com (2603:10b6:806:114::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 17:23:35 +0000
Received: from SJ1PEPF00002326.namprd03.prod.outlook.com
 (2603:10b6:a03:14b:cafe::9c) by BYAPR06CA0058.outlook.office365.com
 (2603:10b6:a03:14b::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.19 via Frontend Transport; Mon,
 9 Feb 2026 17:23:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ1PEPF00002326.mail.protection.outlook.com (10.167.242.89) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Mon, 9 Feb 2026 17:23:34 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 11:23:31 -0600
Received: from DFLE201.ent.ti.com (10.64.6.59) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 11:23:30 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 9 Feb 2026 11:23:30 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 619HNUl61959220;
	Mon, 9 Feb 2026 11:23:30 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH v3 2/2] soc: ti: k3-socinfo: Add support for AM62P variants via NVMEM
Date: Mon, 9 Feb 2026 11:23:30 -0600
Message-ID: <20260209172330.53623-3-jm@ti.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260209172330.53623-1-jm@ti.com>
References: <20260209172330.53623-1-jm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00002326:EE_|SA2PR10MB4778:EE_
X-MS-Office365-Filtering-Correlation-Id: 94389f70-a91d-470c-bbc9-08de67fff44b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?AU4tJLjWx1rupPBNaxEOEymeUGsh02/01lhUmxgqPBztSerglFF8dNKwroP3?=
 =?us-ascii?Q?3DA6AxUdaEloWnLqCt+fc2ACkXoIkTVl5nlYhMEfaKDADtwoheBbqOocmQfY?=
 =?us-ascii?Q?b5ryY9kD4SUlBgfUO0ZSTbfyMEwcEXXoC876Wd4TCKDKUxVGC2iHuwxMH8DS?=
 =?us-ascii?Q?xKscTbDLmlgOO5IXawKrbRLtmKzBFBq8OZPi9VrRMNXXQaF0muC9kY5baG/0?=
 =?us-ascii?Q?SbJcKEojAV60VAJb93yJRnA4bCsylAllA4zLEnzVOMlnDnImugj6N6XTUZ1K?=
 =?us-ascii?Q?zCPIEa9tA0fb10poZpN3DHZHhPDHTYiPZgxfUnHhaY3JcHMwJL+SX45mq6o8?=
 =?us-ascii?Q?GdP5XT6+CVKLRt6lbT2bFu0eSY3yViySn1gXUzmdt57CGdxNgybbadiQDCj5?=
 =?us-ascii?Q?kzjdIrp2iDo0ZE6LMnOYOXpXAMICjep7bkTRZvZQVTq74EHf6mZEj6V5gHOI?=
 =?us-ascii?Q?EYpxtQ93PyU65R97fAsQ4tm1553DKvYQzr80fHIKoMj+fQKJrEAl5cgN5/Qj?=
 =?us-ascii?Q?/El3C+KdK49biOcj7Do8zjEM1YesKFCiOryq+gjDfbnvTjYQTjGJqwAcyhfx?=
 =?us-ascii?Q?giKkJJ8zjYXoo+lzu7r6R6tJbGaUrmeoYtZFrPpezvzDAijOYbnSy0JgR6VQ?=
 =?us-ascii?Q?27wAFBYpYI08sjS57SSa9H4qhBEV7WehR13+9/XsrENSMUPfRjRHlKWzUlM7?=
 =?us-ascii?Q?JFihluXr4vVJWwSJOqPoDOdFe8Lp801swXmCA593HFJqGxfdWU3PI5Qh0SGl?=
 =?us-ascii?Q?bXu26DZB187IFmFRZ+rK276AUclERUlRgkdsvfFr9L/ACqOfckDLWY3kegLN?=
 =?us-ascii?Q?6kG6PGFb7phqL9UiLz78gWjH95lWIjCqTZLlzOjGJllNQnUigxYDmXx2Mew0?=
 =?us-ascii?Q?YV+eyi/cokn/Lmvcf6Tlkv0zbiObtAocZX/wEoASkKxRCJ8dH7/RMiFFj1ML?=
 =?us-ascii?Q?DoaEYYXHuFmhltPM5KFzZVOBNjZKWAsNc/5PFHB4e89fBxYOlQTrcDXYtg6M?=
 =?us-ascii?Q?xiDqq0wgUzEw6mRwGP9ldw7Jr7E6CCiLC9NgCOrjAn4Qm356D2AVcCPH5/cC?=
 =?us-ascii?Q?FwCqrsYizOkEGYAnQb+ew0Ox5prAUZwR9IXv+7q5pfUSRWZoENpe7/yNqvWQ?=
 =?us-ascii?Q?QG5sjD8114BTw29XnjLlVVX7yDwC8tPMgbz+4zJKq3KXOXXruhQTSJ93Lva1?=
 =?us-ascii?Q?4Jr8ugY+4znDVfiNt0yFqap9/DUiU367VCKHSgN1GS1CQLTcjcg07oQSe4Ie?=
 =?us-ascii?Q?zUd/tdP+79uo9WtC3ZZmvyyGU6nUKhWKPFYvHpV8F/cRqIzffHurfgwNNX+G?=
 =?us-ascii?Q?eHjGWbK2weHa+AJU02TOqZD6ywIvpqmkCAMau8EolsUecHOwsv9TsNmSgrAQ?=
 =?us-ascii?Q?ZU0e/cNIREloDKBBR/tVUi05ZtSRGqYJZ8oEvpu7tnuHg0WUJ9wGrZpRltR1?=
 =?us-ascii?Q?Oldw5QIwwQiku+hqsSQqWdcDxWwtizb1euThzG7i626ZDWqv2lxtEB5FZ99T?=
 =?us-ascii?Q?veK25RUMrcITBoE02gt0XBuEfnYJV+9qkqf0pNhjBB/INCmJB6CBaTFWUQbX?=
 =?us-ascii?Q?KQFKVe/+F/bAdMP7wvd6sVjSoL+Vzz+210euWQtBnfdDIDaAjE3lX2cZPQ+R?=
 =?us-ascii?Q?hL9fLDY7OtUbmnewUR5dMB2KqNRPHHSj+8PbnqCq4NSEIiFNzKUp/WgIlh/e?=
 =?us-ascii?Q?xVs9cA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Lg6RwufknhsXmIq3wBoMAE6H3g5hIFeDfIHzHp+KjA7xE8CuxSV8ldvsQJj6WEvYdD5f982WdD3MxmImRvJrh79bVicYogK9D1EIgcwCvQHDp34TunvGZf0fRFIt20h9BVPL/UJC34zxeSMjxGaFKdonHhEa25xZsKwogG+I3ts0nZY0vlOK1ufKzWy1cs1/W7ukn5WxKGC8tsSHruqZIRY5Tai/Wka3x7V2DKvxEPu8t55QtD/WBLfm2CUcZ8BkNUx/plMDb1LlqISev+gpVfWemcisyfUbvf8sVx6cDBF0zbvtj5A7A035zbuMpwR4nG+LxtPXn2O1eTRK0xRKn74vXZri/g/pdUTbB5DLH829pYULcjxO7Jb/awh7qF8GlNrd/IHLjL2KWu1JAAp2pbn9uJ1WdGPz37UTnwAlTeSoP6GdPNKYpxdnmBoNedn5
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 17:23:34.4748
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 94389f70-a91d-470c-bbc9-08de67fff44b
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00002326.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4778
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264095-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 6E399113053
X-Rspamd-Action: no action

Add support for detecting AM62P silicon revisions.

On AM62P, silicon revision is discovered with GP_SW1 register instead
of JTAGID register. Use the NVMEM framework to read GP_SW1 from the
gpsw-efuse nvmem provider to determine SoC revision.

Signed-off-by: Judith Mendez <jm@ti.com>
Reviewed-by: Andrew Davis <afd@ti.com>
---
Changes since v2:
- Switch k3_chipinfo_variant_to_sr() parameter from pdev to dev for
  consistency
---
 drivers/soc/ti/k3-socinfo.c | 41 ++++++++++++++++++++++++++++++++++---
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
index 42275cb5ba1c8..3a35fc456e544 100644
--- a/drivers/soc/ti/k3-socinfo.c
+++ b/drivers/soc/ti/k3-socinfo.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/mfd/syscon.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/regmap.h>
@@ -25,6 +26,8 @@
 #define CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT	(28)
 #define CTRLMMR_WKUP_JTAGID_VARIANT_MASK	GENMASK(31, 28)
 
+#define GP_SW1_ADR_MASK			GENMASK(3, 0)
+
 #define CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT	(12)
 #define CTRLMMR_WKUP_JTAGID_PARTNO_MASK		GENMASK(27, 12)
 
@@ -70,6 +73,23 @@ static const char * const am62lx_rev_string_map[] = {
 	"1.0", "1.1",
 };
 
+static const char * const am62p_gpsw_rev_string_map[] = {
+	"1.0", "1.1", "1.2",
+};
+
+static int
+k3_chipinfo_get_gpsw_variant(struct device *dev)
+{
+	u32 gpsw_val = 0;
+	int ret;
+
+	ret = nvmem_cell_read_u32(dev, "gpsw1", &gpsw_val);
+	if (ret)
+		return ret;
+
+	return gpsw_val & GP_SW1_ADR_MASK;
+}
+
 static int
 k3_chipinfo_partno_to_names(unsigned int partno,
 			    struct soc_device_attribute *soc_dev_attr)
@@ -86,9 +106,11 @@ k3_chipinfo_partno_to_names(unsigned int partno,
 }
 
 static int
-k3_chipinfo_variant_to_sr(unsigned int partno, unsigned int variant,
-			  struct soc_device_attribute *soc_dev_attr)
+k3_chipinfo_variant_to_sr(struct device *dev, unsigned int partno,
+			  unsigned int variant, struct soc_device_attribute *soc_dev_attr)
 {
+	int gpsw_variant = 0;
+
 	switch (partno) {
 	case JTAG_ID_PARTNO_J721E:
 		if (variant >= ARRAY_SIZE(j721e_rev_string_map))
@@ -102,6 +124,19 @@ k3_chipinfo_variant_to_sr(unsigned int partno, unsigned int variant,
 		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%s",
 						   am62lx_rev_string_map[variant]);
 		break;
+	case JTAG_ID_PARTNO_AM62PX:
+		/* Check GP_SW1 for silicon revision */
+		gpsw_variant = k3_chipinfo_get_gpsw_variant(dev);
+		if (gpsw_variant == -EPROBE_DEFER)
+			return gpsw_variant;
+		if (gpsw_variant < 0 || gpsw_variant >= ARRAY_SIZE(am62p_gpsw_rev_string_map)) {
+			dev_warn(dev, "Failed to get silicon variant (%d), set SR1.0\n",
+				 gpsw_variant);
+			gpsw_variant = 0;
+		}
+		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%s",
+						   am62p_gpsw_rev_string_map[gpsw_variant]);
+		break;
 	default:
 		variant++;
 		soc_dev_attr->revision = kasprintf(GFP_KERNEL, "SR%x.0",
@@ -173,7 +208,7 @@ static int k3_chipinfo_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	ret = k3_chipinfo_variant_to_sr(partno_id, variant, soc_dev_attr);
+	ret = k3_chipinfo_variant_to_sr(dev, partno_id, variant, soc_dev_attr);
 	if (ret) {
 		dev_err(dev, "Unknown SoC SR[0x%08X]: %d\n", jtag_id, ret);
 		goto err;
-- 
2.52.0


