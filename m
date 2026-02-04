Return-Path: <devicetree+bounces-262466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GViGcCpgmkMXwMAu9opvQ
	(envelope-from <devicetree+bounces-262466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:06:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC89E0ACC
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E0E2D3007A47
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D7D26E6F3;
	Wed,  4 Feb 2026 02:06:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023142.outbound.protection.outlook.com [52.101.127.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD731EE7B7;
	Wed,  4 Feb 2026 02:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.142
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770170811; cv=fail; b=WpsVrwZwUrEkkiz/G3aiLn78qfUO/dOUsUjMPXSpIrQwKdtajU6Nw9LNhfCErUDsjTKXApCeKKXow78opcPebqJPIc5cQ5i/+pMoEp/inW7Ty/MGkFTXp1QpdD8of5K1+zmy82QLYQFSnTaAa5dNOOGdBIaM7aVtP4TTakOLvRk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770170811; c=relaxed/simple;
	bh=2UPgctiP2BnVt+PwjeHKHknYYXwTEo4Z5Sfe/yc26QQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S1iaXgQBvNaRlcZMQEdgu7ZMnJBu7+gw0Wy7tXx06Pq9DhX+qAzBwb+nyl4zBhHrpbqEKtA64dAY3cx0NyOFxoW7SdoAXAvRV93iZvuCev8vkurNmhFfv3vePJO3fdroBDrpd39x5qLi0WqrCfly6x2x8Y2ABhD8EGNhpTXKWjM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AowMmUIq66gHSh6dwezvjhjagxYId5zXiY3vRp+aXnrieaMNWV+df+Ow0nUU5EP4vCliTPdS4FNOdmHbxP9xnLIIlfquGklwoICxuViUw5BHf3fr8103EDfnhpiRGleTXav6EqXPxnNNjfKcUf82c4J3Ir0audItwVFbrLL4XzTZoWz1BIh6AronbXqUGhuFtqpFP5kxBgepZB9Hki4EWVfERX5ldlg61D6EtwJyXQ5ntmjJUlCQ8C5fKyQHgWe/W22XJ4zmoK8jLGuzODjR02REZ2f5EF2WlAqRWwHvf3RhooFjRfQ+SMtevI7AzPzuUVSELPrEKW86VxH1kMEA3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=641mfZC9UhARD4jrIgtik2gClfPhuW2WKmijqdYnG9Y=;
 b=r0WrQ9zhWVQmnIZGhAnfI0+YE3p1sKwRriYZATw7fS1ZjUpwsvQeq2krcTHqWFYVFFH0tzzZsMwTohRjFJJcsHwyfvtfhoeETjOKNEq1ZYIPPynKHzDDtQ1wCjNiJ5bp8VGbOFM1WiP0b3rbLBCW6Luj8Ln5xUl2Y7X1d+jTwAfVPCq5bMYzcP9xB+zTP1qg7sgS909cvXiMLLujvWTgejvpUIXWZsPsMf41kgvh95Labi0T+CHDwqZux3RG88weOIiYx8/wr+V2SZV8D+eBxHjBYZLvLAMwSHf6hVuioumG0ZVOovmK3F/WBdmYZu1LfpRHR/fLc0VFK3DOdbZQ1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SL2P216CA0199.KORP216.PROD.OUTLOOK.COM (2603:1096:101:19::22)
 by TYZPR06MB5249.apcprd06.prod.outlook.com (2603:1096:400:1fb::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 02:06:46 +0000
Received: from OSA0EPF000000C7.apcprd02.prod.outlook.com
 (2603:1096:101:19:cafe::eb) by SL2P216CA0199.outlook.office365.com
 (2603:1096:101:19::22) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.12 via Frontend Transport; Wed,
 4 Feb 2026 02:06:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C7.mail.protection.outlook.com (10.167.240.53) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Wed, 4 Feb 2026 02:06:45 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 5BB5A41604E9;
	Wed,  4 Feb 2026 10:06:44 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	alchark@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v7 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Wed,  4 Feb 2026 10:06:44 +0800
Message-ID: <20260204020644.155094-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260204020644.155094-1-gary.yang@cixtech.com>
References: <20260204020644.155094-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C7:EE_|TYZPR06MB5249:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 505bf1e8-377f-4708-b53b-08de63920c3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|32650700017|7416014|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Kt77FIQ11LUmymdTvSIQMA0n7SDRYF2sFks8iFSWPNPfEXejhr9BCNSBKdy2?=
 =?us-ascii?Q?QqPsf9DIkamw0EjI+2/0701nJ9QxvLRQ48jRb5v+oZS5c/mwc17yPm8GfA9F?=
 =?us-ascii?Q?gpMUfPsTD0QMekxDsDV3yBSVHruuA8ItHOPNQlpW99cTNxDoGnYuM27w14+s?=
 =?us-ascii?Q?UTsVzhPEiilPoDYiM5e4eYp4Fd+vD3z+SWNk0bA2MS6GvqxvYEGrHf7LIUD8?=
 =?us-ascii?Q?9LiZJxBsKk/FvBvWaqihVPkVfR1PMZSgkt02Avzmk3R++AgTzRIYJRwR8rOT?=
 =?us-ascii?Q?Qrxu46wenYG0duML0d1rxKHkTtWS4Z95TuaXcqiudLUVxc8UQMw62mNY/5H8?=
 =?us-ascii?Q?UGBiNZOJkHCg7L8PVCGD606Fn5SXu6MDDR/QLr79CBw5zQXhAb5qydETfpkP?=
 =?us-ascii?Q?p6QU7293lbz1yNkiuRUHCGjDPRgxj97Ipk5lPiQ+MgNI63T09l3aA/xjLluQ?=
 =?us-ascii?Q?E174SWnKixtptx5nNAx42MC9LDKA2Jiu1PjOn4Kib4+38uPCjhDp376p7YCf?=
 =?us-ascii?Q?LHFIw2MAi6ODiqr1LHrRoxHayrM8iVjjq2dm0gtj8U4Hh96KelksEWkTADUe?=
 =?us-ascii?Q?nFxvp88Pcbj8tmfxC4sWRKW8uPwyz+CokMOMW6sTJHZa/DEHzPKJ9VlsSO+6?=
 =?us-ascii?Q?K/JxR0bVQUDs2tadlbL56kMYdtg3mwUTKYhuiBgSHqs1+0Aqghq7Q34zGKNz?=
 =?us-ascii?Q?96pkVrndHrwISTIdLGTerFNFWrrNDD6rgjvLdcHdK8MR9ZMf+9IrXK8tHIRX?=
 =?us-ascii?Q?fIEZgVK9oEWCv5tcn3regnxWKbS0RNlMHhSTdyT5gX+5cXEe5uy+/fbkVTg1?=
 =?us-ascii?Q?gyUugO/p6RnDrKep0RqXcsO2dd3fggQ9UhJzSc3C/LoUC0KamMtEotQGVW7G?=
 =?us-ascii?Q?/rgMa8dqCSSB2g4IcNgiqfKQDRH08NwcN2Q8LWFevnZzLeWRkLuqRcRcVJ/c?=
 =?us-ascii?Q?avQpOVM4wSRDAjOZwORCz5QdWqbIOWA0heHMbU99YOYdxW34eEj5KU1v65eB?=
 =?us-ascii?Q?c+XuiLEXu0a+7itBeTGZsveZSpCfPD1QveYZ/3/S/hf0lDPpOXfk0d70HJqM?=
 =?us-ascii?Q?bCPP35G0mNz94TgNaoahqTk+q888UT1AoIAZW9XA08yCUsvz2IyJIm3c0FVR?=
 =?us-ascii?Q?9wJ4KOZRlovGVxqoPmix4H8Xx8sOiAdphuBtclA6QHfchRyMvhbrdZJOwIml?=
 =?us-ascii?Q?jC2875U+ef7Mm+zO/j2HHlGqm1DdTRSzwQRsKSslUIsyOcCBGBzC8U1LI1+t?=
 =?us-ascii?Q?avshhznJnDlzVRiwsTIH5wxdXn5fJojXDYOEuNaf22NMb8GOEnQPK/efOpWh?=
 =?us-ascii?Q?WUKmgM8K8J/mCwhBa+V5WEDrD19vUt1dGGLbSjwBF3DwnphY2B/Qf01TTXkD?=
 =?us-ascii?Q?EwjAjvQOOa6mpV1CzhpIaH10rtNrQp//72LHhjhXOWZ6DMlrUne5ScWfaEJr?=
 =?us-ascii?Q?Ln4zARKXV7W0mZ44XgjL0dmwZhujCBWbO0HYLsPsXKEowJOh2K7prJUlJzTH?=
 =?us-ascii?Q?cnno/U4xgIB4wDenf++hA3a1HBOE1pVjmOfqAkutPTllp2Q2iZrCU8hGOAo/?=
 =?us-ascii?Q?pqLGvxI0T386Xdc9gv6sxPrg7taZ2WlMfhoa2eP3zw1TcGoiASmnLMDrugul?=
 =?us-ascii?Q?8468sy6nCAG94twv+0q43sw9O/wBQ4tTljw4IEvMu9OgPlexgWVQn33AQgu0?=
 =?us-ascii?Q?NzfEZg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(32650700017)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	/eaMNeJ6PjcaQnzVAwEr5KSjW9GRK4oMxvRITqBpvVJU0LrdgEFpG2vKth0UR1zmcJkZNpAWubmiZh1LRYhsiShK8AK2Qzdlc+I6H2cmtmsRtVo0pjP4VCsIQWFjd3QBt17/3FubZ8EZA4mj2khJwl2HzDIS7H9BZmxr7c9gN69FfP65XurqdeMhW3UmNN9Y6tf+MaxlXJd7ujfEn+bx7AkIbyFveud4mOknAzo8GfAiRlWa+WRb/J8LXKEhYAu7v7o919nSRv+xfHlD/q0VEZ9rgYp4dpRV7clOUpoEkVo+Y8JWG5ewaR7U/QC/RH96n4OVMsiBYCOTQKH76j1Rs7bJCRSTLxiQ/SpcKV3BrS+FaFyHnV760GhtE6X6jIG1fRKohxVpaQRa+KbqDIvba68mnUZb0XIRuq4clgZwuhCjagKqeF6attleKQyJX405
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 02:06:45.2579
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 505bf1e8-377f-4708-b53b-08de63920c3a
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C7.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB5249
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262466-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,cixtech.com,outlook.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.976];
	DBL_PROHIBIT(0.00)[0.62.143.160:email,0.244.63.88:email,0.244.36.0:email,0.63.161.16:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,cixtech.com:mid,cixtech.com:email,0.63.122.0:email]
X-Rspamd-Queue-Id: 6FC89E0ACC
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..37dca97b6b67 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,13 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-control", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x4160000 0x0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +575,13 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: s5-syscon@16000000 {
+			compatible = "cix,sky1-s5-system-control", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


