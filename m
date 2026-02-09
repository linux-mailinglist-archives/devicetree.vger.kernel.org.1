Return-Path: <devicetree+bounces-264093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJuvECYYimmsGwAAu9opvQ
	(envelope-from <devicetree+bounces-264093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:23:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF32113024
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5B622300721D
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56FD6388855;
	Mon,  9 Feb 2026 17:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ZM/zDGuE"
X-Original-To: devicetree@vger.kernel.org
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011038.outbound.protection.outlook.com [52.101.62.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8728638884A;
	Mon,  9 Feb 2026 17:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.62.38
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770657815; cv=fail; b=Jkn72G8Jb/FsUudufMqG8cbQAYVaz6sfy7XILdqK9JfWFDEhpIK3aeCxrXJum5++mfoqXO2FrnrLwvaC9atgczjB1pC35KECUD9VOTJNZC9LWAatbQJBDI91Wr4cCjdHRvWBYK0OMaf5lDv5tjZgZTLcUr87bYeOV3uwOqiplZU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770657815; c=relaxed/simple;
	bh=LSA5EHF5IiOMVxKE+g5nZk+rWOVb8dJYXu9xLZJq9tE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=HY77FkqzFpYzKFIQlRuN/LY42MnQJAMk8qS7be8q1mYEKi9HE9PMPSKQO246fEZDoc+OwZeKwTiqkwY7VGp1xlORC0flkd59ROL8lJ4feNYYestDfRly/seVJwznxO0gvIDZXI9wdKkIQ5l/f4km1Y6VLmZYbLlRNYmgg2fgCLQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ZM/zDGuE; arc=fail smtp.client-ip=52.101.62.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vQUoZddajuLs/toBnm3WLLe+eh98mW7jebeceF6xc/cO7oElepe8fHW9m1K8gm5SZglKjAIyqOUiwEs9wYCvITN1oph5PqUnWmBAUB6W/McL5ZVncFcbe149pyyZlJ/3OJwaaOuYdK+rbIK4K+4YaKyOqb3q7Eoi2wfk5zt/UlKdGfE4OnOTPA/h4LXrtT27UAHdzVg0EnlqzNaKwe7lvSl0cJm70OJaSvCurIGAkCGdojFdz5w/lRC0d8vdA7T5ZTDzipPPFRUGH/bhmupU0lK1ApdgVmfqRq8N9gfhQ9v8286nQahvrG8tvSq5ynOc/LXUukJC100vXrwOvTK+eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbsX83arYaC1mDh3JgUe1fZneKZ8A7N8Ox2GTYj9Vgc=;
 b=iHhff4KDRsoMrJUB4xRmfgBTUx6qnhTT4dr97pgYjujr8hoz0u2C2EoX3SeIcof1xK2zyhFOzfgeQxXm1bELlvjXIFxvbm+/Z2dFq05qXaSle8mM8Ubgk955bBnpY+BCKgNlWdn/oqAJCG/qw8MGpaiis/Tio5t/pSBI2nIv3VefaHmY+8GtDtVzboA5inJ60uqphmhv36LvfvF/JSw+Z53T1adN1OLhgldVWYCo8HYP5ct8/QEA+AEaXaOIGJNsMxARcikEJGCg823HrE/0fIuekvS5iB0byWK5ihgG9npnZcaVIQOmHxhqQL0t1fr/Aa/gDj4qFa8wk2E8T+qK+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sbsX83arYaC1mDh3JgUe1fZneKZ8A7N8Ox2GTYj9Vgc=;
 b=ZM/zDGuENA98GWqcmHLyqSguoSc+QePGNx4tIcNiQB45/eGK+ehIqe0r/6fyGBgDZKqFNG/Ojd9OFgUewasD8jKspC4nqFTb8dN0pKfUxxtwLQ4hn8jKCdZq7awqIvYfTejyDu01XBiQe5kgZnXeBOJEbsIK0C4n/09wYZ8CY8M=
Received: from MN2PR06CA0001.namprd06.prod.outlook.com (2603:10b6:208:23d::6)
 by DSVPR10MB997820.namprd10.prod.outlook.com (2603:10b6:8:38b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Mon, 9 Feb
 2026 17:23:31 +0000
Received: from BL6PEPF0001AB55.namprd02.prod.outlook.com
 (2603:10b6:208:23d:cafe::d2) by MN2PR06CA0001.outlook.office365.com
 (2603:10b6:208:23d::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.19 via Frontend Transport; Mon,
 9 Feb 2026 17:23:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BL6PEPF0001AB55.mail.protection.outlook.com (10.167.241.7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 17:23:31 +0000
Received: from DLEE206.ent.ti.com (157.170.170.90) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 11:23:30 -0600
Received: from DLEE206.ent.ti.com (157.170.170.90) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 9 Feb
 2026 11:23:30 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE206.ent.ti.com
 (157.170.170.90) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 9 Feb 2026 11:23:30 -0600
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 619HNUl41959220;
	Mon, 9 Feb 2026 11:23:30 -0600
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>
Subject: [PATCH v3 0/2] Add AM62P silicon revision detection via NVMEM
Date: Mon, 9 Feb 2026 11:23:28 -0600
Message-ID: <20260209172330.53623-1-jm@ti.com>
X-Mailer: git-send-email 2.52.0
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB55:EE_|DSVPR10MB997820:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a2a3a68-2d02-47ff-9142-08de67fff27e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|82310400026|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?VDIKnUilAQta3pvG0l9rqoqMj9m8AatCARkJyYVM9VUFOplPkffsF+XC+NMb?=
 =?us-ascii?Q?PN2n0vyHJE1hJsamBrG7OlA1NNSu8xLPOLvA5+T2zzEGTT8KUZZV2U7E7q1k?=
 =?us-ascii?Q?iE274wG+dA7ayUjTJqMwuLX+Z21uPzVVe/x1h3GckADXlrgnCaHNUrOoV1Wn?=
 =?us-ascii?Q?0hgMcykm59ZD1PsNbTaX/zou5CL/E1Y8cBMzcQ82NsPQBQMCx0q//2VoOBTA?=
 =?us-ascii?Q?M1udTcSSj4kmnw8M9HmZQrB3TQHIYxVEM6XuRKrFnatfP2uCq0JM9iU0i0Xj?=
 =?us-ascii?Q?gxLuc1466oU/oW7aZdnsHY9l1Ciptx/pNLD5SjHsYHsEIrXYKQ8q0tTHNJBM?=
 =?us-ascii?Q?qZ0ve2bKv6D9NAXQPlXJBEGE325W2AIC/AzaI0/Kn0otUy6b/8yS3wusI/zA?=
 =?us-ascii?Q?rom7HOfIZdfmL//a4s1OzjY55unTwLdoEGzzv5SnXY46DeyeX5guhjkev7R8?=
 =?us-ascii?Q?yQgNUBoWVTRVBsf2tnoB9Q4hZriZU4GBHKPinWVvg6BfIsRcKbo+t+1vokzJ?=
 =?us-ascii?Q?9jOf3HZ5wd9ci3yTSv0WHgWqKP+sSTQj/SNUz0pyvA/M68FmOdE+ClB3QIuM?=
 =?us-ascii?Q?ILgUUwUykPN5IeO7BnipxVgDkWiCsXlhBXKtcBg9l5N6FsXk6usrdUdOhRJI?=
 =?us-ascii?Q?iZ/IsQweyLCgbkHLAMxONJVctPOUt1NmKmOvEyC8IONqeVry/Rh2xcHC2h0E?=
 =?us-ascii?Q?92nZFUI+zJ62CRyzvXJ6DZ1MhxR683AIFqapjgLPYnXomzduIRYGemuzXDW8?=
 =?us-ascii?Q?JnTUJjJqvZq8iQWd2egcixxc2226/ZJqqTK3sCSf/rziY57wFJUs6iXpwOC6?=
 =?us-ascii?Q?rmlV7oLFP7hiMnYxxvKi43oSXeqUwjOooIT2wDOhHT4go/4kkXGsgIxUvmYb?=
 =?us-ascii?Q?lmSmR5rEmTFu6uqDad3OHt61oJW28uHCb17CwF7ZbkeN3OvNiWZoXzpvdJmD?=
 =?us-ascii?Q?lMqUcMLU5gIu+rwkJuJV9A2wOqq2Mavm+qxIXmJZB3GVO29r77WMHnTb0RO1?=
 =?us-ascii?Q?R0OlhN+DCuTs4I87KdDsEYUpTxes9DLIJI2ccsEcHm8x5s6sG2Wa+Hu8rdHO?=
 =?us-ascii?Q?+KjYfYypOl2ubT//2lYrJKUpHnBxkDWSRNsi155thUwMnRDFMgw8BnSANosc?=
 =?us-ascii?Q?lpPbj5oP8GqsFig93tdNEgfSIRC34vW1Ko5526Wn7bn/NUX+ycyU54Lm6NBP?=
 =?us-ascii?Q?h1CB6ZtvsYOgjmhtwvKRMjMtwoVGiGrV/6l/qVbKmFGkj/yrshjSt3HzJ8hx?=
 =?us-ascii?Q?JNyoYOI1bk+KHjxqSFgoqg6XtnT1eP7OOoDzKsAhn1aOfd66cyF5MQU85oyo?=
 =?us-ascii?Q?eAg6GGBQXoC/AdtXtxp5i5uxba0OYFWiw5IIW5QM/HYgch1+KtuVGNq+ckHn?=
 =?us-ascii?Q?zm1m+xMQ1tLAe5aez5QxrZYq+Awj0uzvkZMM1xRB0S1jp7k7hi1Y7US7RL8C?=
 =?us-ascii?Q?VfjXwC6e4Dl+IQwSFpRNdfDAR0xI5TUF9F32ltAAAOZtsZKUs6nbXD4+awGK?=
 =?us-ascii?Q?6QB9qb0X3VAmWeZUTzWbQZMTzWtj62s/vH8zKu9BlikO1xCicQ2eRKFd4eMg?=
 =?us-ascii?Q?8LuhD5WeyvD4wvat8Jn/VUHXJWR89pvtSzVbyGmuvb0yQd7BbPRQilpNBXtH?=
 =?us-ascii?Q?Jwyn0vepF7GCcRHLOpYOV/dpGiZmy6Yl/wnEKuiQ7NfSjxw+p3efUK7/5dsF?=
 =?us-ascii?Q?k4nZ/Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(82310400026)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	wqarEEhwOu+uz/uqYZ3UpwcvXbrmV5kz+Bm3bvGCi691ZGT9Zc3r+eVJfpJvjKyH/eHj8df9i4Le5iAdHnCXgbksLBbQhKRmaxFh6V9J8vEVEcKN2rVLc0gOE9SwBuNDpneqLSJiY/i4Fj0V6lnXKcCBcLIfsM75wSjtbyFwypgi+zFyfZ0fkOMTTsGL3nYnOZe1WMhjrqYYVD9hYIR1uz0WwaFRrFlH4dSPFiSwoL5d6XXVhhxrtUdh/gn/0tKqKD7QeRlmUcyx/pu95boDCoLSYlIwnVVVnoljYFGpRbQ7VO8TdX7Hh+fFG+IyLW/+K6zu31vDjFSckeXD0/3Z5aMGIXx2gLxBK0KN0HETYFPgdxhY7o6l5O4/rj+gKtOR/oyD/QBIBYiZDDrfrndsYXyzMzYkXs4t/SF+9GLtRYSD6tSmJ4lrE97/GcpWydd/
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 17:23:31.4711
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a2a3a68-2d02-47ff-9142-08de67fff27e
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB55.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR10MB997820
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-264093-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 7EF32113024
X-Rspamd-Action: no action

This series adds support for detecting AM62P silicon revisions using
the NVMEM framework to read the GP_SW1 register.

Background:
===========
On AM62P SoCs, the standard JTAGID register does not provide information
on silicon revision, instead the GP_SW1 register contains the information
needed for proper device identification.

Proper silicon revision detection is required to apply proper workarounds
and quirks for different silicon revisions, particularly for MMCSD [0].

Implementation history:
=======================
An initial implementation [0] added a second register range directly to
the chipid node to access GP_SW registers. Following upstream review
feedback to split the patches appropriately, an alternative RFC approach
[1] was explored that introduced a new NVMEM eFuse binding specifically
for TI K3 SoCs.

This final implementation takes a simpler approach by leveraging the
existing NVMEM framework with optional nvmem-cells support. The k3-socinfo
driver can now optionally consume silicon revision data from the NVMEM
provider, making it more flexible and avoiding the need for either direct
register access or new bindings.

Implementation details:
=======================
- NVMEM support is fully optional - the driver continues to work without
  it and falls back to SR1.0 for AM62P devices
- When NVMEM cells are present, the driver reads GP_SW1 to accurately
  detect SR1.1 and SR1.2 variants

Changelog:
==========
Changes since v2:
- Switch k3_chipinfo_variant_to_sr() parameter from pdev to dev for
  consistency
- Move nvmem-cells binding description under items, simplify description,
  and drop maxItems
- Add review tags for both patches

Revisions:
==========
v2: https://lore.kernel.org/all/20260206191914.52878-1-jm@ti.com/
v1: https://lore.kernel.org/all/20260204213746.2589028-1-jm@ti.com/

[0] https://lore.kernel.org/linux-mmc/20250805234950.3781367-1-jm@ti.com/
[1] https://lore.kernel.org/all/20250924210735.1732423-1-jm@ti.com/

Judith Mendez (2):
  dt-bindings: hwinfo: ti,k3-socinfo: Add nvmem-cells support
  soc: ti: k3-socinfo: Add support for AM62P variants via NVMEM

 .../bindings/hwinfo/ti,k3-socinfo.yaml        | 11 +++++
 drivers/soc/ti/k3-socinfo.c                   | 41 +++++++++++++++++--
 2 files changed, 49 insertions(+), 3 deletions(-)

-- 
2.52.0


