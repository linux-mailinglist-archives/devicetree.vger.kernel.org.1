Return-Path: <devicetree+bounces-315897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RfLWNgXlPWoI7wgAu9opvQ
	(envelope-from <devicetree+bounces-315897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:33:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C306C9CF7
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 04:33:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=PLzLBZpb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315897-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315897-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D399B3036FA4
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 02:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1348B30F547;
	Fri, 26 Jun 2026 02:31:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010070.outbound.protection.outlook.com [52.101.69.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926062EFDA6;
	Fri, 26 Jun 2026 02:31:24 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782441086; cv=fail; b=ix5T/J4HeKV7s9HDs2OFusOPoPtnvXNLvvzhUhX6SpWYKBrwEMoPqlE1LaOm3xDinVkofDG0ghHGnlYFBXpfr+ZNwWYmGNZSkBNrOv3G2WnJKe/VusxMcQMG9HQJ/SNQwUWejtlY9a1W/7lLSG4M5k+/0VhqZcWHPKeSirmU7Sw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782441086; c=relaxed/simple;
	bh=YYfCjtm78W7zrB1vpCPgH9+pibezgVe2FY5Ewc8ptuk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GR4Xw7Ag31raysipN0DzqYkOlZ/IQ3PBRV7HevaAdqBsvZGgwsy6qtqhQhVS/nvcgaNiX2+iphx3kfM05AdQ9ZZmM+K6zqNywjkK5FWrke6dYjgG1fNSSGa76xC4mnGMpmThce0uTc+It8598o3SYy9vjhCcdxGdhxCK+4G2gKs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=PLzLBZpb; arc=fail smtp.client-ip=52.101.69.70
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jWniKAF50s9MnI2nCLQTTb2GTam0wC/pIHWkC6drPq1Tz4UkYKdzyejmhT9M9jCwY5NFrCZiIin+bK+/0cHhub5VPXDR1+pBjAbMydJudrvlgSWOwvWewcqxW7zi6EYa3vcVNnx+T7bqQSkc4M2hOFBeFL6wRjPhruUafQ/KlgamRtkyuDegm86ORIo8V0r+gWimK26pw/TZirGZUp/rhD7GvJ9T6VKDY+FO0mm7J/K5w3Luc9qdqmnLzRhL/l3mxl4dBUWHO0nDTXdko4ofo+sFicPAM+QcvJysge8ua6zQf2uDVT2RCMG8A9aITbsGP7r5wqXVAQ8atAOsuX7vdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f48RV4ofvmwfRHkoXli/oMlDLzN76hal50VkdpUe5W0=;
 b=QJdAJYXAoXHqleuVJ/RL445KzDieFTT6KDpRD8EBdvX82/RSX0+UgCy5Hv6pXLAMr0HWj3iQqu8FCBpdAcr/RN7bnrPQh6acOOhMzuUajuKY4GLLscA4W9QBKXg4K2kb7/j8SSPf/jRQpQDKSS9kptXn5HnaWCHmaZs7/b6kvV+PfKumrGuU0w1P5+NvFzYXR5gTRKZsSYEEutvITJT4J+ZxWEr+J6LJh5xvxqJoGNXtUcm1Rk5ybMn25Gnuf125ruxW2kXZWmolW7nCN54wGmr3SQOFtZiqaeVq14ODIwvoazRKXLLTTcBgh2R+u17Wf6VQnOLUvjWM/ast3H+Jww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f48RV4ofvmwfRHkoXli/oMlDLzN76hal50VkdpUe5W0=;
 b=PLzLBZpbDXTB+HquKz7Ya/oOwlEVb9XU2l3TmdLcT+Ezt1sb3ULPEiHeDP98CBF2P1/plC1zISRYPYQQbVtTvXSDwSntxhPW8X0F7llEVrhWNsUMb63cXViwI8ATTpugQHdfjgPNjOJUWCugfFBu+eW66FwUQCvYHvrwedDnOn66T0p5e6SreAgJmdbZKGM3ESlPrBgQxhjc+JySJqzaQfta/ueeS9PfEA7SCMiTTvPUSDeFoepftSNPZ7pwWGauTSlrdNKd+kpJXovyqKrv91U5GPcHwI0mnIuXKjH1I/UxMsmGlNnCXc+9wARdLTQgTmhKznG33PDijjNlApH1pQ==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by PAXPR04MB9445.eurprd04.prod.outlook.com (2603:10a6:102:2b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Fri, 26 Jun
 2026 02:31:21 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0159.016; Fri, 26 Jun 2026
 02:31:21 +0000
From: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	amitkumar.karwar@nxp.com,
	neeraj.sanjaykale@nxp.com,
	marcel@holtmann.org,
	luiz.dentz@gmail.com,
	hongxing.zhu@nxp.com,
	l.stach@pengutronix.de,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	brgl@kernel.org
Cc: imx@lists.linux.dev,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pm@vger.kernel.org,
	sherry.sun@nxp.com
Subject: [PATCH V3 8/8] arm64: dts: imx8qxp-mek: Describe the PCIe M.2 Key E connector
Date: Fri, 26 Jun 2026 10:31:26 +0800
Message-ID: <20260626023126.2189931-9-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260626023126.2189931-1-sherry.sun@oss.nxp.com>
References: <20260626023126.2189931-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0045.apcprd02.prod.outlook.com
 (2603:1096:4:196::21) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|PAXPR04MB9445:EE_
X-MS-Office365-Filtering-Correlation-Id: 12d96301-6523-4cba-a1cf-08ded32b02a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|1800799024|23010399003|19092799006|366016|18002099003|22082099003|11063799006|56012099006|921020;
X-Microsoft-Antispam-Message-Info:
	7q0Y479zJDEm1Y9jnsRWxxW4pPSemJCCNyAPbDnwlZA35vbibJal0lCPVqJY7uqGtxH2yW9gpdMTHqqmRbyJdVFKGRUWVneIq9ufXkZjR28eHLU6dPAVwlLtDjjpkqZPNAage8jF5pVNLEzUnxr2ylC3om++XhxNHr7FCSuZ6hVtbwNMYmd/Bl1682XE6H58/gjN0Wlm3YB/6a6yRprNQ/Xd8nlJNDV2bctQH3c8bkdWlgn90l5Cy6HqLZLxbwk7Y996E4qGNWY1nIUNOjl9pbmYzTkQ2H7YgAwtvyJncjeqVGI0cwBq1S7aXiO4Mua9bvXzs0yydv8mWeKLhbfayRGJxssC/6vm2SJWvI7SNMLF712/dqWxIwg/GjK6wF7DF1V+WqieJdjjHPdFjBqa/zFOVNOqxSoZN9Ylri1TRJlr7psqU99v3z9CnSEKVKxrfPlB4srGIOljyG6JgBJtvEkB8FdKjpTJMupCdwm8T1xcYveEBcqt+244UTPKno00RqhKc2q7GsXzYgPPxq+kQ551+3c1rP2A2uob1agLdVAmSOmfGMFvMnWEJlnLxwufC+Ha/cIA1z36ByZEmW+sjoE3efqdDNlLpWiutQjo6gk4gAdYVB5A+Nxou2T4YDmgkxxBZctTgX7GUw80cASu+GRBsPliC43MOeyGLwhyWZm5mqrWADq5ryhNQ5TA6mEBNgUo2U5OqedThg0c6Fcegg==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(19092799006)(366016)(18002099003)(22082099003)(11063799006)(56012099006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Aex8Q29olEc/xgL+JNaYbGu7wFrkj4XMDXK07UWXlvhdLOM3bukLwXnrddG5?=
 =?us-ascii?Q?6Y00sY6TfJUpxWSpVIdHQkbqtmWtaZ9Bl5g996PhBPP+vWe9ysRHLLyp7GOP?=
 =?us-ascii?Q?cuP/hA1wfrNzNSnmkCzCWTgPEDM7SWzy96YZ2ezPDC9Z7BvK0Eso2TU2DNli?=
 =?us-ascii?Q?DcBtG9r5tmgkIs0u+DDIr1I8WjOcy6zHKX3Y44hKoY6onlcjFXGGg8J1cOBX?=
 =?us-ascii?Q?47qmSgs/AodNeW8QxQMSk+3hrgcdz2Cf/TAdDIxxpDTMLOmsmOLaSZiWoLD/?=
 =?us-ascii?Q?39jOo/U4xsQM7grbdei5rI44OGCDQoHhpfz3Z/fcMGXptlKd3hxTorC131Gl?=
 =?us-ascii?Q?JC0rxnCkFaLcQ+xTXPVuXS52pMWzO7JXFpVXljHYu4eKv8JEagAGLRDwGRKs?=
 =?us-ascii?Q?N4uzCsf0JTZdhco7jbJyA7xZjcP4cU1BFvFFJJG6bqodAInFx91B0NkKHolJ?=
 =?us-ascii?Q?lESvOO+PdKXWyc2kiNfPtcclZrdGI8tEU1M9QbTg4pFPRCiyHlLmRes6/nzh?=
 =?us-ascii?Q?xK+yuE3Lf+6KY2uqf9sQ7XmqLWvsYRim9CO2s44LpCAghp9JOPIBmqamiuHh?=
 =?us-ascii?Q?4Bo3OdfeVTDJ9UNPCVw34UOgy7mJyecH6OB7a9FeeB0I3Vs9SGaDT/YjshEF?=
 =?us-ascii?Q?Oh13UmGNmBVetff4Tvv8o8CnwdW4u190JdFJRkoGxQdUY51ShzyxphGa7zZM?=
 =?us-ascii?Q?W5Rd3narGbbwUevYsllQxQV4VP6gL8zQUZkkdEVBCagScF7kMzEZDrndOj8i?=
 =?us-ascii?Q?6iIBJl5IQ0haClUQPQnkmaZr9zWHB8esf0y4qzhl7Fz7qrE7kxRIjI0cAyKM?=
 =?us-ascii?Q?T8nNt5FqjDGXoEB5VICXX508xOibNU/Sae4J6NHbzMpqO2g3kLkFB9A/vvGe?=
 =?us-ascii?Q?p06M5Pm0caQYFN76n3F2/2Uho/pXMgjDd+Sxs+2Io9NYPighwnk3ql34d48O?=
 =?us-ascii?Q?lC24StTFk67UnTcmadviHADvVROyc+YvKJiBKFu95PHJyobAf1xkcY44EphJ?=
 =?us-ascii?Q?qMftomYwbxKzrTBM91qrtJYWcrUvb/rmfGduK4xWobT1SLYAzFVEWsxE8lF8?=
 =?us-ascii?Q?wXgWRVpR3ohvZ1Yhqw2CI6/oei/Ie9IgxBSSeP62JpHc0Kl9LkFOzkjph8KN?=
 =?us-ascii?Q?yrVXE2U/UAw0bz4FW3HqIAXmUdwbVuTPkohDjJXn+UIp2XDmZqMVAWYQgxKK?=
 =?us-ascii?Q?tmpktaVAx/5+geMc27EK4q21BvhKz/TOBSPloyjMMV7rYz18eNVKOo39qtdn?=
 =?us-ascii?Q?FyXWG0MCdIFskwZ0nKlDvIbWLtOVe1/1FyzKB4FYDDPzUGGzZdTOvbUC2JtB?=
 =?us-ascii?Q?Mez2piM/pvJXhi0ay9HJvXcwCLF7aWC4r/8GpZ6Wz7BucCQAwZOr9l0orM0K?=
 =?us-ascii?Q?DQJ9G0YpJPMkG9LlFTRekDQd+d0onGrQYjQBFlCXH6mzJOPIcNGeLW3Ccwju?=
 =?us-ascii?Q?sr9iE2OlTJ9StnGpV9i7YzscwYbHT4UpRGZ4cfYZ2kEY/k0491oFQtXf1xtm?=
 =?us-ascii?Q?vBlm8fxJwpNgCCCFfww4qk/wIeWBskUPiaN27utmwJPk//A9oriZRnRISJUO?=
 =?us-ascii?Q?FGwXMim/pMV7Hl/rjH6tMW8d4TIKEaoRWScqAztHf3zLZ/LUdJ/AHANPBs7N?=
 =?us-ascii?Q?6nY3cQZFAH32QneeFkWk2Gc00ib0FQA8aifaQa3qrFYSXMwGHufhSJWwYPCm?=
 =?us-ascii?Q?+uq0bUtZr+IIxw//4KDljDackGYSRIR44ntLDliNC+CL3XAupbd8+RYjAZ2d?=
 =?us-ascii?Q?BOj4TpnuTfTwtXeceVfzwCPtwVZI98Sw40pJlzMXy3o59SmFWAOE?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12d96301-6523-4cba-a1cf-08ded32b02a1
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2026 02:31:21.5817
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z2BWpwH2S9/DcRlB6WGWYqZt4ZdRLkgJmXJXxGy1+miMhTSPQQ2t4uj4GGevrSe2LBqTC9ScxtGN7+NxLwVNBMaoBRXLiEdU4bs7STRey78e0KBj7xtwrLWWRj7jbHIT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9445
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315897-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:amitkumar.karwar@nxp.com,m:neeraj.sanjaykale@nxp.com,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:brgl@kernel.org,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,holtmann.org,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,oss.nxp.com:mid,oss.nxp.com:from_mime,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56C306C9CF7

From: Sherry Sun <sherry.sun@nxp.com>

The i.MX8QXP-MEK has the PCIe M.2 Mechanical Key E connector to connect
wireless connectivity cards over PCIe and UART interfaces. Hence,
describe the connector node and link it with the PCIe b Root Port and
LPUART1 nodes through graph port/endpoint.

The M.2 Key E connector is powered by a 3.3V fixed regulator
(reg_3v3) on board.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 54 ++++++++++++++-----
 1 file changed, 41 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index a9b967d0a9be..c9fe4034cc2d 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -40,6 +40,37 @@ memory@80000000 {
 		reg = <0x00000000 0x80000000 0 0x40000000>;
 	};
 
+	m2-connector {
+		compatible = "pcie-m2-e-connector";
+		vpcie3v3-supply = <&reg_3v3>;
+		w-disable1-gpios = <&pca9557_a 2 GPIO_ACTIVE_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+				m2_e_pcie_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&pcieb_port0_ep>;
+				};
+			};
+
+			port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+				m2_e_uart_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&lpuart1_ep>;
+				};
+			};
+		};
+	};
+
 	reg_usdhc2_vmmc: usdhc2-vmmc {
 		compatible = "regulator-fixed";
 		regulator-name = "SD1_SPWR";
@@ -157,15 +188,6 @@ reg_3v3: regulator-3v3 {
 		regulator-max-microvolt = <3300000>;
 	};
 
-	reg_pcieb: regulator-pcie {
-		compatible = "regulator-fixed";
-		regulator-max-microvolt = <3300000>;
-		regulator-min-microvolt = <3300000>;
-		regulator-name = "mpcie_3v3";
-		gpio = <&pca9557_a 2 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
 	reg_audio: regulator-audio {
 		compatible = "regulator-fixed";
 		regulator-max-microvolt = <3300000>;
@@ -696,8 +718,10 @@ &lpuart1 {
 	pinctrl-0 = <&pinctrl_lpuart1>;
 	status = "okay";
 
-	bluetooth {
-		compatible = "nxp,88w8987-bt";
+	port {
+		lpuart1_ep: endpoint {
+			remote-endpoint = <&m2_e_uart_ep>;
+		};
 	};
 };
 
@@ -746,8 +770,12 @@ &pcie0_ep {
 
 &pcieb_port0 {
 	reset-gpios = <&lsio_gpio4 0 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_pcieb>;
-	vpcie3v3aux-supply = <&reg_pcieb>;
+
+	port {
+		pcieb_port0_ep: endpoint {
+			remote-endpoint = <&m2_e_pcie_ep>;
+		};
+	};
 };
 
 &scu_key {
-- 
2.50.1


