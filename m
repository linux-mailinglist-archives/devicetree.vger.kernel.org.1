Return-Path: <devicetree+bounces-270188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KmmOn7UpWmvHAAAu9opvQ
	(envelope-from <devicetree+bounces-270188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:18:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EFE1DE5AE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 19:18:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61FE6305148C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 18:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD43330B31;
	Mon,  2 Mar 2026 18:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="o8Pkz638"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010068.outbound.protection.outlook.com [52.101.193.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8B732B9A9;
	Mon,  2 Mar 2026 18:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772475501; cv=fail; b=BBlr8mx6fm+Rud1NKm4G6taHB+t4qlkapHVmXEI1ndz/H5F1MvowQVH90rzY9vPVzjVaWDaIas7im9LbtwdI/g3XTPYbcpMPWhccU/4zQRND9BdNigsPIdZKRgvDSAJEdpkQ9Avnul3nusKxX/LUrFMr7yOUacvb2n9poqjaV98=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772475501; c=relaxed/simple;
	bh=D5/WAiSKqvak/MaM904aPVfs8Fdwc/bap6+s9WtOZAA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Gk5D1Sie2m05nifx90DOHAUuizjDCUIic33HaIK9ARnQFySEENJEaYPt3yG++1xflheup1EZzM7tN6mDprydy3JsmSddB5TC6fMMlVmJYoyVjj6mc+PCxWn4x5CDD1T8E5VHDkljzcqx0+JxXaqk3fBxQpPk3dOjPum51mwX1qk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=o8Pkz638; arc=fail smtp.client-ip=52.101.193.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xBJZ5aAB6X/m9lIBTn/iBIcDF4LBGl4a8JPXNO7wU3mlcoI3+3JBT9oZvmHmoCDZA0Qlb3bme105nkaYIVHonXB4ZlHMvgRGicAd6HZsWJ+s9ZlHUjEXbMWBL5OvQMDvgbuqp4FB5GtOAsmwV0WWRl/Fzc6gopgJCVeJmq8NPmX5YoKD8BWpT5jabmiRN2yo0jLrhwPZ9tqYL71XooQawldXNCv7OM+nyXiJr+SwX7chMa8+w+25RvbSEnrWL98YCANDVKO5CjnMa7/GXO/wX9f3EJ6VtkDxRBUIq6iY+ihn807w/Cmf93zU/UBbubYTU3kGLRb6vfV+LJoycDXj2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9XkV0bajXP+SYsl8v74dHGRyWGqSA+JU1ifYRvUXTeE=;
 b=RC1UFzUbRpzMJpHI2DAww653cAX/qe/5HEEzFNUSGnph/y8K9XvHU8Kq6dVjX/nj6/1/KDy+Emi6SvfnYZs35as4pLjq0zkAlwgH9ahYCPLxos5gS1NR3WrUmUR5BuGR/sLeWFkHvbkuw9J+CvM2WFMdkIkUK8UtjPu8LtC1Ky5ZVTfm3B4Uz9B4qHI//TVVQW1R18Dol/LowVesvc/sWWT9q6H3UeKb4YY3lczJziU+eLq5H4yat+pPi8oBZOqD8AMY5QryrInjAxE7yKRgt69Wca9RQgi2rvPNHCA3NcMdQiZHV/EfztsmdK9IMtLowanPi7dQbWrFVXjumkiXBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9XkV0bajXP+SYsl8v74dHGRyWGqSA+JU1ifYRvUXTeE=;
 b=o8Pkz638FPMb00Jp3Yw/yZrBVLdopi5Sx3bK+b0KqJ7LjEovChlrMZVNA42EecywGN4yYVUZZgNGQ49mWfFJo3luPJzQ4l7f+2o0awnz4my6DoX+YQPqW45MDnvtCadMW8GeehIbthMOVaaaKwM1ZRBTWV0q4MXX0f6LxRH0ZNc=
Received: from BN9PR03CA0501.namprd03.prod.outlook.com (2603:10b6:408:130::26)
 by BY5PR10MB4241.namprd10.prod.outlook.com (2603:10b6:a03:208::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.18; Mon, 2 Mar
 2026 18:18:15 +0000
Received: from BN2PEPF000044A9.namprd04.prod.outlook.com
 (2603:10b6:408:130:cafe::fa) by BN9PR03CA0501.outlook.office365.com
 (2603:10b6:408:130::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.21 via Frontend Transport; Mon,
 2 Mar 2026 18:18:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN2PEPF000044A9.mail.protection.outlook.com (10.167.243.103) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16 via Frontend Transport; Mon, 2 Mar 2026 18:18:15 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Mar
 2026 12:18:14 -0600
Received: from DLEE209.ent.ti.com (157.170.170.98) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Mar
 2026 12:18:14 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 2 Mar 2026 12:18:14 -0600
Received: from b-brnich.dhcp.ti.com (b-brnich.dhcp.ti.com [128.247.81.69])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 622IIA701232767;
	Mon, 2 Mar 2026 12:18:14 -0600
From: Brandon Brnich <b-brnich@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
CC: <b-brnich@ti.com>
Subject: [PATCH 3/4] arm64: dts: ti: k3-am62a-main: Assign SRAM to VPU node
Date: Mon, 2 Mar 2026 12:17:59 -0600
Message-ID: <20260302181800.445653-3-b-brnich@ti.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260302181800.445653-1-b-brnich@ti.com>
References: <20260302181800.445653-1-b-brnich@ti.com>
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
X-MS-TrafficTypeDiagnostic: BN2PEPF000044A9:EE_|BY5PR10MB4241:EE_
X-MS-Office365-Filtering-Correlation-Id: 15094312-8038-4b82-1b4c-08de788812b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|34020700016|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	Po8Cl0L9eoTTSxIR+OtXzHAzUtUzQQlp0FVtxj52rK20Ck+NAY0xXOPNpU2s01AbaldhZwPqUhdr7m0ubh2PlpvlHCqsCD2xKsQWngG4opLD5//H8yquFbUWeuDN89zupcoWf5J0/exJ4+jGCzTti0CNTBFBuuzvLIJdzU7kYwHYk3EHRy10RKmTk1WHXJE6p/y+2zWQQU0nFRsraHKnt92e9n+TqEpeh3qJGFFRsiCxXevJhYMCHOeDu5sSSuYD3GwKrBLw+rhAVjSqFXe7lD/kytl4mUDeD7HfnYSAMHOGkEp7MBo7q0W5Fj2zTIobKdm4Yr76UietRIPzgJo6GG4UQwZaRgyF2BKi+TosYL7vb/isxkbF9p5FvcW1BnzS9ZfccVHKiGXqpvl5wEosiedipCtmGVzFQZvDAtfRgBift79JE2EXEEj6HVyUskW6yVbpKLZ4/V3Fbh4MhvV7sAdxESoQJBnCLdhlQiRMvop+CVGWNjBv5zLGUZSr5LEmQBm41kW1c7H8+Pd/7IRRVWdKl6YOs89UYjH6p1a438ZxEuBTsVVpjagtFz12IzjuCzCi8r22HwVrQ9UxwQoANEWXHbdOxbz7A+OOIYR8N7Li46GKcXOn1ObArysohnKxyhiUgNrV5zya2drcQ9mMtAHXgfmRXIX+NBlUNI3eqMw7giQ7/Yt7AkNyBgPxZGrY1+7phkLGB6HYuNBq4JTPwO1+BnCk4uEjWamhUaW4dvzdneMmyHkCQF9sLun+Q9A3Y8GF9YxXLSfImv8FA0tk8YKfY8dynI3yCvIhIHrWXW99qVFF8ljI3gL/80SNz3EhAyU5GajpEVS9MO/WRUA7Eg==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(34020700016)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	1ayjVDeEs8aTALIxzO9SDYNkgxFgM/6WST7VG3fZoJtQXcL1au3Pg816woyvmiHM81s7Hxq41WmVsT9KxN0fFQ/LoIhHfVPlc16Tfot+Anrt2lFLuX7akE8mVkNr1h/JzXDKkRKfMiq20p5vsei4pugGhfwc1HDR+abVGwRxM50BXBMm1+s5K0SkVfqbzmCwt71SVvptbzpDEVSKIwnnp1FnAg3jyYryP2JUkFUeDhiLIJJqqqC66xM+I1UI3oBK8QK4iNnr2yAE3ZLJJiXNo7J/7X4KLfiNR5x9L2tSYVhTULQ9cIZDgm9Y70dK5CxWS4ut+laCrHaYF9B0YdcFX5J561ssuIqlVgKvuvughJ3Ati11+JI8IYfZgxtGQ28ptjDl/3lCxTXoxLFOZaPMtvDaDOGAMcqyKy7jTc/K7xFiLXyVYbQSp0sqQIj/p8V2
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 18:18:15.7030
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 15094312-8038-4b82-1b4c-08de788812b9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN2PEPF000044A9.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4241
X-Rspamd-Queue-Id: 67EFE1DE5AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	TAGGED_FROM(0.00)[bounces-270188-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.204.247.208:email,ti.com:dkim,ti.com:email,ti.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,7e000000:email];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[b-brnich@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

The Wave5 VPU supports connecting to on-chip SRAM through its secondary
AXI interface. This allows temporal buffers to be stored on a per-stream
basis, reducing DDR memory traffic.

Signed-off-by: Brandon Brnich <b-brnich@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-main.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
index 9e5b75a4e88e..92dd1b96cef4 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-main.dtsi
@@ -1149,6 +1149,7 @@ vpu: video-codec@30210000 {
 		reg = <0x00 0x30210000 0x00 0x10000>;
 		clocks = <&k3_clks 204 2>;
 		power-domains = <&k3_pds 204 TI_SCI_PD_EXCLUSIVE>;
+		sram = <&oc_sram>;
 	};
 
 	c7x_0: dsp@7e000000 {
-- 
2.43.0


