Return-Path: <devicetree+bounces-276853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGSvHheyuWmDMQIAu9opvQ
	(envelope-from <devicetree+bounces-276853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:57:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F05722B1D7D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:57:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F9D0305C8C0
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9130C33F8DC;
	Tue, 17 Mar 2026 19:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="KAQ09qVd"
X-Original-To: devicetree@vger.kernel.org
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11022097.outbound.protection.outlook.com [40.107.200.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B78B2DBF75;
	Tue, 17 Mar 2026 19:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.200.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773777136; cv=fail; b=M9J02nxSeCKoio7F0mG5k0ODclWHGUqqJnQXjFUi6GBbqSeHXhV8Lx8J+ZZpf2ctPtq7EgKn7vVQTIL4SKm9fFm8sLq8vz4UU8QmovGbQDBPgNdeE9+JK9ppMDk1nmBjM1Edjj2+DneNVAiZJPBHl77W8RYMR8oW20Bw1+cKF3g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773777136; c=relaxed/simple;
	bh=P+30FVp4nPeC6kaOvtSRDFhDx5m76GXTDCI+dK1IC2w=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rAIlAjSqwUdqCIjsJ66OhDsePtVJubtRnYedsTR8L867SOh8Q6/AQeFjNdrqdXc1IyPofd24xKZsOa/+lx8wOhY7p4oy8uKTGERvRH2uEWmADrZCVHY25/bwhQdBj/jUdGjdWZoa1J9BR+GmLg3RXlLR8owOHeXreGQrR2CHq1Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=KAQ09qVd; arc=fail smtp.client-ip=40.107.200.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x848iTj0BNQnSayHEMkxotlXL75vzuUOJaEvk//3ktxnTww5IPGq9NvVkvyPDGZptKwKpg8Jrn7kJ28AvZ+8nrGzsnP494rp7aiVMlfzuLW+zeQ8CxY+acU8og4J68sNBIYn3sXmqw43jn8Ysfef5bcsaKkwa1GRTv+V+Z8J8s04/TbZq8likFOox4rooEfFICzPsTTS44F2Vy2lz8bKkTXjtbGr3DhJqvJbGEi6gtvPKS/GdXpxUPHjzTvpR4fNa1UuYzhqBukCJLKCLZZ9yvqHMID65+9hq+60jenpCRIIsE1/8Wi1ZY2kKqLrBSOwWU2IbMCcyDUE8aS8lMqVkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aesD0p/lA1kZ9s0tzGCGlDJghkQwnpRiDW4yP3Kux6U=;
 b=XmKinC8ON0EfeU0qHQ/g15yILpHUFuStOcFZ7JkJtsyLqG5n+ii41VmiIOfaNguhakma8HpEVv9Joo6Z+5Qm4J7CZKsvlQE7arw7Sp2G/daq05a5cuoQvShyq3ui21FmaY0nO9nJadHeFZOe9YXPr/vgIMoXkaOc5rlioIg6iPUs20jrJpRztfh9wcYWGyKiaEzUMkdHcvkPnty6jYMGmZAJdLZzZiqKcI5qyU6Ahxv+2aEGKS63Jdcd4DSo7th7s+o6fknPIUSU+NxFd3BG+eprSROaAdYiP9pV9FoyvsPlR4lndc9EOrnfuP7pO3PTifXyQfCdI33FiufRjVVSRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aesD0p/lA1kZ9s0tzGCGlDJghkQwnpRiDW4yP3Kux6U=;
 b=KAQ09qVdqRUyAy0LTfxsgEf7fsKt4zmJMW8CvneeAT8aW8zqmQdf2Kz3veHUyvTbBUEmvh3G54+OhjzDK4EY7i6EnwK1E1V/hFngDuoQhJKvI0ylY+9OQyYTRYvuQk12s9xkJAnlbWAO1CPBcacm0wdxZWhrP6KvvUpFpsgQf1AWM/QKVeZghGTGmfU/a5L3Fn57dwhVJ/mCnLsUTQ3PYOipSrqxMjjrhEGgvpHqtuc76LL324N5sBdL8vCIAhVd7ilOd5Jl7uNV12MC5o1NvRn5SaJaEEJ20rulH9p+pFQbv3ZyOD5bneyDu1PVFXxv7IfaXoBlVfZGNsOExZ5X5g==
Received: from BYAPR01CA0064.prod.exchangelabs.com (2603:10b6:a03:94::41) by
 CH3PR18MB6119.namprd18.prod.outlook.com (2603:10b6:610:1e1::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.25; Tue, 17 Mar
 2026 19:52:12 +0000
Received: from SJ5PEPF000001F2.namprd05.prod.outlook.com
 (2603:10b6:a03:94:cafe::6d) by BYAPR01CA0064.outlook.office365.com
 (2603:10b6:a03:94::41) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.27 via Frontend Transport; Tue,
 17 Mar 2026 19:52:13 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SJ5PEPF000001F2.mail.protection.outlook.com (10.167.242.70) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17
 via Frontend Transport; Tue, 17 Mar 2026 19:52:11 +0000
Received: from axz-uw1-build-vm02.corp.axiado.com (unknown [10.14.1.22])
	by smtp.corp.axiado.com (Postfix) with ESMTPS id 57C504157BE1;
	Tue, 17 Mar 2026 12:52:10 -0700 (PDT)
From: Tzu-Hao Wei <twei@axiado.com>
Subject: [PATCH v3 0/4] Add eMMC PHY support for Axiado AX3000 SoC
Date: Tue, 17 Mar 2026 12:52:07 -0700
Message-Id: <20260317-axiado-ax3000-add-emmc-phy-driver-support-v3-0-fbf790f3f711@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOewuWkC/5WNvQ7CMAwGXwVlxih1fyBMvAdiMLVLM5RUSYlaV
 X13Agghxk7WWfruZhXEWwnquJmVl2iDdfcE+Xaj6pbuNwHLiRVqrHSmD0CjJXbp5FprIGaQrqu
 hbydgb6N4CI++d34ArjIS4kNTIark6700dny3zpfErQ2D89M7HbPX91sxKyoxAw3MRV6Uhq+N0
 Omz3dWuU69MxJ8adbVGjUlN2JRGzJ4M8p96WZYnxrzW2D4BAAA=
X-Change-ID: 20260108-axiado-ax3000-add-emmc-phy-driver-support-d61aead8f622
To: SriNavmani A <srinavmani@axiado.com>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 openbmc@lists.ozlabs.org, Tzu-Hao Wei <twei@axiado.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2603; i=twei@axiado.com;
 h=from:subject:message-id; bh=P+30FVp4nPeC6kaOvtSRDFhDx5m76GXTDCI+dK1IC2w=;
 b=owEB7QES/pANAwAKAXgQMF3EWvHXAcsmYgBpubDoVqFO9ZW4ehf1W1BVVGoaVIa8gnmHhL1wD
 GhgsneXNxOJAbMEAAEKAB0WIQSZyWINOowtFmDvdYF4EDBdxFrx1wUCabmw6AAKCRB4EDBdxFrx
 177OC/9AjvzTyYYe9Qku1mOuxujAgpuN4leSc7TnZbPHRTTQd6YKSeOU+t0g7qT2/VgBGGf/wI4
 wbYH1YqF0NQHSeLsHZVUPwfrOGK01kbUzqpvsVbQ8hUY1XyVs7RuS9FnadiHtoq0hjbXYIJ/E3A
 I2s7juXANy1M5x0R6H9oO8lqRb5K+LTGLjQetovZqOInZzj/5sLmbDEJCyFOFZ8SaHiAzvYQUFp
 CkOEbB5vyAFs+JV1eEjwR63SA9icOOmY4yUyEEwu3dhjZTWx4/2kpBtlz/YglmDug4rSdxjcn4A
 1mi5S9Ucg0sEHRtne2nXyqMbPPjlEJpFFL5XYkCkgRqLWrYwVCdmKXN4FsWyatGpjg2YUtwU2TS
 thOu3VseRhhjojWb3UpFqyRiEQyP9Z6rFJ1HEBx2m62teSGiSUhDfGD+CbagBwJyxKrX7orAxaX
 rXkoDxBFfijsnhtIp4cpx/5WHo5baJkwhd2Aud6Pn6fCzNc+wgrNoWs0djX3Iz0smOl0w=
X-Developer-Key: i=twei@axiado.com; a=openpgp;
 fpr=99C9620D3A8C2D1660EF75817810305DC45AF1D7
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F2:EE_|CH3PR18MB6119:EE_
X-MS-Office365-Filtering-Correlation-Id: a50c6dba-6605-46c7-7225-08de845eae15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|82310400026|7416014|376014|42112799006|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	zTYtNNayjcqyrK3/WgUzQYiOtJR3L/j6n/Mby7tH1DGUX1qLPZUHQ04Vlg1DwcJrlLiyO7hrAjxFAbXtUihqASLN2nNWinGe4vPXwAu1hVr50iwuv8LpUZ7M859fD5P8u32uh1KqUbUoql9bfzQ3H7ttgcJ/12YF44OBvYabSgmBrI/QOUK6AkV5wU3cmjNxVhlEX7xpN0pStnDPX7MxCn5iq9ZFGgRR+bOrEAq3qSvmZeKpsHk7drzULbP18z9uuY5bTOFtCvPWOt9UENS1bkpKdD2DJqrAVMbqTb89DNDD8ykKmiV+iUt5TGH24kMI7lffeinFYoZQeVWEm0YKgLvOVHej58tPEQuLvLdSv0MIFUqdaRUoW4L9tu+EEVYhVJ7B1NewlvSFu7E4R3vfDr10v4VUJ8c0uvgMV7clNEUFyUOUgctszjLhZunD9D3PXyIvyUyGXB82ixfL8/jycFII4mU1ph8IsJuUCeitkvH50ewtXS9/qnzwz6uEFlFewUaAINuOY5Szo3WJBfAxThN33GDcYPZcRuFc6cHywTJu2p5KL9TJT8yMt4gP90CVGghSu6RHRGQ0xcPcbru8DmDb/+XNmtl+1rfjktmJqrr6AE57NNZ4X+z36b/5ytyLhNthqfpmrZ3Xg5xtmZhiYW5Bphnpk63x7TT1Tu+5uaq5/UQGnxjt48gTr2G444quX0ECutr9HkgRu4GHw9KLfNPzqKfd6M0nfa1BjQymnHowRnjy6EmUj+GfcifMy0ZWddvi/TSrncnkFX7vPwqtIjDjedsvtItAJBfXcitAqrI=
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(82310400026)(7416014)(376014)(42112799006)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	sY4aoIwlpjt/tx/Pmx0mhbkcpIHEm1+WZo3GgtDIe6oSw22Z9wgAOka137n4sQ8eQnjtQ58ZnTbN78B9d9WtmnlpVYn1dbSK+ddrGtqpAy+1ve/Oq54+3qew75K6u3qyCKc1Ph5VeU1DXg6FpItd2vgXLAYNZ+q/Z2v1alZ1FghsOD9ncOD+j172wdOH0CZS85tT5Jt1cifq6HQqCvQrtuveQWAGXxlT/d1avAdiCwoz0ykvEtTkALr0bsdWLIwYeX9VJRi9ZjH2fbn3ycxbVcxS3BpS5fDnqU4aDIv7MNpMynYNyr2E5Q5PJIilwZnGEwhgncTii869dZ+dviULjxNbaS/COly46fTArhGwkUAHwkHUaHv88IZTL+V7nUpsP3iIx8UVr4VPxcQERxN6OiSQLaWFKYwyEc8PdP/jo6EgtI6YwYAmzbFv4rqCP3JZ
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2026 19:52:11.5134
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a50c6dba-6605-46c7-7225-08de845eae15
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001F2.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR18MB6119
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276853-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axiado.com:dkim,axiado.com:email,axiado.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[twei@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F05722B1D7D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Axiado AX3000 SoC contains Arasan PHY which provides the interface to the
HS200 eMMC controller.

This series includes:
1. Add bindings for Axiado AX3000 eMMC PHY
2. Add Axiado AX3000 eMMC phy driver
3. Update MAINTAINERS for the new driver
4. Update Axiado AX3000 device tree

Changes in v3:
- Update year to 2026
- Use lowercase for addresses
- Remove redundant macros and use GENMASK
- Implement power_off function
- Link to v2: https://lore.kernel.org/r/20260206-axiado-ax3000-add-emmc-phy-driver-support-v2-0-a2f59e97a92d@axiado.com

Changes in v2:
- Fix dt-binding format
- Fix compilation error in m68k
- Use readl_poll_timeout instead of read_poll_timeout
- Link to v1: https://lore.kernel.org/r/20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com

Changes: (The previous version was mixed with Host driver, so I separate
the PHY driver as a new thread)
- Fix property order in required section to match properties section
- Fixed example to use lowercase hex and proper node naming
- Removed wrapper functions, use readl/writel directly
- Replaced manual polling loops with read_poll_timeout macro
- Used devm_platform_ioremap_resource instead of separate calls
- Removed unnecessary of_match_node check
- Used dev_err_probe for error reporting
- Added proper Kconfig dependencies (ARCH_AXIADO || COMPILE_TEST)
- Fixed various coding style issues
- Link to previous patches: https://lore.kernel.org/all/20251222-axiado-ax3000-add-emmc-host-driver-support-v1-0-5457d0ebcdb4@axiado.com/

Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
---
SriNavmani A (3):
      dt-bindings: phy: axiado,ax3000-emmc-phy: add Axiado eMMC PHY
      phy: axiado: add Axiado eMMC PHY driver
      arm64: dts: axiado: Add eMMC PHY node

Tzu-Hao Wei (1):
      MAINTAINERS: Add Axiado AX3000 eMMC PHY driver

 .../bindings/phy/axiado,ax3000-emmc-phy.yaml       |  37 ++++
 MAINTAINERS                                        |  10 +
 arch/arm64/boot/dts/axiado/ax3000.dtsi             |   7 +
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/axiado/Kconfig                         |  11 ++
 drivers/phy/axiado/Makefile                        |   1 +
 drivers/phy/axiado/phy-axiado-emmc.c               | 217 +++++++++++++++++++++
 8 files changed, 285 insertions(+)
---
base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
change-id: 20260108-axiado-ax3000-add-emmc-phy-driver-support-d61aead8f622

Best regards,
-- 
Tzu-Hao Wei <twei@axiado.com>


