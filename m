Return-Path: <devicetree+bounces-44765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E01985F86E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 13:43:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8C5CB22069
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 12:42:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFED712DD82;
	Thu, 22 Feb 2024 12:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b="XJMZ07e2"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2067.outbound.protection.outlook.com [40.107.93.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CF0612EF
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 12:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.93.67
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708605775; cv=fail; b=okUPHFcjOtwUv0Dj01jAELvtu52jTR43676x8JGxhJwvp2cOWAoameboaCo2eHKqDSZS5z5pl9R6JZxKha0w8av4+A2g42gRVIdJZnwvdQbtuvlTnDrGnGg7sHaAPPMT4UNhrak4o37eoNP/YG1Vrhq3/yJgf7EHCGXVz7rx4gM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708605775; c=relaxed/simple;
	bh=fQUt+00hhcmKir5tyDx6LvFSxJl4HTnJskIO6TTZAoo=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=EmLrV3ELIbPVGBo9AC49j9V1wL8i0N0INIb2X17eSRbStV5o6Rhf9N0y+viX0J4TPMs6u9h5TwQrgs2FPSHheSZANqyFQaVpznz6ovFAFcADVJEFV6HWsZs5vtnWU5PZueJ1CvwbCw8MkfXWUVCQU2EeLeLgzqYGRuv8sBLKg74=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com; spf=fail smtp.mailfrom=nvidia.com; dkim=pass (2048-bit key) header.d=Nvidia.com header.i=@Nvidia.com header.b=XJMZ07e2; arc=fail smtp.client-ip=40.107.93.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nvidia.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7cQ7ag8ooEs22cQDfgwWIR+T0HERHvYAYay8urIILGCX41Cb/DU3kSRPFKVzXRHPJLEFeEdNn4YLAtQoYae8/Lryjjj/K4/kNCjON3leKhsWlNZIblu+6S8C0fY/X3QKxXWJuRxTIgZdqmhlSKNbIf1MoBxuKMmQNMq1qiEhDKtzROaOi0HrKXtg9m25ELtttpBwzKYN4CPrPt4PSsLMWdn7YkcAQHVz+DaVCZxIhHistHJV3L35xtPslFxasdFAhhiex1q6QCIM3904izYouC3r8pOx8QvIHf+HgmfHky7ijBRXktxvoA2B5AcTG8cEqdunx22l2gS7utbQ9cKrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g0pAN1kOIrluLgQ5WkyE2N1lYXNeTwI/zs3o4TaQIss=;
 b=hpG3v3jrx1jbGiLAhiGLWjCMcFWyAvBWsjezbwO5MLSNB4DjtC38aleoN+VIK6LB/yDYgH7PEBryZCGUmYVBkE10W9UU7IBElWFW5RHCM8jiK6F9WXXCWCcvq9o29Q12r9FAi+so3dZcrRexDT+U4PlpncxGeEolUaTHPq4DiPDmFUTY9Kw4CLAalTLRAg3eH+esgHdl5XaAGz4+WHi++G6UNIWAQDXffkhbuGwQoVVJOh1boOxKQVb420ah7yvVEihCZkRfdUIxSQRkV1bzGzbFQAFdTfQSD7VY6G5Y37EztICDaS/Y2UVfzg1HeQHc4bpJrmWeydpbWcGDEeWJuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.161) smtp.rcpttodomain=kernel.org smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0pAN1kOIrluLgQ5WkyE2N1lYXNeTwI/zs3o4TaQIss=;
 b=XJMZ07e20LzPVU90yBSjOeLLxgMHmkhM9V4b70XOSzgOr0/biy4QGCWdWeKqtK0TqPr5skrtg89AJ9B1mdwxowt0zV3dq319yEbJr2DhW+CeATZQa9syXIyM7IYhMnFgg58oLTCmlvGpW/m4XZ8dW24ABAofO5MrQGU0XjFxYOpa5AQWw23tqz9ld+XzcVgCfYv5zvwm5Nrn9xP0+pFZ42ZUu49BOMwQc/SZ14SFUKgdS6T2MJc8BIWDGqQfqX4wt3FPv4U8HUGUsb+wNuZqrfAmdcDjwbbNfi8J5wMfyZjALYlftjRzMRnFgxyvcEzEeuNoedoHN6gEyW/7xMTFwA==
