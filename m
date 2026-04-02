Return-Path: <devicetree+bounces-284180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKBWJF2vzml+pQYAu9opvQ
	(envelope-from <devicetree+bounces-284180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 20:03:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1561238CD67
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 20:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CC2D30305C4
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 18:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DFB8336897;
	Thu,  2 Apr 2026 18:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="sRDKYVQc"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011000.outbound.protection.outlook.com [52.101.52.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A76EB36C0DC;
	Thu,  2 Apr 2026 18:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.52.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775152860; cv=fail; b=Saf5SUQE31zp/ki+1ktQWnr+ITlH54hBalCWzMSB/TLKZMkKG1xwtB1GZmaCUqe+qjF0uMQixg2hrIoWPg+YZmA9ovsVIPp3JZVRFo15085A0lx2k48lUpWQmjKJXyTUgWJEgm1i7EgtzzIy+VPi9+y927KkVmlEn70eqUjq95Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775152860; c=relaxed/simple;
	bh=JCSsLh0kfFeqxsQAmTSOluCRs8kyvynoX2k/SCj0+1U=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NkKLponq/LIlJuKECsnANCoCkuueCuNiC8Ky0uj6SPgtRQbJrbrh9Tucvrr2mZaN3RLxNPCBjXnz+lnEqzh2Xvmq1zyZUiKL7gYMHVUxE897cYyLot7Q3sZQ78IiYjVUXgBr9CzLsnn8MZBWluyFbPw67YhACvM08Y1CXG8FnjQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=sRDKYVQc; arc=fail smtp.client-ip=52.101.52.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHROatCGpjXDgXHvzdfXla5U8JAhT56iEnoOlm6mU1YgrourEsyE/xT2xaYL76XzTnFHbD/7To9qe8YuLz71JrhBgjUY9NzlIdiQKZwMMiq4ky3tQkfisMgaSZQgJjoMASgN1CX3ixdnLTd9fZD6ZGO51o+pkhzoxEM+7o2Ra4YEj3xUVIJNDSWuwZZ5vZEAkXOtyMIZbqWW6C5ocMNWyXsCZyHfWM8pbWbKLRdSDoeoe6vz5jSCmqEPghZA5IEkQgP5jmekKw3bfkG324qN6nwUtPR3m6z3WubcV8I+I3fykj4x0eoi274mq5CEHTRUJVwqDnXKkWiRS51dk+NfWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QvMJCFnEETAN3Yk6lz3ghbw+eVMzm8hi5XDrjni6k/Y=;
 b=yY4qgtqR138Uph0X3aijyoqqVtHJ52c1SGrFOad+po7YIwdVhvXwS6FOogrfZWSs+X9XkB/lqLSx9tZuIn1hC5eho1EMVpPVFTHXIYbgtbyWyg3kMKdxGKnCvFtrcCM19S3HptFsLO2Nn22lW2bz/ydEQ3/b2b21Ftk2MkXUdgfBupuUrhSl+7oxocuyjJkendOc+yhJRqr6Ku7YEGTsODJ3JXhmQeIXelZXosOW81o6/bWixBW7fUivDKdAswqnIbYCvBWRKhJYpf8gM5ia54i/faB2og29z3maIhe4sYsTCIGS73FffxOqWgeaWiDRjCS4txFErMKsbp1HE44lDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=google.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QvMJCFnEETAN3Yk6lz3ghbw+eVMzm8hi5XDrjni6k/Y=;
 b=sRDKYVQcbYfudH2wcCZqyW4kXK8+rypMre9oye7rDfxDQVsZBJAqo1IFcjf6mHMMhXtX0ijZYTmvdPQaFbftZr4TN3OEPqJaze/QQixs5ayoxyNwnQdNEs0WfGdES1JJLr4xPYceCLYmIWcnSDECkCsGw5MsbNLHmk5XaEpkKFs=
Received: from MW4PR03CA0139.namprd03.prod.outlook.com (2603:10b6:303:8c::24)
 by MW4PR12MB7142.namprd12.prod.outlook.com (2603:10b6:303:220::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Thu, 2 Apr
 2026 18:00:55 +0000
Received: from BL6PEPF0001AB77.namprd02.prod.outlook.com
 (2603:10b6:303:8c:cafe::ba) by MW4PR03CA0139.outlook.office365.com
 (2603:10b6:303:8c::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9745.29 via Frontend Transport; Thu,
 2 Apr 2026 18:00:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=satlexmb08.amd.com; pr=C
Received: from satlexmb08.amd.com (165.204.84.17) by
 BL6PEPF0001AB77.mail.protection.outlook.com (10.167.242.170) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.17 via Frontend Transport; Thu, 2 Apr 2026 18:00:54 +0000
Received: from SATLEXMB04.amd.com (10.181.40.145) by satlexmb08.amd.com
 (10.181.42.217) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.17; Thu, 2 Apr
 2026 13:00:49 -0500
Received: from satlexmb07.amd.com (10.181.42.216) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 2 Apr
 2026 13:00:49 -0500
Received: from xhdlc250067.xilinx.com (10.180.168.240) by satlexmb07.amd.com
 (10.181.42.216) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Thu, 2 Apr 2026 13:00:45 -0500
From: Sai Krishna Musham <sai.krishna.musham@amd.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<mani@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <cassel@kernel.org>
CC: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <michal.simek@amd.com>,
	<bharat.kumar.gogada@amd.com>, <thippeswamy.havalige@amd.com>,
	<sai.krishna.musham@amd.com>
Subject: [PATCH 2/2] PCI: amd-mdb: Add amd,versal2-cpm6-host compatible
Date: Thu, 2 Apr 2026 23:30:06 +0530
Message-ID: <20260402180006.486229-3-sai.krishna.musham@amd.com>
X-Mailer: git-send-email 2.44.4
In-Reply-To: <20260402180006.486229-1-sai.krishna.musham@amd.com>
References: <20260402180006.486229-1-sai.krishna.musham@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Received-SPF: None (SATLEXMB04.amd.com: sai.krishna.musham@amd.com does not
 designate permitted sender hosts)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB77:EE_|MW4PR12MB7142:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c3fb28f-d93b-4e1f-85d2-08de90e1c91b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700016|7416014|376014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	iP8jQaV0emu3R5ehlhj1uW1Kx0AYdREQG5cKYigwf6ljJl+Q+CZQwRIOqCCZyoHSvZb8rk5KCdPH+hva40oAf6KjMF7m0JtqQgBW7hcZ+hsc0ZLIjliDaxoxU3w+/i8xYpNv4mRt0jClUiG0Hx1E6tSLP/TqGIlzWxPn/VbOMFTxfGxElZ4Zdt+vSb7VPI5Yb5aq39UVBQze+xECSGsIJ7k4cYO3tlcLOee1pjtbvtnhYB5Cj1T5S9xf0/7+DaR1eU62eXEs1AUOA65dTed0Zkqyh1hKL2s3/vRyCf/0Ern73QNxWxWRiOpM6oF586VxpPLe6Mxqu+vjIIa1Cz0ahxsdxaLk8YsPmaVE8qQC+PSU1yrRAsCgAShbj8iYqGDJ+VOO5LLbELI18TCqlI6Hif5HCCH2Z/7TVz912M+HfGRfl0GpPQrW6mZSU/Pgxl17x2nxLUCfmtyTKwwmQcLKbuotmfWpQbVi53GnBVdIB7J26nJmvm1RLrcpmeFmExv8DaVovT3Sx129N+OWdlZX7dyu/F3rQkjBGbGF99gXx04G0C09EsTzF7HMLi7aDLdfBlAUbsq8GgL+GmUECurB0Ffv+j7dDGhjfJPkIyeZObi9pCnP/AG37TBWvYZV5TXl4ePBk7KDkDp6KvRpBkJEyO5FXSIVWjwCZTgMf7JZIwSPvAAQH5I3i0uCDUHZ+j9qSSdU/ho7PyTogcYNiwe9gcp1YAgzgkPuqG4VXxewj2uawAS0qpckoEWhS1S4byx4Az8b+fmKR2TpFqqOOhPnhA==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:satlexmb08.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700016)(7416014)(376014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	IJT6e4kCKn13YlPE8If3oeVXCwqSjEv+WIbqoKRO4+zvKsk9/wx0dU9wIJjlfXFSrzf6z2hR79qbBBHPL8pQ80m9c1RsCMNS5fRl2OYzBXOLKXVZcSuyuH/rvzXhP94poqUyJ/Y8cPBWcVt4n31GPikkdTPsmSizx5nAcw2h++Y62K2TzlDJuNLgT7ruO2DQOnv0Y1SyO+H6qMT4rG48tSx/g9HfiU/Hg9w04Rea22Af7UkqPPUhjo2/O/56QK50FG2Wxkc2P8JuftTS6n903TYv9VeVOVzIGOG4ZsJGHawr4RFuEyCKg2rLbIIsGI9YVyON0nQp4HOhVndOuwHIXFlUfIvRvz51+8F4r7VjiBANQfFnW3dDTNi9ugjEjWIqiLtOMkYdHd+EbCVRm//gcL0UqoknY7oay9qk4hClizk1G3sVoPzAe1JUI8gPwrSV
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2026 18:00:54.8855
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c3fb28f-d93b-4e1f-85d2-08de90e1c91b
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[satlexmb08.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB77.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7142
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-284180-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sai.krishna.musham@amd.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amd.com:dkim,amd.com:email,amd.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1561238CD67
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add "amd,versal2-cpm6-host" to the OF match table of the AMD MDB PCIe
host controller driver.

The Versal2 CPM6 host controller is DesignWare-based and supports
PCIe Gen6 operation at up to 64 GT/s per lane. It is currently
handled by the same driver and match data (NULL) as the existing
MDB host controller, but CPM6 uses a newer IP revision and differs
in legacy INTx register offsets.

Use a separate compatible to allow CPM6-specific handling once legacy
interrupt support is validated.

Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
---
 drivers/pci/controller/dwc/pcie-amd-mdb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-amd-mdb.c b/drivers/pci/controller/dwc/pcie-amd-mdb.c
index 3c6e837465bb..325bf7aad657 100644
--- a/drivers/pci/controller/dwc/pcie-amd-mdb.c
+++ b/drivers/pci/controller/dwc/pcie-amd-mdb.c
@@ -511,6 +511,9 @@ static const struct of_device_id amd_mdb_pcie_of_match[] = {
 	{
 		.compatible = "amd,versal2-mdb-host",
 	},
+	{
+		.compatible = "amd,versal2-cpm6-host",
+	},
 	{},
 };
 
-- 
2.44.4


