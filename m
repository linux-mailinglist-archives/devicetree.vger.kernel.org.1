Return-Path: <devicetree+bounces-260272-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLS9DIfZeWlI0AEAu9opvQ
	(envelope-from <devicetree+bounces-260272-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:40:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 911229EEED
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 065933025D0D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8495F34A3D0;
	Wed, 28 Jan 2026 09:36:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023119.outbound.protection.outlook.com [52.101.127.119])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FDCDF76;
	Wed, 28 Jan 2026 09:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.119
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769592979; cv=fail; b=ZZUKKeWfyrIxeWf6nyvvaNqhhiTLxO0LMP8zSJgF38w1TtpaEmNlfLZC0AzmGVSdgY6PkO4il62vE2sRqRo74mMoq8pcLkCG5mLV7WJpNvFV0Q0tj+o5xPUKzE63xR60tUaCWqHEuuetIMoT7bSiFJYrkCBDbmMXsLSKcEserbs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769592979; c=relaxed/simple;
	bh=joVc26Zp2PAyFoEeyvfmsXXOalVXpZwsGDVD/FYhU3I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Mz4WyV1GRLCUxhqBuX3I/4jF8IexpbxZbKen366XRkwJ0FWZuu9RBxPw/lXvgZvM8vo+lIgzaUjAFckC2Lw968FV0Z4guEAh8e01AmKV2zJxp14OqvUeHJzQh5FLWZ7Nvw5/NMGSWoZM9E1C/BIt0qlpDs5IqOTzZoQc9jSZZKQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.119
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j1IpCa30cKnAgBnOB5Q93WFLso/JXLPxUs30hBDnjxcM6g2F+soCoGEoLXFfmjfV5nYNf26OtCX4hvqUImEqQZ9Qp2F5a/I1W9Cva2D4ZIm+gof5sKKyVPa+77Vm8PNif9jwyMRmjXnxhjY2keVZIfu7bDyb52hagZv3eqcERqk0jUEeMwKWBYYNwWjJjRzvAts5RbA7KmB0hudkUCrTgJEJO9EKciN+g0Mf6dee/+W10UVvjKsvFIqKHZaRJV8xnR8WwW5MID4a0Y/SfTktn1KmAN8Fv3aeOmZxTan8+jyxQzSKRpztVvc/vQRRnfH3n8ZfNv+/GHQWtdInPLCuAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qgx/OZovnYaqJbXU8yLMLwe/etamtsRy8FltMyp7ndQ=;
 b=ne5xJLpWu/jrbYIx4eGLbYOlTSr/wjya9UlhpKuUA6gwb0fyHvv7PH62PDgvJ4L7N+m+BHfV5LLPqRk0l0Xl5q6XzzL4YC6w0sSTFfIJy1q21OQiLRQjIBod3yIGnKKvzc8+8Z1AZzALPqskkzzydGtStA+7W05sRLhc8dRn69BQbSQnxDtrqBddIIR0JwLWpz1ru/zOuYMh27Bw9BJt0jAJdDZmLp5zJjKU3ioILy6RLSC+cUvkhZYo9oNkx+YKt2xHsk+YvRXzkVAJt0ZWvVBcAnmn4TcozNcsNXiuaa6Y9d++iHLfqDMXoZPdVuwFMjlH/dUgICHatoBBLeNrDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR02CA0020.apcprd02.prod.outlook.com (2603:1096:4:195::7) by
 KL1PR06MB6428.apcprd06.prod.outlook.com (2603:1096:820:f6::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.15; Wed, 28 Jan 2026 09:36:14 +0000
Received: from SG2PEPF000B66CA.apcprd03.prod.outlook.com
 (2603:1096:4:195:cafe::cd) by SI2PR02CA0020.outlook.office365.com
 (2603:1096:4:195::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.7 via Frontend Transport; Wed,
 28 Jan 2026 09:36:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CA.mail.protection.outlook.com (10.167.240.22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Wed, 28 Jan 2026 09:36:12 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 269BB4350715;
	Wed, 28 Jan 2026 17:36:12 +0800 (CST)
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
Subject: [PATCH v4 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Wed, 28 Jan 2026 17:36:11 +0800
Message-ID: <20260128093611.1932770-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260128093611.1932770-1-gary.yang@cixtech.com>
References: <20260128093611.1932770-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CA:EE_|KL1PR06MB6428:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: e622345c-7274-49cb-eb3c-08de5e50ad28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?bBe0tCbngmeuB59O2SmhzhuJ/coTqjU9eT+2yZo9u7BdaL3YBvsNX4sWSIKg?=
 =?us-ascii?Q?EE8v0kOXtmXkU7zavnduksCuSq/o6NibCP+bBwU2AdaswTWJshg0ViGAOVt8?=
 =?us-ascii?Q?9uni38GFvta+QU3D1BVju1XEcINnBbnU2eSik0PnAvfC5pEezQ13jI+LHiuQ?=
 =?us-ascii?Q?PvdSvc73X4RW2OsvX3axY9auUT/A++eVyzyzNfL8kNT9Gu3jz9yVJIrQpUEC?=
 =?us-ascii?Q?JOejPGzypjXRW/EJFMKb3Vz2QSJCk4MOScEXN9X2gSuTj9BDMwixFWUN1rdE?=
 =?us-ascii?Q?WvF2tNCjls4cz1r6Dh5mcm8IKGhHRLoJtYfh5+EMgKTomEJR7+jDJ0j0sUcg?=
 =?us-ascii?Q?neLxxSOIl5Q/txMzZpyS3EMxSX0YDikDk9c8tyxschFP9L95CFg8azm0E+dG?=
 =?us-ascii?Q?e8f/McduXxQBwppWvllvtW9hMtUBFiwISUiw4kSvlii/nhSmUBiTlKk6CaB/?=
 =?us-ascii?Q?e5dV5rwz5VYLSbWf735JA1Cm5VvMvrnaVW/fG08eSjjzuuiGzAS5PfqHP5Oh?=
 =?us-ascii?Q?WiH65OK+VTJBqtNYeM0kJhXUHlQa6jg0oQVVrHG/7fY8vG1HXTwNCqeTN0bU?=
 =?us-ascii?Q?zFjRUzAlp5Ej4VKe1HFW3LM9EjABDg7Q6fnfTbp3ckwak30vJ68R58J9m2BT?=
 =?us-ascii?Q?V3TvFvUEwpTCxLxCMjWAWxpoHuTSYzIe9AD5xbKaSnd0y5ggt7ZgZvIhnERe?=
 =?us-ascii?Q?3bXyQsHdIWkAns0/2CtDU2cbxph3HyuKyqvX/yadWp+oNnUAJLDWPTcnEJ7v?=
 =?us-ascii?Q?WZGUB/8QBxTaCcGFDr+xvtzJ/SwWlhzv+YfooCRsX/4xKrvBuwpxOUxG+J5e?=
 =?us-ascii?Q?6+rRBO8rkUIw9141yGMKNy2x+9to5vDqM9DNL0OOj2EvxRetWDvsavKfuqKY?=
 =?us-ascii?Q?SQkvNhGbvDtFoKgqH8024mmX357g6LWDK4EqU8v0+itFNW0dpH0inLdkoRvU?=
 =?us-ascii?Q?hi8uRd2zu9pZ7qliUse6ZtypI39d5ho+8/Nrnm+gGyEHnVe10LC1MuJQpBaS?=
 =?us-ascii?Q?6kFXk6GpRwf9lYjgcbwpEQDBvsNoTkwN2qvmGDADy0d6eW9T3QtGrnwgzuxd?=
 =?us-ascii?Q?w5KrTp8UgY4chfQYMMXgwTi3aE//ZdlgaRxkmpQ9CKoHnOOMZXbW/9sCkljC?=
 =?us-ascii?Q?1HAhvNwKDMVg6l+SGBerKEzJPWJt/FgqQwb/tQq2Ln2tW0J//s8b/DctQ/7D?=
 =?us-ascii?Q?WinEWAGhYAWAsrk4aQFJ7h1axaNhcW+wBE353UnI/XNA3vMhUSvNO2FcQLzN?=
 =?us-ascii?Q?lt7fbUc/KCFhetxheafYDuosjMThyMKIMJwIk6LwafPPMvXm/XONANfPFafl?=
 =?us-ascii?Q?d69PfI9rJaqzw7U/07RSzwQiQ+7SK4tjEuCNiIK/vd4lSZBLZhMNBFYJot/f?=
 =?us-ascii?Q?qYBJg7QbDwKS89iXTASQkImfx2J2CTBXVzDTGYX9WMlpDAOAxB5tLv6Dbftt?=
 =?us-ascii?Q?CJfWmz0n4lNJDS8MVVAarL4OKvwGuDKOlb/J1yAt83DK1cC0PiayjG0ex6yt?=
 =?us-ascii?Q?jXqHrCpaPMSwBGAjZWNhcunzdSvkUwdci9eIIIpj4AIB6zNQ9jVVZU9HYg7U?=
 =?us-ascii?Q?oayuGyguHcsYYE1J+5TNUAVOr4/ZXsPGe3R9KC/HYsLXyyhrxTKgz9Pn4bNe?=
 =?us-ascii?Q?BQAWjnXXWAgP3C5RHAMel8PY0Ld4mKq9sO/rcyyKiF9L3efhQucIwMFMUbUP?=
 =?us-ascii?Q?VvnWNQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(376014)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 09:36:12.6861
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e622345c-7274-49cb-eb3c-08de5e50ad28
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CA.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6428
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
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260272-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[0.244.63.88:email,0.63.122.0:email,0.244.36.0:email,0.63.161.16:email,0.62.143.160:email];
	R_DKIM_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:mid,cixtech.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 911229EEED
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc.
One is located in S0 domain, and the other is located
in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
Link: https://lore.kernel.org/r/20251124063235.952136-4-gary.yang@cixtech.com
Signed-off-by: Peter Chen <peter.chen@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..45c008bf580a 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,17 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-controller", "syscon",
+				   "simple-mfd";
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
+				   "simple-mfd";
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