Received: from DS7PR06CA0039.namprd06.prod.outlook.com (2603:10b6:8:54::7) by
 DM6PR12MB4091.namprd12.prod.outlook.com (2603:10b6:5:222::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7316.27; Thu, 22 Feb 2024 12:42:50 +0000
Received: from DS2PEPF00003442.namprd04.prod.outlook.com
 (2603:10b6:8:54:cafe::d9) by DS7PR06CA0039.outlook.office365.com
 (2603:10b6:8:54::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.45 via Frontend
 Transport; Thu, 22 Feb 2024 12:42:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.161)
 smtp.mailfrom=nvidia.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.161 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.161; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.161) by
 DS2PEPF00003442.mail.protection.outlook.com (10.167.17.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Thu, 22 Feb 2024 12:42:50 +0000
Received: from rnnvmail204.nvidia.com (10.129.68.6) by mail.nvidia.com
 (10.129.200.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.41; Thu, 22 Feb
 2024 04:42:37 -0800
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail204.nvidia.com
 (10.129.68.6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.12; Thu, 22 Feb
 2024 04:42:36 -0800
Received: from vidyas-desktop.nvidia.com (10.127.8.9) by mail.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server id 15.2.1258.12 via Frontend
 Transport; Thu, 22 Feb 2024 04:42:33 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <robh@kernel.org>, <bhelgaas@google.com>
CC: <devicetree@vger.kernel.org>, <treding@nvidia.com>,
	<jonathanh@nvidia.com>, <kthota@nvidia.com>, <mmaddireddy@nvidia.com>,
	<vidyas@nvidia.com>, <sagar.tv@gmail.com>
Subject: [DT-SCHEMA PATCH V1] schemas: pci: Extend the meaning of 'linux,pci-probe-only'
Date: Thu, 22 Feb 2024 18:12:31 +0530
Message-ID: <20240222124231.2685261-1-vidyas@nvidia.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-NVConfidentiality: public
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS2PEPF00003442:EE_|DM6PR12MB4091:EE_
X-MS-Office365-Filtering-Correlation-Id: abd4f405-2c85-4f30-c327-08dc33a3c7e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	cnQ2nR9Wz0tGPObeXWUWXQ9sVhhHnPvDELgDhXdUQG5ZfneagAgg5+RpMGDCkjLB6+Vm92Fbb18eN00S4ABzqi24X16OBBIc30yX4WpOuB0PlX3gKAx3KbAL8iL0C0D/+gtVA1nxcCcsdOzyX5RahmFeaIRCczlkycCQDAvqyxZeLb/XkJa7A/kVakQH+FmRFNgiiEC8wn0M5k3ufd8PjJkRV6gN/odNpFadde/LPb03UOwIo3b5ol7WzNQR621+KrKLhJ8M68ckk/4Yh8kp4jBz7OrxEYLxBEMBU0xKdKxrrkf0aTCCy4BNoFt8xgcFAJbVTnmfuNq/WnSNN0e2olyQPSpuEM0WpmVGgKAv7kdBUzcH9ZxBKwv/yepqMvpK+tHsxPoCQ75FeCuWkb87lRebxw8fCntroFsnnVSC3tStUtU9JLS1O7IUQp0GQpCCIl5me934gOTbdBr7XCEEprcslC8sKWl5TwsyS+BtM0fq724D6LqlTaqE7iv8y4iqUgq+rO/yIjq0AuEiQ+UJ65DGlmQSoIoROwxXP88rN/atSgFJtDh3bQ9GmgXqRHmKzv3nAnWvzlKyA3nyrahaT/7ZOGCLzS2K+tSNm5T5OoyKxMOstTwXRKEWr9HBB0y+nYCAlG9GMSccxmankLweUGg1lqj1r9FT+19FQbGvgGI=
X-Forefront-Antispam-Report:
	CIP:216.228.117.161;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.nvidia.com;PTR:dc6edge2.nvidia.com;CAT:NONE;SFS:(13230031)(36860700004)(40470700004)(46966006);DIR:OUT;SFP:1101;
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 12:42:50.4342
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: abd4f405-2c85-4f30-c327-08dc33a3c7e8
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a;Ip=[216.228.117.161];Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DS2PEPF00003442.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4091

Extend the meaning of 'linux,pci-probe-only' to cover the cases where
it is applicable only to a specific PCIe host bridge if defined in a
PCIe node instead of chosen node. Add the documentation for the same
in schemas/pci/pci-host-bridge.yaml

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 dtschema/schemas/chosen.yaml              | 2 ++
 dtschema/schemas/pci/pci-host-bridge.yaml | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/dtschema/schemas/chosen.yaml b/dtschema/schemas/chosen.yaml
index 6d5c3f1..9152df3 100644
--- a/dtschema/schemas/chosen.yaml
+++ b/dtschema/schemas/chosen.yaml
@@ -144,6 +144,8 @@ properties:
       Optional property which takes a single-cell argument. If '0', then Linux
       will assign devices in its usual manner, otherwise it will not try to
       assign devices and instead use them as they are configured already.
+      NOTE:- To restrict the applicability of this property to a specific PCIe
+             host bridge, please refer to /schemas/pci/pci-host-bridge.yaml
 
   stdout-path:
     $ref: types.yaml#/definitions/string
diff --git a/dtschema/schemas/pci/pci-host-bridge.yaml b/dtschema/schemas/pci/pci-host-bridge.yaml
index fbbb829..d6d595d 100644
--- a/dtschema/schemas/pci/pci-host-bridge.yaml
+++ b/dtschema/schemas/pci/pci-host-bridge.yaml
@@ -31,6 +31,14 @@ properties:
       number for each host bridge in the system must be unique.
     $ref: /schemas/types.yaml#/definitions/uint32
 
+  linux,pci-probe-only:
+    description: If present, Linux will not try to assign devices and instead
+      use them as they are configured already by the platform firmware for this
+      particular host bridge.
+      NOTE:- If defined in chosen node, this property has system wide applicability.
+             Please refer to /schemas/chosen.yaml for more info.
+    type: boolean
+
   msi-map:
     $ref: /schemas/types.yaml#/definitions/uint32-matrix
     items:
-- 
2.25.1


