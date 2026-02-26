Return-Path: <devicetree+bounces-268698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG/0MvAQoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:22:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A80F1A34B2
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 334FE30363A4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C9B639E19B;
	Thu, 26 Feb 2026 09:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rgI4k1TT"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010034.outbound.protection.outlook.com [52.101.46.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F6E39A817;
	Thu, 26 Feb 2026 09:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772097475; cv=fail; b=kUedT4EtKYsVOwbOTDlgG3OhE0pyB5TjJTybidtqh54Qxs+SVS7jIAHLhJUupEv8OsuIoB36jfeT9RGgVYpwhUWj1AnnnQABZlnkTK2aIHGK6E4If5hYhe1QQbgugsLdz/tvkmIpd7/eMZaUR2HI+3pp4P1RCa7bFQhFfjcJUMY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772097475; c=relaxed/simple;
	bh=cWUVJXC+Rr5ROvD6/OwCdVS2jAFkW0qNkKfjgp0YrQE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=S5/I6T0o8lVJwHIzwpqwGqwOk4ArmYB+JcUL/ad5aLcvfBJ25LKoQf5r7igoZthvh6m/M/eBr5gh4jOg/dUvt41dcFlK966w68NgKdKGqSuzkEu12WtC5mpbNESXOq4wA3iiIgxezFhkG/6Le9tDl88o4mZ5klMo5GaULNh5AVg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rgI4k1TT; arc=fail smtp.client-ip=52.101.46.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UWXGfGYKCYKbXTZ2lqHq3xBfPB/lQXojuLw9aDPDWFNVRO/9D/PeYQLAdLdd4Y1X/DX9FVfb4zZCPg9VV5izIt4BVYAEhiviDNoiCbZ7dC2iba4S/JEnrns5eI/rW37GSe7S8shcP4hnEvikXYis+FULIjwGePyztfJ7lVbuSlggRDArgefS8bs0G7TfskBHYERB0Jm8lBW4XUDmjrPQQNp98WqTVNyNt3bYUtq9vMp4sM9YP9bTo1I6BNbc7UkU4TUi0c2V8S9oWScCenzEo/FLaRAuBuZQG/2kUMBgIY2gXgO8jTtN1MDdTYHZSqlPJ5SN8E+bZpREyM+eZXV5NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waAdU2fd11VjWFtuBnc4765v0whhaqV8peKb/HVBD9s=;
 b=zDj1Otoqc5tZjJrY/OVeyZE9I0ocpzAYqppcdeT9bvt66evZwoHN4NQgxA/6ZJgQ32tmomFG+xit4RNPEV08tA3H83Lg0aM+ymajhxDmH9+ZNb8X3vyUf0+sTFp7jP6VcCInLkVXJbUVbDrAyzduTmqC5eIxsDm5FoQEW5aYFt0RTqTDOGsD8cid4RQckemyo8CX5ARML0kRm/Vvnfy6Gq7itaqJe8IZjYyTtcnpchtkG3EOGTO92tuI3Z/ohgHwOjZPb7OF+k82riUsQW3KbmnlNxr2Mh3X2J6zMDPu/SDGLOZc84s239Q2T0Uv2y0b0a93aqpBzmy1OnLXhgre4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=waAdU2fd11VjWFtuBnc4765v0whhaqV8peKb/HVBD9s=;
 b=rgI4k1TTg1+BsfldE1VIqw0VNhbi+s/KzuB6wJAGIhik1feS8WZjwvjmSAiK6PmK9QgzoHXXHoJXmKACvVrgSvqRU+CLcitj5c0vDCTd5kPDNEkt1/eYO+Of1GpySaMh7Izfa3HiZMuJDibRFy/GDTp4DzkGveySBSXUhKNl/XI=
