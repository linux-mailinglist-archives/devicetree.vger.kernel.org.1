Return-Path: <devicetree+bounces-269485-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAPHMFuPomk04AQAu9opvQ
	(envelope-from <devicetree+bounces-269485-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:46:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 870A31C0A28
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 07:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E75443032D20
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 06:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DDCF346FA8;
	Sat, 28 Feb 2026 06:38:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023122.outbound.protection.outlook.com [40.107.44.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26793346E4A;
	Sat, 28 Feb 2026 06:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.122
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772260710; cv=fail; b=KrQYpfS0BOQL6ZDEuy805Qbet2uNEPPG3UD57e1apgqNVEelpb2qRzCdWJy0nsJWMWNZripIIRZYTL8DC3n90/AFzWV1mkA1UmRNHg9C2ti5a7QT7Ubo/iEXY/RXIQz+hVe1zml4SFEXmAQho/+/W4S0CDV51Gz7nkwIhh+sDHI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772260710; c=relaxed/simple;
	bh=zxZp8oU3WE2XvjunxAxUQAGirRg/2K2eUvosSpojUr4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HhaRbIN8FXnr+E1sEI+3bbLJ7+ZGCXgqelICjFGIs3AD2M0LMWOm9MzQG70nOlccjlmKU4ju937PqXScSvr0ggELfHK7wdvYppTs+muiCozDM6U/Ao6DQkv9kFh8A+LVsfLpXkK2ySeXz0c/PVr10xiCOsQjdkNmlI6bIx1yqMw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=40.107.44.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uevGpbL8UhMWYxQMstnnuJuro9FsiVo/MWrICGzXz0b45YCrfB9L7ro+MXbTTRkwOiPM4lGxK/XOZzcWNHMFOSsWj0kNVbvaxVNSxOhkEoV5Rw6eZC+eH8rjMPJ/9KA2PUoZ19FcbQnZWWMC2TvIJG/fNBEvjlK1+k1kUD602/0E+pIbkhozstPrw1DxQk+pqm31pMax6mZ2sWw3NJ+PatvphhD61K2hQq+0ZJ6Wf4+F5qhU/LfQizhwGSkzzmiqNBaVf1vK0h9TGwdgoLKNNdkUpQhLnxrUYPk161WwGbuh6g/jWU+4wqyt3+GA8b6GZoCzkP0t/ODzO/tGITZpqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRfXO4SzyDX1u5fdAtDdMpwIjvCD711tRu/raZRirdo=;
 b=BbFgAfFYS4was0XZKKM3RC4amz2YrS6xzFSJzHelLXHQNzndd393OZvmIVSRcpIh7EfboMmdARSsC1/uJd7pfOHblDtKJM8BlEynMpXgCNQ1COs/qBjbeECgvn6GFSbGHPbLDttqZ0pS8vjmu3kO+8ni0CUwMvCc8VO7sQv9tn+SgzfPW2ghoRm6/rq+TS9hobmeeJJV+A6sn3CWw2fcV+DVGWMDJTVtzp/Gaeg5tYxVEiQKXbjr5npfZ26cBvyNra6olYI+uc3MdxYiicAED4bE9rqRSgl/zzdWF5/oWHlWqTZzINgl8HHjekkjHf5O4/z/2W7H2t7Q2HGEzn4Rlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SI4PR03MB9867.apcprd03.prod.outlook.com (2603:1096:4:298::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Sat, 28 Feb
 2026 06:38:25 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549%4]) with mapi id 15.20.9654.014; Sat, 28 Feb 2026
 06:38:24 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	martin.blumenstingl@googlemail.com,
	jbrunet@baylibre.com,
	krzk+dt@kernel.org
Cc: robh@kernel.org,
	conor+dt@kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Xie <nick@khadas.com>
Subject: [PATCH v2 1/4] arm64: dts: amlogic: meson-s4: add UART_A node
Date: Sat, 28 Feb 2026 14:37:47 +0800
Message-Id: <20260228063750.701887-2-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260228063750.701887-1-nick@khadas.com>
References: <20260228063750.701887-1-nick@khadas.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0001.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:26c::7) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SI4PR03MB9867:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dfc6608-51f1-4b80-0f51-08de7693f922
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	/arK71MR/cjXcu3iaAqsjqX7JNz78oA5iQFafCRWKhZWvFkVudDq4xk4L9Cco5oyPCz5yKHZbU8kCTFNmtFD0nsQz6eV9wcbA6tD2N6mkrHYAWOkLvMhEBEKyvs++5p/esmsQFp24EUjkTOyhcCc1P2av5fAhqjYJMq41yDceEE68R7u6heyy78kNQCiaCWSY99tkg5yLArzI23ZYCevxL9tD62pHBZ+4EdsajwIT1MFhFsR4/r0YfO+Y51PiwL0qI2XeIdiPiqu/ptRkvi41CAuuKJcgNmDqrt36NeM7qRDEhWCzyn1/mdLBu4oH8WyH0B+X0gG4b7qjJpoeKGqc6IV5F9BYk5bSAUuf3cFryMCl11BL+zc2A0y60e0mBDGPGcVxhJFWFCuVlsV2tL0pzGzEkUawh5Wv9GuGdRjOcUhixl+S3L98MjEMY5sU9oMhFwNxqFpdLBYeIq6EpI5Z9JK+Jpp3ZjiITYW1Ex+WVRRI6I2eyrqJ6VqieFyobaGuUkwZFjmhsecpSPpF3h4drOTE1I0esgHXQHqAm5qBKMDj0p3G6nZld+t4vQxsJNWDEokzIEOHptNUmFqTrkphkwhwSfIXTg9Qu3idFP8ggrqeJz0pdS5/xDa4T+8A0qEVyz1aa5kOIBQEat0v7t4JxhfG3WhZWPrvf9MWyTV8+RcyQtBCdUP2xGVx2dMKj+Vyqrrv+l3lgDi2YF8p/LuXvwFCP9gaNm3tTuZLKAJw3codsuUv15ELhapO2aLLkl0r99AwobI4uzS/HTCqOk+/qf+RxEx5V56mfxmPdGbcCs=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?/HK4qiXL60eUvMXho0FDIjVFELtQ5b2X1TZLV8sVW7yltQcWyly7f+YVtQwE?=
 =?us-ascii?Q?dYAjaj5i+GiBa1wQwo8T8cyOYtAuZZZPa8dQ7hG8hPT94yAytz6/nuGVvkGu?=
 =?us-ascii?Q?DwBlIg1zwrBG4sV0N0V1Ahl07HepYdPR+R13AqUGiyjPsA1J8J4MDtvSJEXk?=
 =?us-ascii?Q?Nn/HguoB278DQvW2N5QaaW2RM4UXq9piVPoajzZpdvbZRBdMglBXDK7Jb+DB?=
 =?us-ascii?Q?vNixWomglxpJJQps9qFyZuU25VO/K3jFXgI1X1ouQVx+0XtYU0dR2yx871E3?=
 =?us-ascii?Q?7R7OJD3ZJD5K++64D1T5kUBnRrTkDoqzYHGK6BvMB+0pcp/nKKN95b/QnZGC?=
 =?us-ascii?Q?NmFD3Aocmr0hRz+cuLrihasX5KudyQaFHvRQKVr5DE++nllzpArdOP3tmiq2?=
 =?us-ascii?Q?AbxOXjb0SFBZnDLPOceq1zOLudkE/2jkwtC3OWn2LauI1gW7/OCM6BVLFzbm?=
 =?us-ascii?Q?qOaDJ/zPB8nsW75jEPuEdCM5Kmlaa1GVTYWXxJ+Q6TlfBROmZ7AjGLZhlLyR?=
 =?us-ascii?Q?w4g921FJP0eojqKf10n+R4DgYbvp9z45uJPTOtRvrmS5Ga2jffljuWBXppQ7?=
 =?us-ascii?Q?n5/pTL5CH7NTTSbCsEdtGop79ECLQjEjyQYrprZ2TJy2oUZVXiWvj6g3O8Gr?=
 =?us-ascii?Q?WWgkqsdPhvxLNQDV3M0y18usZv5KrTuuBmAgaJk32okkCl0KxojFAaUZx9DJ?=
 =?us-ascii?Q?DgMvZH3FZH7iTr6kMhEJnYTrYQ5qXSplFt3kv8a2hohbm7aryzOAe0/QUcis?=
 =?us-ascii?Q?VKI2Ejfxxx+WrS2tgYFK8en9sxN6/apobTRw51Peg0MQQaGJJM5ZJiaSd5Gh?=
 =?us-ascii?Q?9sV7R8Mli2sxkv7gEbDJcS+ymQ8O5uzJpctMzM6hZBe+5Jl0JMpyNfZuMPVt?=
 =?us-ascii?Q?M9Or+5JVZo923nc803lTOxpuNPrvWocofDWOJ336CRMYDdqvWOpWMVrRuY3F?=
 =?us-ascii?Q?2SfarSQ29QJ1/HWnp31DxqG77jpmq13dB6lm24oqaYk10x4mL5stSg1Z+JQg?=
 =?us-ascii?Q?MFgsY1/8DX/oZQC2iWCbbxr1Lnh185qbN5b/ACZL7SWoL6jcrXGaHB5pTAai?=
 =?us-ascii?Q?1ECFMrpg0C0uC3Z2fgEXaE3aFSN+NBjNO6hVK/2BiFRGZqgfIAKU1CpKOxhm?=
 =?us-ascii?Q?99pg5lUkxA25I1VviFEG1KDDdnwMcQA9gKSUfCtXi6QkMv8KSfXxHIfqTGRj?=
 =?us-ascii?Q?6uYWMr3DxnbDGDMU/dTFBNDWC4ZBA2xdQ00dHu37heHt6UqDGBKPEn6O2Kyr?=
 =?us-ascii?Q?H1Y+4pMuH21iOdjZUHSZULgT/6s25DTirFgjMr49J3GzFrE1K1WdoYoUTP83?=
 =?us-ascii?Q?GW2WE96U0YFWviQO1K6H7DaRUd4ew200Y2I4Nv5oxolee69+lD2vuFBRR1V/?=
 =?us-ascii?Q?aAAKvWOS6NnW/zx3pJBSFVUOGzTixEvOH61SwEs0jGU2rC7NsudxJ31ClrF7?=
 =?us-ascii?Q?HGgubyYJ6Ey9Sl+CRSCKqAqIqUc7vV6rIJJXg6W4PxhcOyRMq5tJg9W3WZAr?=
 =?us-ascii?Q?cjgeIlBMllObcwdC5oRZFazMFAFufSdni8o0c7jWemSH6K9se8eo8X0cKto0?=
 =?us-ascii?Q?S6kIJE7MwiuSGfO/Rj6jHPFhRMY3SUuCsRQjM7ModYUtyQwvaDgOs7+V9BW/?=
 =?us-ascii?Q?kubujRFlhD0o63UoMb/vuanu7QaqU1o3RcoeXwrdmEmCuFwtiPQj2G8i/DPP?=
 =?us-ascii?Q?T/F9hC6k3EXBUu1Q6AoHqYxgWsSV5t+19xztRXJ3mL/LB5SQ?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dfc6608-51f1-4b80-0f51-08de7693f922
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2026 06:38:24.8366
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cktArQLqFK9NnJFjxvkMNUG8UAACDmQQy3pytTFLtYKo2e75KhyivWihOHjl4HJg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI4PR03MB9867
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-269485-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.646];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fe088000:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,fe078000:email,khadas.com:mid,khadas.com:email]
X-Rspamd-Queue-Id: 870A31C0A28
X-Rspamd-Action: no action

