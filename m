Return-Path: <devicetree+bounces-23754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF0480C407
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C56031F2109A
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EAA821106;
	Mon, 11 Dec 2023 09:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="mDxqUPrT"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2076.outbound.protection.outlook.com [40.107.100.76])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 899B9DF;
	Mon, 11 Dec 2023 01:12:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cF+KsdlnOQx60Lc1bfUAm8xI+dVakDxplQVP8XFhU/av51OEBMkPErc90oKbquRUd7dBIcpP852u2ojSECWbHiVezknzGqSm8uGI6w5Nt6r/iM7irEyXfvEkRZjZESFyT08PLiwxoajBhRchbdUk2zYG9LEK9aDgX7ejhVR7z5LKVzAi1JudEq0Oz9+Im4wEvTjJ/nm5tk8tln1xs4dSms1dsM6ME5QDoSWOH3m/xNfiflsDGusDvQOUDPMhi/eza9l+Qv1iBDiOxfniMTk4CTZ+2/maSTdveMM68Vg6s36Wo3Ay09o7K8CEdw5D25VSJt6HUQYhfnOE66Kh/UE/mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajhgxm+PUrS77QmRHBtalXLHIacWr65g0viH7TdG+Ak=;
 b=blkw+oCNEoj81CsP1dYYN6tB2FP1TBmaZsEnWfwQFThbeiCMOMceXXRN15YuWLE29B21Q3NO7296SFS3N0ztlc2ehn4c7M2hRh3oPs84byZ6wzPMkG3nstKrzOenfenSxH4hCEV6DXhdZRH26gDqjmGVuLvP6wc1m/KMWaWrjo4vRN5IN2JdWp28utoDhaJINWEtkU1eD4bgNSIYL1QZvQpjAZcWSnFKUQhnY0Vg/H1QnDE3eOMWjkfY89knZy5OmXWzi2oskyDf5l20SMqenqPh0peJXSQnuhvZ2AXFAZGPTygWfehPt9iiMptUPk+cBXONZatv47tDznVtVn/TSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=linuxfoundation.org smtp.mailfrom=amd.com;
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ajhgxm+PUrS77QmRHBtalXLHIacWr65g0viH7TdG+Ak=;
 b=mDxqUPrTfkPJT+Q56otIFxo3rpbxAHCTq28QGLJDIKFfVRc2v8YCFp1DpT8UbUP+b+X/Zw++EXFMCPxRxHCo3+FOedCNyBqFOpzAdW/APkEExmGbSBXSAMhi6O7UzLnwXK8OWXhO336N+2AEkfgCPDloJ6c8yO1s7XyW9U83qzY=
