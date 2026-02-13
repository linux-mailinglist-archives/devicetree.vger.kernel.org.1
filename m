Return-Path: <devicetree+bounces-265253-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 24YQKtW4jmm2EAEAu9opvQ
	(envelope-from <devicetree+bounces-265253-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 06:38:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 78560133079
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 06:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BA02303AF31
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 05:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D83724677B;
	Fri, 13 Feb 2026 05:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="lHftERZD"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023128.outbound.protection.outlook.com [52.101.72.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313532E645;
	Fri, 13 Feb 2026 05:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.128
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770961101; cv=fail; b=YuBZGsWRZoSDBDmR3ErYyzrBwKavTlf5PURZDQ2qFW47dHXaxkRwU0taqqPmo2YEdDwnhFKEjDo/FhivsZyuFSfUH4Gh+JbR7OUgoHG18aY4adEhu6gIuqd4s7KR+dcvFPT4gXZqE6JWMB6TEj5IDHRb8RmF3eBHs/e4dQ1ZDKE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770961101; c=relaxed/simple;
	bh=q3BgKwInqGX3TFrh+pFkKO/Ze5mCH1JgILNtITiRaP8=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Fg+b5vrtvcWzBBQ/1lx7qs7FhOQHpS1RVEFc7Xi4qxOKiYAfCxpLpG47vfmBEJau5Luug/1FGnCm3kYYmfwWKZE02smAOtSC0UDc+RPgHJP3UJfk+HmWmJ+N2uCk3yrZbBIozMGFuiMCpBwusmF6Y34N3gppAMH3m1sBLjCPiRE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=lHftERZD; arc=fail smtp.client-ip=52.101.72.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZdMaMMfFs4EsGHxihq2csI9VfWbjrXljI28K5C4ezIeun14HndbkiDwnDbYYhPgfrvCL7yCm2rD7kZgbr/pUfBSt7jL9y/xDSR6OTJmBOCS6Ol9dV1ND2rjD+fbISTavIKsvxJoL5a98+jFByaCMfzzLSIZuYIDMNylFS/tghyI5wKfxCsVaGhP6LyxrkRSV4qcUoogmUxJXRjNnTt2021C9ABSfSciSAWA8xYG/lDUsHehZxWKHqmhuifAldmR1QOPNwnlhY6Pny8UoslE4H/rfXphc3FaXUY+EZvSPSS6wbOVUdTaZ30Kh3vpr8eBEf0leFK7H/Kds0IVnWt/q3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heZmo6aA9aKlebHJSn4JDKai8Wk8CblYl9xak6qAoT8=;
 b=Xv16zYqsvh/zCKyOItAw12BQzeoSIq7NfM6u01MD3bsMMCQzvDj/wC/nHcHQRZVnQDZY/x0L+M5Ayr/GaL2DA5XVKnbMuKRbvJFyxIZjDcSvSNquAvgO/unzLE2dib1hbtXkwekKlmVqfb8Nke927khlcoZ0raxJjreIdGrwk0aCy57HuK7JWYNZ5qK/60B2MlzbnLP+guub3DsyKxHKLbRWkYBhgOLt1qzzQ7ogZcd0IBrEgFWuU/WXNitL2I9NAR00lShSTTurCwkpP8qwLZOedaDBvAa54ai88/dwFcZkeBnAg9znX6JKTzvVF9XOk+SwtjETy1BWWnNdPqvnFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=heZmo6aA9aKlebHJSn4JDKai8Wk8CblYl9xak6qAoT8=;
 b=lHftERZDibp6uQ7qpv+fWXMp6C31U/jkoyPR0tpGibv+PcTy6S9UFmg7NYyf+uhZYSSv14h/veKCzAXUIaMJKvsfNaYJQNQwVZQnaSQ5YA1hHvFo2B3grDmjIopIpCO68d8x0i5v1hm7xgp5nXd7VMyHTa2ncn6lJvLUwHJ+oEB1IF5AEOxOChoVkXoArPxEntzu4ojHGj1Ep9CGYBqXTrdcUjzKXdS8ZPsZVUhwDv3ZjUxLFvmxyHL1v+4qTTpbVfnV7gO3EB6FLYSsFvrcxhvcVa6aEB1OGpswr8kqQjK1+O+uarryI38X+bDEwZyiODK2joX+wgCz8zhKsMTqVw==
Received: from AS4PR10CA0025.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5d8::14)
 by AM8P195MB2729.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:32d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.11; Fri, 13 Feb
 2026 05:38:14 +0000
Received: from AMS0EPF0000019E.eurprd05.prod.outlook.com
 (2603:10a6:20b:5d8:cafe::5e) by AS4PR10CA0025.outlook.office365.com
 (2603:10a6:20b:5d8::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.11 via Frontend Transport; Fri,
 13 Feb 2026 05:38:11 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS0EPF0000019E.mail.protection.outlook.com (10.167.16.250) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Fri, 13 Feb 2026 05:38:13 +0000
Received: from phytec.de (172.25.0.51) by Postix.phytec.de (172.25.0.11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 13 Feb
 2026 06:38:13 +0100
From: Wadim Egorov <w.egorov@phytec.de>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
Subject: [PATCH] arm64: dts: ti: k3-am62-phycore-som: Add 128MiB of global CMA
Date: Fri, 13 Feb 2026 06:38:06 +0100
Message-ID: <20260213053806.219495-1-w.egorov@phytec.de>
X-Mailer: git-send-email 2.43.0
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
X-MS-TrafficTypeDiagnostic: AMS0EPF0000019E:EE_|AM8P195MB2729:EE_
X-MS-Office365-Filtering-Correlation-Id: b002d050-4d36-414d-7f05-08de6ac214a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?rsycGlD4Dla/thd8pPiokAutu0CUkfU4WNEtp29Fz8a8503/FbDcac7xrWm6?=
 =?us-ascii?Q?J5VurT3lQHv03zp7C+TqEPaA6wYg0iwCPp8T2xlt1DOF1j8Ver6qL1SAMejj?=
 =?us-ascii?Q?2IFyaZv/QHhOhOYKE4KyBiABJKv0wVYN0Dn/gLkheER9quMcTjPTc87MtFXi?=
 =?us-ascii?Q?GltLwAK1ox74xSl4pf0SsgiVIS+N46qGjqfGwJ09kImwnzbbROAX9sRPMPF/?=
 =?us-ascii?Q?LIZVV/E1VkbUXPDLtD+n4XUuLJcP+BWnKj6PsKEqOS0ICa9HgA4aYZoRxhD0?=
 =?us-ascii?Q?NSLTlgGy8sRT9UO+QZZyKWdAVrW7hTgmHaYH+xEQc7dw7c8CmXwAsXk48z4A?=
 =?us-ascii?Q?SiX5LXcanOn9hVodWSSSWizCpEoKCy1/+lMdFncWCuldmAzkOPfM5Rr/pS/I?=
 =?us-ascii?Q?IdLrv2oLAFG1LYUBqwfTdGNKKG+o5ci6fuyi2NXdpXV/6HTOicbCRZtGbdLH?=
 =?us-ascii?Q?IUSeNWEkBNjXPtH/QRvs3EX/CW+N5nR9mrt+pPCFc5TQXmXVnLg5TJgNSj+M?=
 =?us-ascii?Q?SurUx5q14GxtpfKeWSIC7l9lOGMKRkTQaOPlhgEc3oQspurffX5dNxhX6V/o?=
 =?us-ascii?Q?CDLrsmpPD/QJR8fgzRGverYUDeNs9BMskgPu5rk4ReBW0VSo/QSTzP6pg4IW?=
 =?us-ascii?Q?cRH0JJvUI9I+T66NErqrlieyO552Z6chuYDlCRda4Zwyf7fuLaehFsIaLxvU?=
 =?us-ascii?Q?l1+07ibMzqti1XFTW839pEprWRb/DCUJc+Uqo1XvwBSXojhI3An5fETDTlvT?=
 =?us-ascii?Q?B3sfT1M2kzAH4Nf5r9G7KBtx8vuYV8nSUDuC3B8VczcC7rk1NceqF4zssG3q?=
 =?us-ascii?Q?3TQoebOeO1pyLnwDT1nD6k8pERgrvvLO4AcgaD6nm6Y34qzPNysYAlP2vJWd?=
 =?us-ascii?Q?zWL52tgW4ram2/Hn9PXg5F0VELlxhl1zlmBoUOD4LsXOhnjZVbIIFAspmkYU?=
 =?us-ascii?Q?yOg2thtJ8wVlSfU1hPeKDuybfMcvYUb/PboPWxqQPmsKuU5O19HH/A0IburM?=
 =?us-ascii?Q?ZXcSj9TJ65yl/Tf3T7gkkapg/CJRztxZiRexyw+4FzJ6sIexbxC8/wbuq6pm?=
 =?us-ascii?Q?0nCgtRqpBapk2V6I+0wN2i7FB4VLFRmc54pOEbbOagbRH5/iSvqUco/uafLR?=
 =?us-ascii?Q?8toBFGC/PNiKomXS6cYS7p4MdkdSfrjarr3NeO0Igzq2Cf16i8pfbI5NKZ0s?=
 =?us-ascii?Q?G0EljF+PJGQjajX5fnrUubQ9RUzHDAQLJTQRQeFh6IqkNs3+taMPJvlWeJyM?=
 =?us-ascii?Q?r9hzyL1ghT3aC3t6guOmvjBL4+JrhgjdbG+9DCMhacudVP6khPc3pC6Go1SA?=
 =?us-ascii?Q?xepwFaXtk7Qcz32SKim0DmS6iPZfjit3QaCmcsdjEoyKxkU1xDnYLowYkV/i?=
 =?us-ascii?Q?F7/IxHPbaNJwzqEdSwW/UfQlbiVgIN58XJzkghFvbx74mOl3pxIOP0vWHiFj?=
 =?us-ascii?Q?bG/ldAYgErC4qmjfQ9kuPKC3UhptJFY5/9ZXQSYoEvGURbXG4MLOKDts5RaW?=
 =?us-ascii?Q?wu16BcvLyV5/8vQPc0UeIW8Mq+cBqpm6irJOjrB1QnjBqZMHzbbGgMmHeDAS?=
 =?us-ascii?Q?KUfsI/LxtJANQp1Qg4gInjaW7yFL17K1g2Tl0uS0tEhdfVCDnq+JTLVnYYqx?=
 =?us-ascii?Q?4AK6mEP6MZQ44wew85kYtE51ink7WfbvEItMS0+0i7IVEOaKFmSaGa2r+OUU?=
 =?us-ascii?Q?+AUWtg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	8ExpMPnNvYPRwCVlYpA41yXvHh8tAzP3NYEHvf1F3X+oHOKO/697QRLEF2xy2IlUUPfzVND4GmQggOQyawLOH1eqqZjGH537MHMDEK6pctHlwalhkiUvMtVxcSpJSfRZOCvpvYAOHo1X6mgI6dftfs/MV05dm0uiL1XlWygZqKpmE8iUmNlrr52zN52XtDHop4VH0tshQEo9mDlVC+U4M3uL4vHoZB1aBSTzvKrUFa1O/rox1zsjrUGg1nMpVIG9MLT8xm4mZufyeSMViHCuqVtuPgXKN8vI5ZbjufK5QKNK1uoXm3mIuoxvgAPmaUlBKBXfLZ2keHC3BPxik01ruCIuBVRHN5//MrHwp1ESVvVqjgQd+tBg7VSgJTPZXtY1IYbgjprU6/1RjjM1uu1Ux+oNPiqwPkva48t09CkNUG9H8CYxQbm2y6mw84H+CwNR
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2026 05:38:13.5325
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b002d050-4d36-414d-7f05-08de6ac214a5
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS0EPF0000019E.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P195MB2729
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265253-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w.egorov@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,phytec.de:mid,phytec.de:dkim,phytec.de:email]
X-Rspamd-Queue-Id: 78560133079
X-Rspamd-Action: no action

Reserve 128MiB of global CMA which is also marked as re-usable
so that OS can also use the same if peripheral drivers are not using
the same.

Based on the use case described in commit c43dd2fe5316 ("arm64: dts: ti:
k3-am62x-sk-common: Reserve 128MiB of global CMA").

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
index e15da771bc07..3baa653257bb 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-phycore-som.dtsi
@@ -37,6 +37,13 @@ reserved_memory: reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0x00 0x8000000>;
+			linux,cma-default;
+		};
+
 		ramoops@9c700000 {
 			compatible = "ramoops";
 			reg = <0x00 0x9c700000 0x00 0x00100000>;
-- 
2.48.1


