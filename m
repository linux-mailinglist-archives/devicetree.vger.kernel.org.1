Return-Path: <devicetree+bounces-262013-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDoFIrRbgWlnFwMAu9opvQ
	(envelope-from <devicetree+bounces-262013-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 03:21:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA19D3B84
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 03:21:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09D0C3030E8F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 02:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145472F362D;
	Tue,  3 Feb 2026 02:20:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023114.outbound.protection.outlook.com [40.107.44.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6A829ACDB;
	Tue,  3 Feb 2026 02:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.114
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770085238; cv=fail; b=VtAXDSzOIfWvmz62UgZyuOH293fwqkHRRVXJQ0XOu9I+WRuqFKfO5Y5zTJAagStvZISHCedId2n/X8ugPaRCLYsV6dVX4NnwdrL1NBO/2nIpxuAWE/Q3vjrUZg3pJhnNS7QUNw0igHlfnirZWn7B64g4amtCHaO0PtjCkX91r64=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770085238; c=relaxed/simple;
	bh=+dwa7AiY9JQ+R88E8Mi3U2fU4dxNWbMTdDz/GOBwBPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=SGFggiBAKIb7KgqGX8I1tb1Va48gLjDVwx/ZozObwMnwtdXDwye3PUEcE3+WR8jU9hKxWAUXcqnjOoNAblcz+3cTt5g+cLMZhogElop+qYahJ1b6N5o1bJjEvGh/Z5zPuk5+knOXAICv7Wl5F0HY/27iWrOvNSR1NA6X9NDgUqY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g2NO2GErzoCOsvUaxhgyH0UpzQkavjoYUXgXSNuLyYMJnHZDvtBe02Ef6iV/SBR3cqK9UY+yDsgNnIWVCdUnqhCTw+4Ee1YA2oa/xiQAoA9QyeTpsov2x1YCkpLYHIoAVuNnOnYt7qkcuUeJ6yXSmR1I6ZyWzUkwxU9nrsQOtjRisGBmk3xTZ/YjSoIO1xGDnmyoXUSHFel8QdUdhCnWU/drEe4fqzMf5A5VcVmbgcJhpljMLDxmyuPNEE53sYftldUJaaoZv5uJeavqVpkhwYCexlYo8l85HGcL+LAnrvcWgBXv9xaZmfY2UPk5QWpUYfgr4S6oshD2ndKvlorEJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FD7wA375MM/rZFmPVWGXM25NBnh0YgUcuiZ9KCpuHDs=;
 b=dvGIOIr6tyCtkE8/asW/9S/XBX9NOrhdeFSd+huCDqF6yO+tjxvlk0jfz4SPQstdmulXJDWd4/n566E9Dkznm0MdzEqN7ScXhf4TnRIbLpDEnYvkZ/mU9xgkHI8xa20u9QRuQhUMVRW2R/y9MHeeTSA5nmPRwgk78DWgjVnsBUqVTf4XyGcelrym0iBC78qkNlHXNDccCaIPdFXwhQ8O3qLY4U8v0HW/IGGXccK/VlV7O4mgpIheW7QdUTsVOaoAtDTTwRjv+/KvqW8ZCKEEiHhPgY5yd0zMzWnk4FBKaiSirUFHXF81fQcwvTSgXIibpJjODS+E2BTIwjKja77Mgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2P153CA0014.APCP153.PROD.OUTLOOK.COM (2603:1096:4:140::6) by
 KL1PR06MB6624.apcprd06.prod.outlook.com (2603:1096:820:ef::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Tue, 3 Feb 2026 02:20:32 +0000
Received: from SG2PEPF000B66C9.apcprd03.prod.outlook.com
 (2603:1096:4:140:cafe::b8) by SI2P153CA0014.outlook.office365.com
 (2603:1096:4:140::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.12 via Frontend Transport; Tue,
 3 Feb 2026 02:20:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66C9.mail.protection.outlook.com (10.167.240.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 02:20:32 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 894454350704;
	Tue,  3 Feb 2026 10:20:31 +0800 (CST)
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
Subject: [PATCH v6 0/3] Add support for Cix Sky1 resets
Date: Tue,  3 Feb 2026 10:20:28 +0800
Message-ID: <20260203022031.4075627-1-gary.yang@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66C9:EE_|KL1PR06MB6624:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: feb498ec-ab02-427d-e662-08de62cacec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?1wQKlidr3bV0pF8FTWv29OqgT2u6M+qJjtDlbkzdHJ9vrgZn+iUmzZYLTqTD?=
 =?us-ascii?Q?bev1jqCYmX6sHwCC9bHYK8ZK0aaBBIayN1wjOQ9akZIGnmDjLAGZpAv91zqv?=
 =?us-ascii?Q?AlBfnklciJgbH71XyV2+wjYlmgTBjy2arn4gSrN74ZRqIG0JWqpHzzG71zsG?=
 =?us-ascii?Q?fF55Bwy9I+0FLQOfN4IjnhsGmAg8xUsV55ZtKU+tqpWuM1L1xfhiZ0Ha+HLa?=
 =?us-ascii?Q?0xo2yXwnJaBo0uNckYbKR28UxOm0FeC0NH9h4c8eBIwFkB4gvJYCrqjgtgIZ?=
 =?us-ascii?Q?VddC4WV88xLbX8/CUFrtKkjBDfDZ5+oGRu9uaUefyQ3aGS9aUq2m5AcujP/G?=
 =?us-ascii?Q?UMk8sO9LLRQnHGA+SnCRgqfuhfyET8iXeQTMN9irIVKauIXisOKnkL2nvdXm?=
 =?us-ascii?Q?l0hCTwctTGkhm4FVbp5gU/EfYQW24X6QGn4H0UIloLQfwGObSk2VHLxsCKCa?=
 =?us-ascii?Q?Gl3n4vMJaxy+HnoQqeyIVuJBDiqaqrSqZC72GHfHL+RcO+vYcrNYAvIA9aOU?=
 =?us-ascii?Q?nt0Q2B7z6k6RxUalA9kQdlfy7KXcGLyJGDIzipEk9c7bM1jI7C5jpoKmDkDx?=
 =?us-ascii?Q?Nw+rK8jCkCWlcoySbvjnN3MnJXYMvmTf/WIcLLz1VX5dxbFFJCzd4P4Ar12i?=
 =?us-ascii?Q?znqhCrm0AZhlix9HZZQPrQxY16l19Ph+6Z7e90OmldZhnGKjfdM+PhGCIeg+?=
 =?us-ascii?Q?zFXwNnN/1DzjZJFeshIKu+lRx7LR0kqcJ7CXyVXk9iKs9LMHCfJLgLBL9QIg?=
 =?us-ascii?Q?8ePYitdMavDRnrofCdAthySnIxFSz6nzk7Lidw6uqtH9yCz1yb84rkOHKaO8?=
 =?us-ascii?Q?VI8KIbKYhRRaxCh2+PU3v5qjmQxDTmzBZ5B1W8YKANgdRXN1qtkR4rKZGuFz?=
 =?us-ascii?Q?Dexw+cMu7SObzqnoBd0LguegBcXMHXW2M2BNrg0zgEZZVz/15YByPGCYSzn8?=
 =?us-ascii?Q?oQgpE/wxt6433syLkSRyqrOe+t+wOQcT15G5WIXqfjJ5KcKsvsojgNMaDFYT?=
 =?us-ascii?Q?xsVgBWwsMO0Ck5LKDpJh7WCqnOlPXzQTseJqFujLm2AVwjR8hx6ejc42AYWs?=
 =?us-ascii?Q?LNuKgl52Qd0yqV8qBC4wyqqAVXwcFAouhJtst9PuVe52G7SOPRmuFvc7QALY?=
 =?us-ascii?Q?pQUM4sxF4kFB+U0azS7iz0RaV1LjcG4k+8sCnqnHOz8QHBdz40lFQ0LvZGRa?=
 =?us-ascii?Q?qZSu2ySK2YPb1swnyoQUGPIFhVUVN+gIQkzxKSUrORm+AezNWjDDyC4bE7qn?=
 =?us-ascii?Q?Y/iTH+Eryz41/C5EN/zGFT2nikQBduXdz+rFyb5mbmI59gq5efbWomIxmbEl?=
 =?us-ascii?Q?r8XYyHEIH8BRS384yGeyPrqQzVBNDAlTttrhFr2YdojELoa6vsRU1m0mG2wQ?=
 =?us-ascii?Q?LCEde52t+0gos39aajuJBN6q1vNiuWRhIIPZcfBC1H9pqiWKZJtkBL4DSipP?=
 =?us-ascii?Q?EW0uShVSmVUB2zVMreROy6xuRiqELraDYYkDKZiSplvbvrVQeBgxVxt8ABIu?=
 =?us-ascii?Q?P7pJ86+h0qy8qtnu4Nmo9v3iNK+sYsZvikk7H4kn0ot8dbejwG29pJFCn7Cl?=
 =?us-ascii?Q?txL+Dg3RAtbePly5ptVkm7G938tdfKtpIz9AHWyAdTXVPH9FkR2gYh4PIf5Y?=
 =?us-ascii?Q?fTcucGcw5txyfrkO4acjMrmGw5lsZllMt6MPmWM5+JoT/tpZ465Sy8xQwOa+?=
 =?us-ascii?Q?72Yjmw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	/rqhZhv0PWZc7l3cXMoqHG1IvipY/roM0ZpKP1JKqfRhJR2pHmSK5tth/KR8wKpdPxfCF8LkN2MlNx1JCrsDc6tDbV+qTYonXVuqQR0hCL/330wruV0VKAkTSfpyQgedmkebg8PR3UQLmGRV6eiiWBadB8SUOHPVHqFNV5+NwshEOEQUxSb27W7uvefp1p3wPMvOUlhuIszhMaqjdagEjnTlqHbAzyclL9dh+ptNARhmxw09QaxQkZC1SRypJ2v+HVb1QSAHuIzvN3a2+Iqvhz1CiRjL7UFP1l/0mcP/vf1wIBxroB+KWMcaTGDTM5OCXwePAu2Q/40bc7bPjElsHZ7QF15vl0dcrVs4J0154eTOkuGkXLwiORfvM7h+IBeJnEQSxF8HArovz7kJZvkVbA0Hcjvh3oglcBGUsuQ+43YRo3ok4wZg2lmVcLC0JkZd
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 02:20:32.3560
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: feb498ec-ab02-427d-e662-08de62cacec7
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66C9.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6624
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
	TAGGED_FROM(0.00)[bounces-262013-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[7];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2EA19D3B84
X-Rspamd-Action: no action

Patch 1: Add yaml file for Cix Sky1 resets
Patch 2: Add driver codes for Cix Sky1 resets
Patch 3: Add dts nodes for Cix Sky1 resets

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

 .../soc/cix/cix,sky1-system-control.yaml      |  49 +++++
 arch/arm64/boot/dts/cix/sky1.dtsi             |  14 ++
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-sky1-base.c               | 126 +++++++++++
 drivers/reset/reset-sky1-fch.c                |  78 +++++++
 drivers/reset/reset-sky1.c                    | 204 ++++++++++++++++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/cix/Kconfig                       |  11 +
 drivers/soc/cix/Makefile                      |   1 +
 drivers/soc/cix/sky1-system-control.c         |  47 ++++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 ++++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++++++++
 include/linux/reset/sky1.h                    |  18 ++
 15 files changed, 764 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
 create mode 100644 drivers/reset/reset-sky1-base.c
 create mode 100644 drivers/reset/reset-sky1-fch.c
 create mode 100644 drivers/reset/reset-sky1.c
 create mode 100644 drivers/soc/cix/Kconfig
 create mode 100644 drivers/soc/cix/Makefile
 create mode 100644 drivers/soc/cix/sky1-system-control.c
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h
 create mode 100644 include/linux/reset/sky1.h

-- 
2.49.0


