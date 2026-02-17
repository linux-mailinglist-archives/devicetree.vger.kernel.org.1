Return-Path: <devicetree+bounces-266129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDeCCpNmlGkpDgIAu9opvQ
	(envelope-from <devicetree+bounces-266129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:01:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4AA14C424
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C58E8303F476
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461FD357A2C;
	Tue, 17 Feb 2026 13:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="jEBfMPiB"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010061.outbound.protection.outlook.com [52.101.193.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EAA1F30BB;
	Tue, 17 Feb 2026 13:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.61
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333204; cv=fail; b=IOt/pDQ7XJU95JASntIN2+tj31hjaNDuXvEz1x/clD5R3jXlK7Krksu83l4+ZhbvEavT3ygDl37JupSsaJDeqJrjGzPesKdhtifdVqzUvtcnlOSYQuZ3SQz9GwylykE905mA/35wjDizXQUZT6IPy+FCStk2t7YyMvAondfm2Ak=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333204; c=relaxed/simple;
	bh=qZv9D7XT0H91xhgcX+ozMvaCIE060ITPio4uyC0qp5o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QkIGToFPozQ7EsMIFlWmcJMfxhCpfSFB7cm5XsY1+POBIHHFTOtceogChDuIFRA/GT2qpjXDByplLyiZIGG8iLEJPOXzctmSBsb1dbbQFxqtkhOTigMW5f3oUDPM1hneFiZOBdbH1kgjZnK2L/1Amu5uNtNGOZwQ6NCqBgVg2Gk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=jEBfMPiB; arc=fail smtp.client-ip=52.101.193.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JdV4/WcnnTGKTg6jJtqwl2NhmQpElQ3jsDz2WmrTTEm7uqua7hIVARRzwE0npIkWseFyIw/oE52osrbBsKxR5ZDr/32vBfsJ7AGQ3ZaekDcWpo40TTgf8Xi5xtSAMSyVsiQ03rQDIbrSy8py9QpBFN5Vb+xchHGMYqy1Uym131ddMXGUGm/XMHE8GIzcZ7PSMHmWqthr5GEOXmE4eQZMSaR9JanS3GkLjVkGxWTArUljG/Xvt8mXGJ4cbTBkzDofMZcXpNOHrOoEvF8C1tFnk4FM3xnHBI+J2Y7FD22jtMNRVR7+A9E09kPnwAqsw/IoryjRobdor1SIIElqb5UHNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eOIds7w3lwqUCtTKGqShiA5EsnchjolSb77H+Z/MfrY=;
 b=BnQMfBLUas+DhvWBBact+2o7xptcxt17/+7eZJKfwBJyZUJC1qismcu/JbZWvmyNdV/1MKQJ4WfKRFQA35H7exbVzRFtCAWyvmdFXplnRs8WG3vlf9KpoPhqmiA9t2ndjhSz37eF/COVQ61eJZbN2+V5E2uhJCiWEEG8NH1tHJl5kZCRFZYeGzLx6dOpDdcmM2EGtFlajSV7u/MeFSR0IeHvVktflxnoWgDXzcluE7LTFyu33ZAKWBvJ+58pQjU+f6x1cGgP1AH66yR16jE3vj+sDg7LvlkF6SKDUjXDDQImNS2fLR8AfmCY2lfGJVvUo1gxL+ziEfUSxDhNun0I3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eOIds7w3lwqUCtTKGqShiA5EsnchjolSb77H+Z/MfrY=;
 b=jEBfMPiBabwgWl3MOrUk0GXAuUWSlXdua1WqrLrtEMtXHCkNMwK3XBMxeJQamPor7ULwDpNqPc4m8BG+nJ2FijnNeCkSItsUgq1QFv60dr1Lo630MRVjymZ6rw5PJglJcnQtRrwb507Wf/gZDshYGxDAC6fv2uJUsp2zjYwlAhSmlE+DekBQzJAhKXoKerc3gcGD39OeirO9vUHnYH6yyrimEkl/mLTkm+ckJ7W/nEWrb1DxEkO5Kk5zFS9z6MQPP/ZnwBZhKdG+wXBzJob8qJCwoYYjS9x/qu2FfVM2g/vHTSornN/MoCKC/6eRsVvVTRJ+Ymz+8pjlztx0SuD/qg==
Received: from SJ0PR13CA0053.namprd13.prod.outlook.com (2603:10b6:a03:2c2::28)
 by DM3PPF062FE0117.namprd22.prod.outlook.com (2603:10b6:f:fc00::e05) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.14; Tue, 17 Feb
 2026 12:59:59 +0000
Received: from CO1PEPF000075F4.namprd03.prod.outlook.com
 (2603:10b6:a03:2c2:cafe::59) by SJ0PR13CA0053.outlook.office365.com
 (2603:10b6:a03:2c2::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 12:59:42 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 CO1PEPF000075F4.mail.protection.outlook.com (10.167.249.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 12:59:58 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 2EF13FD2FB;
	Tue, 17 Feb 2026 14:59:55 +0200 (EET)
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
Subject: [PATCH 2/4] ARM: dts: imx: bx50v3: Configure phy-mode
Date: Tue, 17 Feb 2026 14:59:49 +0200
Message-ID: <20260217125952.53997-3-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217125952.53997-1-ian.ray@gehealthcare.com>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F4:EE_|DM3PPF062FE0117:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 78015a99-a194-4185-867b-08de6e2474a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|82310400026|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?N0afC4Y2Nq1w5UjV0v4ab+dKZw1ZzziuRSybduzeJEv4ryXpsAMHnWIdjo5z?=
 =?us-ascii?Q?GhW1gPV3fhGPSWjnaa/i9t6uoZzYYcE+ktKU8HNTq86yDIn6ePeaPbOxU+2Q?=
 =?us-ascii?Q?YXFvXRgcU9MyvuHvq6meG4V62v4cOxpkYUkvmlV6E2kAv4RN2aN9+l6/xR7C?=
 =?us-ascii?Q?Xm21W7qvuggwX1U91j6KUKA0RDYdgOufKaZojBFJQF8rNs4sVAbb8QDo/djZ?=
 =?us-ascii?Q?/HChKCmydVGWLXjyC0K/vYL6DRewhxFnZxH84b+ttL/Tph9qCLikzB8ZPq8k?=
 =?us-ascii?Q?5bjJjVdt94Rt36SkDUHMqaoCj4wCF5bf7GvMyzvgnyCUDPOckwT57fcRBLql?=
 =?us-ascii?Q?+l7UmMq4JCaZyQHKBS2RxPNcxhogEuFsdcGqwJSv3/3HoCpgJNTqzUxJoDUx?=
 =?us-ascii?Q?rTnhMy8Uy5FOFjb6lEfP+Jq9dCBR5BEez4kiUfwqBGBw8AFBxSUFXfim3OSp?=
 =?us-ascii?Q?/gEyFBSkXvjMhmj7Tf2pKNphBXKQ602KOm/DDTjkf31nlKsnFo/v4pfT7usX?=
 =?us-ascii?Q?M7EDAP1BWcSLbLkzUwaD+kMfa7TW+kRqk9NaKVnGXkR8rka6/qt9hw0a+lUY?=
 =?us-ascii?Q?MecbCu5JfbC7lUrliKavh150p3XJ8FwDhwGO84erFlI9MKufcebC1SomTEbm?=
 =?us-ascii?Q?15xi3fJywlCI6pOVGPviYZw6prS96Vq2Ckso6eTnxGCtXQIcc01FyXoat5G1?=
 =?us-ascii?Q?dBKXfbXByVwGRa7HBXz3YNRa0UCJ4ghNdwoAF5T5YQoYTPU6sAdd5UPkE1da?=
 =?us-ascii?Q?6CgPb3dyuTFTxjNHyLGoiFDELZWaqzNyAkt5PQWZDXqBY5bRi/D0OfmeMMoO?=
 =?us-ascii?Q?zX5XFrfo0ixquSxgEaimwyhjX8SZRBvqRrUjxTKe9pGqkn6MzeEinM6P2RcN?=
 =?us-ascii?Q?+G/KqLsTNw/L5tyGPNbLNDHyOh4rptnWdzQXgXa0qraZLG2IusO8r/LPE7M5?=
 =?us-ascii?Q?HJrrbVljrV1SgG1/C3xtkcjT7/4ztUkzeR053IQ6lBMcz3RF9dWscn6r87s4?=
 =?us-ascii?Q?2ZPqM6V1QiNeuvBiEzY5OFTZOQ6UT7NQbzRBa7reha9sTKBHgKUXaBuxh1tC?=
 =?us-ascii?Q?38fSxd6l1zBIaoGfO7ys7JzxVVOiYj1bEEWcROAxbFIBOOrNhKSGgdq/2q+B?=
 =?us-ascii?Q?cAbXGTQxyFV5BDhwg8vjvwAkMmVI3T0FXU/t6K/cTupMLp4DFLrOB5ghXOTK?=
 =?us-ascii?Q?bgJRrVOvUemiX7VDFl9tAnJ/7NJWIqHuoca8yaHzMdz70I4u8qdrvSl2Wc3W?=
 =?us-ascii?Q?7uVxC7xgNc3KK4h/7STl0rsqLWudyNg37dtdQ3+KA/GK7KmrAmVWMWXXvUEy?=
 =?us-ascii?Q?hEFp0syOlBoSCCTyXV84r0up2JID2raTgVfnx5S20qF0+RorAtmJby5wK3fY?=
 =?us-ascii?Q?7ppO9aMe65JChiDujvaD891uudsOhgppGnBCMNSvE98W2nZtyHfrSqIL3NIl?=
 =?us-ascii?Q?rAekXlPZHsRm7I+TNnl9KiZKMeo6x+Ii0lomKEKyWZjg9dJvxGWIgN76udym?=
 =?us-ascii?Q?aGly9vu/6zd9nXMabvmVrAavUk4B2dShCALU/6YkEMozokh+X4eKlmhxAyjU?=
 =?us-ascii?Q?E7+nzQnVp+j29N3jcm0FBwR0xpVfnDFQcYLR18Vu7vVf0bas0fWwvdA2xcR4?=
 =?us-ascii?Q?eqUqCwBwnYuQi/O8w2AVFCK4tk2XCwxWCwhBDhbrX7fxPlAfszftzlW1oyvb?=
 =?us-ascii?Q?1cfuzg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	OUa60JKC0tZWX3BYk2Q5B9ge2zLeFyrT2ut76uCOoqbE/C72PZGJtgJUErPqk0BuERIe+eX0FLtD23L4m5W8ZOw+2LHSLYttEoMeh4e5X8gkBxoDDwz468DHKpD1WTvzNMN1eocZC5Xj2TuBY4HIoDQfLd1NaBmwTML8oc2gyJb6hLVdYxdSZznftI1wYeJ4vgH3phSTM59GOoTZNW/i9ZoCnGCbe8MlgT0M1xSiJ80j983y07fuHHHIqIJj/HmPOpo+rGfpvEkqa2qig9mcdErQcIPNHVXacQhZEKQd31tFhjpcTzFYE+84sGZuYnjz36/HfiQwaxlZ2whIzK+doQbWvnk39hEMYgbrUK6QkJJWnfnsEn2J9y5a9oXnJcs5ad5JtRkg5EIgdm4GBAsoTs12m//OFTJmKqY3nKS1zNvURzydfu4p5bz5D7qmMdg9
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 12:59:58.4494
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 78015a99-a194-4185-867b-08de6e2474a9
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CO1PEPF000075F4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF062FE0117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266129-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.4:email,0.0.0.3:email,gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8E4AA14C424
X-Rspamd-Action: no action

Set `phy-mode' on network switch CPU ports to eliminate a warning.

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


