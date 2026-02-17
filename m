Return-Path: <devicetree+bounces-266173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMAPO1J1lGlmEAIAu9opvQ
	(envelope-from <devicetree+bounces-266173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:04:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6495314CF13
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E2B7E30DD4A8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:56:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9C136CE1D;
	Tue, 17 Feb 2026 13:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="Fmcousvd"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D8336CDF3;
	Tue, 17 Feb 2026 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336535; cv=fail; b=ld0LZ7wFV+7v5n5CcbBUNQ7hXOmc6fS3I8EK11bv5bbXfv54wyzF80aGOfYgGXTqD2Qw8Mz2NHfRDXlCtVDNt5vLfy5f03HWZ9k0eY0mWr03C7RPHkfz0nCBaJRzdb5k5VtJ3XJY2mFs1fHjrUF7nbOsjNeRF4n7nq/80i5wIVs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336535; c=relaxed/simple;
	bh=HRVfnrgyfjnEF8JNTgU5QYJSJ5QDwAEQK9xpfRmTAvI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BzpBGGLWJYWM9NxO3JUkxrYTUK59hVAw4pIuXkWXQtT55Ok3dTuKwXqpSUFh/UVrvwbDBZtOjypHILRGqIqUzIUxB07f2f6d/vdKCHG54poDpUEBINBdmWzxzMWAFwQeilg5BZMfP4Aoq3dSADfewfEk516Wzc9nqDK8nUyUfxs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=Fmcousvd; arc=fail smtp.client-ip=40.93.196.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GOslJbWRbaAG1A1puwFDmwIGzK/P20zLOYOsNbfWTQRY8vHZqoF77PSr2gmEA2Av6A1Og0OL3/rb4TgH/9ibRYT9sJR4wIBCr5mjgMdzPOB3SfNP3RNTpKJCmWpu32sddsFE6T5Efwcrchi8FMCad60FilGgwuO0OfDlX1q4r7vNfiS/W6/yB/sHNGjAvdwJSv+V4oY2+Tz4vFY/Cw2Sun77HV6x7Dsc6+5QjFZtIA68M5mylskTvdO9g/gbY+aNfggYr46WSf0ehIpTvvJbeF1+A/XizPR3TNAqnCGjuvLJw8uswoP3iq/qaE0RwcT8+DsN5Mmv4zScsoHtQDUiKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K6EZdjdOBRPE6p/IMq+rwytd79S4yFPyGgvWh6elfD0=;
 b=mM8oizyZPznqHaSH6VmlqFqO9/aq+AL3rEbiheBb0EN30xzOiLIbTw9ET5lVT4/gCwQY3IHgO+qg4wTKUYWfmrujcqcYVqTtW4rBkdjolyBgrEAmUEHpoFjYN88BWzapQaeXW96GdMghWfLf/Fni1wdzRbfY9ziO7EXglEcgHGXjne6yf6dIJzqUjAPwEzxwjVP2P4DVAxHHGulBbkVnZWCAUXrQuWI456zlf5w6MavEiZpn2jhBxalY8YO19Pq0kdrQ44nayrQk4zKxcRYqaGSxgFffBfN31VXC0XfqqEpuBUgfb1GTH98rfyk1rT3DVB8x58LiW1prfr+JUjxBMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K6EZdjdOBRPE6p/IMq+rwytd79S4yFPyGgvWh6elfD0=;
 b=Fmcousvd2/HtEsnpiTaGBKcI242nJMK6e8b0tAIunBgcx5dxfHAiaIFxxwnVdlKzRcm2+8GYCeLz5HI/CzjyfdcT3tbv4425WYwdt1Dv2YB51o4Qjivk1YEDwMTO1JjTr0hLs/ac8CRcuJDQ6XrPEnOBSCozMys9ycb5Sk69ouK9pe73Zt2IhPe/kw9fl0Ki9AqxsUoNmsUe6/ZA9GWxjLW2UcCvaz3YCGLFwbBktnzjIQFYyL9h7x0i4ag/TgLfj9jLU3arSbRtYnjcHXwTKZYgT9R+jdAa4m2fWW7WpZx7rPUTtQq9ZzxyZOT65Opyoy3/bj0ok6mPCJT/7Qn1xA==
Received: from SJ0PR03CA0222.namprd03.prod.outlook.com (2603:10b6:a03:39f::17)
 by LV8PR22MB4710.namprd22.prod.outlook.com (2603:10b6:408:1ca::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 13:55:31 +0000
Received: from BY1PEPF0001AE16.namprd04.prod.outlook.com
 (2603:10b6:a03:39f:cafe::71) by SJ0PR03CA0222.outlook.office365.com
 (2603:10b6:a03:39f::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 13:55:30 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay2.compute.ge-healthcare.net;
Received: from mkerelay2.compute.ge-healthcare.net (165.85.157.49) by
 BY1PEPF0001AE16.mail.protection.outlook.com (10.167.242.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:55:30 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 97A93F884B;
	Tue, 17 Feb 2026 15:55:23 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/5] ARM: dts: imx: bx50v3: Configure switch PHY max-speed
Date: Tue, 17 Feb 2026 15:55:16 +0200
Message-ID: <20260217135521.65742-2-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217135521.65742-1-ian.ray@gehealthcare.com>
References: <20260217135521.65742-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY1PEPF0001AE16:EE_|LV8PR22MB4710:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: c0b677b7-beb8-4e0b-df56-08de6e2c36b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?AYZyh3kQn/JCLhXGiqBSQehFs6xu08nUXTgEtyOsM3bek4joWe2f52oYytyS?=
 =?us-ascii?Q?Coukf6zPMNJrB32pY0IkBi4GLPF2QAx821mcBE0Yc8zCYTpQMJR6uXogW+i4?=
 =?us-ascii?Q?EHFLeQoqbbpxp5/PrfjsG9cKko/2Xz5Bk9fkof/t/GbQ9Dsd8R5sVUFJ4M8S?=
 =?us-ascii?Q?3QifA2YD8gQopcJrE6hK8vmvofzX4VolCQhf5zDfBl9li6BGHPw/KqDbccNz?=
 =?us-ascii?Q?cdyavNIbO3VfTWsSwCf6Hd60kDwMNBVom28z0gNMSx6+MwXOG/xlpezweQxe?=
 =?us-ascii?Q?DxMKHz9Ud3aRuAVX38HHdoBYWQjJjGM9U+pEnErembj41TB4vcBu5J3iNUDe?=
 =?us-ascii?Q?4cAF73mW7HSbaveUYd90Yli2Ss7jQG8WLbvEzw5PjN4VZDFg+fXEilMaN6GK?=
 =?us-ascii?Q?nav/l11dbpHDYVaDz6CcSgPEuZML6MCJUkHKCozluxdiGyATU9mgQOjuM6Sm?=
 =?us-ascii?Q?gOlIhYoMeW0gzep9xFFZ2ET8j36DP7aLWy/8oZe/m+CFRFoIcrX4eo5L8/69?=
 =?us-ascii?Q?LUuGq/+MWII7YS0V5pnmkgbae7RvB9GNvvBZjOrQzY3cH4dK50srC90NEG+e?=
 =?us-ascii?Q?aYO3fO9YnFuNynsZl0ksfzuYXR2QTkhvzS363Hogt0/N/jL7WFB0VYehgCxS?=
 =?us-ascii?Q?c4efeIbYf3qQXZWVKC/fEdkGgkLeGaiLpYojDjmiwfr94AFJd40CTYP2AS4r?=
 =?us-ascii?Q?yQEllzDNecCMA+n9NaOHr6aKHLCsaKlOh507isIYiuFOwDGDq/WDw5FBNgC8?=
 =?us-ascii?Q?lQtJpDmdvD+Ib35gn/rNFWZ95lZaMiAM52WseApBp0SqrGXkAowGt0zihm8S?=
 =?us-ascii?Q?9lgsjTe7C5FbYhnzlZYnaiYmTgb0ZDaM/K/Qey/GqiFvOvCWBjs83+6VoLsn?=
 =?us-ascii?Q?nCnoowqneTkOPO3YidX6Vpd/JAM1s5jT/8qb0A5ghucU8c0G9nX+j8QNSbxn?=
 =?us-ascii?Q?mHp8bGMZfHLSejWRFj1BXrltWgHYASUAvDEpbqJ95ISToGvp3vnVRMYQQ5Ar?=
 =?us-ascii?Q?EuRSP0vjnQJNBwNUszx2eJn/aaHHV/2xu3RbRnWA2zlugoEYSvOjm/w1eHRl?=
 =?us-ascii?Q?1FCxW6A9vT/ddqzE0V765sPbHUgnJBgLQHfoT4NTu0yxuCtUueoCL29iWkKE?=
 =?us-ascii?Q?ISv4aZ8JCuYPHPBQv1vinNWFg/JeMqpAKf4J2LwZewM84GTRUufR0vAO3QJw?=
 =?us-ascii?Q?EzuYqJuzgXannYlcvl8mF9aiD4tRXjPJDIkSCukHOoTbitvSO5sATwoxV5rb?=
 =?us-ascii?Q?acOyVgQa6FVyPNzwHJXTQyIMhfQte5wbXvRapo1Lz1IdbTYU3Lkc0Wh55HxB?=
 =?us-ascii?Q?SN9h/DuAUSjRRv+RZyfFOwEKCn925BqvDKf/+pjwLv1MntvAm5Bm6wi7IIq0?=
 =?us-ascii?Q?z/TXJRIXUCkv14yyryvEe5Xh9g3QWlYJ/3KTY88ZDt6JUPVpS0SATyUEkmGg?=
 =?us-ascii?Q?RB5kV/CxB1e4tb4eeOzKQK1jw0qX4GQlfpXRlHdpybFTgTtNAlMmznDZeJk7?=
 =?us-ascii?Q?TU9iNMFiiwVVf+yZr1/fZ5Gbzk4Ois6p5/9ila6wubVFk2BLefpaYXVTUNKl?=
 =?us-ascii?Q?EQSIiXiZlAw3ON6N/ZXoEGg0LGQO4rd3n+UDaSEPjI7zm8q5QimPUED7Uz6G?=
 =?us-ascii?Q?OLEr1h+LL16lRUW31Pv295R6l9+9wUhXLaQy4k86RzeZJ/RXIOrvBybyRWxi?=
 =?us-ascii?Q?vMFiMA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay2.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	AARjNkFHRASRcYa+26ASwq3DR/KQWY000cmqD4DgLjqeILa+46caAu6DuTi7t33Hn4rApbqgT8yTx7rpaGsslVdYm6rIRhn2APRFKfpA5vs9W7khHAzczGKqA+nUkuMPEdrfiQC1VC2JftLw5Z2RCRHP6PWLKaWwjR3Xk1RJkp932Q9B0pqd9PlIz23OBmrcVlkuF1fbdJXu1KjjHJ9Jm/GkQmyTCtv66dLcydpo6acRkPTeclwzVVXegZ3ghT/FeNUhKWkKAsRj3T70/4yVjcC6+KVRrHKYbTaTqUukPz61rotN2DWKlZ+UShq54JTgbnECbywlxiNb56s8S3S57qbRYk3WvTdfM3nsjPjtj+P0RoKlgJn4VsiEDWAtGdCZ97ylrHeKF3YRENSLelOWSgldO2J0RdiCpjHHYcIKuTjSFYlG44kkObZuTXg7TGKy
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:55:30.5844
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b677b7-beb8-4e0b-df56-08de6e2c36b9
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BY1PEPF0001AE16.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR22MB4710
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266173-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.4:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,0.0.0.1:email,0.0.0.3:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6495314CF13
X-Rspamd-Action: no action

Configure maximum speed for the switch PHYs according to the electrical
connections from PHY to RJ45 connector.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
index 1e2266a2368b..2c8d2ab8cda1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
@@ -124,24 +124,28 @@ switchphy0: switchphy@0 {
 					reg = <0>;
 					interrupt-parent = <&switch>;
 					interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy1: switchphy@1 {
 					reg = <1>;
 					interrupt-parent = <&switch>;
 					interrupts = <1 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy2: switchphy@2 {
 					reg = <2>;
 					interrupt-parent = <&switch>;
 					interrupts = <2 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy3: switchphy@3 {
 					reg = <3>;
 					interrupt-parent = <&switch>;
 					interrupts = <3 IRQ_TYPE_LEVEL_HIGH>;
+					max-speed = <100>; /* only 100Mbit/s lanes are routed */
 				};
 
 				switchphy4: switchphy@4 {
-- 
2.49.0


