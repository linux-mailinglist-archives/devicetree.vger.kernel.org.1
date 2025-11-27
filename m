Return-Path: <devicetree+bounces-242742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 75501C8E3EE
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3C4A34E2F5B
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 12:27:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538A7330305;
	Thu, 27 Nov 2025 12:27:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="Fj2UG9bl"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020110.outbound.protection.outlook.com [52.101.84.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DC032FA32;
	Thu, 27 Nov 2025 12:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.110
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764246473; cv=fail; b=OaykZC8kBR/DCD/KsgjrNT7zIwBzl66WGGqJ7MbT17T8FbeEBTZ3FOFAqkonejlBIvkolhFSifhDkhijl0FL5LLfQxR/3tG/06BPlsoYOecsrdW7EXBVX7wYMIn2TVirO8mdiS5HRN22EDKjMznl48NR/1bmN8bACEkoVk+RzKk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764246473; c=relaxed/simple;
	bh=jDLzFRQi8kVcXmVMv5ywwRNZFkszLYWayKsr2DTjrZA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=usV5dmN+W3q3B+Lpf8+ToLeADNSYiOxbgovmgEwiFbmyZ/jhYVIpr/GKjpBGMTDwUDjG8QZkKnCgYdMw4X9kjCUSgJbFuRw6BFr3bvbV5OjwAj2xwywB+CoqByFyb/lJSj58mV60UFd7Jn+CN3CXPaHgBO4YiHci0mZcjl+4Smo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=Fj2UG9bl; arc=fail smtp.client-ip=52.101.84.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x95dDaFFoDn7zLFR3B0yO7PyWC2lPjk8cRmhSyoeK12bTXGJ/vAlpUmXvzrExjNjzdSuV6XmzgCvqDFZuv7Kc6XOVceLDG4T56XzzuaU0kFVMFQ4g4fx3h2Be0ZZNSfLr2nqx2ZjpLztHHnedD4EUF9j6uGInz6TZqp8jyyawTO0SE+9T+1YgnGoBxCdyYXGjA1DySV2lVBEQqH0wEYFqZRsZnL6IlitHcYwAhA4LwHjwbBwpX/wxDUyO+J2KJMGy7cj+skAzxZYGOwoLaTNHAcX6vWBDaJknfM98A4P3+0PxxtFQrhMWBXAYvBORQ+2AQYLQwz/7r0lIuKqK1F2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cr4zckDyrbvQjMCaqLEBI3L6FYSkI+RNHoOkoMF9iGM=;
 b=qnNY1kGBt2eH03v5lN31/hZet7XSWXwwEo4MPqnlEYmFUioZLMTwi/BXFxOenxznsiiwEuXLME5B9Tzr5Mk87eATmRTET9uJ08UEqM2b5rozdTnJWZRV+2Wh5rph4LKuKC0EpgicaYAr6KKUWQ43q+wFD7+Dmb5rwlZeC+FSgdFEQLX8tiHRCr/Cq5sc3qUa3OtoGwHEbogJdSANt4S2CUZdYJ3qgg3WS9PaMevV4gzZDg0PuOHO3nnmmGaq2L0SlHyDt4mdhWIzuCUXwotuI/FQ6U9O8in6psIoOv+UwIU6aDTCCx4QnlycP2Nf67B3QftujVavy58tmaoVWTgb/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cr4zckDyrbvQjMCaqLEBI3L6FYSkI+RNHoOkoMF9iGM=;
 b=Fj2UG9blUEIT/I2FQn1Wy4elbdDPrCixhfeZvB0GM1kNR3iN67pPOfXrJcIy4Ub4XpROQcAQdEQLLzCRBA+MrF7zT8HpenKd/HOTdR0m6ELajqozPwEyQpmXVRdwgrrp7UjW7yWslPZeRwiPhJ/JEynU+oQoPCGRTsTtpE6LKa0jT/q2bKDrxE1Ly2nJozE7RCUDCU8Twztf2bDySx1JDEuYjldQ+JAOGwrgLaDmfm5j7l/I5+e/75TJnlkdUs5NxBOXbiQX141hvAWG++7CnFKWCPC0RbCmBaMSgVBJuiSHzNwzIMlbrHxAqSfvzSmg2CEQEVwjRdZ9rPOHLRfPmg==
Received: from AS4P250CA0026.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:5e3::14)
 by GV1P195MB2531.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:1af::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 12:27:45 +0000
