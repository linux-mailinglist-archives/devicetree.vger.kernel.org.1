Return-Path: <devicetree+bounces-242271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A85BC88B5F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 097FD3A9E04
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5BFE31B82B;
	Wed, 26 Nov 2025 08:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="j9jY6SDn"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023112.outbound.protection.outlook.com [40.107.159.112])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6757331A800;
	Wed, 26 Nov 2025 08:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.112
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764146685; cv=fail; b=uRfz3jAaj1tO/OWpuuodP2WIDjqfl826tmlbCP5dwfaXuuwD/KrVuFoz+kTl0yJbnuxQOe/gVJDhGCU2L3+KgM1uJ5pH21CKFDOBb3ViOrE6zYN1FR7/FARF7FroicP0CVckeVRVb7GK0VDzMOo3kPARUN6QDkKBjA0/kvlJxHU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764146685; c=relaxed/simple;
	bh=xldkbnQT6y97Ij6RluQW1nXqFZkB+D35DyPdHPjQ7UM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ineurGZm6/MfWKwGf45zJuO10dqhDvtBARhwhOHKUuhWgTaVicGeVm5RU+uLOBAZ+kMOK46zMksSG32UpUK2arbcETU+yNO3XKj+uleHtQou1bPsyjEKUWawVXRgd7pMIHHKLrbynSG4IQ6qnQIIy/UXpi+XpEUjN37NLoaRlSE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=j9jY6SDn; arc=fail smtp.client-ip=40.107.159.112
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OGgWxsjUtDK/qmp0MAN1MPsoXTVwHmqGhbskZ/x13x5Ve/wfN0kET6ui1NJB3LEmVAp5yNuEY5Zt2zkd4kfPRtQfSNzMUhPC48o8VereMBKhDgofJiD1GLCjrmNjBa4BR0hyCtZX+DBhx3Ru9qw41jpj+AM53bKQ9EFf63kPMYsgJI6EhxW9P+lmMLokIT5gisq/ENAGft5iC8FWzApeQduDL2/ilwcvQ6IFNLQioFE0ALS806P51E1EC0rX7sWh4YCtZ7oM65xkcaxmAvfSAnZnq4Yhv8CnKY5ZlMwsk3wcV/2fcrpK4c5b1W7zBLhoc95UUK//w6IIcNz8CXYLaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MwUq4cTmpZZJm/Ew4nsYLGj6tDmdX0bQ0mxzwix+iU0=;
 b=MKg3adoIA2qrUQx+hSG1PLxmpwkyW2SzMtSnZI2xWzoUSGLQYQXuwhjnPpz7QPgM3RYgnDzs6lMgzw5/zi6nWCNnefz/z/HS51QKFJyUU6QIK7Map/CRuWjU/Wb/8mN/cMONf1+rpdifuwq5uVK2rs+KCVmK2Rls+ww4HhEvKqd+OABtNPW1OUdXnJpgz+PoNx4/0YVAB+fHiYT/vyRpBZje5Td+ufl1WMZh6Y6kmw5e3wEroLOd+g0G5pdP7lVcfyUwW7FUDtelEGZKgCxd+CPU5GS0ddacrHOe2+mznCHlPkEhrLTMWx4hTVSj66uJwXr/bN5dc3A1wLBJaknO6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MwUq4cTmpZZJm/Ew4nsYLGj6tDmdX0bQ0mxzwix+iU0=;
 b=j9jY6SDn+DNKbneft5nqaACmlt9P6tYktJMUcN/8oPppVwhL9r7Y9kxhWuf1EbfE1wzQgj1bHJgw/hi4pg7f7Kjt6zT4l1ngMKXeoU+wmJHFCG2aUxaX5YQD2YmcKSl2tU+aPBSz4v0rCScP6q+A5AgzGIhmxIlloxUcF/mCAlnKYUXWtGwuaGpB01lWbK5PEGFriyPq79VSc9eqClbNp9VGxO5oE6kS8ZmyQi3kcpiqBd/BhFHn/wTKYc6++6DrmYaGBkbGUEOkpkCb75MSpAJJguDA+SvTZ4vhcuz9OCzFYyGV1XxwInToiibiDnuv3hCeJZzvaWZ8bqViqHD0SQ==
