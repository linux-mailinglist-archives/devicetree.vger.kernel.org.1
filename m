Return-Path: <devicetree+bounces-269809-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCM5BtcxpWli5gUAu9opvQ
	(envelope-from <devicetree+bounces-269809-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 07:44:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DBE1D38A1
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 07:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EB2BE301BF69
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 06:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9922937E314;
	Mon,  2 Mar 2026 06:44:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023130.outbound.protection.outlook.com [40.107.44.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD24327C00;
	Mon,  2 Mar 2026 06:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.130
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772433856; cv=fail; b=TMZK/IhmHpf5dENJufvQlpXYQdC8ia6jm9Ni9uRyDNph31Beje849m0f+iAJ+goXTL7filTH2EbdFX7mIhVGB7+QtRhZ9s81Yi/y0oDZdm7pXameYTLE0WUyyE953OABq5m8x5aruI8SsuF6G/49+LYAatkWDBSe9vKbUniR04Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772433856; c=relaxed/simple;
	bh=W/dp6iem1JcLk14QsW0h+mJHZS92UUPHl2W31iCRP9k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ajOrjdk6SUxazkQa9JtRKnnNlBEjhNDYzvigUAActYvlAkeG/eceL0GDho1JFEV9JU0dmHs4ma7M8j8DokGkLybKKU1h60ls3F0KGHXEBsfaVR/AurF808bp+So/yGwy6l2MT5Pz9285HRZODYzlxDP4eJdRw6g5pCO9ap66qvM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L/wWwpzRrGZylFe9m73Gy3xtCarfPhfrvayYICHVbtE0EZaiyUTFZIUIVtCzoLewKQV31Z7mwXW24BDTMI9uuTQy2GIlP9dgD9o0o0N26cJdk9xY7kqvsDomda7+qQNN1bbV0leOVrRKQyzSNyxJ2VKnYppmDXOLKL/di12hKTne9DTq2E4/93ILqza9FVhZWcfjjdi9DXsyJWUMkrZyoq/ttnjlMwtZkNOe4QfucLyLF6jjdXJfKlsgQ4ghIwsxFr6bUiNE0fpRBsjXDwY06MB1kfZwiZREvgM8IaVx48kCVQs+ERSgj0JpYwGVsnJN4nn4hqoRSen4hJ8suolOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w79wJ539UYqY33b9NPFqPaczASsn25ss7nSm38YbuyA=;
 b=P9AfynXWOXoiaC65M2WUxjO5RSbmwwznjxdqnrwQ9iJrwUllu1R7zPoZ5GsRs/9tTwkYOVMo/JnWe4KSssGgZXtgQi3F278SetTbo0T11bbLXmb5zX7qgcnAAqt/BYZ73jQl8h1DhK2nOXpzXGXB/1AQwQC/4frRd5ZPvUKRzIaDthT2zci94GisDFF+wkFjhhdxZl/1EnIcVUTJdLxdYMppS0itibtwdHgW7IMgTk7qqqAKAKW0LL6aK7jMB00lZ6iCjX/Ssgx260JaR0i8xzPillcgBBkiQGf+87tED3VPkH/LLprBxw5xBxaRVt8naq8puNVmS7OPHzhyfWzNzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR01CA0043.apcprd01.prod.exchangelabs.com
 (2603:1096:4:193::12) by TY0PR06MB5150.apcprd06.prod.outlook.com
 (2603:1096:400:1b1::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.19; Mon, 2 Mar
 2026 06:44:10 +0000
Received: from OSA0EPF000000C9.apcprd02.prod.outlook.com
 (2603:1096:4:193:cafe::10) by SI2PR01CA0043.outlook.office365.com
 (2603:1096:4:193::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.20 via Frontend Transport; Mon,
 2 Mar 2026 06:44:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C9.mail.protection.outlook.com (10.167.240.55) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Mon, 2 Mar 2026 06:44:09 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 288A841604E2;
	Mon,  2 Mar 2026 14:44:08 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v10 0/3] Add support for Cix Sky1 resets
Date: Mon,  2 Mar 2026 14:44:04 +0800
Message-ID: <20260302064407.1914014-1-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C9:EE_|TY0PR06MB5150:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 0a9baddc-2979-4355-2df7-08de78271bf5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	irf2CNC+G+Ot9siUBpfly4BSKxmOQUupSsUgpTrrUY8QA7sIxvG03C/ebfGPbxgI2jfsP4tZcEZOpPd4lFAYWHzMcQhoye06q5gcy/DfrNpzES9wqrbWPA06MFnhnbn7BjZkFY+/2sEcCZ6cGZxh0oy2jwOvfkvXmc0yWGAxkAEOtGuyJJzBHhkY+f+LvakKoCGB1iWT+D4x5/m48ajao1g/H7GpCk8v0raqxvLTHwAyR0zUHt+zkEp/t3sQCe+nomnY1QutC7vbmZjxUkioSOFjaQ/AJnjEWVWa/YgD2S8/6n528bWVKUkDsX+VZwC3CLKGj6oASYiTswP0CNLcK3J7we71hmk5rSleyn5WJKLbKxxxDiLrA9d+GJrQYABotpKEOXDdI9mNzmRA2zJMhC7p+Pwa0RK00AI7zhRET/KPQr0kH+aIdC1N4Fw3+mv5wtGNtB4JoLOQnuHk80dfMI03tFxabj1+1jEhXRWDoXI10JY0Op6BE3gODeJFqVT8jdf0JxM29/5LDIUx06GY0gb8wfhKkLl0/edPhhxyRUDy87IP++hD/f5/qyHAskV5gcM4g76OcqSxl+myXb65svSgAg2YrG4CwgNW8yRqRDw/fFh3zx7WoccEuZLL92vaUVX+stcj6IpMkvPgGl+q6frkf+OWfpF6gQ6LH8vH3pIkd+jG+Z4s5BIDJTjXqOYw7b5VGSKeNDgt/82mA7sgw1OFIJypMBY37HHOhS9OQqU/zOERhVMcRn7pBx7czUW1egvUMz6dTxSD0uopQS4pM3fB48eBdSOPGOhMMIVhbj5WChOVCsxfmpVeFWE4f+Fa4FiH5fYZb2lZeeKJa5incQ==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(376014)(82310400026);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	o82of1ZFyYK95LIsxYvGgw7Nd8dhvDNLJ4oLpLO0UHT5mbm6IoxUPix7+GnhIMowzSxP7w2ppL7Z+SiNGDN9C20W7lBBv30AA9+Kqu13qDczLJi4OkqBF0AiAmKQRBVgeiMlenTMAFhSD6YJufIfypl6CwVo2Z5XQK1w8CSrBro/kAx/9Y/acHRXF48r+mPuzHDC/u4DNkmZVbeFG6wGps0OqaAgjOQkuIoVFliEJXP8OfojEoR3ID+N29cWYPtbnHlAt/mOvv+6GuYLPfaIRjiWf5Gk1WqBcIH5XqXcdDTYlPooQvQIMVWO+ojnRkIAeCl/1EtUxSLF/GNc66jo6U8qlEkbI57jQcBKWp8XQnSkaIumDEVP1KIVmSdUud3SsA30oDYYcmxeADUtEptF2HDhPX1k+WA4jtRV0SuYw3OcN9au9NfSRSPXRhoAnbMt
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 06:44:09.9191
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a9baddc-2979-4355-2df7-08de78271bf5
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C9.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5150
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-269809-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.974];
	RCVD_COUNT_SEVEN(0.00)[7];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4DBE1D38A1
X-Rspamd-Action: no action

Patch 1: Add yaml file for Cix Sky1 resets
Patch 2: Add driver codes for Cix Sky1 resets
Patch 3: Add dts nodes for Cix Sky1 resets

v10 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-control.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- refine reset driver
- rename dt-bindings header file

v9 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-control.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- refine reset driver

v8 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-control.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- refine reset driver
- remove "simple-mfd" strings

v7 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-control.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- fix build warning

v6 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-control.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- refine reset driver
- fix dt-bindings style

v5 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-system-controller.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- refine reset driver
- fix dt-bindings style

v4 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- add syscon
- refine reset driver
- fix dt-bindings style

v3 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- remove syscon

v2 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
scripts/checkpatch.pl 000*.patch
- fix dt-bindings style
- refine reset driver

Gary Yang (3):
  dt-bindings: soc: cix: document the syscon on Sky1 SoC
  reset: add Sky1 soc reset support
  arm64: dts: cix: add support for cix sky1 resets

 .../soc/cix/cix,sky1-system-control.yaml      |  42 ++
 arch/arm64/boot/dts/cix/sky1.dtsi             |  12 +
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-sky1.c                    | 367 ++++++++++++++++++
 .../reset/cix,sky1-s5-system-control.h        | 163 ++++++++
 .../reset/cix,sky1-system-control.h           |  41 ++
 7 files changed, 633 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
 create mode 100644 drivers/reset/reset-sky1.c
 create mode 100644 include/dt-bindings/reset/cix,sky1-s5-system-control.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-system-control.h

-- 
2.49.0


