Return-Path: <devicetree+bounces-267779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDJxAshunWk9QAQAu9opvQ
	(envelope-from <devicetree+bounces-267779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:26:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 293DB1848CD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F9E9309B089
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EFE369201;
	Tue, 24 Feb 2026 09:21:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022081.outbound.protection.outlook.com [40.107.75.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD31F20A5F3;
	Tue, 24 Feb 2026 09:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.81
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771924878; cv=fail; b=p0oKqah1FUlG5JYqG+/7VZa+jZBdJbjVhVA0oSH0wRJq8w+mhTejFUh5k3Zs9PKeYEiIu9BzdPPl48ulRuaRI6gBAEgY9RW+pwenqmu+99ki4RYsojyv3tsKBWxEVuNp0iQS5zOp0hgcVuUtdZEmsG1VS7j5O5WahgyWTbPxrR8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771924878; c=relaxed/simple;
	bh=n23VAfZ0fYWvbsFN1PIExBwKmy1ecvLQU7UNVZqHzoo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=InM8/k3VWxiOXs3acoNhve9uB1t49lgIPySeb7pFjR6hDJY/gajfkJKApKvGdexnIqKxpZvecLoVln1Fk+NdvLqLCRd62LMMHPPt3gIzGJak9fOfraZoqnOzG3Y8ZUZUAWDVlibXukSjk4F52AnoRK2prEQqpcdjRZEa3bjrEU0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gUrEQeZkjhIpDuk5FsCW6p/hOD28S+KCLZUJmBm2wMVmYc++RTK75s3+5g8mkZVh8UILgYVpn7NQXvv1PnWlqCDHZP3JCn8N15CtDwIZwt+PQ6DrwQAqR21ryixu47LHqE+uBq6iKWM8hnxBFIwLuq4Y29kZAViifHPQufsExUmQmifGCM1s/A5GjCX2N1DOrSQ30sREBQOV/iK21syjrlpgQG2I1rFlPUIalqO5lFDfbZRLNUuOstOH8RBSs9nDhNDP3mjJB5AwU3KBvFjTLYmI7es9+oLdysF/4EjPKDW0L6odQFmSNy9zB60+IR/HjiCpesjVs3NZq70v6AgNKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SpDbCuK/g1lKjtT/9XeCqkJmcDgjO7aNH4btcOXV42s=;
 b=Tfps/zEM/BHVFAu1qC64iqMQJPmof093sojiZbxRc/1AmH/px9llkkmOLpAAv8JJyuuMBgPW7np2h3OTTQq2x40OWGZ0kGui9ma2lz34pdP6HLOKNo8tlfiRPM7rImfvS4dtXlfxCCeBY7/74ZsLUmN8IK3eDRdAjvP+xlquB7/rWvMNKPyoz+SAyGU5N3s3rX8RaIwfuLMboIUULO1VfRfftLDvRpl8tBC4/Irin5CkJoK8HlVWDiTTr5a22HryNv3mGoLX1XG7Q4P47e84PVC6vb3FwJrkX421rShiTfH+zV8sikBOGEPwvNeQU5EQ5RjwXpUY7c6U21vGKAAUEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR01CA0048.apcprd01.prod.exchangelabs.com
 (2603:1096:300:58::36) by SG2PR06MB5336.apcprd06.prod.outlook.com
 (2603:1096:4:1db::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 09:21:13 +0000
Received: from OSA0EPF000000CB.apcprd02.prod.outlook.com
 (2603:1096:300:58:cafe::1d) by PS2PR01CA0048.outlook.office365.com
 (2603:1096:300:58::36) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.22 via Frontend Transport; Tue,
 24 Feb 2026 09:21:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CB.mail.protection.outlook.com (10.167.240.57) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 24 Feb 2026 09:21:13 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id D394640A5BFA;
	Tue, 24 Feb 2026 17:21:11 +0800 (CST)
From: Gary Yang <gary.yang@cixtech.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	cix-kernel-upstream@cixtech.com,
	Gary Yang <gary.yang@cixtech.com>
Subject: [PATCH v9 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Tue, 24 Feb 2026 17:21:11 +0800
Message-ID: <20260224092111.2198005-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260224092111.2198005-1-gary.yang@cixtech.com>
References: <20260224092111.2198005-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CB:EE_|SG2PR06MB5336:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 77a3f0e7-cfb4-472f-38ee-08de73860e1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?izPomAByicJWgvbxDziZRr9LtwP//RcjIiDPArLCU9PM5oWa6NObF/ShJbZU?=
 =?us-ascii?Q?56zKhZker68nNyI0mtCqrkAXixMuockKD0STFi2QnKl9LFVdMTT/V02iyFud?=
 =?us-ascii?Q?0nZ65aUsW4RGVuj6Gj1hNpCulMpC2YtBSrsf1HQVYCsjyRoCA0CgnoWo//5O?=
 =?us-ascii?Q?PZm6w9jh7M0nOyAoFcu1EyZ6CgDu/QNSOUCALEFg6itlYV79FpvyX1sFcfOG?=
 =?us-ascii?Q?vODu/bx0+wsrdlOX+HbBP4IYob+rch5ZHaKW0mWbFCoW4+i+z90rzlOUkcnI?=
 =?us-ascii?Q?Mk3D9228t7tRwmLQZ65ME64YqWXCA6IAvdVMXhw12nOEcw4MY9ItWNRPzwar?=
 =?us-ascii?Q?aV1PtOZEsFp8LsZ/QqlWZ+aFrCTAqEnC5nHCUT2n2GFqxMAiWr2H71clg3qb?=
 =?us-ascii?Q?bis0xRP92ZKioilvWy463JTj1143pIatYgb1y67uC0bQIvd2FeO62ee5WqsL?=
 =?us-ascii?Q?N2B9wwRoBCAegH+4kZJUqFy3R0CrlgvFem/Sq6Dj03iltbQpNZ/207FYpni+?=
 =?us-ascii?Q?HmkQEf04QpUFW6xfH3kZ/yEQu/+I9knNeViOtARBf9W7f5XIemLlbDJIUIhI?=
 =?us-ascii?Q?ZcBuUyxYFqbhnXpFrHK7LMeg/X1lkwonAoUFz6885aNV4AN8O0o15QmuHFu6?=
 =?us-ascii?Q?UK+GB9P1J4xdGCjrvhdjD/guYmco/nDfYKIZhzohsIYE3vA7qIf8Qifppzzp?=
 =?us-ascii?Q?sZrdiK/M2e9gztBRU4AVi0/BySpJzNxW0P3hPFXOgVyfN9ba28FxHwqKb9Ob?=
 =?us-ascii?Q?514Bygcj4XInNZj8B1C4rHwxLZ0fehsup+AhzizFiCPZ0NmwNyzNpc/ijnK3?=
 =?us-ascii?Q?6ELT2IhcQXMegAajszP/ujgVuhSMBhu7oVPgs/rd+RrVMaqinSUCEhHEZUqi?=
 =?us-ascii?Q?WCuTgSFDPhvFN5j6QBaZj76ROimnjpUOxCLuGH7YUvEFC8/kVOs3wVE+WeQ/?=
 =?us-ascii?Q?laSbHIhPJc8bFAmLnHq7rRl0L2VeZQkTCSBa0xpXOrx/VEY8I8SgMmax/+Zc?=
 =?us-ascii?Q?PHN7mdOFOyar8AOUr9UOL6RAhgGGNdMZKTNPZaoixSOEI6JCvbbRzpunCXFL?=
 =?us-ascii?Q?eH/KcInNpCjHx8lZzDQwENOlPVmgU5/LgXuAqfq6QfYBBPabksc3vzTu7mfN?=
 =?us-ascii?Q?BzvXsR5NhRPMVpu+rtsVZ57ZPSSnUQ4TBfaq7vt28UcF3NGOt62YwWdOdmjh?=
 =?us-ascii?Q?ZpzcO6IUY3LpAhZFpcpj4aryaJCiLtpE5j7ZmTt1EOMnS1lYvLKgbLx6iztO?=
 =?us-ascii?Q?FQ7+rMHYki8RbqmPrUj5BiAz2he3yCJLyzSnX/yRy6TbGaUNybK41simxIor?=
 =?us-ascii?Q?YzbgivTtgQWFhG7tdyyvijTSfwsU1rCYHHVocAXabMk5f+HBj/+1o5aWA/py?=
 =?us-ascii?Q?8/h6jMrXtj4UuovIGBzCJA5jlnXVCaNmKyMuybxybUrbYfeHg3CGUCwclQBe?=
 =?us-ascii?Q?cIAH4TP0QUbvUSZd+ICCn5wSnd5QQLT7Msre5xfktptHjqCwvCwzQuEWklRX?=
 =?us-ascii?Q?QjNDAiRQiL+VfJj2Yj9yXBeRQBk2C6WfIRYhDhlNO7JdxGuLiU7St+dVl0It?=
 =?us-ascii?Q?4zfn5VX56iP3QgAXDU8/UIYyBC86rFmisSDN61JX0EuZbzxMlfHQohGEBzLZ?=
 =?us-ascii?Q?OX+FNwoMCreeaaTknF/thh97/0V/f0GK2J1PmS22S3HrEYOKoeGymvv/NxLH?=
 =?us-ascii?Q?XYD9FA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	WUNDpXLv2V8cZqhnFM3eQhXk0+RV/UlRDKJPfPBXdJUCTK2CW0TCEMdDie6UcXwGB6U+7KclZxeB0Ybq6et/pXg2azfrvmiWOysP0gyMDngvrBg2W8PuDWUjwmxITfdauHzfQ29jnKNKEXiKhVK5Yx7hG80PuUsVQo0gYn9kkI4wW2LRkD3dWnZ/mTFg9CGVnln8Mhi8MfrYN5J+M/HKnqwXQLMeRpvIWrSgkJu4CWCZY1dJC+a8siA9IX/bCSM1w8o9iLQjT1SiQG/CH0ucj3rQn+gZEJg5JbSRA7ZD3SsTI8RF3xqmty1/eLney/+7eEt1NyHPjvji8Ict76MqIMdFeC3UbrruF2cSJdda/vDlPptCKLywl2t0EpYwA/OEDnhjt6g10cgQ5KeX/dhJ8lUJYlCDhCdXmQnSH5Kxz+d2UW9YHpEht5EzoVMv/ZCi
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 09:21:13.0187
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77a3f0e7-cfb4-472f-38ee-08de73860e1a
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CB.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR06MB5336
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
	TAGGED_FROM(0.00)[bounces-267779-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.966];
	DBL_PROHIBIT(0.00)[0.63.161.16:email,0.244.63.88:email,0.62.143.160:email];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cixtech.com:mid,cixtech.com:email,0.244.36.0:email,0.63.122.0:email]
X-Rspamd-Queue-Id: 293DB1848CD
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..a28b877cced2 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,12 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-control", "syscon";
+			reg = <0x0 0x4160000 0x0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +574,12 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: syscon@16000000 {
+			compatible = "cix,sky1-s5-system-control", "syscon";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


