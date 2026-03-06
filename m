Return-Path: <devicetree+bounces-271819-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMlkMtpKqmmIOwEAu9opvQ
	(envelope-from <devicetree+bounces-271819-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:32:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F5021B1E9
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60C12302DA06
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:32:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 072A2343D86;
	Fri,  6 Mar 2026 03:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="RjXx7u5L"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020137.outbound.protection.outlook.com [52.101.84.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8642690C0;
	Fri,  6 Mar 2026 03:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.137
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767955; cv=fail; b=f62In9TqUkWSbkTVl1yhqr1IXCa+3p9CAVUV9F2uwjwLmdIUcjgqJ5N+aJaAa5rYmuiU4V1xI6QXzbIQx1P1v/0n7F7CLY5X1jixDeAxSrnorf3pgX5fNtRzYWqN+rU7vgHOMQuom5zutNwjevSG/LTqxfsM95xfGdnThq/X3Ms=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767955; c=relaxed/simple;
	bh=0LV/dOva5Pp3WkvHhVv7+ODLXZBcy+BAU9JVKgMkvws=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jul4dMEPcKSBw3rDsTh691Yk31ziW8fnALDAv+yunHO63yoHVFnwhwY97RoduS8t1xkvSznCr9RHmGzMoNQjFdl7dOqwEbe4A8gC/IC9tMart7Q6+1MOeFunKpCr9qO2Seqm943viIk0BI4wkEyOH36NdP7Y+BA4NDm0Vq4a4/A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=RjXx7u5L; arc=fail smtp.client-ip=52.101.84.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G8jr9wflRVGpsk+pk6MU+B18i+2z1ktGs0mx6nSwHfJcJOrQK+ATu8blYiOyVO1bjsQACZCDSTZn+VGmyK08FQCypy/WoGVwINpTs2ScuRwTM49jKtmcl3QB5FAH/rvezqwRP5vhzZAycFZtJoYjiCA6fka1tuUwCPl6ygNQnVqcQBqpz/z5vgynNmRXJuf6OOlXeAJ1TlKQ2k/irIkvx/L+o+gTIYjWhcga0ZjkmR1V8GM9dNIAoOCBLxR+k3/N69U3aAohJDCT97kd1XfyKA66BNWawEcA5xgmLy6oxBtGoZSd7HGNSG/C87QRq3sgG+k7/rRHb4H7Mh86pSPWmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1iyU2CsXvc043GMO86VtBnM1Bg1xqAUge4puoz8tRdU=;
 b=MrKPg00IuvJh9+/BCUIU+E5LV6lGb3lSCrXk5PZq+knbUi3p6Cdynk2uGpzCL7SZqNTi1xytYCh6V5f3okqmHhZe4xBA2NnpAtY4HdDYTsAthSi+3YBhvLd7OEBrlSUoJ9McHZny5H8r0NIb9n+wZ+Ca9cqeJ0lfYsuyk2tEr3DLA/xxap4OirmiXnThVg7G9TrAn+Ki8Me+WYPe9D1eE5DOf2wjhyBW3LXZpM7qzZayp7vn5HFl7sVFUNSQ6KMbcOywdQ8BKHVP3SKRAT//xgGYfP+xA4YOiSNMNxa/2zCA2hXdUhLxk0BngobDOje1iB4mVsYkfsyGegxDlkNV0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=ti.com smtp.mailfrom=phytec.de; dmarc=fail
 (p=quarantine sp=quarantine pct=100) action=quarantine header.from=phytec.de;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1iyU2CsXvc043GMO86VtBnM1Bg1xqAUge4puoz8tRdU=;
 b=RjXx7u5L7hkjdpkd//EmcWR/Yq6PI1YHyYvARb5hyzdAcf7mXEmHzCx1aIzVnp6jvQg9mYM5f/1cbDnhxlMeq1580NLVVnNf1b/G28t95XtalKSAhO9Dg26u1mCTe8rVhmZXPnx66ZWbGL83DLvYbvx1x3YNoB52KGDkc1vLrzlv8EgchZZJyWSUkKBinazvh2JjWx2auHezbZNgPaTyhRLC7jc73JSKYKXVeZERhICo1VVH5ZB5TsXofU/IofLA1rKWuSsvLFo7wkKIYxDs2Nm995TQ6s0Dmo0Mi5bk4nB8Abql9lq4veHcS3WdGIx9MfHtApBnNk0ElIcz8u1MCg==
Received: from AS4P195CA0035.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:65a::19)
 by AM4P195MB3014.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:6e6::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Fri, 6 Mar
 2026 03:32:31 +0000
Received: from AMS1EPF0000004B.eurprd04.prod.outlook.com
 (2603:10a6:20b:65a:cafe::9f) by AS4P195CA0035.outlook.office365.com
 (2603:10a6:20b:65a::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.23 via Frontend Transport; Fri,
 6 Mar 2026 03:32:31 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Postix.phytec.de (91.26.50.189) by
 AMS1EPF0000004B.mail.protection.outlook.com (10.167.16.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 6 Mar 2026 03:32:30 +0000
Received: from lws-haller-privat.phytec.de (172.25.39.212) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Fri, 6 Mar
 2026 04:32:27 +0100
From: Dominik Haller <d.haller@phytec.de>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <upstream@lists.phytec.de>, "Dominik
 Haller" <d.haller@phytec.de>
Subject: [PATCH v2 1/5] arm64: dts: ti: k3-am68-phyboard-izar: Assign dss clocks
Date: Thu, 5 Mar 2026 19:31:44 -0800
Message-ID: <20260306033151.276202-2-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260306033151.276202-1-d.haller@phytec.de>
References: <20260306033151.276202-1-d.haller@phytec.de>
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
X-MS-TrafficTypeDiagnostic: AMS1EPF0000004B:EE_|AM4P195MB3014:EE_
X-MS-Office365-Filtering-Correlation-Id: ac3377d6-c4b9-4630-fff2-08de7b30ff35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|376014|82310400026;
X-Microsoft-Antispam-Message-Info:
	cVwYaw5wsR3OeLId0PTeb7bsJPT1p3DTw5d3nTulu/EoBDqr5hxJDEliw99JRnW4IEfq28fBDyJ7uGr4GErz8RBgOUHQHoaJhWwwBas5yowB7QrPpVk00xjebF22jx4BH++jpIpQkKdYpQukkep3E8FX83iNy0wh0RvGye+E1UYqlBe+3hnntxZwBD53X+KDXGVSM2DlpB/mxgnJ6hz0PtePtjdPBWVrOqp6utSlEfHTwk90JSSGRIsKlskd/jMR3KQ2cjM9e5BccDJ+RdohPSMR071k2WvyVmELqqKAWdlXhQS87NPYNsNspmVGacBtoJJH6mLxvBaP4LjSWT3FiRnQwEOPqmKJcusIaX8rRkkPyBD/NoHLM3g+80tlKNe445a/vS3vZCOg94iw2plaxeiph1JKbZ275sdW4ByfZW1DX9eiG18FuYv3pbLO1UcngjXHcoQ9BI4Ae2wajaFIOKbmLB0soOlIUnRlkEqfreUXsLeMp9QnEnE/CCclBxFEKNSEMPmMEaP65wuRD4l0lpXhQnrVlqTW+jwlrP6E4dlYSgQR3dWtVVMqXLNG8rXuxZtpouFL9lp13dywa0gPbaeGxW+xFTWUpYtO9J8f/nd6LqoHN0ZgalbapQHNGtG+yJEsvnR++BNg1B6rMjt5IPDm49B9rnmsw1b1sq7Rh+MUw24YLB75Cpi0pbSnQSuQItEFDjx8CzIjuQX/uAQcOGuAHak3wEnWpt0u4/EucXQFHmmQd1p6IyXWgEJf34jvTN7MtzqvgJ3hk5QAOQEQuw==
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(376014)(82310400026);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	cr36dx/jSb7KxUexyeAiVG6cF4Oltn0ugYdPHxhd9PQbAmzjlNPmaH7+igVCICZ+p7N9wZFIQDFV8fQ71SFJe640Jdx/1aX4nl9Ir7B46r51P1gnoXzfZyhauNmd2XLbe1EGXMS+BGC7QRBQfUc+sgUvhdO6oEk3C+5jpLZnrIHWrD81xTHExpqDry21XGnwLpUPaKDSjjiYY3hSzdf9ws7q0fPMcIRysW8utqR3JGIZ9vmCOPJeB5+Zu0kLkb8wdrVr06OtNZ+hN+oSNpj2OnsCX+C+64LolJDUdUlFPMa6ximiMYSrSqWmw3HCnzoivvHde6HcGD2DgrylddxndJCSSJUeOMVj24fukFyUTrRYPYC0f0Way7xGNE6qqJ22UexDhzEJivj87VX9A9oPCp64VjC0sVOj4ncD6MYL/c9+8tJgO0tKvAFEHZs8O6qf
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:32:30.3061
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ac3377d6-c4b9-4630-fff2-08de7b30ff35
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	AMS1EPF0000004B.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4P195MB3014
X-Rspamd-Queue-Id: 76F5021B1E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[phytec.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[phytec.de:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271819-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d.haller@phytec.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[phytec.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Assign the dss clocks in the base dts so that display overlays can be
used in any combination.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 .../boot/dts/ti/k3-am68-phyboard-izar.dts      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
index e221ccb30e95..b8d17bdb7685 100644
--- a/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
+++ b/arch/arm64/boot/dts/ti/k3-am68-phyboard-izar.dts
@@ -298,6 +298,24 @@ phy0: ethernet-phy@0 {
 	};
 };
 
+&dss {
+	/*
+	 * VP0 - Displayport
+	 * VP1 - DPI0
+	 * VP2 - DSI0
+	 * VP3 - DPI1/DSI1
+	 */
+
+	assigned-clocks = <&k3_clks 158 2>,
+			  <&k3_clks 158 5>,
+			  <&k3_clks 158 14>,
+			  <&k3_clks 158 18>;
+	assigned-clock-parents = <&k3_clks 158 3>,
+				 <&k3_clks 158 7>,
+				 <&k3_clks 158 16>,
+				 <&k3_clks 158 22>;
+};
+
 &i2c_som_rtc {
 	trickle-resistor-ohms = <3000>;
 };
-- 
2.43.0