Received: from CWLP123CA0211.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:19d::23)
 by GV1P195MB1617.EURP195.PROD.OUTLOOK.COM (2603:10a6:150:60::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 08:44:37 +0000
Received: from AMS0EPF000001A4.eurprd05.prod.outlook.com
 (2603:10a6:400:19d:cafe::f3) by CWLP123CA0211.outlook.office365.com
 (2603:10a6:400:19d::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9366.12 via Frontend Transport; Wed,
 26 Nov 2025 08:44:35 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS0EPF000001A4.mail.protection.outlook.com (10.167.16.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.7 via Frontend Transport; Wed, 26 Nov 2025 08:44:36 +0000
Received: from phytec.de (172.25.0.51) by Postix.phytec.de (172.25.0.11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 26 Nov
 2025 09:44:34 +0100
From: Wadim Egorov <w.egorov@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH 3/3] arm64: dts: ti: k3-am62-lp-sk-nand: Rename pinctrls to fix schema warnings
Date: Wed, 26 Nov 2025 09:44:03 +0100
Message-ID: <20251126084403.24146-3-w.egorov@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251126084403.24146-1-w.egorov@phytec.de>
References: <20251126084403.24146-1-w.egorov@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS0EPF000001A4:EE_|GV1P195MB1617:EE_
X-MS-Office365-Filtering-Correlation-Id: c26a2b1a-3d3f-4cbe-76ab-08de2cc807ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?5qFE26il2CL6+76U669JhMm6SM27frUZKv1QKrOWPmujgcXdBw5H6ETUNq6W?=
 =?us-ascii?Q?6rDZZF04bzPBd5RZR/j3DhfVjUyvHetIIFSK4zuVlim/7gHiSqhjn6vz90uE?=
 =?us-ascii?Q?W4oPheEfHPWcqyzggTkK7s35qdg20QjxTzekppegmyf/K4YRadikPDtgWTVy?=
 =?us-ascii?Q?HzRDBev/i82GMWc9HILLj92ka4z4JeMCOAbYby4tfeFHWz/pENaACi9WvNmS?=
 =?us-ascii?Q?CRgbP3IodkUdLUWzoS3Ux1a/PBgoOw3NmtqURfiZrS21+pp6DjLBDk8CQE/r?=
 =?us-ascii?Q?TzGWn928SXQAD3HOyqZVF8ZkHc56ss7U5E7I3g/hvji72ev3BOUAx93ty9Js?=
 =?us-ascii?Q?UkKpWp/Yn6irgtahqle4vznhyQa+Y/30ipHVrq4/Jv5yXSHT7xfcz0Gbb97z?=
 =?us-ascii?Q?MLKSg+DAs23AfLitAVQopxFvIIF95RZdJuaknh2ylpDGte1SPmiR5l9FZxGI?=
 =?us-ascii?Q?7oeRqu7WQ8P250pnoQPswdo6N2ddXxOv4F5oHnzIkLiNaRIGoh4E2MDLUi/p?=
 =?us-ascii?Q?8kNExNIzMQjfUZ3v5mwrL1nzVGeIvnZs80x8+4neSeoucug/wL7eSlqFxfrT?=
 =?us-ascii?Q?68bobf9TO+vVbVQ9K3gFgrcNvuCnZI0nR8ZcPs9gEzL2B/iLwNzBTOpMMXKB?=
 =?us-ascii?Q?Kmp/ylIz2rZz1jfhcmqdL6b6q9xRf1oqpIJL+lrRoBI83bZU8geuvMzvEEMb?=
 =?us-ascii?Q?vi8qU38WtAklPOvgwxQxsuiVaVuGIQ/ogktantv9adwwhSVKwbnToBcpkCfX?=
 =?us-ascii?Q?yRXO3szpFZKLnk1wraZSSxuEAheMi2YtoA0hm3gYYuO/VF7PTt8H0Q24qs9X?=
 =?us-ascii?Q?UQk67itr/RSIYGun5vVNhct+IM9Sg2OsrSD4S0oDtS44X2zDOqHQjhE+AfYi?=
 =?us-ascii?Q?cBhq2JzH4hbKOl0Br59p4cx30bDEtdywrd3IkCRsor86HVqlK46oUhj5Pf7v?=
 =?us-ascii?Q?N/2/AjXd+/lIBgYrDI/qhg6MA2nvm9AZwIL1fwsur/xsniR+72dxP/VNQ33F?=
 =?us-ascii?Q?82nC7Q0HsbFw6S7KdRjKvwVn+WPQuy13nH+iLRViaHe2lxrlMck1DpGF7W/9?=
 =?us-ascii?Q?IllHL1mt+sMXelc2zy8m5VleSWS3DR5caMJ/21ufjMlaDucRmrLKZ0JiIOSi?=
 =?us-ascii?Q?xfHpGz8mAkrdBEm+BzCCgq7hFb0zh/9Jp3ZBMKYzjLKQclFgIPbZ+tOflYJ2?=
 =?us-ascii?Q?qhtvOJyqBGZpBD42INrq/UByQywaioNI2iiXzhsbog/RZ4XI5XZQ4iiKfaHx?=
 =?us-ascii?Q?+WKC0jaHtCHY9bmsIqy2oudCYYxXJ7VnaEQFabGfaa6CpSUBUixFRWU7BctB?=
 =?us-ascii?Q?W+5zh6MRZGw4LifnLe3pMM/1+obTBE37qJe5At9k6fWx9v6xMvP+l5eM17Uf?=
 =?us-ascii?Q?OfRQ91rNUVYWdAodcLGtDjgm6Kel0dIAyOEV3Q60dFvWD//CDvDhbH+PrWtQ?=
 =?us-ascii?Q?Q6biwZfFaxypXovzpGlYcpnenxdSxP2SNGkPlwOPmlArSuJ55fdUmtj/8QCO?=
 =?us-ascii?Q?BX0IpSoDs/pkdvN0a73xAsr1PcfgscpyXUd7jl7eDfK+AEa+1WhDcRUjLeur?=
 =?us-ascii?Q?rsg5pAPQHZG4f8xs5vs=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 08:44:36.6675
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c26a2b1a-3d3f-4cbe-76ab-08de2cc807ad
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF000001A4.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P195MB1617

Rename pinctrl nodes to comply with naming conventions required by
pinctrl-single schema.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
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


