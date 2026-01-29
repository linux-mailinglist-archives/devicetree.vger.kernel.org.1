Return-Path: <devicetree+bounces-260754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJ6HGNEFe2maAgIAu9opvQ
	(envelope-from <devicetree+bounces-260754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:01:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BADCEAC643
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C60D302D0A0
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 07:00:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9E5379999;
	Thu, 29 Jan 2026 07:00:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023138.outbound.protection.outlook.com [52.101.127.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98435336EC5;
	Thu, 29 Jan 2026 07:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.138
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769670055; cv=fail; b=R3MpSuhhtg+71RGRpz/J7n/Zjxm9LwJqAa4Lk2cggrNA5Ktu9RC3J4jQs63QkyJhpt4nC9oO/gbm3C5dlHb7fT95OKvdYJ7lMrAFNXvYWYFsNtITwRqrc/tJbFX3UGRi1RgvDLGmiXOI877CwTOQNEX8gWtVniIKPlZXeMoq4Ns=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769670055; c=relaxed/simple;
	bh=DiIpfDhiSfPzLwolz9DL704u/BErdtpid3u4cJfPRGI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Id/DPe/A8y8sO7ZuCA6ZiujzLMnniLFymcpj0/5lDMu9de4pt1iVALT9LKL60JMwJrhX2UvS8Kc54JH0oqJ2DHxvjxA0RDClPCHEsUwSdUpmw+dFYxgwaWSKLCt8p7zk/x3aoXEB27krRGVGOZdR1GVf0ckMh9AHkZmaUN9ORwg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FSp+e0xRyPF5J6dt1nM88Q39iUVj/ZHOfiTQ3iecw2vxYF2xTVIiBSggqQrtnLF46njcZtDlFA/0VHMTIVLaIXuuKBvsgXWqqQfG6mF5ezAnfDrER9dPjlkBA7zoF8e6vmNtS+BVGq4bmFRxC1F+bMEOI7r+zL4irv0JkrhwXJAc65AKIhuETssCH5rtVYucqWgFMs3A7mTtfdCDyFZLk7bl1226q2+lK0MuCuO/nVqffbFHKzh/yFjPtqjMnUngrkEPUELRtgmsAVE9sF+CSsiIRIL79XzcKofNA+ZDOj5tlhEjXDh3Vnhmtla9uDJcNZpR+YGJttO59KHgfm2LSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kHkI3PZzKwLnY0iIUxXr0M94trmVE4fulgah0rnqt2M=;
 b=hbnnLmKMDM38jcb1WLo8ZFtz3uCCjLZ0NgfBJxU/XNfA49P+2rbonVrj83zDQNgJI7U2bAnqMqYs6NK12++jhVO2a4lUCVPJuzsFjk05IzJdnxj9obHoMZe3+xqBehQnBeF362g0lh1q/HjgNIJU+ps1sLxCg1YbgagU6Vj/9b7lG+AGrrHZt+VhV+ET+Jo7spv8czW/97tagWYcZ3qlmq8TNJ+NSjH8+KwkiP5FtiqlOeONjvlNlMAxu68rmz7Db1XkQbsvPTnm8Twe7AWxENhvzEJI/897/AZ9GURH2oeDoKccXws/NuYG4QwnnwpX+TsX9SE2DNoEcE1/rQhewQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR01CA0001.apcprd01.prod.exchangelabs.com
 (2603:1096:300:2d::13) by SEZPR06MB6459.apcprd06.prod.outlook.com
 (2603:1096:101:186::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Thu, 29 Jan
 2026 07:00:48 +0000
Received: from OSA0EPF000000C7.apcprd02.prod.outlook.com
 (2603:1096:300:2d:cafe::1c) by PS2PR01CA0001.outlook.office365.com
 (2603:1096:300:2d::13) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.9 via Frontend Transport; Thu,
 29 Jan 2026 07:00:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000C7.mail.protection.outlook.com (10.167.240.53) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 29 Jan 2026 07:00:48 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 079ED4350718;
	Thu, 29 Jan 2026 15:00:47 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v5 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Thu, 29 Jan 2026 15:00:46 +0800
Message-ID: <20260129070046.2601503-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260129070046.2601503-1-gary.yang@cixtech.com>
References: <20260129070046.2601503-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000C7:EE_|SEZPR06MB6459:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f6595683-01f0-4fff-d043-08de5f0421cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?CsIfUaQS5Lo1icx7IeylGnvnf8FoQDux1j21g0O1Z4tHtzhlUryTXK3RH61b?=
 =?us-ascii?Q?i4k10i+78ZwF7fzQbszwRbcyA34E+JhjwgCV6LNDFzVyDfFnTXccdJvQAI7I?=
 =?us-ascii?Q?c8/io+dwuJkTGAK87r1LgYLgw6j5Jqsmz21UMBNmxImol7GUyE/icJgpDy6J?=
 =?us-ascii?Q?lurKFnwYh5vnHMXPSgx4GpObUmVx0WzWji5gHLmhsZlhJAtc8FwD221/YbwT?=
 =?us-ascii?Q?mWcCbWIka3cRWYK6tNd3mNqDsIVoi+K/Pvgxvjoskvk2g/QR4L+bDC21dO3V?=
 =?us-ascii?Q?jWhLdjc4GDP1OkzpVr/e4h3ov/s12LBwluVuhhvnWKHaFbdguhRhzsyRub1q?=
 =?us-ascii?Q?TV+0cEX+E2xu/F1TXOoxC4PM2zxgkzwXaAVj3+WISvmRA8dBsR+T2LjYy3ud?=
 =?us-ascii?Q?3DId60pXrRehB4IKBXmlb96Erpq00xpKUKp5V4AmkAX+f636fTLkBtGThPVs?=
 =?us-ascii?Q?WCOke0HXQgJCMfsUgdGPEWudywdVjR3VpViF5V1XAqme0+k0r4I53D3f7Dir?=
 =?us-ascii?Q?X+lmL2Jjfok6jgzw3i3mUBwibt+OdKmTr/pwOR853E81GkQBfUDs7eBccOZu?=
 =?us-ascii?Q?1JYMuGjGm5XCi+zsRTi3tl71whOT9zSEiGREA2Ruqe+cYatpyr+dTYMt4DX+?=
 =?us-ascii?Q?x4Hb6ArfyXMsJm1Zk08+Yfe3//UwebiUmGBC4OmceEe5c8/UGFF32AmmZltY?=
 =?us-ascii?Q?pTFsvYysxzxgJjMRjxQ2u0zHtV4lzEYQ1VPu6YAHqb10eB4NqpFflpKRq44e?=
 =?us-ascii?Q?AV1n33TfrZEc8wKncm2MoHAiPU5+ZNsPQ5S8eerPaQfig+tXGZZuxzR33aPh?=
 =?us-ascii?Q?ExJcLuWAZyeVQEoBUmqJ7C+dKZAKuClQkTY4Qr5dQDZE6hm2PalUP9qBVfbg?=
 =?us-ascii?Q?5MIWVHkL1EJ/pPC+cynws4yJItGlA1pjpU+mabW7QKYVrIyOyfh1FxSACGyJ?=
 =?us-ascii?Q?FGWE7AVs61J+OM0XEjf86Z5V7eHKpZ5DcJS8/gCVo6xkADH6QZwfqukNqFvX?=
 =?us-ascii?Q?yIvGIyklEfU0nRlYU+tf93MNghYZftycg23t/6pM5nEqsQXG0JE6PtWB8k6D?=
 =?us-ascii?Q?F4Gyf+JCUBW3+LovaSNc/8DcHfzGHdqhR+JYAdx3AR+VTfcVUVGuihRpuMYv?=
 =?us-ascii?Q?HORmpRAzHh3opjtyQoS9piStxNAP1TPm2QshGV2zb3AQR8dDgJaPyVoeRPVu?=
 =?us-ascii?Q?s2Nz1s5kfjK2+nreI+Pw0NFPy344mqsnLKtNKzEfgOcWjL53nKSvhC1UAV1m?=
 =?us-ascii?Q?ylnIZ3ccqEbPdJYHWSikIF6hQdCYVwZOZxB5xrHrH2MW4KYG+1FFZ0QUBEfV?=
 =?us-ascii?Q?MmQpoC1QYZMnNrKEFGu8229uIq5THjzLKgwTATw/O34WjwMWYspmoD3ywKn1?=
 =?us-ascii?Q?RXnQYEuA8myvv/bBKqrNCmGy12VB2PuypHyCasD/eRk8sJIlpextbt5iixOn?=
 =?us-ascii?Q?KAd6uSxqxCpL0EyWUdbSO4ZWj7Cufudmi9UyjT4QFVyDEoT7AWO/ysf0rogo?=
 =?us-ascii?Q?gyRjz1BJI9H3++hse0Zlvni+QVRBku9ZWszP6pHNQiCqI8h/joZFOnsK3DTI?=
 =?us-ascii?Q?+3zFd4VM6OJmyvlBXgZsPCuvCiDkQ8ADRu3f1JKAvfC0WGAt3daZ3PNUpk7p?=
 =?us-ascii?Q?FfnpefhebwZ4oH0aHS7flI0iB44BAaJhzgV9DU7pmoOu6tckKg3vod3e3fZN?=
 =?us-ascii?Q?FoXU8Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 07:00:48.2551
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f6595683-01f0-4fff-d043-08de5f0421cd
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000C7.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB6459
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260754-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_PROHIBIT(0.00)[0.63.161.16:email,0.244.63.88:email,0.63.122.0:email];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.244.36.0:email,0.62.143.160:email]
X-Rspamd-Queue-Id: BADCEAC643
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
Signed-off-by: Peter Chen <peter.chen@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..a72448cc97e3 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,17 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-controller", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x4160000 0x0 0x100>;
+
+			src_fch: reset-controller {
+				compatible = "cix,sky1-rst-fch";
+				#reset-cells = <1>;
+			};
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +579,17 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: s5-syscon@16000000 {
+			compatible = "cix,sky1-s5-system-controller", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+
+			src: reset-controller {
+				compatible = "cix,sky1-rst";
+				#reset-cells = <1>;
+			};
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