Add the UART_A node and its related pinctrl definitions to the
Meson S4 SoC dtsi.

The pinctrl groups are split into basic tx/rx and flow control (cts/rts)
to allow board-level flexibility.

This interface is typically used for Bluetooth communication on
boards like the Khadas VIM1S.

Signed-off-by: Nick Xie <nick@khadas.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index dfc0a30a6e61b..4a3e9ad82d280 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -163,6 +163,22 @@ mux {
 					};
 				};
 
+				uart_a_pins: uart-a-pins {
+					mux {
+						groups = "uart_a_tx",
+						       "uart_a_rx";
+						function = "uart_a";
+					};
+				};
+
+				uart_a_cts_rts_pins: uart-a-cts-rts-pins {
+					mux {
+						groups = "uart_a_cts",
+						       "uart_a_rts";
+						function = "uart_a";
+					};
+				};
+
 				i2c0_pins1: i2c0-pins1 {
 					mux {
 						groups = "i2c0_sda",
@@ -814,6 +830,16 @@ mdio0: mdio {
 			};
 		};
 
+		uart_a: serial@fe078000 {
+			compatible = "amlogic,meson-s4-uart",
+				     "amlogic,meson-ao-uart";
+			reg = <0x0 0xfe078000 0x0 0x18>;
+			interrupts = <GIC_SPI 168 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&xtal>, <&clkc_periphs CLKID_UART_A>, <&xtal>;
+			clock-names = "xtal", "pclk", "baud";
+			status = "disabled";
+		};
+
 		sdio: mmc@fe088000 {
 			compatible = "amlogic,meson-axg-mmc";
 			reg = <0x0 0xfe088000 0x0 0x800>;
-- 
2.34.1