Received: from AMS0EPF000001AC.eurprd05.prod.outlook.com
 (2603:10a6:20b:5e3:cafe::5a) by AS4P250CA0026.outlook.office365.com
 (2603:10a6:20b:5e3::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.14 via Frontend Transport; Thu,
 27 Nov 2025 12:27:41 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS0EPF000001AC.mail.protection.outlook.com (10.167.16.152) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Thu, 27 Nov 2025 12:27:45 +0000
Received: from phytec.de (172.25.0.51) by Postix.phytec.de (172.25.0.11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Thu, 27 Nov
 2025 13:27:43 +0100
From: Wadim Egorov <w.egorov@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <ggiordano@phytec.com>,
	<d.schultz@phytec.de>, <rogerq@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH v2 3/3] arm64: dts: ti: k3-am62-lp-sk-nand: Rename pinctrls to fix schema warnings
Date: Thu, 27 Nov 2025 13:27:33 +0100
Message-ID: <20251127122733.2523367-3-w.egorov@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251127122733.2523367-1-w.egorov@phytec.de>
References: <20251127122733.2523367-1-w.egorov@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Postix.phytec.de (172.25.0.11) To Postix.phytec.de
 (172.25.0.11)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF000001AC:EE_|GV1P195MB2531:EE_
X-MS-Office365-Filtering-Correlation-Id: e41a12f1-6673-4360-c419-08de2db05e64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|82310400026|36860700013|7416014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?mR/iETe/7hk7zJvWPAAfud36Mbz7WGOuppXUiQSh088+Lp2C8nRWWQ+/IDTN?=
 =?us-ascii?Q?w/6kXqgc/AdKw27UG5HJuLwYkDBBG3GvoPp1xoRys5hJtExs48OhLv8qaFUi?=
 =?us-ascii?Q?rmY/G+1mLG28Di7t/105/9FnB6ipZOpgfawuNktUgjqgWiw16BzK5GIIMwrD?=
 =?us-ascii?Q?/y/4biZ3IGlUiEi2p/pcDjCSooO7FLIEtpnFxWR/5hm9c9t3ps5543DiAyjQ?=
 =?us-ascii?Q?bohao7O7OU5I3Pe5u3cPsIuPW8PptaUqIehEN4vndvnWgHXbtpyxqJc6bCts?=
 =?us-ascii?Q?uosLALXXeIesBHDX8MCstbcMq9KlnRyOtlpMjwfK9TZZdBDji5p6ki2MF4f5?=
 =?us-ascii?Q?TrroNSg0BAuJLvOuH0zpGv9Q+vSDrisr2E/PJTyulVTeIZp1Cb4I5WD6WdEC?=
 =?us-ascii?Q?ag6BJvmABZQadhVxUM0EaHGSlueiTf3nwMdClqksN8UEFipGJAZAzQbkJn3r?=
 =?us-ascii?Q?slFIfW/2TZAqX6QPbQZlHgP9p84JkyHpoaEAITiYT+1UkqLYmdQuKNfn6Hba?=
 =?us-ascii?Q?MhjD6k1SS+10lzGrCZXU9uRjW+l1AO34+OIXkwx0FUZNt8R9Nl6MGONIAph4?=
 =?us-ascii?Q?5InLB8VCPI1pMeX0h0OumetPjDr8DhJwmTWY5outCF5sAmRZ2/gArf170NfY?=
 =?us-ascii?Q?uvi7jYNqdr4u0I23urFa0vqw+w+pS7EiBDszdaRYqTtCzk+dtikcYDd6d0L2?=
 =?us-ascii?Q?1xjCyC2qbtCB1iSKA99fbqau3aHhxDtYZOT3dVQ01R3GBCYgvlf9AdA68V0t?=
 =?us-ascii?Q?3qQMpCGTXKQAcmhh83NJd15QvS9i8m1JjqCn6Ol6wnEfnGv4YrdIgWc8jEKg?=
 =?us-ascii?Q?416z3R3UXPU0WFIwazMPP+8vPM9W15EX4JGsIBTQynBWvruSYNpSPap+KV9f?=
 =?us-ascii?Q?OKJSVN6KBYnAodJNlWAFIEQGIjh1VPPLJXXco4bN2XvFdky0yG+Y00C+Fo21?=
 =?us-ascii?Q?qvH8IfsXxbHTkF1vHY3zq/5a/2/xU5FkviTTeQl3+JyJUvKMKO8Ec9t/vi/l?=
 =?us-ascii?Q?+Atgwwm6Ojy9Ij7XQm+sBt+L3d90K2qaUKdWZfAPRoZfYyTumo4VJlz3g23c?=
 =?us-ascii?Q?w3G4/mnLUM3kNeMMYZZ55zWqjv9wbSJKea3P2CXgItuRY0TSTT7hBBQxEBZH?=
 =?us-ascii?Q?BzDaDjkGOWXOpbU/8+d4g32hXjzPHlg/DHcLGmruXsw3b4BnszDpp7rv9bEa?=
 =?us-ascii?Q?q/puIg0xd+wjfE6V3fv+xbuj/PwyiTCm+5c8qSRWj2EzXs2wxvGTTOt3ECcl?=
 =?us-ascii?Q?TqDo7IdmRwcyoyv/qC/vFbsmAq8px7di5rXzMulrJ8Z7qz9eV1qJXhdpIIdC?=
 =?us-ascii?Q?8b+pvpnhm1eVyEHsXYI9fUpUB3KiBX15wH0KlVyTLNKbk4rtrq1si2pw8juJ?=
 =?us-ascii?Q?zs0QbtknFAmTAmEAvxb8TrrGvcXwM33UEMq0uUwPrSnuWyoJndk7bg29ShPj?=
 =?us-ascii?Q?UEhYy+AkKZQUiqXkWRXvAXdTkkX68EoQxjUF7NO6Iz71BnHpz1OHtoksqIiO?=
 =?us-ascii?Q?lv+Nx093aRUimTm31n8iJt56EUFLS5ihu2Jy1UPxBBBW2RZAgeEB/Etps3i+?=
 =?us-ascii?Q?qRAoeyV3H/GFi0QJ9Ks=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(36860700013)(7416014);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 12:27:45.3923
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e41a12f1-6673-4360-c419-08de2db05e64
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001AC.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P195MB2531

Rename pinctrl nodes to comply with naming conventions required by
pinctrl-single schema.

Fixes: e569152274fec ("arm64: dts: ti: am62-lp-sk: Add overlay for NAND expansion card")
Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
v2: Add Fixes tag
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso b/arch/arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso
index 173ac60723b6..b4daa674eaa1 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk-nand.dtso
@@ -14,7 +14,7 @@ &mcasp1 {
 };
 
 &main_pmx0 {
-	gpmc0_pins_default: gpmc0-pins-default {
+	gpmc0_pins_default: gpmc0-default-pins {
 		pinctrl-single,pins = <
 			AM62X_IOPAD(0x003c, PIN_INPUT, 0) /* (K19) GPMC0_AD0 */
 			AM62X_IOPAD(0x0040, PIN_INPUT, 0) /* (L19) GPMC0_AD1 */
-- 
2.48.1


