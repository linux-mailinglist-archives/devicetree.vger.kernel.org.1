Return-Path: <devicetree+bounces-266174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCRZM2N0lGnVDwIAu9opvQ
	(envelope-from <devicetree+bounces-266174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:00:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BF85814CE27
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:00:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0221E3029241
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FAB336D512;
	Tue, 17 Feb 2026 13:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="J5o26aBU"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011017.outbound.protection.outlook.com [40.93.194.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11EF36D4FF;
	Tue, 17 Feb 2026 13:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336538; cv=fail; b=Wiv3RupB38j/HYdNMsepbsLzLUyRRnFTTTeLmkSKgdA5QCdqvbRuH/8lETBSBEO5PMjaVhQFq2Pt/9nFwdW0ft/J4avsnEO6ylu3cRaXspLg6bsj3Cku7gwsZ4aErxHHSlJsA/Ldwt/hQcKx33bYeSMC7YikOH2wQ/D5kSEMpM8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336538; c=relaxed/simple;
	bh=q8E51xky3EhZeIuNLJqFvTO9TfRAc2kDOaKHL1Y/C+E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MXfvAL2NfCiQEyeqIgJFfcprNVYxkeHhsLvcUf6s2fFmda6OdvA9sjFVyIxBV0wSAGGEP5M5koNNooypJVIdOx+Nl4o6R5AsGPs7Xo6Vdkg8SDp9fFazK5MiTihQibRCa2+r9xo4MUrS95np3ExUmQjjMsNMB3FCzkKm8g68E6c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=J5o26aBU; arc=fail smtp.client-ip=40.93.194.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i2eNiZFN3KqCWuleyf0XPF34p/k98RqhPDvbDCL1q4K5MCSccJD6+ImuSSV7hQGmJw30P2Fp/i7Q6EzkXpq1o5XlDDa+APFaIIwDXaPsE7QQ6x8MOZ3lOwTX7RXvCD1OOQU2iffVN7EEpmUvWGYvgjRncralrRW1uwEwSqfDYDohe/0KVncp1/y3FTiK5vlFjBvT2+fyh2icJZLjgqgO9GJuHPCz13UxDgI3Va5uGfiOi3r64caDtU8hjrc8e4vXcjxPVUJzw/V0Q9K9tgjbw2+4Pq9bSk+qbF7Ms5OuiwgzygGs2jcOQdUMqYG7yAulznx8KyrSzPFqgBpHBhZ+tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AYt/pSwSIZDXvrj1I46J8BMXgsVDKYkGbx6oN+R1ytg=;
 b=lJvY+QBavWL2TcY4nNhXEKp1MW7AXU3Yga1NGtmcuwnXyWlrcyk5B9vzjNU+rGJcuAFJQYR2UCxZ+nDkTaOvEMXpgWud9n+CBkNsGcQf7MsTzTBUPQz2FW01/fcvFG10atdyB59jVVXqz3a1q/HMKHl4CMlkrfEz71CeniWYw5+rBLaOsWCWsBRVFekCgC8pfFf11h2dHFlPGdfB3Eg3hSZen+pb4IS+yTHItyOKtExU/nsyJrHCZrFR0vJuf1jg+bCVER+1TscYYXAaCI8LwhbvjGk5ix65oHlHAKq1JYXuQKfHhtG2ezKWJiF+oSSL+uiZZa4qhfw0MXb7plvocw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AYt/pSwSIZDXvrj1I46J8BMXgsVDKYkGbx6oN+R1ytg=;
 b=J5o26aBUEqWxPGGU1VWgo7vwbmdVnwo0s2WB1XLQgQXGZ4ZFEFuyLWyfu2HZuGuGgt6kVidTX1AoqQDs91cDRwtXQcyXflwUm+IBlh9vlXqBIVzntsojUDyhCuRXb3YjNL1wZ3VHW7hUmRzqyU8VuMpZmIz28cpWDtzph4pF3WXtFmimifFuvOcyxkD8S2QcS0x3UMAv6BJtKHFcSIo0LTDGRPUptUHm9UhZMk1Ssx0d5AxWvjB3Abu/zpAlpjS0LvugkwpP9lfdOF+5Z3iXCJXf7+o12qep5xLB+5Fkey5FZ14ztW7l4OpRXGVLVAYTbStijOJVrbVuNllYnuic0g==
Received: from SJ0PR03CA0224.namprd03.prod.outlook.com (2603:10b6:a03:39f::19)
 by CH2PR22MB6019.namprd22.prod.outlook.com (2603:10b6:610:282::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 13:55:28 +0000
Received: from BY1PEPF0001AE16.namprd04.prod.outlook.com
 (2603:10b6:a03:39f:cafe::c0) by SJ0PR03CA0224.outlook.office365.com
 (2603:10b6:a03:39f::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 13:55:28 +0000
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
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:55:27 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 9D56BFD2FB;
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
Subject: [PATCH V2 2/5] ARM: dts: imx: bx50v3: Configure phy-mode
Date: Tue, 17 Feb 2026 15:55:17 +0200
Message-ID: <20260217135521.65742-3-ian.ray@gehealthcare.com>
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
X-MS-TrafficTypeDiagnostic: BY1PEPF0001AE16:EE_|CH2PR22MB6019:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 74600d84-291c-4344-626b-08de6e2c352a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?FYYANh3hIupfJwnuNNkAJQcsi8skyr8XTsx17jtCXZ36+j4vbGn6p6ExkpbT?=
 =?us-ascii?Q?KDuVvI8kxGXi7IL5/EZzYpNX4rgYtXcFhYpS6Wabkedxh4bSiuSmrqEcJuU6?=
 =?us-ascii?Q?FIuIrp4aeVPkwrMxUS3Y8Oam7cKhKGWxo1XHS8rg0pBNhs5srpoMEgAmdkIC?=
 =?us-ascii?Q?a38V0w2XcQaenWMrkhyFgc/0Vdith5KjEjn0qbE4LMoEQNfwkLAsJ3FFVclR?=
 =?us-ascii?Q?et+vXbra1nGlhjcHXreWVpHNgBzfjeH4YIY7ss2UVy7+PlzsJATkUS8cNLbD?=
 =?us-ascii?Q?k+xWeHqb7oI/Mlu7v2FvYaIvFX4avHPVoB5eEMlC7gGnbcnJHCkUqxE70f+o?=
 =?us-ascii?Q?PEdubz25t1zUWKXWJuVfd81TdqaGAwBgwWz9kl8pOP85B3eDWEQQx3F3mQsT?=
 =?us-ascii?Q?U9TX0LbUwV61FwJ7M1nZ6ww8dQsqowUStWDMoQboL1zE0oAxREUMOg5GeWpv?=
 =?us-ascii?Q?HcAcOP2SR+490oC1F/ECw+GJJgvbAu9cFI9wjaDkIY2VryuvHom4ojlMMBeG?=
 =?us-ascii?Q?T6UKyhUZzGx52YOJ49jCCSEjtqMc9Qm0BMp22JMUS6LDpqU3dBHF3h5m+Ryd?=
 =?us-ascii?Q?JZI9GpZxp14+mSxn6Mwo4gi8U80XiEswNx1iUP32fLjEPn/vKRln7JrC5//W?=
 =?us-ascii?Q?fMKlF8GyrwzUWkYK3MuEGbc+WtE3sTTl0TD4d3MIDUh/VXCwglOeSO0bgqkE?=
 =?us-ascii?Q?GS/uNVFoD5enr20GGneUjFO2xh7ErghDHcDK1hiM+GM/AQIYzfSaweSTA4In?=
 =?us-ascii?Q?daNGvXmi/ULAa9cF0yY51KYF/btqia+Y9uYAeI+bEhnmitnQ+af5ltVdTWXI?=
 =?us-ascii?Q?/zm0hYjxzw2MjA8WOWuatbGIHbOVFuk4Wn14oisVBIVgsoZii7sOlCr+zdxD?=
 =?us-ascii?Q?6t5oSNCb/0vcckV9WWgN8TPDHbxeT/NNVNGpwvSl4mruU+b6XYuuWOJPazrK?=
 =?us-ascii?Q?/ElfH6p0Qbmp3P0BaHTcEyDbYgP0GSb5jdcCci7eaFXUrfsBHNVmgExKopJ7?=
 =?us-ascii?Q?dayKrhQ+Isuycm8ZZRI2DW8ypjzp6F0YxbzGTXkAmAdx74ColQ5NYhzjtj3H?=
 =?us-ascii?Q?B9LhUN7uFVS9tUJipXKKpfpzG/z+vZQiKe4F9FkdaWMdq/z3HQyzcnnxWUJw?=
 =?us-ascii?Q?5/qXvmKa913kvI8wnOkHgiXuXv2QMldDLooamAnJRO+MCcGAywygOIuAimQ/?=
 =?us-ascii?Q?OtXY0GK2LxRM4HxYke9G52G0KeffdNaP+ZO8lSzkRv486OMiOa8ne7fVZFVL?=
 =?us-ascii?Q?iHUMebAuk1FGbMLONkZyA3lqAN7KTyAZ9xF+SLzKc5anW2mZyJ/rp86sY1Hb?=
 =?us-ascii?Q?O01sbY1VpPBOaGxMGLkHpaCHqBfNz7CGWDUQbQRiKfsc8qe6UaxQLsIIAhev?=
 =?us-ascii?Q?LUn3duj2HuEghP1P/RrmlUOYHcePp1oIghYXJ6ydaxSUUVfmwhj8eFMtOKqy?=
 =?us-ascii?Q?RT1SALTn1R2GNoR2B9KkHVGgVgAtOzr/tlwAatQCaq2Lenro5+2/4n2ADQh2?=
 =?us-ascii?Q?G6orTq7aqM0vjXwCj6u1q6Hcb35abYtet2dN9eFDil3CsUKbFfzP6zKnuwbE?=
 =?us-ascii?Q?9bgwmWBdd/VbGK/Nf5h/bE1ImZIF89Qgr6SG1BgoWr9gkK5ILeUFwaPblNbl?=
 =?us-ascii?Q?hUqN1t/9dIITtL3eYeZsFNprCak5iz3sm/ykmYG1To1jBfMt2qkdotcfms2l?=
 =?us-ascii?Q?G9HgCQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay2.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	Sc2cZ60bBBpNugLdgZggeL0ye6DfQSk4/ajxYOJsBVTGMayFMyKC+D4HhphrT3narwXg8X7X1siYZsR0yLwDQz9B1KVc+gm80e3mWoRD6nC3GfQ5QcI5HADxVMMJPdxko2RZr3VA/S5G70Nhs/wIRi8v5Fh0g+eIBvz40E9vhgZ1HqMrhumXjkIQnMP6mGYQymkoXnY0ih2nWYbsNe6GN9+j2lLNXuE8UWKOw3T/W/+E0h1Pz2nOgaKpmPYZ7aXh6ua90sQ7bLAlMxCYKyD08JLR4aSE4BuWOEEwhT3kAzsnNV/cqdP2HoRH0SF8cTzzEq/nVkiKmtX7vr5zge4wI417cK5HNfVH590M7hbBZnK5XK03c8Igp0Wi7l6azBtZHE4/dP17vJUxyrN1emjtgOwxn9LBCuj6Xap3CkXQG7t6/qalgr/w4CXPHKHGox3f
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:55:27.6297
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74600d84-291c-4344-626b-08de6e2c352a
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay2.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BY1PEPF0001AE16.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR22MB6019
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-266174-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,0.0.0.4:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_PROHIBIT(0.00)[0.0.0.3:email];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BF85814CE27
X-Rspamd-Action: no action

Set `phy-mode' on network switch CPU ports to eliminate a warning:

```
mv88e6085 gpio-0:00: OF node /mdio-gpio/switch@0/ports/port@4 of CPU port 4 lacks the required "phy-mode" property
```

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts | 1 +
 arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts | 1 +
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts
index d994b32ad825..7326b8ad08cb 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts
@@ -140,6 +140,7 @@ port@3 {
 	port@4 {
 		reg = <4>;
 		label = "cpu";
+		phy-mode = "gmii";
 		ethernet = <&switch_nic>;
 		phy-handle = <&switchphy4>;
 	};
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts
index b0d345f5d071..9a43935be11c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts
@@ -139,6 +139,7 @@ port@3 {
 	port@4 {
 		reg = <4>;
 		label = "cpu";
+		phy-mode = "gmii";
 		ethernet = <&switch_nic>;
 		phy-handle = <&switchphy4>;
 	};
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
index cad112e05475..e7ccdcba2d5c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
@@ -286,6 +286,7 @@ port@3 {
 	port@4 {
 		reg = <4>;
 		label = "cpu";
+		phy-mode = "gmii";
 		ethernet = <&switch_nic>;
 		phy-handle = <&switchphy4>;
 	};
-- 
2.49.0


