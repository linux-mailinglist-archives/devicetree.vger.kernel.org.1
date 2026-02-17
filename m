Return-Path: <devicetree+bounces-266172-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGZLNhh1lGlmEAIAu9opvQ
	(envelope-from <devicetree+bounces-266172-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:03:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B45F014CEDE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EC8D630D9FF4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD28036C0B4;
	Tue, 17 Feb 2026 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="MNQs+M7F"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013065.outbound.protection.outlook.com [40.93.196.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD8736C0BC;
	Tue, 17 Feb 2026 13:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.65
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336534; cv=fail; b=prK8lk7+EAhMYrtYoaNd4fvqg4bvxTmP5fvmDVZN20hlxmnzAHjXRJ32qnZzl+xUPCIeASjpaKBDQkyQG+t0eTCiTjq2YFmniSVRu/FRxDXaeA1ePVo5OBhrOSR3lKX9SVl4FMUpzoU7PuuFXkVcM2XumX+SZTB02ZPL6aj0hWI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336534; c=relaxed/simple;
	bh=FS5r32Xs1mRefmYHptSAfyo1QfpH0Nt7payH8IulkOg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cOfQpQVYU58AshI/UDkA6aMok+UVyoPp4B/Pvlo58QGJ4bz4envFkbSGgKJnCZQ/qhNOwk6YzH6pyH0gpXY62GqsO9oywBMcle1U53Ssm3lSxG8N3x71Eo+SJxR8UE7Z64dlFxmL0bBV/tFQfuy9FM2sd4Qa00tGFJzq3G1WAtw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=MNQs+M7F; arc=fail smtp.client-ip=40.93.196.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fCfXuelOsjpib4aG7vtmk+heFBK1ylJLhFZZsyiTXv2MJhzblbDHAkF1oIKBrG1B1xU44f9iUCtiFi/9u3y3hX+TIr6CMTD5vVXLL7cO9vz339YfC4UoYwGE5ZhFh4sxw/aSOujZ2ryg5Et5AwxYtEayTjHSK1p+AZFAni8xgx6BF3JRmgpx/EtJnCC8XnqL3XKBGuslIJp14UBu9yjj8Aa1qG1Shtwp3fyUj9aCxRJZzjIQGKREOxI19DtYEuge5PmiRAVe2TNMy3BJ4qMltmtqEiF+7ZXimpEV+cqwvHrndXTd42/orJWwzA+Uv7y3VsDUmc1e5SZbvbuwMnyqhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lESINpYOthaX/U+Uxdy2J/xlXhHTTcmtf1Y8H54nCpw=;
 b=wTRkYl6/USGfgbnbjSF7LxEaZkatPIX3F9pFSgnuc6wpLHgekNX+dPRN6eMvqxRexnzQS49A1NrZpeEINmigilmqy4ovmGjH1pgZq4a5nvDigFNDuA8O14lZ/l8QDigbB55jM7RlGUoFA98Cnzo5OtbMb4SOVj3IHyu9N6fytclGvsLnQGkGPGQfUwWKRuisRxBskhDHjEGNouFIwydCatMikrL2Qwy2J7bJFVInVGsIJNUAf2PoGLbl/v6KjHM/puHyedwEZD3fR0PGTEY5hu6BaGrvq6c6aD+7VjtR/mtLDODNh0hy1czDn9epAkSpKRgelE6BNITXPO/1jdLw+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lESINpYOthaX/U+Uxdy2J/xlXhHTTcmtf1Y8H54nCpw=;
 b=MNQs+M7FDbxPSLjd6+sTzU4RRocTb32i1/avrqkSwI6ssyl/RD1K4MVXByDoBI6Zow99GyZkxei78NAUYWOE5Ewy9ehQXwsB7m2kkNfVMkfp7tdG8ERgSHRvuHiMnd6+tSFBkJv2LiLuQAmz84mHdz/t2AIlfAjDoXMcFNAsDVO6Jj19MRwAmUDaLIZFRstqLsPRYCtn92e8BsFe8T8bz/TersgM+QcW7qG2Xur/dJkeyqVvc4eFt5kl5fMcL91EbxqKG0m+knyhWkbPwV7JO1qc2Ui6O73UCM13R1Q7mTBUfcEmUi61NiUUU5FoLU+q60zL45JxORWLCT1NXXzWjA==
Received: from BL1P221CA0009.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:2c5::24)
 by DS1PR22MB5826.namprd22.prod.outlook.com (2603:10b6:8:1e5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 13:55:29 +0000
Received: from BL6PEPF0001AB72.namprd02.prod.outlook.com
 (2603:10b6:208:2c5:cafe::da) by BL1P221CA0009.outlook.office365.com
 (2603:10b6:208:2c5::24) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 13:55:27 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 BL6PEPF0001AB72.mail.protection.outlook.com (10.167.242.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:55:28 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id A35CCFD318;
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
Subject: [PATCH V2 3/5] ARM: dts: imx: b850v3: Use alphabetical sorting
Date: Tue, 17 Feb 2026 15:55:18 +0200
Message-ID: <20260217135521.65742-4-ian.ray@gehealthcare.com>
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
X-MS-TrafficTypeDiagnostic: BL6PEPF0001AB72:EE_|DS1PR22MB5826:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: b212d2c9-1591-498d-8d55-08de6e2c3527
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?B+4azqmTQH3asP+ca7MD5cu9G4Kjyw6HZ9UPVg+BbkCHGSswnaDYqvG/qApv?=
 =?us-ascii?Q?xMpWSfbLx2IsgETVzrYwSgjj5dh8O/5S5PPRZhxa2KwV8pWm1J2Ht69jhG0p?=
 =?us-ascii?Q?isheb7tfsk3DXApU0wkcKtzHqSgvr4tThUjquV6YgeBtJJtBW9KA48Qau92n?=
 =?us-ascii?Q?caypVpBeZ1QwmL+DCNrkkoEnysI+YWo2r/9+UiGu6xQj/R++Zu82hJwJ9sxK?=
 =?us-ascii?Q?jr4QqIJ+nEibEqT6bZ1YsRkNVT41fj7jMf/Cx+6IL3aDREfVP06Ja3UaxY8w?=
 =?us-ascii?Q?a/HCxnR0Q9PAjK9fypF3nlI+RGvtIXHW1oPc0tuRAwfqJu4YdWGYeMFx71Jq?=
 =?us-ascii?Q?6XNDPbp0xQiLbGu435L6S1PL4klL3d9Jw3++BY1QgAiFmLVsRsTmoujAK94j?=
 =?us-ascii?Q?9pbb2QgRJe2QYHOhuPweGM2v7nJguhtkIJNaS5I2hSk4do3UKbJ/9rGxi6/o?=
 =?us-ascii?Q?pjdyofiLYB7JWN3DppYjZQLKQwD+N8JWS+DEaeL/dr2S6SsWKMxqiIOHAH6M?=
 =?us-ascii?Q?M+SLyfpnNXVk+eV3J/jOSXGxfijqsTwz8QlWVFOePWo8DB2bKLasSHQ+ixxV?=
 =?us-ascii?Q?s0IOs1/A4+ZAWiMbo66Oi2xgQeb2WME4KXdhq45i/DPJ7R8Ub+aC8cjGkkN5?=
 =?us-ascii?Q?lRy4tt7BJb+4rYcQu+oA3WFlJRSMgXo5PmDyGDUyVF0Ud9VjYU8mFXORp/oz?=
 =?us-ascii?Q?/dvvJd6w88pn6K8pLLM6nv8gzuxwHN5V//Elxsihdsit9IDfJkS/RMD7Ogs/?=
 =?us-ascii?Q?T8pnbOkh52/7Fdde1lL/PGcCtEYtae59LpLuj9/0nGuDHgCEDPUjbj2wHkjN?=
 =?us-ascii?Q?TzHH1aUVCcGFreHIPUwuqxfRz7rJMh6Jp0izYmx7Yn0F5nm5ZZXl//hm3RE5?=
 =?us-ascii?Q?dn68iBZL3tPcV8mYRAH2ShXg7AScOkNTRvz9I/OOY15QRFwvESC+29GYfe6j?=
 =?us-ascii?Q?Ivtp59j3uF4sl6efLyTZdaa59j0+fginfszRBafR5Uxr5SIpJa8kSS2zK2V5?=
 =?us-ascii?Q?wJsZWG5DPagNyEWZo8FC8gJ7Q3jFXR5cvNJflXVfBgDxPpjhUERWf/OGjX4A?=
 =?us-ascii?Q?4wBX3927YeECDPn2MxAdCtLL1/HH9Qf59YqOUIbpN1wuUBtTtMQ2SaOVenEr?=
 =?us-ascii?Q?pSN10P9XNuhtQ5sEq51golJeHf4qw7U650LvuNV1AadjNA5ybYMhpX0Svc/u?=
 =?us-ascii?Q?aY6EjMIAKj0HYQj0nGXP62AbUrVQAwrUvqnxe+IM4IaDa58ZdjzV2y8j75iT?=
 =?us-ascii?Q?nPOO9wef5L1LsLyo3a4Bl+EizfJifwiDRtjzgEEMBM4JC2r4Scfw4Tpz7G0Q?=
 =?us-ascii?Q?mOmbkLlf+SW7t0u/A1Bn0tPmn9E3+AEELYfSV0k4t+tIbLL4/YR57IU4zc8h?=
 =?us-ascii?Q?r3r1t3QAX1JwwMzW4/QO+Vyu4f9ipaPylO24E6GEkYXEP2SSKiybPRXjMxWA?=
 =?us-ascii?Q?7AbDTanNOk2ehmDWQJ3cHVGE+1jwxAxozT5FGK9uA0GuUx181Ew5WeSvO9el?=
 =?us-ascii?Q?7cE6estG2zjNCNFUrM/FcsCkNm8CWBNF/5twdi78DzIYSzmTNPcO8u8U1gEW?=
 =?us-ascii?Q?NKB7SCYrceIzh/ccgiTR2bLob65Jedhc0QPHFenxzB6H8fXsZ9uPIPpOMMn7?=
 =?us-ascii?Q?SW7yCHkbFJzgPnSG5RwajE+atblF02vlT8yAFWBrN9IoP9K7vrBXVgvNGbVd?=
 =?us-ascii?Q?+Q2Vwg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	QDa95CjEN01AoOAySWiDy3PYF9ywR+g1Nd+v7MeXSOC7YGSHTdjioq09tLDHrv8bpwBzUxHMVxc+jhEf5VofhC5XcG8iQK1DFqBQ4KuicROO3RkejRaXVxybvFLA/6NL8wj469vkkY+GcDRAHM/nFPtz2BQUfHYf+FrQLHMNmcJOQuxhnN+etLXW9aK9w4Kw3hfrhhIEQgmPGHg2WGwWlobr/pKw9NTGXbysFouxNbLyA/KvmRuUr1X4YQveRxWE3PxQyfnSGXHRmw3HjBob0N8bUTumNzf/9ZxfuMitbjPWsu9BFDJlMSQNeE/zOzykAt3tjN0R8HQSo4d4ZF9UKYSKMBGWZmqMTgB73LAyauijHjlNiMdhanpLA8qk0aidrRQL1g8bJH5MHBpwYy1fugtn2DTtu/GtkBx4zsZerD1yvIwW5f3IiU7Rm1H3DuDS
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:55:28.0422
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b212d2c9-1591-498d-8d55-08de6e2c3527
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BL6PEPF0001AB72.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS1PR22MB5826
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266172-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.4:email,gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.7:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B45F014CEDE
X-Rspamd-Action: no action

Use alphabetical sorting of references modification.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 38 +++++++++++-----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
index e7ccdcba2d5c..fa5814287f71 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
@@ -53,23 +53,8 @@ chosen {
 	};
 };
 
-&ldb {
-	fsl,dual-channel;
-	status = "okay";
-
-	lvds0: lvds-channel@0 {
-		fsl,data-mapping = "spwg";
-		fsl,data-width = <24>;
-		status = "okay";
-
-		port@4 {
-			reg = <4>;
-
-			lvds0_out: endpoint {
-				remote-endpoint = <&stdp4028_in>;
-			};
-		};
-	};
+&hdmi {
+	ddc-i2c-bus = <&mux2_i2c1>;
 };
 
 &i2c2 {
@@ -129,8 +114,23 @@ mux2_i2c8: i2c@7 {
 	};
 };
 
-&hdmi {
-	ddc-i2c-bus = <&mux2_i2c1>;
+&ldb {
+	fsl,dual-channel;
+	status = "okay";
+
+	lvds0: lvds-channel@0 {
+		fsl,data-mapping = "spwg";
+		fsl,data-width = <24>;
+		status = "okay";
+
+		port@4 {
+			reg = <4>;
+
+			lvds0_out: endpoint {
+				remote-endpoint = <&stdp4028_in>;
+			};
+		};
+	};
 };
 
 &mux1_i2c1 {
-- 
2.49.0


