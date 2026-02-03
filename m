Return-Path: <devicetree+bounces-262008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPmkBjpZgWkFFwMAu9opvQ
	(envelope-from <devicetree+bounces-262008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 03:11:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A848D3A6E
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 03:11:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B21C3031AC4
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 02:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267682F1FFE;
	Tue,  3 Feb 2026 02:11:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023113.outbound.protection.outlook.com [40.107.44.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F04D2F12C3;
	Tue,  3 Feb 2026 02:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.113
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770084662; cv=fail; b=CRFALi9ogRE+aW1crIMGT9vFfQ1ngVcbJbXKh2LxQHuicoubFFu3rY6Xe9uC4A39/1LUODyGUkgEXHqDaP1kPrdLcqSj1SEh3VJrcl6b+2X0RAOkMms7aGts+tfAH9MLg1ECNZF8yn5fUFxxmu+ZstOnX/Bk9w+uiGmar7XkFMU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770084662; c=relaxed/simple;
	bh=2UPgctiP2BnVt+PwjeHKHknYYXwTEo4Z5Sfe/yc26QQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EpERrLxpPAwawfL4a9U+EHKy3DkDCpfWzSAelcsfvpPz88UutaCgyWDXvow8ZKsjM0gNCX3Vr0q3tXvE79BABC4XSV0RupVjbDGjjnkGQ8kSILO//zOq3nVBqvJU/vsj2oHUY2EZ+x972yl8cLIVikDaHjMPE7oQQM5Rw2qU2DA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z0e8JhM8y/tuOAx4H+UridGgsTzOsEgE7R9UGRXLJHRWe/BcmcRJKTVvNaID93IKJ90R38mGVoemZxml5awkK8qjbeFzzYQJl7iSHNwMPNg7YagnEJnJYy/3Njw8HOeAZhDIi1bppMXH0hbW/kUVIA0RUxwn1K9ypwqTI0+BgNgpYqCOGRdmwsPlFeCCBYB8+9yw2vBXhkkIw/h3Dgnp1yrYQP/2fz3WuSZCX3/jm6uhj3CFwrceebjWz/6300YWkGyxrCN81xKgKHHCIg+QhsHBDKJWf6czsK9lxb1YdUDM0JXbjgyZ6fztIWPpX4z2wWwjnE3W4Lu//fM7gnwutQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=641mfZC9UhARD4jrIgtik2gClfPhuW2WKmijqdYnG9Y=;
 b=yjcLNm3OYUTL+PuStBdVjlG0p9wk6D0lEV2ynuREqnovsD8rpgTf/XQ3Eqh6vtbe1Wm5qnKwyIkPGv0Sq0WewBNrGj1DeKdZQghyEsy+YYy2lvDQFVsVGhVPUZaYoe/XwfSZpzUKMzJLBGKD9JYFhhHL4LZvXVuTAmOkEcpzaOS2tT4UfI7rdtXuolPOwqXS1Bn7FLY38WZskVPRvdrAcpmAo/aMChViNA29xyFou2BzBSJgHaLmZ7C3nHrGp77C4dmQuV3VBjmO9AGSzzz7SGVfvgRt5OtT8ChCUI47tsKj1NMT3qD3spsk1sUexZcX4hFHKwgGUD2CY6bxBnLvjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=cixtech.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SL2P216CA0152.KORP216.PROD.OUTLOOK.COM (2603:1096:101:35::11)
 by TYZPR06MB6913.apcprd06.prod.outlook.com (2603:1096:405:3d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 02:10:56 +0000
Received: from TY2PEPF0000AB87.apcprd03.prod.outlook.com
 (2603:1096:101:35:cafe::a7) by SL2P216CA0152.outlook.office365.com
 (2603:1096:101:35::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.16 via Frontend Transport; Tue,
 3 Feb 2026 02:10:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB87.mail.protection.outlook.com (10.167.253.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 02:10:54 +0000
Received: from localhost.localdomain (unknown [172.16.64.196])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 037A8435071B;
	Tue,  3 Feb 2026 10:10:54 +0800 (CST)
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
Subject: [PATCH v6 3/3] arm64: dts: cix: add support for cix sky1 resets
Date: Tue,  3 Feb 2026 10:10:53 +0800
Message-ID: <20260203021053.4073258-4-gary.yang@cixtech.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260203021053.4073258-1-gary.yang@cixtech.com>
References: <20260203021053.4073258-1-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB87:EE_|TYZPR06MB6913:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: eb4e0e69-9ca4-44a7-a4af-08de62c976c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?F04qO7rLTplx33rNDDihdJGMAPHUj1sos8EBXO2br3q0o26ZRpJfUihL5Qun?=
 =?us-ascii?Q?71E5VeU1t+h64yiPHJMNmZkQcCCrXBrBZtFqQaC1OvPBz0rxdHm7KsVIT8J1?=
 =?us-ascii?Q?/dYDDH32iW4ljSsWXGpf20xLBI1yuVBxb2geNDH3UpdwAqWSUI5/mHtST/RS?=
 =?us-ascii?Q?tYcfQ0z0tHrk0diNtcii7G18k2jl2s0s70N4Y74TsnCO55VpQChMw1zJhuei?=
 =?us-ascii?Q?5RSm0IlktO/HA2QHXMsDlQ6TjaxBBiHuCLnN6B+dloZsKGrfy5dWjr5PJSqb?=
 =?us-ascii?Q?PAJ3ABAQtwDUZMh6FCtt1BGTG2DjhWTzGZKD9fGuSWb911/aUqtkJmNUW/cT?=
 =?us-ascii?Q?aa+pA15IzREaKqyU9Q5Fd4ZC4lZwA8XLxNmGVUw6KQ/0cSzWiRSdJTShxu0K?=
 =?us-ascii?Q?Qd4lLwOOq9ljV1gTkdfIA/7bdOFqAtSMcUttKr3N8O7EktFmhLADADuhrELW?=
 =?us-ascii?Q?usB2m13SZqCop0Y3Uj0eJ2VrGiiveR7Yc85PTt6s8ojXyu5nrRnmKCB+1qaZ?=
 =?us-ascii?Q?byBTDgNv1gkfJE6sdANG3EGvJd2QrRO6Xs+sg0zX6jJ6YuOr9a349yI1QewO?=
 =?us-ascii?Q?gSZLIL3LBoXhTdZAKADq2i0qoRb6tT42bG08XtxCbzli1Ld4AAX7zBpmimW1?=
 =?us-ascii?Q?8pXCCXKng3jO0kAYmN2dD591KAaICj74b6Rf3vwHF2r5TZyNJTiB4wMFj9iA?=
 =?us-ascii?Q?STEUUjxqii18uggUAPedQRhWOu03JyfzIxxGGncAiwppArvK4fLngp6DM1Ci?=
 =?us-ascii?Q?iNgFeaf6qMDHgCZV04tgS4BS8wB7qh5SjlGtGYEI8y/L/EcKCP4QlHyCWxOl?=
 =?us-ascii?Q?0etX/sGfN5r8VZcs6nXluKNcC7lG0GteJw6VreoCb7179amfVwPDWbSz7hLa?=
 =?us-ascii?Q?oIeZw/SuuJsaTtgCW2zZkalYk3idoU/M8JR5zCrQjk20bfELBHtegX0Vy/gj?=
 =?us-ascii?Q?g84afgpZSjJ+s20snC9Cylp0czussP7GyU9ca0U749PICVFpGyWLlOBSDQRB?=
 =?us-ascii?Q?C2JdmgnYWqUqhNpxmRdXLjr2qVqVbFObHKP64+W0QZBcDeTVbHsIkH27k2Ic?=
 =?us-ascii?Q?CGPo3IYejk8txS3O9L9wXQpMmytjoHgLn8B/0yLrSeCsER7K+seKvLco1FMS?=
 =?us-ascii?Q?uw7g3qtAA628P8frf47LWBLox0foV46DNG198xVFLDekrUY+MFePIu5DM7xR?=
 =?us-ascii?Q?oNeOj26dDGqTWrgNbZ1IS5tylla2OjYUTji6BIvMFjli/T8DzbwQV0aSwvF5?=
 =?us-ascii?Q?OM4ahB4E8clpXtVLesnWE6XqKl8FCxnuAG3IFiUb3r2W2FnvGqHdJDWmJks2?=
 =?us-ascii?Q?hftwxmOj0hctRi2+yJ4gCRbeWARyF4vWwMgPaB6jaHJIrWVLHN5CP3kApmx8?=
 =?us-ascii?Q?U2NzCKcPLa+s+TwlMIayFgx+99CQSCr1re4cNAIb9fXGURwa/JK/MHnHVCHI?=
 =?us-ascii?Q?liYgffUA1dWZB2x0XhTMVA6hxr7VZPshkH3tsMzZYpwjwP/ueGue5KSU7TdL?=
 =?us-ascii?Q?WFk8W6h/Vf0FzGTogGbYm3l31cVGd30k4a7I6LlTy2VDjfiiLyELQmhNoWEq?=
 =?us-ascii?Q?UpaNMyNi8AsSp2FMqk3BW9bht9uMUhHdMJtokNmv2vE3ABRHbwi7Abc035q2?=
 =?us-ascii?Q?siQxfayeRnIJTqqCTC5b4DcQepHaRucrM0mC0+gOq8NUoJK065Q3o/kSH07s?=
 =?us-ascii?Q?VP1pgg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(82310400026)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	+1xZSB2S0/2RKRiiWQIybFw1tWzy9TpKJhV4lF6Z17Ib3OfE2IWeUBgBEFXB5wet2tju4yy8IKW4z2LLodDI2OgCljA6p29rZ0pE1v9JBBXgrbuwU8CYFvUzsZfJ+bVwPPHl4nwYDtoZ7r9ebjbjAOiOJm5cRhUC/C18dd34L/JFSbMtJoXS8+CNK/mrNMZkAxKSPZ7Yn3ktZK9lwuThbNTbc+kIoV5V6c5LSJj7tEHio05MTHNQed5//Yn5vG2ebE8iP9YkBcmpvMGKLdAPW3tbLAR1atw3QesasgV8XVOf98NsUesDfXQnd/PrYvEENn00MJ42RNgvQyT76SJAtBjIiI9+x9q3Nh+ZBvMvHyv8YjBSAwVXQMd3uNVAAQLtgCtd62atEIYZBiUKvDLN6dRTrpt/UEvJ8H3Rg2xSD8J1jZjMmAd8SORiwzJoK6kV
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 02:10:54.8530
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb4e0e69-9ca4-44a7-a4af-08de62c976c5
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB87.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB6913
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262008-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[gary.yang@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.62.143.160:email,0.244.63.88:email];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cixtech.com:mid,cixtech.com:email,0.63.161.16:email,0.63.122.0:email,0.244.36.0:email]
X-Rspamd-Queue-Id: 6A848D3A6E
X-Rspamd-Action: no action

There are two reset conctrollers on Cix Sky1 Soc. One is located in S0
domain, and the other is located in S0 and S5 domain.

Signed-off-by: Gary Yang <gary.yang@cixtech.com>
---
 arch/arm64/boot/dts/cix/sky1.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/cix/sky1.dtsi b/arch/arm64/boot/dts/cix/sky1.dtsi
index 64b76905cbff..37dca97b6b67 100644
--- a/arch/arm64/boot/dts/cix/sky1.dtsi
+++ b/arch/arm64/boot/dts/cix/sky1.dtsi
@@ -348,6 +348,13 @@ i3c1: i3c@4100000 {
 			status = "disabled";
 		};
 
+		syscon: syscon@4160000 {
+			compatible = "cix,sky1-system-control", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x4160000 0x0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc: pinctrl@4170000 {
 			compatible = "cix,sky1-pinctrl";
 			reg = <0x0 0x04170000 0x0 0x1000>;
@@ -568,6 +575,13 @@ ppi_partition1: interrupt-partition-1 {
 			};
 		};
 
+		s5_syscon: s5-syscon@16000000 {
+			compatible = "cix,sky1-s5-system-control", "syscon",
+				     "simple-mfd";
+			reg = <0x0 0x16000000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		iomuxc_s5: pinctrl@16007000 {
 			compatible = "cix,sky1-pinctrl-s5";
 			reg = <0x0 0x16007000 0x0 0x1000>;
-- 
2.49.0