Received: from MW4P223CA0005.NAMP223.PROD.OUTLOOK.COM (2603:10b6:303:80::10)
 by IA1PR12MB6385.namprd12.prod.outlook.com (2603:10b6:208:38b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 09:12:21 +0000
Received: from CO1PEPF000044EF.namprd05.prod.outlook.com
 (2603:10b6:303:80:cafe::ce) by MW4P223CA0005.outlook.office365.com
 (2603:10b6:303:80::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32 via Frontend
 Transport; Mon, 11 Dec 2023 09:12:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB03.amd.com; pr=C
Received: from SATLEXMB03.amd.com (165.204.84.17) by
 CO1PEPF000044EF.mail.protection.outlook.com (10.167.241.69) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7091.18 via Frontend Transport; Mon, 11 Dec 2023 09:12:20 +0000
Received: from SATLEXMB08.amd.com (10.181.40.132) by SATLEXMB03.amd.com
 (10.181.40.144) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.34; Mon, 11 Dec
 2023 03:12:17 -0600
Received: from SATLEXMB04.amd.com (10.181.40.145) by SATLEXMB08.amd.com
 (10.181.40.132) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.32; Mon, 11 Dec
 2023 01:12:16 -0800
Received: from xhdsgoud40.xilinx.com (10.180.168.240) by SATLEXMB04.amd.com
 (10.181.40.145) with Microsoft SMTP Server id 15.1.2507.34 via Frontend
 Transport; Mon, 11 Dec 2023 03:12:13 -0600
From: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
To: <git@amd.com>, <michal.simek@amd.com>, <gregkh@linuxfoundation.org>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <linux-serial@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<jirislaby@kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <radhey.shyam.pandey@amd.com>, <srinivas.goud@amd.com>,
	<shubhrajyoti.datta@amd.com>, <manion05gk@gmail.com>, Manikanta Guntupalli
	<manikanta.guntupalli@amd.com>
Subject: [PATCH V4 1/3] dt-bindings: Add optional gpio property to uartps node to support rs485
Date: Mon, 11 Dec 2023 14:41:57 +0530
Message-ID: <20231211091159.58564-2-manikanta.guntupalli@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211091159.58564-1-manikanta.guntupalli@amd.com>
References: <20231211091159.58564-1-manikanta.guntupalli@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044EF:EE_|IA1PR12MB6385:EE_
X-MS-Office365-Filtering-Correlation-Id: d5b65ebf-3557-4aa6-812d-08dbfa2947e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	hnr7g6ns5PRDOt9vJrI/CocWq9UVUdeLIALIt4Qa+FyH5Txtw01gMf4QHqr//B0h7j2iMPmPuU2ySmXzvh7hYQnAwVHzOuLjDsepvy6ANObYygVFROxqBRTj7I/NvCkDrYeIiPu1BB2ivd+tcqblnDfFyaPRH1oRDmfWqez2tbM0YIleIM2ZB/RGd9DnurH8FVUJYYJm6BR3/5spnfaGvpD1L3y9gBxn7miQATrE4UyI855VYEpeZHsDrRbFwJiPvXSJdwYsVvk82LqIcVsH79m2gss26uVKODsDYETthdhpkcT2yc3kn0zwp7ubY2X+2iCeIHBpkfyrxZIbqzxTu3xcl4anP6GSYnk4l61WBK+hOgvcsc1K2nOxkQlieOgmQOo4vwG86OLfzdwJFNzmJdoFgNOGU1Jheyn5YCFkcBRlk6W0fGpPBOf5S7j4olE4Ps/Qu3Lc1QlwijIuZ0B3jxzTYxln9sIOWtplAYrKokJ1EKktQKTU6g0JoBDlMxgIZR3FauiFxzCCw9JrYTyLs3fcnvHEzoJiks1R6kTvXXmmvcLUAh9R+nalYKR+0zc0HA8UqqIlsIvAX7eWCLDGLJ8FJF7cXI11/0yraeHpdVlyyjzsHT1+L4XH278frL4uolpfaaJXZs3oJZY8Y+so/wmI3Hv+mb2n96o4n+ckOZLkeUwSj7v4wMY/lwPI/NuJw5+8yTm318UDC/zTep9GsWABJ2Vbgxjg+LLkJ/P+L35MhemiE6Pgj3Ft5NnK2hwOccvlskValxad+A922Ch7cg==
X-Forefront-Antispam-Report:
	CIP:165.204.84.17;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:SATLEXMB03.amd.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(4636009)(376002)(39860400002)(396003)(346002)(136003)(230922051799003)(1800799012)(186009)(82310400011)(64100799003)(451199024)(40470700004)(36840700001)(46966006)(7416002)(40460700003)(2906002)(41300700001)(36860700001)(110136005)(36756003)(86362001)(82740400003)(356005)(2616005)(336012)(426003)(1076003)(26005)(6666004)(478600001)(47076005)(81166007)(966005)(83380400001)(4326008)(5660300002)(44832011)(316002)(70586007)(921008)(70206006)(54906003)(8936002)(8676002)(40480700001)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 09:12:20.8230
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d5b65ebf-3557-4aa6-812d-08dbfa2947e6
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;Ip=[165.204.84.17];Helo=[SATLEXMB03.amd.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000044EF.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6385

Add optional gpio property to uartps node and reference to rs485.yaml

On Xilinx/AMD Kria SOM KD240 board rs485 connects via TI ISOW1432
Transceiver device, where one GPIO is used for driving DE/RE signals.
With rs485 half duplex configuration, DE and RE are shorted to each other,
and at a time, any node acts as either a driver or a receiver.

Here,
DE - Driver enable. If pin is floating, driver is disabled.
RE - Receiver enable. If pin is floating, receiver buffer is disabled.

For more deatils, please find below link which contains Transceiver
device(ISOW1432) datasheet
https://www.ti.com/lit/ds/symlink/isow1432.pdf?ts=1682607122706&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FISOW1432%252Fpart-details%252FISOW1432DFMR%253FkeyMatch%253DISOW1432DFMR%2526tisearch%253Dsearch-everything%2526usecase%253DOPN

rts-gpios is optional property, because it is not required
for uart console node.

Signed-off-by: Manikanta Guntupalli <manikanta.guntupalli@amd.com>
---
Changes for V2:
Modify optional gpio name to xlnx,phy-ctrl-gpios.
Update commit description.

Changes for V3:
Modify optional gpio name to rts-gpios.
Update commit description.

Changes for V4:
Update rts-gpios description.
---
 Documentation/devicetree/bindings/serial/cdns,uart.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/cdns,uart.yaml b/Documentation/devicetree/bindings/serial/cdns,uart.yaml
index e35ad1109efc..d5dd4e92d1fb 100644
--- a/Documentation/devicetree/bindings/serial/cdns,uart.yaml
+++ b/Documentation/devicetree/bindings/serial/cdns,uart.yaml
@@ -46,6 +46,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  rts-gpios:
+    description: Optional GPIO to control transmit/receive.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -55,6 +59,7 @@ required:
 
 allOf:
   - $ref: serial.yaml#
+  - $ref: rs485.yaml#
   - if:
       properties:
         compatible:
-- 
2.25.1


