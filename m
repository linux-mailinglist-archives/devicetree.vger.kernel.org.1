Return-Path: <devicetree+bounces-306473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v+HcMxOAIGqX4QAAu9opvQ
	(envelope-from <devicetree+bounces-306473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:27:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BD463AD8F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:27:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ti.com header.s=selector1 header.b=EWTO0cLf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306473-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306473-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=ti.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF10430103A3
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 19:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E9648BD27;
	Wed,  3 Jun 2026 19:23:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011066.outbound.protection.outlook.com [40.93.194.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8037348B382;
	Wed,  3 Jun 2026 19:23:10 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780514592; cv=fail; b=gGPzr3TomRoejh6WKa+PMgssbWOIKJvvTzNS666+FWK458i1LCfHS0xRke+3JHdNC9j6tcm+YMg8EQLYDcThPlIjxMe5nt9lDBHyg1KR4YNav4cqFlQ6T1v1+exxeKQLkeLWgXQXDtqsGltlRsTtkhybAlk8xSDfhcF37qdN8+I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780514592; c=relaxed/simple;
	bh=kZxErKcG3OJhsEqMqFtvYALjaxWBASyazzxBMdPl8Iw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WlVAr1h9emJNWnHcw5ftieDjR15x6Cv9NAsHpJQjgWTAqzypssuAqtKUYDi/h/zQWSoEJh/2ooHLVrsHBSONcXmIc4xCoZP6Lv9LdXbve09vYKraIyoSYkADy4oAIdik8m6VFOJs2H0ItX76+sYSgQl2eNTktgW2+6UCXHgbun4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=EWTO0cLf; arc=fail smtp.client-ip=40.93.194.66
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yK3cA6TZ8uuTs0NvOmsyCtPXOamdnyoIKifBOKagPFgU/zohNaNbEuS0SBbzcq6d2OtMvGDyvcKSTqN/KPVBW+6FBlvgmS0yErS/qtidC2CeX+OYegR6A1zQM1dXooRZCplhwvuM0pKtsUMXp2q+xzNGTra7MXlWGlPirWLqtGZwrj0bGN2N9zFkWEx+TsrGrF7gkgLdOm0KRyS4Gwcw0VaiwF57kygFeXUguU42w+kDSc4ZsxYxkseVsfVwo3hTaF7bCstIfjfkhw8GabAG0018haPN4bKpUNG7rNTgQhS1IB8Zgz/603b6PyRAEwI4yE/GhNVgtsIJ5O9eiK+gmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UaiNqikIYZACno5FtLgtYq8e5CfLTieRMdDDxT9YT0=;
 b=WZdE7gpRMk0E/mdQwm48GkQKXExpmGNk0Ekk50yf6Y5f7urBLzYzO6E2LuOd+4nLoNel6JRcfiCw8jLCa48uRWdWEz3HJKrgLb6FhsBjoMwgV/2nWC2wtJZsZpcRqfGC+ng700gYycdSiWxxxfnPghmgH2GhqPQGVV1IgLXYxk84oAR0n1tZ7ZXaPfwUXE8sCZoIOO56IKGwKargthNX4AKlhXUFD3hwMm8AliycK4bv33/3YNDCwJ8J/U7/okvPwPbHrIFgjvoWo+NA0P9YVKFZVhH+t7WjLUPIzILfTetqCc3L3IaHTEXLQPH1eF+tgn+7aaDb2JRpgeg5gED4Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=microchip.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UaiNqikIYZACno5FtLgtYq8e5CfLTieRMdDDxT9YT0=;
 b=EWTO0cLffe4VeidhKc7nqydHdd3ItbBeVGV9gv2KsmZruh/RrUtZAkh3CQCcx2rb/CTvALJeVAxehkAVTfvaR8oQT1f57iJNYubtS7GSgHjJpdnAaE+kaP6HDStQPrDrCfxT35q3hsnC547xaRbTF/db5O2A3qm2gMkEePCZhpI=
Received: from CY5PR15CA0140.namprd15.prod.outlook.com (2603:10b6:930:67::10)
 by SN7PR10MB6956.namprd10.prod.outlook.com (2603:10b6:806:34a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 19:23:07 +0000
Received: from CH2PEPF0000009D.namprd02.prod.outlook.com
 (2603:10b6:930:67:cafe::4a) by CY5PR15CA0140.outlook.office365.com
 (2603:10b6:930:67::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Wed, 3
 Jun 2026 19:23:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CH2PEPF0000009D.mail.protection.outlook.com (10.167.244.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Wed, 3 Jun 2026 19:23:07 +0000
Received: from DLEE203.ent.ti.com (157.170.170.78) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Wed, 3 Jun
 2026 14:23:06 -0500
Received: from DLEE209.ent.ti.com (157.170.170.98) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37; Wed, 3 Jun
 2026 14:23:05 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE209.ent.ti.com
 (157.170.170.98) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.37 via Frontend
 Transport; Wed, 3 Jun 2026 14:23:05 -0500
Received: from judy-hp.dhcp.ti.com (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 653JN5Ms2372249;
	Wed, 3 Jun 2026 14:23:05 -0500
From: Judith Mendez <jm@ti.com>
To: Judith Mendez <jm@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>
CC: Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrew Davis <afd@ti.com>, Bryan Brattlof
	<bb@ti.com>, Jason Kridner <jkridner@gmail.com>, Robert Nelson
	<robertcnelson@gmail.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 3/3] arm64: defconfig: Enable drivers for BeagleBadge
Date: Wed, 3 Jun 2026 14:23:05 -0500
Message-ID: <20260603192305.1347908-4-jm@ti.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260603192305.1347908-1-jm@ti.com>
References: <20260603192305.1347908-1-jm@ti.com>
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
X-MS-TrafficTypeDiagnostic: CH2PEPF0000009D:EE_|SN7PR10MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: fe63e2b3-ecd0-4eea-f849-08dec1a58ab2
X-LD-Processed: e5b49634-450b-4709-8abb-1e2b19b982b7,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|36860700016|82310400026|6133799003|18002099003|22082099003|56012099006;
X-Microsoft-Antispam-Message-Info:
	karGgmwseHyE4mWHmaP03ZNk2d4MP8rJnws6heEpyVIAYHcyviq5mMZn4s9sJ1gJT30rwu5e8ucGn4B0XmV0I/hqBBzZ4+1g4WCz0DJl0WPZoVVanKD+sXlQeR9wJeMT8WuVHUnW1EH0sWYBXHIlDIjwUenA2aA8EIt4kdlbiu/DDWmedRTZ/udw8AFywZOVCCEGyV1JSh5/SjHp9thP47JFvjhqH4UFa1OjvRZaCqhujY1R0e8shCJK6WYM6rl+wiQSBwSDcftMMmcO1l0iiMvLTtZtBvJieRlO9l/yvdDqS54lHDkCMAFmPGdMEMtWKkMRCadNhAiLdzoTnmhhJ70joGUW04e3vVI/e/ZlCYRgNmEKWXRiE0NJndNZ/g6Auf4D6bW2w2Cbti6WNPG0hHx1n8AehGEVs+u8CZnK9Hl8rHEr70H95Xt6F9BDaQMco3Mphw2xZ1laM3sFYSJlXQIB/FSJzmdC32O2d7UOurr2XNC3l9u4actzZvuWidRQG+4ghKqOCeCyqi3N0J6x1piKZEbf6Vw3wDwJXpcU01H0gsfD2O4ZT2V/gJhUhMzOjfGQIjPPjYcBZMCKJUiQspsITkj6kNe5ZMOWePFYKlx3qDnwmzMrs+ri77cKvWxQyte59vlwgti787azkMtsgcJ9cBl+yc//ebhDQM81Bt+8OuG12ewbZrDAd2UEUaAFSyKRcHJr/Z/AQZfYUHS0C3Nrdmqabko6qPz984x9YvM=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(36860700016)(82310400026)(6133799003)(18002099003)(22082099003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	sTbexcjCmgUfaUevYdOtNvtOsyYmKhG5OxXQGThtFAo5XAUsxVmcQoSbm2MPStH+RDlbKPlj8BifzOhrS28iUiFhtd4S+jpSs2ZkNmxKtJbkvvx9KNLql1JmIXyw6gnn7rm2mMdX4CWjq6+pD6pOHlplTgVfKEoesP+iT0c4vWIV5gp9T7RsY1v8uKg/znd8dWIgVG1cTEKxUAuaoz57LPcM+bWrfTiW7aWF+j8m5GZejBpNqLNWH7RcoGiaKX9+NMblubBXkqUfWyQvvQx5PTVV2l8a/bYAtdp1M/S3HQJx8yFX/HQvvaFikd96m/4sbbiWwGwccLtHoEPJr8cAxoKjHcJ1JYEc5Fkag0w+bPW+OlcR0ZcqljJDzlmpkZ/VNs5TvzH6Ql0PqRooIgyrycUpS/cP8uSBeAlDnbepPYFHnqsScPkCIyxeOEF2oBnZ
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 19:23:07.2911
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe63e2b3-ecd0-4eea-f849-08dec1a58ab2
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH2PEPF0000009D.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR10MB6956
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jm@ti.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:afd@ti.com,m:bb@ti.com,m:jkridner@gmail.com,m:robertcnelson@gmail.com,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306473-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,ti.com,gmail.com,microchip.com];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[beagleboard.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:from_mime,ti.com:email,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 32BD463AD8F

Enable drivers used on BeagleBadge[1]:
- LED PWM Multicolor driver as a module
- MCP SPI IO Expander driver as a module
- Seven Segment display GPIO driver as module
- Temperature Sensor driver as a module

[1] https://www.beagleboard.org/boards/beaglebadge

Signed-off-by: Judith Mendez <jm@ti.com>
---
Changes since v5:
- No change
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d905a0777f939..5cfb7f6f2ae78 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -634,6 +634,7 @@ CONFIG_PINCTRL_BRCMSTB=y
 CONFIG_PINCTRL_BCM2712=y
 CONFIG_PINCTRL_DA9062=m
 CONFIG_PINCTRL_MAX77620=y
+CONFIG_PINCTRL_MCP23S08=m
 CONFIG_PINCTRL_RK805=m
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_PINCTRL_SX150X=m
@@ -766,6 +767,7 @@ CONFIG_SENSORS_LM90=m
 CONFIG_SENSORS_PWM_FAN=m
 CONFIG_SENSORS_RASPBERRYPI_HWMON=m
 CONFIG_SENSORS_SL28CPLD=m
+CONFIG_SENSORS_SHT4x=m
 CONFIG_SENSORS_AMC6821=m
 CONFIG_SENSORS_INA2XX=m
 CONFIG_SENSORS_INA3221=m
@@ -955,6 +957,8 @@ CONFIG_VIDEO_IMX412=m
 CONFIG_VIDEO_OV5640=m
 CONFIG_VIDEO_OV5645=m
 CONFIG_VIDEO_S5KJN1=m
+CONFIG_AUXDISPLAY=y
+CONFIG_SEG_LED_GPIO=m
 CONFIG_DRM=m
 CONFIG_DRM_I2C_NXP_TDA998X=m
 CONFIG_DRM_HDLCD=m
@@ -1332,6 +1336,7 @@ CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_SYSCON=y
 CONFIG_LEDS_QCOM_FLASH=m
+CONFIG_LEDS_PWM_MULTICOLOR=m
 CONFIG_LEDS_QCOM_LPG=m
 CONFIG_LEDS_TRIGGER_TIMER=y
 CONFIG_LEDS_TRIGGER_DISK=y
-- 
2.54.0


