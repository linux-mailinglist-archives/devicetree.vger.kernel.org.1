Return-Path: <devicetree+bounces-266127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CEfCG1mlGkFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E8514C3E3
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:00:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 66EA73009397
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC47C356A0E;
	Tue, 17 Feb 2026 13:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="O3U/TqRB"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010046.outbound.protection.outlook.com [52.101.193.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7773559E1;
	Tue, 17 Feb 2026 13:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333201; cv=fail; b=URx9G3U1lQ6AXOHeJA/ZZkGmSlHKBH8vxN/ji9qyUI6zPjhlQpGvWBeOiXR5R/8hxeOqmYIAvleNsKFGVh8BHOEGsDjcQ6BLS+84cOWpDV+ffEoqeSqm0SS0/FsclvhFQEhbtpn8MVNGGIcfzEq9Sdfiw76qf7f7CFkU4x7TEEo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333201; c=relaxed/simple;
	bh=zH7Z2ZhowapiHc6myVJ22txCXplMjk3tjaDmnggaSwY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Hmxa/U4QweKQzAoURIas52hChi6Vo7F9yL7s0+Au94oCKt6xdWzfRa54+xjA4sFtuvXlXEYqkxQiVOGEa7LUYsGu+XOj5JZsZrSvEaTVvTCc99jMkm8RHLA0FtO0VxbiAtdpPQXw7fzmqs6qHmHrYWo9DGh0gz49mm2jTeXSN/g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=O3U/TqRB; arc=fail smtp.client-ip=52.101.193.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eMqR8tu2DVeMomQRJC3vkyNX/ct/wFyfJOlug1CFhDlxBP4DHS6Q9NRjSKxleRs7/xGcMEA30hPPdTI8Xfq7o3qi1VGCCjNrrE9olqBZr9TMRt37VnRSqPYy75p9UzsWJjd+aEteEJne7Pz8qN7ncNWJpI5iMjFGvXW6vZz0uJWh4uQ82MgFdmbtsb3GNqVPmYOAWb7cKtVrEgV1fC+IoMFj02hI37eKkeuSMNqX0Py87CN8dVTlO7Vfkkz3NFWK80TAYMvWBu7FfcXIcAhDYK01B5Yma+cRT8kaGlz7BGIyIegN13j+syyt9I8dI6Fte52fA4L5l8GNUVCOWohhSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e3OR6/EXxYEZnYWebb1opRXAJi/f0pCvukd/4Hhuiq0=;
 b=X+ZDa+4ynNJJuyQtBMeR+Rddn4iHOIXviVwZaYe24YCf/otvLP09dk3R6ozvRlsBKlN7TuU9q1wKySbcAVX9enkGj9q8xEnO714+BAU3lnZBanRfdxKAcT/nmy/4/GrPQlbtjWGMPav5zupXOw5tQ2fKRpO5F1uClzLMeS41+2udcI3bekmiOx4+COfKLzPMuDwFu3kJp9DPC0N8Jj4rOkRv4ZBGdO16ulPsRcSezuhcAB476m6fWfEzVsDlLc73cRRHTqnv89I8IaGdOWyXWeBsa5YAoyoJEhdBft50GVv29gb1Shro1oRrqcG0AkkdMeJfsFLaOQZD25LeAzNIxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e3OR6/EXxYEZnYWebb1opRXAJi/f0pCvukd/4Hhuiq0=;
 b=O3U/TqRBnzvwv4fbHUsUnKT7GKP5/5I//xlChDqZrgPc5DzI7IEXLDDzRFZqQoVr7mB4A4HaRe3h7RwbXCyp1IgT0fOqBdgj8vr86/+capExk8lP998CWeFgwvCrK+V3oBGF/0WXGJsuACxShWxq37F9IfkqEYhmyLan2uQu8ZHmOiOKuT7kMID+BuI0MyujObt69Co4Xoegfq2kCA6SNx5YnzkcXSg8nGKfYcTENG8ioULBUNHtLyiPWKaFgDmrz0yiF08DlM2LtakH96Hwx3mhdsILNP5U/0S+iebnbkJlXUFO9aYpXJ7Tn+DWOBO/m3ty6lJLJ08teVR3mEq9hA==
Received: from BN9PR03CA0748.namprd03.prod.outlook.com (2603:10b6:408:110::33)
 by IA3PR22MB5808.namprd22.prod.outlook.com (2603:10b6:208:51c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 12:59:58 +0000
Received: from BN1PEPF0000468C.namprd05.prod.outlook.com
 (2603:10b6:408:110:cafe::92) by BN9PR03CA0748.outlook.office365.com
 (2603:10b6:408:110::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 12:59:58 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay1.compute.ge-healthcare.net;
Received: from atlrelay1.compute.ge-healthcare.net (165.85.157.49) by
 BN1PEPF0000468C.mail.protection.outlook.com (10.167.243.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 12:59:57 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id 220CCE8F41;
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
Subject: [PATCH 0/4] ARM: dts: imx: {bx50v3,b850v3}: Update device trees
Date: Tue, 17 Feb 2026 14:59:47 +0200
Message-ID: <20260217125952.53997-1-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF0000468C:EE_|IA3PR22MB5808:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3517218d-0c85-4be1-1094-08de6e24743d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/Y3c8ZMcEOI52cM1AwcayR61XtBQ+LD0hTNxcTIN/wPSKtP7c/iK3KRdCMTZ?=
 =?us-ascii?Q?Zfnk+7/XoJ7/XxFK93MB6l8BKS67Y5VDCUmZovnF3yiBwnTPiU61QzCEPrpT?=
 =?us-ascii?Q?msRApJv3h8p4u2jMHSbePUGK6kYOV6EfaDLC/UYP1oZ7w+deRcHJsk7EXweV?=
 =?us-ascii?Q?cCwCeV7Odwlm0Z68+/HBxizFdPPDteFxZCx3mQg0QY86QE6SidGIRljQNNU9?=
 =?us-ascii?Q?9AMvUwwSB/9CuSJtbnF911uhnAkWihzEK95aN6MYa76IQ8pgSWRJKmD5ihY1?=
 =?us-ascii?Q?+YLj5xUiltQZDqQxlGgu4FW/Gj3QmBGZNhfu4mlXOAttbWvcokDqkhl8i4ZC?=
 =?us-ascii?Q?gNJweO3aNbD74S17H6TfB1+x1BBwtrPzW8d3ytfV0bx+1aa5i1exZgSjUUIV?=
 =?us-ascii?Q?RXULNhcjEW8PoLDXAvz+cxhuLb9+LSkqArFj+QDt25gqWO8vzkCB9Z5lz8p2?=
 =?us-ascii?Q?RGT7vMen4xdggrOTIdxeYtabtbxBmv7Hhb+UvEiFsr4AHyo3MxMCYjLr8BDl?=
 =?us-ascii?Q?ixkYbIVByY4eqYJavzvBx1v3d6OIcvuKHnZ0JT7xSSrPfMYrb+ZjpAp7gdt8?=
 =?us-ascii?Q?T+3ebegO4h8yh/YgT3VzcfQBiYixgKpmX8/1uSgVbGE3vHEzYk4sqoSe38Pp?=
 =?us-ascii?Q?6qlnOD3NClTVbgoGIYd7oSROsFz78pleuN1zJJNDyraAUv8TCTOcdduvEP58?=
 =?us-ascii?Q?gQVAJRw0D7htIhrur98NABXBoDlZ7qklxB1lLrogwjKYgJTzDao6IyIiSM/4?=
 =?us-ascii?Q?yrJ1mTX2qHW0+KkLh8N1zlwUl+z+d0FYzQHp5Z3Ii29jMCLQ22rOThzWa92W?=
 =?us-ascii?Q?wO2yX5GNNhmnqhwp9bBngqWNlB6uIkgApmaSD43MY0u+KNJGEU46NNGNHk48?=
 =?us-ascii?Q?ob/rwBYJK8/8CMhrfeolf2TPSeXXAbMqsiJIxkf+R75UE3LIk/2Sw2Km2+13?=
 =?us-ascii?Q?vYrXfuEbtpqLRyn+gGV+01YIQFyog5hWYoLgSqGHY4cC7iAb+8Co0SYf49ef?=
 =?us-ascii?Q?S5swLdRT6SimbqF5p6RBvn/PeOLvSQv316vKxRwxvV2l4RyoZ3jO0kEUpJL6?=
 =?us-ascii?Q?lR0Bs0vLIA86o8y4bqNk/BHmsosC+Rxk2zYzzZpYjMInD420sec0gJ+n7o3z?=
 =?us-ascii?Q?ubeB7nAWN1n4q0LDNJVTKEmo0lGyhc2FySen2ISPQ+pk0SOD/EICBE32YJWx?=
 =?us-ascii?Q?5eRV99OA/eTDlElsFbDdjIzlag+9XWzdwpOnXwUtD93DbiiGA32FoMnkteKl?=
 =?us-ascii?Q?sNJ3qU0/zxbk4TmXn1UrZ9sJ5XQB56cJRit+zqXpM0YxSBqG+K24cvT34Ng0?=
 =?us-ascii?Q?iEKt+x50a06sZzOaPkJ1loLzlZC5IL8o2dsCJBPYvAHAvAG0rnnKGzoP5/dN?=
 =?us-ascii?Q?rtQ27MuAN/IyVjK5tcjB90qDwL0Nlfe4DzCb+D08tVOMidkJOYD6lK2+UMwv?=
 =?us-ascii?Q?RDfzqK7Box55Sf1ppU5RTWNdzoIn/fI5S93ygjMdBeZ2oi6wmUtlbBXzyx5Q?=
 =?us-ascii?Q?xv/cPTuB+MG5OfD67vhPesTNKSeNrMfWANktfYjxqeEqn3N8OkbJPbQf/o+U?=
 =?us-ascii?Q?mmrFHWeOootALDYo166LrWLlSWTeBbIdhLSyiSmOMnM4XOeHmMRw11uTDK2z?=
 =?us-ascii?Q?bbNb5JRANB8tR1Xw7TWkJGNdEOeLppE06IFPE1H6o81/kGmkr5cw7UUTrR2p?=
 =?us-ascii?Q?2pAhfw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	yOOgJMPbY5tT1QdWfofPDkc66Gam1SgL2Lga2cBek/AC5yKt1GzjCXj4xtn90JV6YmKuY2FobaIsJGmB25381BYO7NO4/TON8/4ldyN9h0tO77dsjquz0F43eScHKjeCenGPi+liQ56n3GhmqrLIwMu9vDi+y9Au3RJsM55hjY3qfPdN9pKn1hKbS8nUtDtj23HDXiu8G6KWnuyg5iaj62f4IaCyNL+iC9g2KDx2a14YwwiVaTuK21m4t1D9lMoEVf6Kra9DXrPcGvIYfB0RAcWzHp3R1zv7Shavs1Cpe60G/6Ei0equb2dQQAQb8HJGqgDlZUgzkkApFlO4ARrAzOo90+gBDmKtYeppqC7aVwelFxXo14f5xAX/ihhO8Oju1pie0pFirzhPOvAXkqzYgjkKuV0UM/ETggaPpuL7mZOgFWmYo1amTI9Fw5yrldoU
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 12:59:57.9053
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3517218d-0c85-4be1-1094-08de6e24743d
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-BN1PEPF0000468C.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR22MB5808
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266127-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 36E8514C3E3
X-Rspamd-Action: no action

Configure PHY speed and mode.
Configure b850v3 gpio4 line name.
Disable b850v3 usdhc4 interface.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
Ian Ray (4):
  ARM: dts: imx: bx50v3: Configure switch PHY max-speed
  ARM: dts: imx: bx50v3: Configure phy-mode
  ARM: dts: imx: b850v3: Define GPIO line names
  ARM: dts: imx: b850v3: Disable usdhc4

 arch/arm/boot/dts/nxp/imx/imx6q-b450v3.dts  |  1 +
 arch/arm/boot/dts/nxp/imx/imx6q-b650v3.dts  |  1 +
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts  | 17 +++++++++++++++++
 arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi |  4 ++++
 4 files changed, 23 insertions(+)

-- 
2.49.0


