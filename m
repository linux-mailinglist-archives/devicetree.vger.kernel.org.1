Return-Path: <devicetree+bounces-134037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7E39FC8C9
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 07:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4853C7A15C5
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 06:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D0B16A930;
	Thu, 26 Dec 2024 06:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="Fr6xdRwy"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2055.outbound.protection.outlook.com [40.107.100.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B1158535;
	Thu, 26 Dec 2024 06:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.100.55
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735192929; cv=fail; b=D7SCbU8CoNEFCOGWfZ8ZFqE5i2qny4F34FKdk9Bz5kFcb1uxwCeLSJwEo3DhiwZMDraA4OFFjmh566AlYsbxb9TuJDTwegjxY6wBbfqYkmtwOYBFzknvGvSfo2KME+Q+u4J4baAmWH1xNVgRxeP0RBvLjuq252tThibEwGHPyQs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735192929; c=relaxed/simple;
	bh=vhrnchc3WPWuiReq02CTqGEjc+Zms62qmXauALczpkA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Cf9w28yQsaa99EITdMzku22Np3U1YrL/Yf5bbLvkhSY7oUDLG3yqtNOQ8JRg4VhjF4Cf3JZ0c9r1a7wsVO6QHWj/hx37whh/05bBa29F/lWa1nYzxCIuiqVl/2WpQJhBtt/JRWhZCFxpbvKlh9jIoONT++s6s96GN7d616wBSQY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=Fr6xdRwy; arc=fail smtp.client-ip=40.107.100.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pwOuyZm8vdGGZnWX1lgYWRxoyXByb/iOlr4BzdxaUxKRhM5AaCkDBTmGbogww9QICjMJnxr51SzebV33VliPoDG2tSHGq6XPTlvNv0XBgxmZxkyI2clRlZ9HF0sOuDv/7ReKaLmFNQcQvQRFIes0Sp7iBJ62awzpiFSGyeH1uWHvTvpeAKSVvP+oXICZ6RqeUEFkUO6VNGKjXFKPpNMoP5n1j2JELRsAuYqkZj/kKEayexyHIJ6qAti5MjLcqIqvwJbxxxkfqzri/2q4fz4A4Vmd6Ke1vIDFO/RrgcJAYQBXobC59T7l48NMCvjJS026MyPjU9e9vLo8BpEhotrwOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sybj4dXg35MmxKPIOjh11vRvXaa5cUiFjX2Kq06POaw=;
 b=EwVab7r2y7hfOStptaJvw+B3S71Lelzd1fpJkFlbrRD09bxlTFKLdVMzqVM82VNIyZGhj4aecs5RgBgvcfIVQVyWiTWtgPzXkgIMSEErPKGghk5Rkp0PdPKq4QnHNwM2tx1lrNP15MDNrqI3KJCYocW+FCy+Xnh2hS6S44IGwvBtFvs0VsXoiLmWfze6nVJy6k0c4qmjdHfWhC7TpszNcMjAoSMdqLKShA55LUCmZLv3si9pIVcmEuKKla/uNStCm6sGARbG39VKbTwP4xqCc0AA+lPnRWwRLfisOUOandTdJTh6Pzl31Lh1b9ao2zQiGObqnd8pTyFMn102Fb+GBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=google.com smtp.mailfrom=amd.com; dmarc=pass
 (p=quarantine sp=quarantine pct=100) action=none header.from=amd.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sybj4dXg35MmxKPIOjh11vRvXaa5cUiFjX2Kq06POaw=;
 b=Fr6xdRwyYGoUnt8+/yk9iE1os1EJSM8ZK69EEL9TD94ZTRbPnotk2XsrlQVtCC7zInLlxCRMBStw77thsTDlEuh/V7yD5kudNwGR1CXAmWnawaxQS9MJEe23s24bqYxTKnWeL9dTxQSNn4DwcW8KbYuOGYcJHmuHNaODTX4ZN2E=
Received: from BL1PR13CA0029.namprd13.prod.outlook.com (2603:10b6:208:256::34)
 by PH7PR12MB6979.namprd12.prod.outlook.com (2603:10b6:510:1b9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.14; Thu, 26 Dec
 2024 06:01:58 +0000
Received: from BL6PEPF0001AB72.namprd02.prod.outlook.com
 (2603:10b6:208:256:cafe::7f) by BL1PR13CA0029.outlook.office365.com
 (2603:10b6:208:256::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8293.10 via Frontend Transport; Thu,
 26 Dec 2024 06:01:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BL6PEPF0001AB72.mail.protection.outlook.com (10.167.242.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8293.12 via Frontend Transport; Thu, 26 Dec 2024 06:01:57 +0000
Received: from SATLEXMB03.amd.com (10.181.40.144) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Thu, 26 Dec
 2024 00:01:37 -0600
Received: from xhdharinik40.xilinx.com (10.180.168.240) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Thu, 26 Dec 2024 00:01:34 -0600
From: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
	<manivannan.sadhasivam@linaro.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <jingoohan1@gmail.com>,
	<michal.simek@amd.com>, <bharat.kumar.gogada@amd.com>, Thippeswamy Havalige
	<thippeswamy.havalige@amd.com>
Subject: [PATCH v6 1/3] dt-bindings: PCI: dwc: Add AMD Versal2 mdb slcr support
Date: Thu, 26 Dec 2024 11:30:41 +0530
Message-ID: <20241226060043.18280-2-thippeswamy.havalige@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20241226060043.18280-1-thippeswamy.havalige@amd.com>
References: <20241226060043.18280-1-thippeswamy.havalige@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
Received-SPF: None (SATLEXMB04.amd.com: thippeswamy.havalige@amd.com does not
 designate permitted sender hosts)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB72:EE_|PH7PR12MB6979:EE_
X-MS-Office365-Filtering-Correlation-Id: 20d4f2e2-2a0d-4001-0588-08dd2572cea9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|7416014|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?W0am0M0als4Mor24L2ag4ZfghFU8UBpJcJb6zyL+JHnrNGMryoXZb54Ia7ry?=
 =?us-ascii?Q?/pPyGeYJYyElm+X0aTaqWg4gkEN780xRNYbiQInBcBra76/C22R1NU/cjYie?=
 =?us-ascii?Q?X7Lm5Sayy/znJoKgBxBazMgLxupRTbJu3ivKEUwqNz/dMlOzMybQ1Yi9eKgT?=
 =?us-ascii?Q?DJjj6RWZhQz9zo0WeAAzeKkoQyrnV+AEzfveI1KZ7yO6Vnp81kQW3KyN/bdV?=
 =?us-ascii?Q?z7+fME96n7X4UOP0FPIjDB7+23GRfMzPXcIhzSOMyBw3SqamwvziijsGY2B9?=
 =?us-ascii?Q?hHgO+rfPXjNCWFaYfm8LYNmbYZpLjN4YxnfKAikviPgwyZ/6mj0EYGMjELjf?=
 =?us-ascii?Q?GjJ5oa0nc4upz1a7bgIVUgZ42w0ZamJ6X07XKwLF5YRGAJTjsYMs1AUaaFU/?=
 =?us-ascii?Q?cKnY/C6THpy1bPJ2J3BNtJqJex1dmL9YZ/oeNV1aaJ3X9zRGGW6VPNJtq48c?=
 =?us-ascii?Q?nQDtH9dZ+NFFlVlpglAnwe/fRji2/LHe+nKmGxidjt43Ckk1PTIHbkEm+/LJ?=
 =?us-ascii?Q?yVb720FocXXuyoGtv+jkxnppW3esqux8SForTV/59tvxfWS51+r45v9f0p2F?=
 =?us-ascii?Q?xNl2TKbK23UNdpZzMjnuXK+YqA2zoQ329EM4YoD4Yd/EejTjJmPMWlQC7yn6?=
 =?us-ascii?Q?69V7wN0PsUzE7j34spwt2mZxNEI5sjivsz+0LUeTew+jEiCDyfpeLCJJLI5S?=
 =?us-ascii?Q?Yo90pHVv0/qDPOJuSYwcZa5iqUWzUXhEuWTTCY4UtOXTqFmImcX/2RngVcqa?=
 =?us-ascii?Q?/MMutQrA5IZYmt+019apYzlNgDhSh5rpimGZLF/N4zPrjBaqYiHNyMT+qHFe?=
 =?us-ascii?Q?MjjjwZxvJCxlkuWWAwHz40AeJmLtj5E8/d/fCcYl0UGgt42DyJulw94xou2t?=
 =?us-ascii?Q?bVKpJSFCOye1cp8ePF9l6rhMxuD0xa9mATIEcy45tfYqK13IRM8v8InnSenz?=
 =?us-ascii?Q?c/YdDYK+L1o2KK0Atvgzz2yOkBbkITS8fF8J10Bg51pPdco9WUTAAdY12bOg?=
 =?us-ascii?Q?1U48uTgxcHmKt/605MHcnZaAogDWmDrMo5FmZAElRbZu+/LytLmQs8ubMnGd?=
 =?us-ascii?Q?BpWTSvBaqM+oxgXGXTqseL7QOmjy3TZItlHxv5mjJpI9U1lthN9x+n276i3t?=
 =?us-ascii?Q?Rai+nz2Mn0+vGG7B9i+WdTBqwmjEAa9+La719X6Uf5eoXWh1RYRBAhIum5ip?=
 =?us-ascii?Q?d6JaVy3s4lZVAuC7AjdtjPSZN56Huiijm+0Gty2kOzUV813dxhTrLo7A6wO7?=
 =?us-ascii?Q?qCNKWH9BAu34wadO3hXlSEMvJCsW564CzOSJ6kpDvzVIn12fDHF7afocwa/q?=
 =?us-ascii?Q?3GpASr2f/T5zobFx/9eBGenTm7lw2cigqZuU30Z2Vq+UY3QuQxry6fqkTm0m?=
 =?us-ascii?Q?X/OS0ZN3fD8P+vYoSZ0RpT67JRsoYRSziovX5xgKgfPlsKvgJPBGPAExyYZ8?=
 =?us-ascii?Q?1kxrU2qN2DZ/C3w49CQ7SfAg9JL3k5NW8PiN5glmDedRZx20sZc7w4Ny58Wi?=
 =?us-ascii?Q?87mQSaWFxZTmXAI=3D?=
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB04.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(7416014)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2024 06:01:57.9536
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 20d4f2e2-2a0d-4001-0588-08dd2572cea9
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL6PEPF0001AB72.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6979

Add support for mdb slcr aperture that is only supported for AMD Versal2
devices.

Signed-off-by: Thippeswamy Havalige <thippeswamy.havalige@amd.com>
---
Changes in v3:
-------------
- Introduced below changes in dwc yaml schema.
Changes in v5:
-------------
- Modify mdb_pcie_slcr as constant.
Changes in v6:
-------------
-Modify slcr constant
---
 Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
index 548f59d..a519ca8 100644
--- a/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml
@@ -113,6 +113,8 @@ properties:
               enum: [ smu, mpu ]
             - description: Tegra234 aperture
               enum: [ ecam ]
+            - description: AMD MDB PCIe slcr region
+              const: slcr
     allOf:
       - contains:
           const: dbi
-- 
1.8.3.1


