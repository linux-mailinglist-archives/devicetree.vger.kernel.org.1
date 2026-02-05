Return-Path: <devicetree+bounces-263009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJQwC9KVhGk43gMAu9opvQ
	(envelope-from <devicetree+bounces-263009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:06:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 470B9F2F63
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 14:06:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 69EB2300620B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 13:06:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E430431D725;
	Thu,  5 Feb 2026 13:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hddnTYN4"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013025.outbound.protection.outlook.com [40.93.201.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E848632A;
	Thu,  5 Feb 2026 13:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770296778; cv=fail; b=hOT+zsYPBeMGaWkWMHlRG8h5CVKMfBjlM6s3c+mNP4Om6sAhajTtymzPkMYnvMbeiuM9FWgQtbvU9hXOdVbyd+pYH+9iGPYpNyveFTbas4+jEHzI1wIs4q7iMq6PeVaJNHTX/vGggTqpdbkwygs7e/PoEENpsdSWqThniE/wMhc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770296778; c=relaxed/simple;
	bh=euss2angXSy8ly0Zxkv8BDkSlXjGT5H4o4O6bPh9b2c=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=fsn/nKw4dQvKmFaTGeIaOmNQKecO3QdrqQ5u0g0/919Rq+Yy7BV4PZuMBIVRRLXV1oHsEI/t+xpNS0tThndGVE2/wKeOvR7zZqte5CvrUFVm7norBDwrIR7yikTlVQFbYWDoPySbCkfVpD0wca9ub+EeFB1PCkZlJD2NsRbJpno=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=hddnTYN4; arc=fail smtp.client-ip=40.93.201.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dwC9YO6Vd7mnFSbfa5qtQxTAKDrZdh4iphbX6Fv8My/c9SlpMOvwwEGFYJKEBkW2xz9/3lt72q3oi635Jjg1d/SzS7t7X0ZyOCMBpwDzsG0Xx0mVwD03ySyaNr1bUAXYZ73C8cL3ML5vqWBf8NveHsoXXf3DL3Fts5vvnAtfq8Gio5ldsmcFXovPCV1NUmpxeK6b953g3yMhZOvEMk53utyAR41hNqP2qo6h4XyK1HkjTTBI9KJKYcnNSgiB0fcNvxr7qI9Fpg35+/NBhzq9n11JtPvRCPGIsxs4TsgTmwJHNMHhFDVxiQA9n4IwXxt3++6jc61mRxDznlG71wdxgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yu68LxP7eITEkmyMcoPrfHhW4OQlXWrDcFUzmP0pEYA=;
 b=G45lUcssMTMLk1akftkVpg0Ud3AHmOn01X4TO35wxfx0KMYguM+NLYO8mA+ertGTnzeV2PSwDf20i+MOJsPEl1xp9Wdk9EVesJnt+gfsSVuPJJHY49NOZUsnheXXdrVOIMH/d8935QidYuas5ywnrn7WcQZZh/rYv6KO1Sjuw5kfjuXmCJMtIIPf9SMnj/TdGZbO7IgQZzUpmUMoOXVKu8B/BYUIS84Cj09pWrG0+pxYWVBCfthFDNFua66DZILHm/ph4d2DMbL7iLOSVFYMKQTPCFYyd3Zd7Bj0kPplew/KIBS1n+dTGNHPADw8NVglh4hY6ZFv5e3nLAMnrJ6zGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yu68LxP7eITEkmyMcoPrfHhW4OQlXWrDcFUzmP0pEYA=;
 b=hddnTYN4JEB5y7adDR/tYN72plhV1Cv/mGE2O6h5/KqVKOmtHMUkgwFT6T+sStt9SVwapSs0DDA7ebdhzmzKvW+ok+WE7U9vAl5LaWZSCPZtjGSxzzq9Ab/T0fW+NUsm2y/b8pPZi9r6tJV66d8OpWZWEyhmJWlKPxYLn26uZCw=
Received: from SN6PR05CA0017.namprd05.prod.outlook.com (2603:10b6:805:de::30)
 by DS0PR10MB6945.namprd10.prod.outlook.com (2603:10b6:8:143::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 13:06:15 +0000
Received: from SA2PEPF00001507.namprd04.prod.outlook.com
 (2603:10b6:805:de:cafe::60) by SN6PR05CA0017.outlook.office365.com
 (2603:10b6:805:de::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.14 via Frontend Transport; Thu,
 5 Feb 2026 13:06:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SA2PEPF00001507.mail.protection.outlook.com (10.167.242.39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Thu, 5 Feb 2026 13:06:13 +0000
Received: from DFLE200.ent.ti.com (10.64.6.58) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 07:06:11 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 07:06:11 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 5 Feb 2026 07:06:11 -0600
Received: from moteen-ubuntu-desk.dhcp.ti.com (moteen-ubuntu-desk.dhcp.ti.com [172.24.235.46])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 615D67av3026398;
	Thu, 5 Feb 2026 07:06:08 -0600
From: Moteen Shah <m-shah@ti.com>
To: <krzk+dt@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, <gehariprasath@ti.com>,
	<y-abhilashchandra@ti.com>, <m-shah@ti.com>
Subject: [PATCH v2 0/2] Enable audio support for J721S2 EVM
Date: Thu, 5 Feb 2026 18:36:06 +0530
Message-ID: <20260205130607.2032818-1-m-shah@ti.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: SA2PEPF00001507:EE_|DS0PR10MB6945:EE_
X-MS-Office365-Filtering-Correlation-Id: d4b5b8ae-0315-4e1b-0164-08de64b75729
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?aEQH5t05ZPfyPQziU54qQHILI/jwE33L2ebQGG4IWHhp4qc2oTy6/I+99VZL?=
 =?us-ascii?Q?1+vJqxIv6OcrsqjIxJR+eFRqs/ZnHsH22k0IX6xOPIlFxeZpb2Mu18h6VBFg?=
 =?us-ascii?Q?pC8NeJNQMCjuRkwzYnbXCkYR8+5J+WexPugHhMV6a5OcWix2qbRnSlw+jJje?=
 =?us-ascii?Q?AmnpUezPappT4eGq0LpwdapPlsPAGfgeyDjZ0fusxp2NV9f3stUZgLAb7Z5c?=
 =?us-ascii?Q?QSGbWNtKd2qLmVjU+PdHiJiVbcSs01CAc/ctKGXXzAqU8J6KuD3/0+tUu73g?=
 =?us-ascii?Q?hyw4Hsgb4HYXLkYStPwDJ+HfObnstRJoN20IeV3/Z0fCw8of3kSLlLbqjwj3?=
 =?us-ascii?Q?MBCBQIBzBHkNZCF2YWuivBsg9hG4v7cmujuNyIuiHvqpSm0vCqrYAPCUa9+z?=
 =?us-ascii?Q?SQZNLzZZWcHkGR2UndkFLnPblEsJy0lKASODat2AGpE/VWkyj1CaRimykIvU?=
 =?us-ascii?Q?bLOkFWGi7KzAaiWSX2li4otGtri+fQU5pwY0d/Ns4piVXIVW4+f4bmwuy40y?=
 =?us-ascii?Q?1feHV5cvY7PFMXyV96J+2h91lMM/bgM/SRr2r+wc/Jbzx36Qghi+srJa4FJL?=
 =?us-ascii?Q?Qt1uNPEyYEsj+h9MRNIyKvP2Ai2VZ8Y2PSh7B2qKHnkKrx6OCvPYtevHcylb?=
 =?us-ascii?Q?SH4GjZN2oDstGUwVWSR2cCZTGAsjJeD/0zOQcYsdHemhjBWD4gam7UW7+IU1?=
 =?us-ascii?Q?ALkxn0u/A6//5hllANxF4IHoiyZBrBRqCDJUm58awOrtojt19QTiF8qsSJR0?=
 =?us-ascii?Q?J0E2QlDnyO6pGk2hgh+lBwcgyHnqU+27hlrOMItoHGOHe1hGAJGRcODnTazo?=
 =?us-ascii?Q?wxoY44K8PDF8cANKcYcKtzrmulOVWiAZTjqZYmJfurQQGXyEAHq6F1C2DywY?=
 =?us-ascii?Q?aPX/dtFWFYffj4MbOY8WyHfCZlvmd61GfyRZ0BqT7dZSVFm+0n0N3q5Yvyap?=
 =?us-ascii?Q?BeY7M2cgjlGwl5zJK4hxN3tWAlof0vJIO8Mg4FneSD+wAUnVUwVFxQ2SKSEc?=
 =?us-ascii?Q?Ba7Yrt2TSSSlw2mBbMxaaAmrKkWcLsaTA3ZnbYWNCDNflTR3N0gbClNkFfa8?=
 =?us-ascii?Q?rhwn/pg2moLRJHUbadhwSRgzR/qfEGpcKG2qx1OFZq1BJVh5DZ1aYYSV+af3?=
 =?us-ascii?Q?eakRr9xL3HPMCp+ZWAWf7pi7m82Wm7W+pyGiKwG1MhKLIawPXISNLN1c/atk?=
 =?us-ascii?Q?lPvM821kAxiGDzqZilDY53QN90W1apyvqaTX6Y8Hxli6idRhgi5bklr6man4?=
 =?us-ascii?Q?f9CGy4sOK+a8T7WoALaSAwTZJyycipU2TWSQqtD4i2nhVbfwrmIOSNY+MQxh?=
 =?us-ascii?Q?6d98NIBYU/B7wO4h49ujntGcnd2fDZ84pYHbwcFRYUSUEZIaox5JJskreVyY?=
 =?us-ascii?Q?dQ+hKJWW0sXRT9N1tqHkEopI6od7WwML6vf8sVFPFd1s20sTyKJTSmw8ZyYn?=
 =?us-ascii?Q?0uwaP9PDQJJ8JmFM8iFAHbB8RBGBiUwdLhAq8iNdlYvl6jLjHR9F76E75EoG?=
 =?us-ascii?Q?4Fz2gVDHTLQLrHEiWneNS3FhTxYfC2dMvlG7tPHwwi94o8/KmuXV7OsmPq6y?=
 =?us-ascii?Q?2JOtP510JEdG9epkccvbSRw7TRq/qe2aTp+ce9+kE4gLmzozCzAnqSfHUIEV?=
 =?us-ascii?Q?M9V6KykJG3PC7RX2YufbtDQ=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	fNfV+KeJTpzK6AC2BtfCHAtg8lTOf34Vdzbi85N1JSBAC6PpwXJTh/x/PCTnVme7zzn9Ldpvsl+WMxnhSAgbr2vJMzsPdJzyozfB4+ihx87u0fVAi/7YJV/tDy+8zoSwsNYpnoo1cs5lYzVkztu5rG9Yc6lDEt4rZn9qbgf2X9HRslup0qhf/AZiqgMYjudbkw/qV4B6RPN40eGXtwJveBfpsUPZSqJaY4JKpRfGgFjh9BebEdvFPiizLeqzPe7601qvovKLX2IhQHuiaF2raM61N6mRIDxVkMj2q36GsV4WyU1T/Mc9YtPxFk0L5lXc6mo0dSsWBzlNxKQNZpYgurXFUaFCSYnnGkSTAprEiQYw5T7bIa7s+BMfHO0KE0STCbAuTCJxVfW6K9B0yWcSHwcuRpW8V0urlKJWlbXq7K9LMCRmUxa6Gd7UUsL2DdZN
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 13:06:13.6995
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b5b8ae-0315-4e1b-0164-08de64b75729
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00001507.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6945
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263009-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m-shah@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 470B9F2F63
X-Rspamd-Action: no action

This patch series, adds support for analog audio on J721S2 EVM using
device tree overlays.

Earlier version of the patchset sent upstream[0] was rejected as
its dependency[1], which resolves the DTBS check errors introduced
by [0] also got rejected on the grounds of ABI breakage.

Another solution to fix the DTBS check errors introduced by [0] is
to modify the ti,j721e-system-controller.yaml binding to allow
audio-refclk as clock-controller child. This is done in the first
patch of this series.

Changes since v1:
Link to v1: https://lore.kernel.org/all/20260112104536.83309-1-m-shah@ti.com/

- Convert the changes to an overlay
- Enumerate the I2C mux used
- Remove CANUART_MUX_SEL1 gpio hog
- Fix typos
- Add gpio-line-names
- Fix commit message to showcase the right idle-state for muxes
- Carry review from Rob and Hari

Test log: https://gist.github.com/Jamm02/8d3f079cfe866e50e2f447165c0c7939

[0]: https://lore.kernel.org/linux-arm-kernel/20250604104656.38752-1-j-choudhary@ti.com/
[1]: https://lore.kernel.org/all/20250603095609.33569-4-j-choudhary@ti.com/

Jayesh Choudhary (1):
  arm64: dts: ti: Add audio overlay for k3-j721s2-evm

Moteen Shah (1):
  ti,j721e-system-controller.yaml: Allow audio-refclk as
    clock-controller child

 .../soc/ti/ti,j721e-system-controller.yaml    |   6 +-
 arch/arm64/boot/dts/ti/Makefile               |   4 +
 .../boot/dts/ti/k3-j721s2-evm-audio.dtso      | 161 ++++++++++++++++++
 3 files changed, 169 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721s2-evm-audio.dtso

-- 
2.34.1


