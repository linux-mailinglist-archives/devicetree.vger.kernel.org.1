Return-Path: <devicetree+bounces-314623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5cV3M2j4OWo+zgcAu9opvQ
	(envelope-from <devicetree+bounces-314623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:07:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA2D6B3B49
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:07:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=ib9YPN60;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314623-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314623-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6E1C73029797
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8863529D26C;
	Tue, 23 Jun 2026 03:05:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012030.outbound.protection.outlook.com [52.101.66.30])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C01231830;
	Tue, 23 Jun 2026 03:05:47 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782183948; cv=fail; b=fxopxNgcb9xi4Hg22ICyw+e7pfIUpP9Jnrb6I/DLNVCSyg36zEXuePabdMrKPn36ZURxOiIb+wmMnLxwXfHtOvJsCiE27MtPRauAa8TqxOSBLoE9WMEyc7hUBD8mo7PFL0WOrTk7Ct3cYIbDE5acZBtCCKuXnSWJ6J683F06+cY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782183948; c=relaxed/simple;
	bh=tMGNqJ75nBjqujhcHtKKTpSp7iFjiRyAnfY2CFXBUAI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=t4leAKfaG9LVS49wBlr/Rja/0t8XAd6ShX8x9yh4vgvnxbnS0bxjv0lXJgY0+cBzkg0nQtmZeCcOWxhi+EFabat7y9T4uduj27/gIunNCgVGLo8AuJeqdIbyx71OAJ+Du3gM0HwtFb2geKJHIOYh5jUzh7dyglivxHGxWAnhYBc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=ib9YPN60; arc=fail smtp.client-ip=52.101.66.30
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J9lbapOJb04bmfoUt+wc0G0KbCkexP7OxhRvQK0esawf1yCIUKt9X0RM1Rzi9G60/rTrA+uzmHIkuOtofWecTKpYjFUu4oenqoD3OCOkHWiWZcIRltsvUZFq9d0pw5wZ5YjJjfx/FggKLpe8VeenreTHt4Yt401ZFoVbmSH7oZhsEDdvlp6aM6iTJSZ0Ns249DfilPNS8sDXp0sE8Itt7Kjvfj2TZTlLvb6eKi0Zn9QMA28uAgkWQiM6RoT/ZS5aWsHMefSoM/S7bIi1lacB0Ie2VW7490/fBIPrOuYYZqt/50T9BYs02/ak0AWb6ckgtMxrarTb9O0/+8gjF4hv0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t3JY82sGT6mGd4Eehns/4ctBimy8A4JopmnuLu9zBd8=;
 b=Tu7Y5l5agPItJFvgWydUqY9psQtPvxieUG0dPD6U9dfHlZRU4FT1Gowq2rgAlJNGvWU1cdx4gz67OmFlwFG/PZTVvI61xguUxXxGfpD/R+YVVMzWn6ohG5WjFAdkI1UEjhF6cz0/oXZf5niRnbzkx1d4l4Zxmk2bZi3Hv6GOHLDGSym0siWexYxwvSzDZorMLqMVP3P4nkwl0wMXpQClJl9dBCaAxt0dh3xp9oL3WXOsIv4y6Zu7+WPweUGmAoFl5gUXD/JTzoyjQaZxfTkiQYy6zzaBgPzSXC6X9ccZu//o19Jlf441NFQW3tsqKqQ+JT9o+7L0NUCUZTR/jKFLxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t3JY82sGT6mGd4Eehns/4ctBimy8A4JopmnuLu9zBd8=;
 b=ib9YPN60BGaSKK6OaGJcVysPrQUkaxr/cY5VyF6riHguMCr7a82D1cyU6ZUSGimUf7XXo4Sx2idR9Y089l2Ond0/2FjLsozM4ik6vAoAixz4Wb7Wz46lLFmu0XPVFZdrUIG6ec1/igU4K1pG0WsDNeEceLmUpWabUkc0OXcdhIRexLJLaQ8DtMZijKG/udMxuDz3ZfgjdifxJvcWyNasHQ3jOqgcZAG9MLKzlFL73tvviDGyHiTYDliqfBIiMe42BdinbfJXO+09sgY6N3oBCfl/Wacu5ItrgupZy+qEtwdRm4iCbg8rysOZ8PDxqFbP7h1AEPTqSCMCdBzX9FhAgA==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by VI0PR04MB12188.eurprd04.prod.outlook.com (2603:10a6:800:332::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 23 Jun
 2026 03:05:44 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 03:05:44 +0000
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
Subject: [PATCH V2 4/8] arm64: dts: imx8mq-evk: Describe the PCIe M.2 Key E connector
Date: Tue, 23 Jun 2026 11:07:31 +0800
Message-ID: <20260623030736.1421537-5-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
References: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2P153CA0027.APCP153.PROD.OUTLOOK.COM (2603:1096:4:c7::14)
 To VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|VI0PR04MB12188:EE_
X-MS-Office365-Filtering-Correlation-Id: 381bc1f0-019a-4839-229e-08ded0d450b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|7416014|366016|19092799006|23010399003|921020|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	Z7gIvMk+WRkgGO0hfUbBXuBTnbzUOMxXzTEcowTEC/PnsEdJIxOtASeGrI8wh7VXBL2CqQvXW2Capa+exapjRRXEMNPxz6xhy3rqA+KV4XmCLIas16n/CAgj9CYwSUUCdLRbhTyhjLEC7StdqUtM81vlQ8MGP3xAOJxfRG+u2Fw5RRdU9xboBe4ENRIxsncpeL/9ag1bfVVWncAqFbjxITYfqbsML4YoJX7p7fgh89T6wxAAveepzcxIc1Vo7z/jrCmAwuBMkaBMtybyBjRsFYioMqBnagZ+QfFwFRcW0m+sCLKzfnmgAadA5fHQ7RSBF6ConQ/qVDrrCSGQZynz1iZO/hjt+7oCB8dA44/EJkavO+tmadIn820670hdQJoRw4loa5PfTK2DK4sM+Vcc9X02pDtQ5c8XGFLBWl4UJAHivTnSvfY4eAz6r0M6/BnO0CrG6CcOvsfdDTc5Xrip03H+z8Zn7JfAlFG2r18St2jt3gevl9xUFARtOfAGLwr8rxB+pyePnIgTxEoeenDLalQYAQdxWs56+xgZ17EI84o0NOOwa3MohPJVhfgZxF4uMI/Zvbe5ZZWVjRTI/wCZIq7+lLHMR9NNq0PyeMEOdFNCVR7Czwqm/g1Z9rsY9pHMMnKPR96o3Ur4KizD+qmYT0/6ZmgKU8BOXOH9THjQTOrUTKOXKTb+otcY9fQnh+ltOEt7yN+/PQ8guq9t7iHRgA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(19092799006)(23010399003)(921020)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?AwDx1NJpNPra1xegHavsglwxHmXBjy0dqP/RuyPJFJOFShhmNOiAUMXhHXeO?=
 =?us-ascii?Q?P7mUN+5ip3hgBlU1bPpvurchojkjsBRg/yrWQPMpoG75XY309okWLidVBADS?=
 =?us-ascii?Q?LkThQGJiMUHN9/Q5g0rnWTAmyyYAMC8NN2mwNlIOC45rIOfY8f7kmtCP9PDU?=
 =?us-ascii?Q?RyAS3/qmz2BUYAQsXBWZBA6LGpn3PJOwUrO0c9E1zSAvYGNANBdXmAIabk28?=
 =?us-ascii?Q?a1Od1g+0CLCowPVZUUtplgXiEk0ujyINkYrzdQoqa5DDoygLnGqVajxoeIne?=
 =?us-ascii?Q?q3h322Gk0DRaominu1FFEtRaUtA5E/dBtuLEQOLjNvybSYjvG0VOdrcwzBfF?=
 =?us-ascii?Q?y13t4QQEa5HZ3gV/dGfQDD8rcAavHJuaVyNMLD2wGDc/c1Bsi9zdLBzSlJlC?=
 =?us-ascii?Q?IyhEJydfNYy4VGySEYZGTBQOCcGZbVLp/CflmK+6wQ5C2RAsNxgi0Bpq5M5A?=
 =?us-ascii?Q?c/73Xz4ZS6PZOCNOGTYlMEnD/hJ1JsoVL42gozBo0DskDRaTG+Dczk1qNby6?=
 =?us-ascii?Q?8xr15ldaV20QTRGH4Ifs9kpJcxAF8Ozmb9iVFGEPaHrWRj7n4XJoCKOZtZ+/?=
 =?us-ascii?Q?wq6bdpouywOxp3YhWZi8WHt+lObvjd3Qv98LuRIrESpKREJf3nBEm0Wi0wtl?=
 =?us-ascii?Q?hZTgPhV0+k0U1GHvkBUWDvnxq9Y8oAKeddvbaRDXwiKYaBp7BmMtJkcAVOK1?=
 =?us-ascii?Q?wR61lcTtJBBEbK42mL6DuczU2dnzeRg9VPjWqpMICsqrPRxCA5S0SC32AH82?=
 =?us-ascii?Q?79Z8V5ILkUwL16u4s+lNLhFA9hdM9K/gh3xQ25wpBqr09YJpzKwqG4eeh8pP?=
 =?us-ascii?Q?0pVyNDYX/qQedRt3vmkHRl4PIWI/rHJMrsXjObjy55EASkPB+pkRQne0Vzbb?=
 =?us-ascii?Q?OVUu/2lQgbvHR2RbdNcgugCgOck/aAOaxdCPbQY1FiJg5DYIIYdmT8Wpecq6?=
 =?us-ascii?Q?dclgkZQ4ck1vp0NuYokIbOPIQpeQvkhvZJ8PKMp8uGovkPqLUp6xuBVaDCKF?=
 =?us-ascii?Q?+xztWS8Z95wZ8RphPE5bLKr0GYogpYtyHL9RXu2u74gnoIwlLLTqGhrPnIs8?=
 =?us-ascii?Q?Wy7mnnX45ghEm6iPKXWlM0Q0VFPqlsL9D6haRlDGjG1my+s2C9zHfNrbCAkJ?=
 =?us-ascii?Q?k4TXkmpmaz8YaQJtkCW3Y+nmLqIYfLvax9DAoQul8B8M2wjkQ++oHPSg9zHa?=
 =?us-ascii?Q?uZOawqRjyMuP/nQ/Bdf8s/De9csm8KKdWzIxGnP4Da0ETj+QS69yzXe4dlbr?=
 =?us-ascii?Q?wMo9nAztjWqG3IrrxC5q6jTp6UtCP/r37N6jl6EhZFICamz6tq432UtE1lhX?=
 =?us-ascii?Q?hDhNTdxn6Ht0fZ8e0LCxHZDc9jsPxamKk2Pr7FxtDlBdFdP0FVXWf4nXbzps?=
 =?us-ascii?Q?Etxh2967SBR4fg29mKTcUEZ65PfNQBZESMZcQXkCUP82zvUTk8YvEOeISMA6?=
 =?us-ascii?Q?QcVhgVdptwx1dY+q/E0M2kD94iwSw6d24F347AaG7+vh7C6Bge1TOBEFHTNm?=
 =?us-ascii?Q?9czCsc5Bo3heNLY2vKkcd5I3O8HHBMiaPjPgMyAIqsgUOgUTpI6kpSzsZIKr?=
 =?us-ascii?Q?e3f6OCVLpeciOC7KQs8/24HXO0N3JEcgbABe2GybMNDzKWC982Kt5a2TrRXl?=
 =?us-ascii?Q?gdCzigd0ECkU3Tw2QW1cSguz8IXjW092H01SB2jfLklen+B5kmqSMWOtxjL0?=
 =?us-ascii?Q?XlXEsc+svXCdhDgPWYKaZpgsozOFuwbsWDlISMZppvBUqHqKTvFQOp/0l8ZM?=
 =?us-ascii?Q?6imtsSdm6E31tRtUMuDf3tJTe1piLtplhIdC311L55eo3TqGalVb?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 381bc1f0-019a-4839-229e-08ded0d450b1
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 03:05:44.1401
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eu9PZytwvaWB41WKRfzESzZFkYTICT0lXNyRkwVZlrAHIQJRUGNQBmE/8yxE+CumrA/vj1kcOyhbZPkz5KjKEroGKaQqx62xslorcqlgfrC8gkEeRO2XQpKjd7DkEdzg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB12188
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314623-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.nxp.com:mid,oss.nxp.com:from_mime,NXP1.onmicrosoft.com:dkim,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1CA2D6B3B49

From: Sherry Sun <sherry.sun@nxp.com>

The i.MX8MQ-EVK has the PCIe M.2 Mechanical Key E connector to connect
wireless connectivity cards over PCIe and UART interfaces. Hence,
describe the connector node and link it with the PCIe 1 Root Port and
UART3 nodes through graph port/endpoint.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts | 44 ++++++++++++++++++--
 1 file changed, 40 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
index 71504a0af87f..482e5203e879 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
@@ -21,6 +21,36 @@ memory@40000000 {
 		reg = <0x00000000 0x40000000 0 0xc0000000>;
 	};
 
+	m2-connector {
+		compatible = "pcie-m2-e-connector";
+		vpcie3v3-supply = <&reg_pcie1>;
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
+					remote-endpoint = <&pcie1_port0_ep>;
+				};
+			};
+
+			port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+				m2_e_uart_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&uart3_ep>;
+				};
+			};
+		};
+	};
+
 	pcie0_refclk: pcie0-refclk {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -420,8 +450,12 @@ &pcie1_ep {
 
 &pcie1_port0 {
 	reset-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_pcie1>;
-	vpcie3v3aux-supply = <&reg_pcie1>;
+
+	port {
+		pcie1_port0_ep: endpoint {
+			remote-endpoint = <&m2_e_pcie_ep>;
+		};
+	};
 };
 
 &pgc_gpu {
@@ -506,8 +540,10 @@ &uart3 { /* BT */
 	uart-has-rtscts;
 	status = "okay";
 
-	bluetooth {
-		compatible = "nxp,88w8987-bt";
+	port {
+		uart3_ep: endpoint {
+			remote-endpoint = <&m2_e_uart_ep>;
+		};
 	};
 };
 
-- 
2.50.1


