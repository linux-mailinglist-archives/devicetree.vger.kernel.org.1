Return-Path: <devicetree+bounces-267782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNVkJJ1tnWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:21:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72725184790
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:21:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B1A9D303B189
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7FA636BCCB;
	Tue, 24 Feb 2026 09:21:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023097.outbound.protection.outlook.com [40.107.44.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2111636C0AF;
	Tue, 24 Feb 2026 09:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771924881; cv=fail; b=aC45HXyVBNr56tyRjg8l9OOysYGnQc+XUoWzOX4m0wkfgCaRdFoSAdB+pfbgHh71wO2uhs0J0OMD4p3KQCBiV5ILVdwYi7ptiiena4uBZ7Ciu15B62HOsMDIVxCskdZgZ1AUkYRA3NByhsfh5rCZploMKRqpsOsdT0PecxkSR0U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771924881; c=relaxed/simple;
	bh=sY22Q6EX/ptCc7VkDDnd0n10a45oPiLkII86UXPIKCc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hXIm4wgXe58ZG5Q4CG3Elm8GbflzPQWKOtYY5AvOKmpIsyhvz36z9jM4wW5dISIbERc/PnE8DFR/LdPemVkKg7Mz8Tm8z942nGyQbFBdrSziCoONFOhMxapqmQXMf0zXXQHXu7Cm6OAzg7fSZu/w0h9RWn3zYMwCmB06061Lj2I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lm251bcw6a7Z27j8IpZnqJOBQzKGSz+mjbEBhZi1cBHg5qqfDVZpHY8eYEksu3yCmLgRttfZBjhqmOLDOVpUqXCQo+iYmwXGgewO/3iKeJFa+Lzjoj2AOyQGlTyb+z5MwRv9+v+0oUKhFlGSYaTVbaK5cWSALBO+judl4wFPXR3tXAth8eK107eWobND2mdZ5Y7Gc3rQCnax4o3EcqfTOxHITq1i52eoo9VHl0FWUZgkvMol6Tl1/Fc2P+3GPKsKefTuOACf05YY8vCxqA1RQNM1RwB/rwuhjM0o+nfwGKXNWbuCRLF9CccpwCiDxhaQJAA6vKwK+Wvusd6ZRrnuaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WT8P3ny39fA1mTbGCtyivM6TbtWeEVNN+OuWkYClklM=;
 b=Q2zRGJYCTrYiE0DWeOB/gbFBt4kilR1hlOqKyiEk/8jImwGSZqorleVptWejUX2TMaZCqvywDtdc4GPs54Q7fZqDPGhcDLisMf4vVO2tm/JN5x5oTUq1ts7P2joQPGYgo3d7lh78fN+PGk+Bh5GEP4KrcHG9ZmaJybSF1gRyzFy87PMCYPMXr7B5wXRtZesc3NtGbE/yj8lssw7Z+UBrHX1ZdW0iPUcKy8EflxzMVSWxCF6UNffpbWCe52Ji/EheLZpCjd591C7H6k+mr5ewtKEEbJ49QiKJdclT0OHTs/D2NVIZtbbuvpsr3G8b4HstDuHeEHe73aLqbwR9Au+ABg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from OSTPR01CA0014.jpnprd01.prod.outlook.com (2603:1096:604:220::6)
 by KL1PR06MB6425.apcprd06.prod.outlook.com (2603:1096:820:f7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 09:21:13 +0000
Received: from OSA0EPF000000C7.apcprd02.prod.outlook.com
 (2603:1096:604:220:cafe::e6) by OSTPR01CA0014.outlook.office365.com
 (2603:1096:604:220::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.22 via Frontend Transport; Tue,
 24 Feb 2026 09:21:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C7.mail.protection.outlook.com (10.167.240.53) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 24 Feb 2026 09:21:12 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id C077940A5BD7;
	Tue, 24 Feb 2026 17:21:11 +0800 (CST)
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
Subject: [PATCH v9 0/3] Add support for Cix Sky1 resets
Date: Tue, 24 Feb 2026 17:21:08 +0800
Message-ID: <20260224092111.2198005-1-gary.yang@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C7:EE_|KL1PR06MB6425:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e9fbeb2c-5c37-4e6e-361d-08de73860de8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?zzk+eb/dIaQqDKLqu8gXKg7k7Xk6kgDMFt3KsJhkb5rYb653NHjMcIDysF7w?=
 =?us-ascii?Q?RH72sPYUiomfgUFolr5o8hWGBfBEgX0GuWs9yOcnH5xINgH/TfqtpbNTes+s?=
 =?us-ascii?Q?t8fBNw3IxZ9zyUMZnFchPTSABwk49g9nMfLY/+ZvQ5RcmCZAoapxfnIGRw6v?=
 =?us-ascii?Q?Auw8X+Ejr5gQNf888c0fRlB/QZCRRbh8pquq9XALoZ4xii2gy43kA3ukj/88?=
 =?us-ascii?Q?9kJjLGegiy350AjsTydo3PUv7FjMOGpk2bn6fTsn629OiAWn4B2g0yFtye1V?=
 =?us-ascii?Q?D95qR6grWpqy6o0n5V+TWyeIvA7rg09KEQvcHlGGYTixkR9uN7AuCXz4/Iy/?=
 =?us-ascii?Q?C59XTAaUk7bbfQGBrr8ssnyb59nFa+aFEZx8ROFUW7l5AvSdpd4mZvC2ZoTm?=
 =?us-ascii?Q?DUCW8KKvjowuy4fn4NKHeqHuKkKE/yQ8KL9tedole0cIqG+aXy8VAoeQvz/l?=
 =?us-ascii?Q?1H4yGoWT6UgwBi5J0ThaZkcxe6wAA2+AMBi5u7C4Qmdb+wox2hErlORsLp9I?=
 =?us-ascii?Q?GxOY7BMQj2Uux8Xn9Hk9tQR0vjOB9Z0WOh3KsXaTapcUWNKt0/F14kxz2leN?=
 =?us-ascii?Q?wd23O/j6lZ3uHfX3FSkRvAvoQDUlRY3TAyK8AqlobgugBzyJdOx9br141JaF?=
 =?us-ascii?Q?v3EEilUKiWp8BwcphpqX+jbnEmICip/XuZwjPownvm49EYXk4lCBWFg6rz1V?=
 =?us-ascii?Q?Um9GiK0bQOrLms0o7jaQhbqxcSKl8bgxGNNylQLO1Vf1tnuDXK6nt/k6xztU?=
 =?us-ascii?Q?HVS2g8BHWLVEAj3jdKETsYeM7roh8uDAC+6pBV0IMCEg0OlDiW1vjx5U1FQn?=
 =?us-ascii?Q?GVz+eForHukMs+dN5qE+ojhS+7Xb2UvqlABG4BhXiSOxJi3Wt5VHcIg8Zu91?=
 =?us-ascii?Q?yI50+S7XAmMkAfOi5FDv0zukEi0Cz57R1+0ZrJ0lax8yqMRhhqYKzuxFf1Hk?=
 =?us-ascii?Q?g4FaPgxUvQleQ+qYCO5O+9KgWMnQ5x1QovjZsjHLnv4bBlZrbam4n1JQbDYa?=
 =?us-ascii?Q?Kl/pnVF2d/qz1qd6xSv1wiYlnk/g3iT71SWWkPaDGATO/DJfJZ7EhIWSO/S0?=
 =?us-ascii?Q?wDScMNPiR4lXZdDmDr8BSe3RbT62ZNHTWuXpKZiqrkDfp9jYau33mN8Ic7Zj?=
 =?us-ascii?Q?kSPaGv52K4Lb4X3K3yX1juZ8QFvOhY1ujCMCKPIno5n9VIh6hi5XJkBB+Mkc?=
 =?us-ascii?Q?FaNDsovwBAUpCes7+QacC5Rc8qKdUavFrTI8YkZvKa4gxFo9YOoKLprZClcz?=
 =?us-ascii?Q?81VQlY7rETEMik7rgDL+7Hx/jdMsHE3Qdb0dh4wwg0jhZ0a7wtPo8x+inzgz?=
 =?us-ascii?Q?xuDf1hpwzhA2m2PM0n9j3ukCkfFufSE3/j5elhO3cVNZ5VIMgCFDfA5DnRJg?=
 =?us-ascii?Q?ud9QYpca4fr+1lIawRnimuJqHN21OVOffSA0GBAVDlEn6T0t1a6h2nO2huVf?=
 =?us-ascii?Q?H8RqUnkYrye9SZAs6vmuKdTjGnsGltkkwRmyR4rIfHjtvay2GmhuWD7Cj7KB?=
 =?us-ascii?Q?OJl9Ylv2thrwry6mfhWJe33J61/nuYzRpk8geqsC59oTWzhKxZTA8fMjX8zV?=
 =?us-ascii?Q?VqrV36paFo3G4fqRGgbDbmGV2vzXmdJ1NvZxWmFvwKJCA/kmvvipMoi3TQuB?=
 =?us-ascii?Q?2byNbnXDZ2rhr/WYDiFxG/nKO1Ml3G3TZVw045J10Lljw61Rz8YlAsxet+Vr?=
 =?us-ascii?Q?54RXKw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	OqZsPugt3KxtUtNaT4/cXaUHLYbINxrHtgIAH7GsklvMw8GhwseasRUwuTwoigC5I3+IgrQOqcoxulIt/fvdbxxvFliuVDDb2DSIlwyYUtO/zJO71FKpMl+c3nWyF8asY8s3LRSjKXps8t39f37gkGpl030Gl2usTAcT24GTDdter6qgWzfHyWAfxILdOBi8bjGeWG52e53tKs/9HWvMSLNXSvHnoYhkrxtwaitJMeqawlaWKJgFgQFe1dCB91rLknW0jZP0VyWUhozavPO54SKLZB7dPQVkhXHitNeyNXQhsYl5Rs3gcduXVG3u6YXtAx2ZVhp3rbKd3dJ7qSQTnNpEbe0UAuX8C3XY+93fJPV7Su6y6X0lEx7ETKd6DTU02WJ2wsOKc5ozmDlHG1VX23bzENTo29k425PWy7GzbZY8StJoFoQ1YasgfUphXRGC
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 09:21:12.7177
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e9fbeb2c-5c37-4e6e-361d-08de73860de8
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C7.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6425
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-267782-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.961];
	RCVD_COUNT_SEVEN(0.00)[7];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72725184790
X-Rspamd-Action: no action

Patch 1: Add yaml file for Cix Sky1 resets
Patch 2: Add driver codes for Cix Sky1 resets
Patch 3: Add dts nodes for Cix Sky1 resets

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
 include/dt-bindings/reset/cix,sky1-rst-fch.h  |  42 ++
 include/dt-bindings/reset/cix,sky1-rst.h      | 164 ++++++++
 7 files changed, 635 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml
 create mode 100644 drivers/reset/reset-sky1.c
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst-fch.h
 create mode 100644 include/dt-bindings/reset/cix,sky1-rst.h

-- 
2.49.0


