Return-Path: <devicetree+bounces-306475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wVRDBEV/IGph4QAAu9opvQ
	(envelope-from <devicetree+bounces-306475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:23:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B6263AD1E
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:23:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ti.com header.s=selector1 header.b=b5j6wV2X;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306475-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306475-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E82E43020862
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 19:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FC548BD26;
	Wed,  3 Jun 2026 19:23:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012055.outbound.protection.outlook.com [52.101.53.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB71481248;
	Wed,  3 Jun 2026 19:23:36 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780514618; cv=fail; b=JbNJUoe+sVZjoQyUtmupOnHsgTAPQyVTGoI2PYCMMjZU9PnB5NT6bsZ5EmdqfYmFiWPwC1w8Wv+OnHpLjuLoDHVZMTG+f6xd1O8opvFcKiTdlSvRhF+hxvc/nFPUd+hgisTvZ7wWzxxS+JgIEczf1gvufS3OmdegF8O+pqZjKb8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780514618; c=relaxed/simple;
	bh=XmzB7LupIQW8Mg3ZXm/U+1+S8nmnElF/SX8Inq/ENLU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=B/RG9v6Un0OSx5NUFAZ4Hw4KenquaTS6uScT0upE7IyNqO9e90T7EmqoHpXlQDIUtVDQ2batDW5+WlB/izPB1e2MMS5tEdBvJN0Mf44MfpLLLZB6dGWLe8JhDwMmXJWLFsNyMysCi9ySnl5Yip3GRBXvbOnptdL0B+fPbf13/+A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=b5j6wV2X; arc=fail smtp.client-ip=52.101.53.55
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bE0T8Kf6r1UPm9SHBRyuvpftbZVsQVDIDRMelkG/NpQuLFkrfEXUVublK36syagtaCACHzB65BIBc1pVd30QJeJWTcxvt/zlHXr3RdsfTZ9U7eT4E8k8qg0GSpMxmBUIEd9cgcc4AAVTdAzxeOh3ZU1p/gg8sxxH9JsgeG15sGQsLKwxMqV9GuLP+EyWZyUfIWnlhcfsLbvfjkDkC2vaOImeJjUNPpUjIlBTHyO/4BaxGqPW8aVRbGabEh+J8obFDULxWaLD5YW5wn32bHBB3woRugM3uA4k4TUGrM2k5xtTDOAvLcKfBV6jZ2CHasOCXh61wKvly9uUUlroN8a4Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T6wIzk1StstHCsnsAzgLwnJ8Jo32GyZZhgfGHgPMPDo=;
 b=Tya00EsrVzWvQQC9RUdqZ1lI6M49finsKDa1+c/1Bz8ilHM9sSEhBJeHoYbdSh5Ytvca16GuX3IgFxPn4HuQ3EIEPtdEeGgGkkgJSm2bjKrsoyGqtSvPVXXaXjadt7uSdOec9cvIxBMQKOLvASnucWE+kOkCfJvle+2RUD6fIPBiVp8XtF2lONcdYRKxSieJF2IRPu8B7kILvqAzfMbEM23j9e9+8yBkP1SZgUPcQw5bONoUU0DpKRzbwuA3/nlg2Phjw8fHUicopxQ1M4fJeqN5RxZ1AFJnGA/JSXeTfk/J2qJETiuIoxzy4oJj40+bOT0Tj+wwIhxkq81NyQPqiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=microchip.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T6wIzk1StstHCsnsAzgLwnJ8Jo32GyZZhgfGHgPMPDo=;
 b=b5j6wV2XOgTy4qGAiOzfgq/I+hY+4E0m/awWfSBGBH+Ia2DdF3+e+EoRhXP6S4oHWmw1s4nPRDR4FN3S/8O6gh59GV9BUMK39mhqq7MZBbLDZo7p8hlElYnxw98+ETYYiL3XXuX7E5TF1voCwpjxXnp6uCw5mC1X6baR6VYlqBM=
Received: from MW4PR03CA0264.namprd03.prod.outlook.com (2603:10b6:303:b4::29)
 by BL3PR10MB6018.namprd10.prod.outlook.com (2603:10b6:208:3b1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 19:23:34 +0000
Received: from MWH0EPF000C6187.namprd02.prod.outlook.com
 (2603:10b6:303:b4:cafe::a6) by MW4PR03CA0264.outlook.office365.com
 (2603:10b6:303:b4::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Wed, 3
 Jun 2026 19:23:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 MWH0EPF000C6187.mail.protection.outlook.com (10.167.249.119) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Wed, 3 Jun 2026 19:23:31 +0000
Received: from DFLE210.ent.ti.com (10.64.6.68) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Wed, 3 Jun
 2026 14:23:05 -0500
Received: from DFLE208.ent.ti.com (10.64.6.66) by DFLE210.ent.ti.com
 (10.64.6.68) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Wed, 3 Jun
 2026 14:23:05 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Wed, 3 Jun 2026 14:23:05 -0500
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 653JN5Mq2372249;
	Wed, 3 Jun 2026 14:23:05 -0500
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>, Bryan Brattlof
	<bb@ti.com>, Jason Kridner <jkridner@gmail.com>, Robert Nelson
	<robertcnelson@gmail.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: ti: Add am62l3-beaglebadge
Date: Wed, 3 Jun 2026 14:23:03 -0500
Message-ID: <20260603192305.1347908-2-jm@ti.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260603192305.1347908-1-jm@ti.com>
References: <20260603192305.1347908-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: MWH0EPF000C6187:EE_|BL3PR10MB6018:EE_
X-MS-Office365-Filtering-Correlation-Id: 53fc0b10-74c8-406b-cb65-08dec1a59923
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|7416014|376014|82310400026|36860700016|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	+fBhuX2mJob/fNSUfmhcV9+qNIhESh+TmMt6bqc5hFTs55kAOx9+z02TlI7XoqXk11Me0cktn0xPxhvsuufhSfgD9ScW2/oGzZ38+L36aQoXwogzvKHIuNyzYCcUtqTk2s5gC52pyzETY3ElcqDx0lNL5hoS6EE+pFSLN3efkTGdvRCVskhzrrVnJYzUz70H6UZk+0KrOsNSS3NPZE6dVxuSy5kVcJT63Yi6B6WM3DjHghUMHCVdFAFl3W2QJe61VK+Er+iF4BsYSaRDEt1IVaSU27U2BlnSsqdjCAbzbTICc/Sl1Vdx26hsI3bZHhZ0sKy3xLWIHisWohMNxoxsZMa9VxnXkTu+pDgIrKP90ArWwgcYkN2M/ndoc4SSPKaoSEjp/Mh8ZmDc7pXLyc+bDpu773bm41MmY4X0yzfZ1JHRzfv1OB7ZIKSfj+AHcmkVEYgOzhAgZi1wD/6x/CFQk1HCOxSH4+A9JrfWn/0yC5n5QgeyQ3D/sS18JTUGG/7HCX+9Qldvsj2QZdRS8IUxHYxjf9tJW34FT47z4qB0elGWWxFy420XDOAdws3Vh5ENmczdHIVOlr876e0gP/mQIwDf3EY03nD9v2iClAv2JqnWjX6r5MKOQWn6wQ6LbpOCMwMhFTLzeZuRrsJFEvpaciCkiSrAV7Qx+GyFApFEdM4895Cz9/FHVPFhbnGMunLorRvY6xNde0OGsEutpVz2bwR1QdsJAG+6+geL7Ykphy0=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(82310400026)(36860700016)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	tqm+hpvi7AjbigauW4iFryuOPIQRMaIYyVq7iiEttmW0YB8SolRrw7yJhtvtwV8eEwraR4PUjzhxksAmOYSQKrX6+WL9nPLj3zKj1hRQ5tTwfGyXVBiI1PrJiqQEV8B888WjAw9wQ0uLBLxINxC2LPXLPpfmPM7nWOchoTf/9KKwY9bbbMdr4a6S1LBRpJfzsCdvUGcLUbhi6/Ql+mhaOWKfIvdYTgv3+lYX24qxvzD+UKF+PGYmrz0CfHjjGGB3pSmT5aWd1ZxVtZLORC4TM5ismpHrdj854qbldZgFqy+QsXjTsftk1mrW0JHL0K3/ckbwnjBsWOMJkHMqneZVE5NTX2uZVcoCColX0RbyLM4/SuApvkCHRQzMwoew1oW9QhMEhG1q+2X1LopWSzNgfakFU4nXYbPe9F2lvnyLeS3wx9KFHYW+GInZbwXSAcAT
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 19:23:31.4920
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fc0b10-74c8-406b-cb65-08dec1a59923
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	MWH0EPF000C6187.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR10MB6018
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jm@ti.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:afd@ti.com,m:bb@ti.com,m:jkridner@gmail.com,m:robertcnelson@gmail.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306475-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,ti.com,gmail.com,microchip.com];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:from_mime,ti.com:email,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93B6263AD1E

This board is based on ti,am62l3.

https://www.beagleboard.org/boards/beaglebadge

Signed-off-by: Judith Mendez <jm@ti.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v5:
- No change
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 2a6a9441c23de..d9cd3fb712fdd 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -40,6 +40,7 @@ properties:
       - description: K3 AM62L3 SoC and Boards
         items:
           - enum:
+              - beagle,am62l3-beaglebadge
               - ti,am62l3-evm
           - const: ti,am62l3
 
-- 
2.54.0


