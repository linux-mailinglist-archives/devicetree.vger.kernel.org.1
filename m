Return-Path: <devicetree+bounces-260271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKhoHMDYeWlI0AEAu9opvQ
	(envelope-from <devicetree+bounces-260271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:37:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D9D9EE12
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EBF5E300DA6E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE009346FA0;
	Wed, 28 Jan 2026 09:36:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023114.outbound.protection.outlook.com [52.101.127.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DC21F09B3;
	Wed, 28 Jan 2026 09:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.114
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592978; cv=fail; b=Out19khEMHGuC6oVPaJpxoDbMLg5iV/KBZZQtike6SemjMejVq1No7jhlaFkxYjMISD7B+lmPDTlstHmMXW9jjdgJogFiFiGZynTt+bCwRf/PxS5GDFB/0l0WbGfHVnZ0CvYWH1tvW1oBEBj2BptE5zaPqCqLy11g3lyJwZaxa4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592978; c=relaxed/simple;
	bh=qHtRcsPonDC0h30xAeuM+WNSFx++YRiwQRTrsLhgbO4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=aJD+r0srFj+qnjsw6GcH/yC6O7g4/AC+sSXFjwjSqLiYVLmoBK3lQwLnqei2PZR71sYVwHwlRUtLiGfP/Csj1Bj3q7yVWfF+8oR9SavOVmkz4wMtlD8TkeJqYXbL/nOkn55nQz6NGuqMSAyJwMF1QRKlUwDrSUn1zRiy/4KjeJA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJyXQWVLAi07tZFmHaAQ+duerpxnbqvb0O1+/ccIHKFVBfzRNKEVq+Gu0WmL5bv5qN/bcEhEJn9XdDIUGjcaGoZuLINjIq8RxHpwRg0qumJa3aTPmeIxJtgcSY1XTsa7u5UN/Huhe0BfNsvL6ZiibqNT6Mpl8rkb90g4UzgNsLJhu4Ae8fxYaV1DQiRmL9Snk/1hAiLwuPEXyJUaOfww4ID5UUpptu/uVxc9rnt8kDd+jGW37IpdK/kmCdDRljFIUeYqh7KGZsSs01C4NCOtU1euSZufcWIuBGVCDC7L35lYqAB1kiGfT3Qa9m6DWZpgxtA9ArvlUIcqFGThaGqJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9J8IjRO72ss3pLogidHmdXMN3kvnYuBHnPfjnynlNWY=;
 b=OTyEVM0C6Ura1W4rAElLLQPt92almMNLfFgER2UtDCquiD/4qBWxi6f71U7sW7Q/TC1osWaH3ORLj7vouRxPdi0zuaEOqvUgaDB59LKYhOVfbXtbO2H0K43+Tdc4dFAcqqiNsGyLIsN8IzePATgBXLg/Up0xdA9D+2Ck2Hm/jPwsk28Rb/c8Mv5vb7bvCF7rQ6mZc8Wmg933oCXY9SeSmhU4CyW+/oHxCrPexknlzaTq3PbVIoCHO2y7+qwiR0627NMw4vIG8Vxk3QgwK9tIAYafIq2ETElI/sc5b9NO6n7/XxjGWhFL2tTelwWNIFfm1+JaajwqWGVGc1sNdG2ihg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SG2PR04CA0200.apcprd04.prod.outlook.com (2603:1096:4:187::15)
 by TY0PR06MB5008.apcprd06.prod.outlook.com (2603:1096:400:1bf::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 09:36:13 +0000
Received: from SG2PEPF000B66CD.apcprd03.prod.outlook.com
 (2603:1096:4:187:cafe::5) by SG2PR04CA0200.outlook.office365.com
 (2603:1096:4:187::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.7 via Frontend Transport; Wed,
 28 Jan 2026 09:36:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CD.mail.protection.outlook.com (10.167.240.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Wed, 28 Jan 2026 09:36:12 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id EAD734350705;
	Wed, 28 Jan 2026 17:36:11 +0800 (CST)
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
Subject: [PATCH v4 0/3] Add support for Cix Sky1 resets
Date: Wed, 28 Jan 2026 17:36:08 +0800
Message-ID: <20260128093611.1932770-1-gary.yang@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CD:EE_|TY0PR06MB5008:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3bc2739a-fd59-4362-07c4-08de5e50ad0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?o7eTCG7baYnor3hGFG51Nx338XPuQiBWhK2Gq4BUpcKD95aFL+lw2jkpeCV3?=
 =?us-ascii?Q?+WfBeMbzWzSCMD+UslT0yOpBY1CEWsYw5SapTMhW5tond7BjRwcJUvsdlP/X?=
 =?us-ascii?Q?GvgIfL6hqhW8BSPPswupxS22oFs5QKuNwfJ58nGIo+ffZZCEfthxUnpWed/p?=
 =?us-ascii?Q?nWEFtA85DD2lrc+vyP08Q/YaspyW0YEyimy/O2izlTVIXFo51YyLyEQtXHgN?=
 =?us-ascii?Q?3/3sT92MNuIOJ7d56o0kGgBnybj2T9JRspZpux7MHTlX/xAfXrMjc0VNQhHs?=
 =?us-ascii?Q?TvdoxJRbNNCPwPp95FSb/BgmJCB9sed7r47quSSr92TCBECS/y769ByZvVdf?=
 =?us-ascii?Q?IuLJpO1i7d+1aQLjHk0RZIB/Df+Zpx6ojlSFaVMgJUohG4Z+hTGPOM+U3fO+?=
 =?us-ascii?Q?zjNsg7MFDjZ82Og9U0Ndkd/vEwEr9Z9uCgPZU91THwGfrq351HBF30yyA4bX?=
 =?us-ascii?Q?24820mU1Shz9ZYjW+iucG9Cva+TrywCKhCa9KpvSgVVSmWcLGP+8cM5knyZ4?=
 =?us-ascii?Q?R0Z1+vUnN8cIiVFL42cDTgIKErATlSTuu1hSemoboW8zIDjJLz1RUJDdcaAy?=
 =?us-ascii?Q?xJPYXrLrYWonzbn5iEM7KuLyorjzGqc8F8/PDdHeP50A9eoJAF5uRUZf1H9N?=
 =?us-ascii?Q?OOoT5QNr69gKAFE6LLSHX/NF2Ty6gT6vq2UcxZEPPf64cY/1ucix4mF/Piru?=
 =?us-ascii?Q?CheLJ0UN22MxZNFNQDViptTfXj6qyrhMC2rE4Wtkj3nIFMx61MNzOaAZl1cw?=
 =?us-ascii?Q?44RE4heYnFmgMEIPCoTSyvoNgb1hc8v0+F5rWcsuWeh2lldTjqQPls7IB990?=
 =?us-ascii?Q?B3WDfQ+Smg8j3iSJuCDJ87YzfGWmWqdxuzeQNNS1l1VY/6lN6Xjr+2NQQIPQ?=
 =?us-ascii?Q?lrzD6m4OnK3BjH9WkVVYGL2+QUm80YaqNDJtDUnw9ECV0EqezGIhzzRiAeXz?=
 =?us-ascii?Q?ZdmoHrHYOXXOlUpsl+HoGB/PtuqYb0p+vJd8zqmP58T7NmiUXdjpwZkciBLi?=
 =?us-ascii?Q?a+t+0B7mjOun7XHDNfyRdIYM+KrBRfsVI70M45uWckF2F/dYvNgdDqOQkD6B?=
 =?us-ascii?Q?88FjPd6uw7VdcGp9nQR+5Mx67qhiz3DhvW4771kkTtOtZhH8ExV3oeDvvcRf?=
 =?us-ascii?Q?R0s2zY/SgjGXl9M9owH+g9V79H+JY9tnvGQXoGD3LMZLTLYlAskxg5uDMWKG?=
 =?us-ascii?Q?kGtT7TnM403NPLET7NE9Zf470QPbFMoSRJBtk78Sn35FhMFJFCBhrm/tpCJ0?=
 =?us-ascii?Q?ArQohvkpzRrn8Yf5fBXBFkMPJLst+gwXL3Wd/yIWqnALC/nvqH8u7BbF2fKg?=
 =?us-ascii?Q?+MymQyNSTu4A6apIPk7GRP5MrQMUBXfgdy1WzhZZuzzFU4lftSOA4pNSzqsq?=
 =?us-ascii?Q?rRTVirk+MAI/HkSVrVtgRYjjTFnH44HX9prFygFveNHdJerO39+09/T3Ef3I?=
 =?us-ascii?Q?7Jh7i+spGS5+E9Uw7Ddi55YKPrQrp9zG/ESax2Fchzb177LWtP1b10nbpAN0?=
 =?us-ascii?Q?LBcwAOu8KOoxfuBFwV+bHMnCpIistuVN7juER/7KZQVBwXMclNIZQKYMLVXV?=
 =?us-ascii?Q?6XwqDZRxq515mlI0UluTQ+tneibW/EVLDxImoGKuggsaQjK8oeZ3p7623GnP?=
 =?us-ascii?Q?tfGDkFmmL+zaKdNxcWQnI9ljJRepfqVYmHfoXTCBrcwadslWFaOfgDRX5Efj?=
 =?us-ascii?Q?WYSZ8A=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 09:36:12.5192
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bc2739a-fd59-4362-07c4-08de5e50ad0c
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CD.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR06MB5008
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-260271-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_SEVEN(0.00)[7];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cixtech.com:mid]
X-Rspamd-Queue-Id: D5D9D9EE12
X-Rspamd-Action: no action

Patch 1: Add yaml file for Cix Sky1 resets
Patch 2: Add driver codes for Cix Sky1 resets
Patch 3: Add dts nodes for Cix Sky1 resets

v4 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
- add syscon
- refine reset driver
- fix dt-bindings style

v3 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
- remove syscon

v2 changes:
- Pass dts build check with below commands:
make O=$OUTKNL dt_binding_check
make O=$OUTKNL dt_binding_check DT_SCHEMA_FILES=cix,sky1-rst.yaml
scripts/checkpatch.pl 000*.patch
make O=$OUTKNL CHECK_DTBS=y W=1 cix/sky1-orion-o6.dtb
- fix dt-bindings style
- refine reset driver

Gary Yang (3):
  dt-bindings: reset: add sky1 reset controller
  reset: cix: add support for cix sky1 resets
  arm64: dts: cix: add support for cix sky1 resets

 .../devicetree/bindings/mfd/syscon.yaml       |   7 +
 .../bindings/reset/cix,sky1-rst.yaml          |  46 +++
 .../soc/cix/cix,sky1-system-controller.yaml   |  48 +++
 arch/arm64/boot/dts/cix/sky1.dtsi             |  22 +
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-sky1.c                    | 376 ++++++++++++++++++
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 ++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++
 9 files changed, 713 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/cix,sky1-rst.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-controller.yaml
 create mode 100644 drivers/reset/reset-sky1.c
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

-- 
2.49.0