Received: from BY5PR20CA0014.namprd20.prod.outlook.com (2603:10b6:a03:1f4::27)
 by SA2PR10MB4428.namprd10.prod.outlook.com (2603:10b6:806:fa::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 09:17:49 +0000
Received: from CO1PEPF000066E8.namprd05.prod.outlook.com
 (2603:10b6:a03:1f4:cafe::64) by BY5PR20CA0014.outlook.office365.com
 (2603:10b6:a03:1f4::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.23 via Frontend Transport; Thu,
 26 Feb 2026 09:17:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CO1PEPF000066E8.mail.protection.outlook.com (10.167.249.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Thu, 26 Feb 2026 09:17:47 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 26 Feb
 2026 03:17:34 -0600
Received: from DFLE201.ent.ti.com (10.64.6.59) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 26 Feb
 2026 03:17:34 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 26 Feb 2026 03:17:34 -0600
Received: from a-dutta.dhcp.ti.com (a-dutta.dhcp.ti.com [10.24.51.206] (may be forged))
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61Q9HVfe2108067;
	Thu, 26 Feb 2026 03:17:32 -0600
From: Anurag Dutta <a-dutta@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>
CC: <u-kumar1@ti.com>, <gehariprasath@ti.com>, <a-dutta@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: [PATCH v2] arm64: dts: ti: k3-j721s2-common-proc-board: Add QSPI flash partition details
Date: Thu, 26 Feb 2026 14:47:30 +0530
Message-ID: <20260226091730.2735587-1-a-dutta@ti.com>
X-Mailer: git-send-email 2.34.1
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
X-MS-TrafficTypeDiagnostic: CO1PEPF000066E8:EE_|SA2PR10MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e4438db-b303-46b5-e57f-08de7517e81d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|36860700013|34020700016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	P1U/4oj6/SghF8EALAow8AZKTSMVaQFRd/P3w6/dHV+A/7n9PcpErqgJrf15rcDbHboaDkKR1iMR3OYRn6kC41SQAREuxDQjVHEHY+hr04GCxYMR5aXMPrqXXWQSSgy9WiqCjtQlKIKfz7oTWTHB0O7kCD/c1RuJ+I0gDuxtKIXJF5YWTi88smbDHFWzzWo9hLgafhQ630/iAsmo7S/PcoElQUQUAXwxLWy+DeUCBcGyWNBByXHqBfN280BSbsKkfcmz5nolALeVV6SPFZEwxomqdh1HtHFwT9kWcIr6PYUDuQeFMap5BJAs4qenWoRZ0UsvyccJN6KIdPB9vNP8EZT77BCOlWpA+YR6hh5gpsYnzvpMy0zopjEqQvekKOwhjQXk7Vjt/pHQZ2Tfg0AmZW+n5oyv/L0hpw4fBCIMCdw+HdbkgoDx+IJGkZSez2f69vZwzyO8q2HQUw7GIVG2XdsBum30nn1X5x73+xKKkoSat0+WaWHT1PBqWJscpEuHzZLolEL745DOC+bQNpgJ/PzhSJKWsCQAUaNfGRoEZLA+qGnEDl8R400S43dV1gZIegOUBSmbBy+dSQh2zuf9gqzrMvy4hEobeGBGPyZliNiiYbh86w8DkxgVzfjKwqJWpOOs7yA9SxlHu/8Ckh3Gh4QYDoAxTLS/2L4IPh5BaBaq7NLmJscVg9fmD35YSiKeJbA8qq47RiqsVlqFJ2EE2wr3p+okNWTKAZqU/8MMq/aBh/SIfxMlhEWFJU9onN0Nx34ck/c/vSnv1gQXIzv2vIoOVIcqJ/Rinoy1Tg0jPc2ks4DeLkUjKhc5I9g6FUpYzBBXyDEIc3WEfBdxu1xvBw==
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(34020700016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Y/DJJGMjzJa2YA0tsFZDwrTm2UgFo+0eSpHxoAwZjhbkogFN+pI6sP85f6C8SIxcQ8OnN+vl2raZGktlX4K0uhvUmWZ2A1gGbLnx8ZDv8HgYiX4pfCQKTOVdoSidnTtGw67384RkFS7g3X4CMOQV4EqEwJnTrJUSLMr0AY4c9i21gua6F91BpNBoxk/DQ4x/r/etdxSo/LMo+IqfhktzSZ12M7cpBV9wlKV68uQgFg1QWcH4ynkoPYD5aa0MWgPqLrEtPEOdaJezM/SrW2b9h6KNrRvXMJtRt5F4+6LNzfjFcgwap+GjLWIlb4dFd3uYyzKAFIGszV87OiCoTOGme3S9othxeA8NFQc57zjwE163pfXXCd7O6+nfeOjz+pNLO4LwYTma9YbDMVGj2GN8o3ugA8/IUmL17uibwM2xxnsZpPsM2A7T58LuSuQFn32X
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 09:17:47.0907
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e4438db-b303-46b5-e57f-08de7517e81d
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000066E8.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4428
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_SEVEN(0.00)[10];
	FROM_NEQ_ENVFROM(0.00)[a-dutta@ti.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-268698-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2A80F1A34B2
X-Rspamd-Action: no action

J721S2 EVM has MT25QU512AB 64 MiB Quad SPI NOR flash connected
to OSPI1. Add the partition information as per bootloader.

Signed-off-by: Anurag Dutta <a-dutta@ti.com>
---

changelog : v2:
1.  Added bootph-all to qspi.phypattern

Link to v1 : https://lore.kernel.org/all/20260121051855.5890-1-a-dutta@ti.com/

 .../dts/ti/k3-j721s2-common-proc-board.dts    | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
index 4fea99519113..1b48294e47ac 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
@@ -530,6 +530,48 @@ flash@0 {
 		cdns,tchsh-ns = <60>;
 		cdns,tslch-ns = <60>;
 		cdns,read-delay = <2>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "qspi.tiboot3";
+				reg = <0x0 0x80000>;
+			};
+
+			partition@80000 {
+				label = "qspi.tispl";
+				reg = <0x80000 0x200000>;
+			};
+
+			partition@280000 {
+				label = "qspi.u-boot";
+				reg = <0x280000 0x400000>;
+			};
+
+			partition@680000 {
+				label = "qspi.env";
+				reg = <0x680000 0x40000>;
+			};
+
+			partition@6c0000 {
+				label = "qspi.env.backup";
+				reg = <0x6c0000 0x40000>;
+			};
+
+			partition@800000 {
+				label = "qspi.rootfs";
+				reg = <0x800000 0x37c0000>;
+			};
+
+			partition@3fc0000 {
+				bootph-all;
+				label = "qspi.phypattern";
+				reg = <0x3fc0000 0x40000>;
+			};
+		};
 	};
 };
 
-- 
2.34.1


