Return-Path: <devicetree+bounces-263913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAHNNgGqiWnfAQUAu9opvQ
	(envelope-from <devicetree+bounces-263913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:33:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F41B10D981
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2113B3008296
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3795C338F26;
	Mon,  9 Feb 2026 09:33:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023129.outbound.protection.outlook.com [40.107.44.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC57330AAAF;
	Mon,  9 Feb 2026 09:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.129
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770629630; cv=fail; b=EUBf0VF9+OVES46zEuOIpUNodGwfoh3yjkh0JqmaPAgWYfyjGQ2nYSsG1SOQ+UQOtb4YQK/Jq26s6fIB6mQjqIGPPPH3qsqhr3oKQbGEXIv+pIrmlsBDfklKHTqagwagM89LPi76TzMpafdfmxuPe4LUXVP8xg6VhqL7LIsGFd4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770629630; c=relaxed/simple;
	bh=TQ/BxHLws5OjN0/8Pfe2Vnp782pQ2ggTQHbxOxkRhWE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Wj7DxFRrBtB707dzP989/Qi42Fj/Ws4mtMb5YB9ILMoifmucMq+0UdUr4a7n58M0llvnxIMZhol0o8adLCX2vtXyPloNmuU3VnWw58pi4cFkOsAHX6ns4JAc9PETT6zNPpvRWF5lhdB6r1C4hv7WEotmlJyWYK7R3F9Bv6oW+xg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T1UmHWoPLmkIObthZmBiyVwkKx2JNXLiHS7A9BXdsB5S9AHCR9l9IChmh43ij9mN/Z8q1XO3zOmaS7DiBKKPgxc5T8dqioL4iACddVvJNhUsO5fAX4mru/L+482uvdPDWUXEucJsoFWsMRgQhkmqyzfq+ZOEIoiNsclQfoWedQos0yVdRSJdo0Q6HaajuNF2bbiUgOC0PZdQ/tC4Mjg4YYkaaPh8X2CsqrFz511+7mT7Vx8hrOfP4/AlNAXnDZurWW2pM8IBew64WQ/7OeenGe2HhLIhVDNxYgzWA5Kz2ElBwbHFYYwALyXrFk8J3lCq4MqoVu6by+qXyMmHu7BUwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yuP4FFAcWSmwxVAI5XTLwQ1yoGc6U2KN8yNk+i62Ey0=;
 b=y12XfYxWwPvDKjTslgAqaSfB5v8iYjtLiDBqTxfdpeJs6gPNwCrtXHkHCCFGj92kVDp7ZXSGOs4c1Bt9Pf4janov0zrKGQKI2dKGM65gtwESDC8m5k6rORea0PiO+MMOXQPW7sNGx0Uq3wPuXVE+nJD4CPTC4cZ2xv/FwicB9gU+R0l2EoRUBRGTzaEkt6lZIcCKjA5e7jlnEZBVdygsuIVRAz33s0CvLLIXKhkL4yTBEqf/MNwgskDle9MuUs+i/6iX/l30wyq5YOQiAP1qw8gHu9un8QQGdzrQuLwn+Sk+O+h+YgVyjmrYiF4YaEKVXvquwLNmSRZ0jlMAw6Cc3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SE2P216CA0014.KORP216.PROD.OUTLOOK.COM (2603:1096:101:117::11)
 by TYPPR06MB8328.apcprd06.prod.outlook.com (2603:1096:405:396::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 09:33:46 +0000
Received: from OSA0EPF000000C6.apcprd02.prod.outlook.com
 (2603:1096:101:117:cafe::9c) by SE2P216CA0014.outlook.office365.com
 (2603:1096:101:117::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.18 via Frontend Transport; Mon,
 9 Feb 2026 09:33:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C6.mail.protection.outlook.com (10.167.240.52) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Mon, 9 Feb 2026 09:33:45 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 8F82740A5BD7;
	Mon,  9 Feb 2026 17:33:44 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	alchark@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v8 0/3] Add support for Cix Sky1 resets
Date: Mon,  9 Feb 2026 17:33:41 +0800
Message-ID: <20260209093344.2013693-1-gary.yang@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C6:EE_|TYPPR06MB8328:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: dec37069-2c5a-41e2-41b3-08de67be5254
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|82310400026|36860700013|32650700017;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?uxbxEJRapnkHa4j9oVa2R2p4PCP8hGkUIQGqDfSo3C3JKUBu+GIf4Xx2DA9x?=
 =?us-ascii?Q?Ttt0CUGc82Qbw0v2p50/bwaZ9BfXfuzT0i3xzxAWD8gSKH9mWrvzYEcIjkdH?=
 =?us-ascii?Q?bGFtGe0AmDRUrGOWWkBr/VRlsDgBF3OWavzCMbTAgi7wDOKFJ5BpkCrzy/dj?=
 =?us-ascii?Q?kX6gNZn02lewuJh8yTOmYwrc02ztAQaDEntHKUzag6aDFs6KkagBcm91Wg+J?=
 =?us-ascii?Q?nec6lOsTZRni8G42EdvCbeu9KKamzARWpMghU5maAHSqUEMjZfrvBWebqSwK?=
 =?us-ascii?Q?XA20wQZDEoztQ3Crsa8ge5CjC5eXapkN13s8pUok0nrf7NgXeK8ahDroSvHO?=
 =?us-ascii?Q?k05cpZugQ8dj4ZolRE2enxTANoWGB0wUn0h2i14BxeTgoe8OFefl2ek1io8r?=
 =?us-ascii?Q?ZT+9Z/ig/z5ZhtNbZ4O1sOE1dnIR7XGqxeI7fDhESKA5HUEXplrHn+ArSqOo?=
 =?us-ascii?Q?q5iRbKBCNWpm1uCEa+1S5/EeCAwdX0k/Qu9IRUKzs0A8Oqcjgszg2/8EBHdH?=
 =?us-ascii?Q?cYFrBlhbiPCfX1iV8OGQi56kR5sKs2Zrg827Bv5JktIJbiv0cSDxd3S6ZUbC?=
 =?us-ascii?Q?xQEiajGLudmo8rilBYXF31KJdVmqRuIrtVz/tqWqy+fppHhEXeeHMyiBFIgh?=
 =?us-ascii?Q?EmkP8YpXtimdJ/OZNP1T4Zc0JqYIovMN04qqEPoifO9yQ9wetYEV8CMAIKXJ?=
 =?us-ascii?Q?wujPK03MMtpMRUdgWZxg4azbRMzuESlH1pcJCiX0+2nDkrHwA5cPrmGVU1Uc?=
 =?us-ascii?Q?GRPUAd5VB6MAV+24jLhZxx5nd2/435biQKuTzrpOubrcP+yfse7yUCGFInMa?=
 =?us-ascii?Q?WAOQ8reft4LqX6wGbfXIhy5ddGm7o8diQ62tQbdfjNUlcYxpdQwwoAetNChN?=
 =?us-ascii?Q?7odWoKIeu259p73CLMaKSXrOmW2ihIJTktgnfU/642+7NMygo0NxY0VwpRNb?=
 =?us-ascii?Q?d3iobOiqvQtnXexV4WFCJLO6mqdpis76x5AAD8cbkJKF2FB4We3Yu5DjHjUu?=
 =?us-ascii?Q?9M9Nvs0HgGU849sAbDpWa5K9Qx+VNTiOan58Z0BZ1JQHHANPB4qgg1liziui?=
 =?us-ascii?Q?Y86cKWn6d4uxGAfySeh497J9WiFXgCqdVFz51+N8ptSnpJcbiRG1RCcwWC8u?=
 =?us-ascii?Q?IwVZoKbiwmv8JikXLFHUamFhdleKKYSrP/Z7mh9uWHL6cIL4x3vV2CHj0x7M?=
 =?us-ascii?Q?sK9DynG95oXkzDuY9GvhuVQIolby7TelIiOf1CajfzOVdL+oaQwnmnfPLq7j?=
 =?us-ascii?Q?/yhN0VgCavvgpO56DGMip2e2pRRvHnq+F5x3aJsGJFy57rDu0kpGbIJ5eCpu?=
 =?us-ascii?Q?kPgMM2qBVL6TyZ037OcZqyFisblxSFIWtOJrGL/HRgw3/+WhKf7WQzsJ6wzb?=
 =?us-ascii?Q?m13whE7wKDmn6fXKDhU5viDgTUBMiGOhKvy/hc0dVf6aVGkJS0hBi8nRvauu?=
 =?us-ascii?Q?/mWV+WwyQ3dEoYM8/biSj/aGVpHI234mLON4H8X5z4Rs6gibytz71AHVSzTo?=
 =?us-ascii?Q?ZOUmM3pP5mkSJi5z5UE+ebsnG7XTE+zkG1oRMvgXHNzIUzQ2tfHR1zDp17/s?=
 =?us-ascii?Q?1jGY3302j83OLxzU4hOvF4AA2NdgtD46ps0JEg254i9uAusmcbLqTR4BLjBD?=
 =?us-ascii?Q?DQuin7QnDyqHXfevKfBBIJeyiZqkdpyzsXJ5WJfUQfFS+2YZqB+rSVZXzrYO?=
 =?us-ascii?Q?Yigq4Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(82310400026)(36860700013)(32650700017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	mSVbFmfjVY6f0KN07fcA/YC+uXHJvc2mldbcDjPbH/obqxaJBFOUqyWuj7kbp55Muw1D2GljcjNzNzhTOQiqpMND8a2BAFPcFwisirHeX3F7Cr1suO14OoMlE+u/kInEjmn4kYA6ERhbmNlDB/6+QO3AySaPfe/xlGcaiJurEuQvcQUDx7zrAoCFb1TMIaDnN/kYRRk0WF2Bac3pnJmU/VfZLMyFDFQfYRUDEmIv88ZodYnqoWZ7F03qjNDWESNeJqk0Npim+p2BrGk6et/Z0DHmN6EQPmKKCniBrZepaFJzAnWWK11fQb7leePB1wF1stWlW/IER35ZhVhp6yefW/0MIzUViHGvi+Z2V9MqokbmjFc3yY6QZ5IJjEsG6oHkCcA1j1prGpmBJcTZUtCRZAu3hI5RCXhTJYwv+zfL5YHtvefe8u1bgFrSWvc+2nxK
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 09:33:45.3819
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dec37069-2c5a-41e2-41b3-08de67be5254
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C6.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYPPR06MB8328
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-263913-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,cixtech.com,outlook.com,gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.521];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2F41B10D981
X-Rspamd-Action: no action

Patch 1: Add yaml file for Cix Sky1 resets
Patch 2: Add driver codes for Cix Sky1 resets
Patch 3: Add dts nodes for Cix Sky1 resets

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
  dt-bindings: soc: cix: document the simple-mfd syscon on Sky1 SoC
  reset: add Sky1 soc reset support
  arm64: dts: cix: add support for cix sky1 resets

 .../soc/cix/cix,sky1-system-control.yaml      |  42 ++
 arch/arm64/boot/dts/cix/sky1.dtsi             |  12 +
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-sky1.c                    | 374 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/cix/Kconfig                       |  11 +
 drivers/soc/cix/Makefile                      |   1 +
 drivers/soc/cix/sky1-system-control.c         |  47 +++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 ++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++
 12 files changed, 703 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
 create mode 100644 drivers/reset/reset-sky1.c
 create mode 100644 drivers/soc/cix/Kconfig
 create mode 100644 drivers/soc/cix/Makefile
 create mode 100644 drivers/soc/cix/sky1-system-control.c
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

-- 
2.49.0


