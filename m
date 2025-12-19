Return-Path: <devicetree+bounces-248149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BB9CCF38C
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40C0A3015D00
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 699B12E92A6;
	Fri, 19 Dec 2025 09:54:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022104.outbound.protection.outlook.com [40.107.75.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2391A2BF3DF;
	Fri, 19 Dec 2025 09:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.104
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766138058; cv=fail; b=j7nl9IMPbYEkGe14LCzxN6k6i2Eha5Cafl4yECjFu7LLqTBMi+nzBe35VLMu6vUGjmleaZRGYP8QSRgbFJ7YamZXtA80j5K5YHiufOUTNY2UoOZBYpoShcaYaYw4UGHUcNVNcpnzesirFLYXn9vNlXtIu11KpiW474F7L1VHrZA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766138058; c=relaxed/simple;
	bh=9V2js67VanFSSNZge76yGhYGm6UA7CspLnHEDNwZoIs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Vs843OvE/Que2VoUMutqTq8qPG8zfY4uNZpHH+ls5uXr3qcxfSzY3ZdW6PJ/ugQmKUPpIrzPsIxfjPPJlN1lLMzio5YrgAkJatLNa7Ia0cMv8VhlemaYrGsK8UnPWmUGG0SI2SUz09uwXRVHhmnpWd0Rg+l/dMIX82dN3CscXyc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J0YfjYWa+sfP10NYSQW0mr5gFF5hJphQfrU2RMneJZJtbgOeIJ3QAAq9Y4IQGNsJd9Zy4hPxq1kkcZNNo+qqv4ZmNllUYdKXokTES5D2V1Sgjzvi8WSgi4c7KQN7tUmlzonvLxYqFJUDj3l0CX/2X7b2hY3aC6lVBesMol5yVL5KTFLyqjrz4gZfBI3CxEEg6+NQ+b73FUXbzKVD2rfmnQWzA8UAA69yaNSZVZlFNAR9k7O/MP9zl3qDhf+Y0uX8rpeMX1kV5IVS0OBg5l9VosTOoWa5ayrXEnk0qH2shd70w30bGqo1fOiaMqugo40MuIT8PPvckUqqJtbXGvPi8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5hV3Um3duVFZF3GZJmajALStrp1TQh/M+816wJSKKg=;
 b=HBrpLWHUt+M/OkGDmpNOKpReMUpJtfbE+ym+y5wpab0hsjJgrrEf1hAsD0FEU1clQUgBXs6ji7ux+EkfDa6FU8YkqlWNqOaO+3ygpcgWENnG+bsgH4KOgkhmp0ITsfd0nUmT9qQmwUI+OFZBFVt1+IGnOfNSj77yOsdQqtZUJOrz+EkctmDAUfKPf+NyD4zQQdzIW83o1+zpykT+x3tMyo6SRzOlux57vN0FiuyyCcUwkF1O8Vg1BJiP5+IOGJAA+hefellF0U0q7ranPm/yQKNyBZgk7TPvyqeADhI978Ef0xbiQEpjYZjnGDhnSuDDxJh4F6GZhQDwj8suGqH+Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR01CA0008.apcprd01.prod.exchangelabs.com
 (2603:1096:300:2d::20) by TYUPR06MB6195.apcprd06.prod.outlook.com
 (2603:1096:400:352::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Fri, 19 Dec
 2025 09:54:12 +0000
Received: from OSA0EPF000000CB.apcprd02.prod.outlook.com
 (2603:1096:300:2d:cafe::87) by PS2PR01CA0008.outlook.office365.com
 (2603:1096:300:2d::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9434.8 via Frontend Transport; Fri,
 19 Dec 2025 09:53:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CB.mail.protection.outlook.com (10.167.240.57) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9434.6 via Frontend Transport; Fri, 19 Dec 2025 09:54:10 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id B9EA441C0A01;
	Fri, 19 Dec 2025 17:54:09 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: peter.chen@cixtech.com,
	fugang.duan@cixtech.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-cix-kernel-upstream@cixtech.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v1 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Date: Fri, 19 Dec 2025 17:54:08 +0800
Message-ID: <20251219095409.1395587-2-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251219095409.1395587-1-gary.yang@cixtech.com>
References: <20251219095409.1395587-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CB:EE_|TYUPR06MB6195:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 31561b31-2f7d-4a74-c951-08de3ee48f45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?leHGrQajANx7nG6DxCestv0//B/fqj9OpIU/ttfVmbf4h0eFcVKAIhDdGYJs?=
 =?us-ascii?Q?Pb3JaG4SioMoQxV8l6AkhUOuVZ+aFExSNZy9PROIjG20KJZA+PiDBRUgv10j?=
 =?us-ascii?Q?sPkHe+Yp2xNRUIvsKL7q7HOvgLbSnJoAmIuTw3wPm/dHtniluMygjfztnOiS?=
 =?us-ascii?Q?6/4u3F2gPA+RCyqcyZ0QH9ER+OBC0ruAPolvHdpGj+ssuMzLkYKFK3BfyEPV?=
 =?us-ascii?Q?NjqtdX6EiE6515NEycwo1HfqbjyEQBSVqSBpLtA4NTyrZk5nnkQSTqu81yXB?=
 =?us-ascii?Q?BNnuFWK65a/xCD0cO7hY3v20zhfNlT83MdljeWu1hkIiqDDVA84yhtDV91ud?=
 =?us-ascii?Q?v6bpi45nUyGLdRKttdNq1poC6HBUGYjrGsQ5h8gvZMIYQD5Hl6pt0MICVfCW?=
 =?us-ascii?Q?F0G5LLdyDefs7N9074HEhqrXX7z0Fph7k619swyD7fkcT5j83vWAWIjvYb5E?=
 =?us-ascii?Q?k+YY+bf6xwy05iEwQggFYthTaJObVmC5T0JySsS/3wKdaufgX8UBkZYdCA21?=
 =?us-ascii?Q?XcWPVEYnJ2+zXc0HlayD+BSVgJ7xZwNQVJNFEdNOa4ccQ62xl2ykhZEHOl75?=
 =?us-ascii?Q?yKSQR5fC4Y5tZUmfVgd5oyCLZ6uhZ0o4OX6lqRNLcw6brnjOhQsl1SGYyplh?=
 =?us-ascii?Q?5uL//ZQ1UUfli+wjtNwdW7iS/6OPxn0TQ4q583CXuXQgtYTn/16tjsj+yADA?=
 =?us-ascii?Q?H9ErTPDu28/gfiAUJ9OukbG/zoBb2zRqh853VRcrEsQjMJIlSIMGfiUiHuvL?=
 =?us-ascii?Q?YITkLzeVyvZKDFTHmYNlwxeNMG6CgyWS9Pl/p+MvHns/Tc+mGSEmTt3W1rBX?=
 =?us-ascii?Q?B9LFMK07KHoOZRZcW5UkCPvHCpIFUxy2opADINfoFKaewPUUx6XXb/7IXP5m?=
 =?us-ascii?Q?Wr9+FOFW8ORqM7q3boBZhYt4frfF1v+uLKHXHYlhqJM5134rZ6plPIpJo7id?=
 =?us-ascii?Q?jRcjBY2+ftkJGGrGGtyJtxFP2RUYzysZDUBnzHeoN6c5cN52boq+1sjjrv/q?=
 =?us-ascii?Q?iQl9BusB3mCIJOjUI+UnUDIBJsV1fSXiiNThbVacMER2+PtxsQE5KwoFd7Cw?=
 =?us-ascii?Q?AjLPyoDxdjot0hhIUN0iLLAJy66vDd+iclTFCmxQAHCkBg1cTAKW5OO11dSG?=
 =?us-ascii?Q?S6O8a96XJrOiyXBGt51DHxLFeNfgsw0sACmDYrttcl1jtKXlmlQAq+8RClwT?=
 =?us-ascii?Q?dpebnCcBbvYbcMD4u98LZHDtYIZSi9fiL3DTH0W/6P1RLA1/XVICgY+fnrbA?=
 =?us-ascii?Q?qdaIo60eQ6IzHi2uDyS8SOwkYk2JLtobaQZxmGx7zkaRdc7hogg8LRFemXuA?=
 =?us-ascii?Q?X7OJkurg+boMNc9Be+l7VHxDIQhgdWmgtkEspp4BEivVxlPMHlT058392zg3?=
 =?us-ascii?Q?V/gntyuWJlnJoOqra6ob+2VstW0W5KSkexRqLCOLf0FakwL4V1qsA/pLHY4Q?=
 =?us-ascii?Q?WduO/ft+XIvufB3Os0qvHkda5hps55HUatXzHh76CfKXBHJBWWjWTiLOAbTn?=
 =?us-ascii?Q?sXEv4nYNzHawxgFSHAQQfdB4BGP2FJGNXESUyd3zIRhhyySKMHhWrhMqy3PR?=
 =?us-ascii?Q?AiptcX0yyVBC3VJe37Y=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(82310400026)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2025 09:54:10.6060
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 31561b31-2f7d-4a74-c951-08de3ee48f45
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CB.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYUPR06MB6195

OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC,
built-in 12-core 64-bit processor + NPU processor,
integrated graphics processor, equipped with 16GB/32GB/64GB
LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe SSD,
as well as SPI FLASH and TF slots to meet the needs of fast
read/write and high-capacity storage;

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 Documentation/devicetree/bindings/arm/cix.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cix.yaml b/Documentation/devicetree/bindings/arm/cix.yaml
index 114dab4bc4d2..92fb4ad7b5d8 100644
--- a/Documentation/devicetree/bindings/arm/cix.yaml
+++ b/Documentation/devicetree/bindings/arm/cix.yaml
@@ -21,6 +21,11 @@ properties:
           - const: radxa,orion-o6
           - const: cix,sky1
 
+      - description: OrangePi 6 Plus
+        items:
+          - const: OrangePi,6p
+          - const: cix,sky1
+
 additionalProperties: true
 
 ...
-- 
2.49.0


