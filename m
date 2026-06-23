Return-Path: <devicetree+bounces-314624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h7G7KZX4OWpEzgcAu9opvQ
	(envelope-from <devicetree+bounces-314624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:08:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2873C6B3B67
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 05:08:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b="ckPb/Gv+";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314624-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314624-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9284D3096805
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 03:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A66492BE05F;
	Tue, 23 Jun 2026 03:05:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011022.outbound.protection.outlook.com [52.101.70.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6763043CF;
	Tue, 23 Jun 2026 03:05:54 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782183955; cv=fail; b=EsBrCjD8di7aCIutkCm0nYnmEqcKNegpVsrp+OncpAIJ38J8aq/AXQUcRx8zAUe67Re7fm5k46eF5yQoYOK93LSbSJmrIYLd2KHfOcXNRksZozyF9RqKmVY5YE41bsgrXTN/zGkZpw8ppHjQJilhaNyZ963qoZFatHGVuModsHQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782183955; c=relaxed/simple;
	bh=4XFpOLFuFxSrTe0CA7DxhWcTgiLlt0UnSAsiDvvJbXY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nyWkCH8rg6LnmsfeK/KWfpcefOOrrPM9oe9Yk1y8mCLRf+OyX6lIelXCF5wCdyx9+28yEeJwEyHH+qwGcUDIsjvDPPN3ZFSPc15tTyBlUEtRaM0xH35ZMf6mv6fdMObBEmIElCO/ZFnDaQ0xREEGtMRjKKyWg37yUumBV/HsOcA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=ckPb/Gv+; arc=fail smtp.client-ip=52.101.70.22
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y/xHO2lSvfaNMDXTzefyF35oLAPBbNu2YkvcoWCScPDpfnwd6LgvyTSSh1B4vV0gLkcC/kXr0gIrSIMkBfnK7hz/E537ICKnRIwv4XXmJqwHnnZ4biJMct8eJD3IJOOJ0CwBzhQVmAiIrmFeEHq66oeWI8Bf7p0+C+bMso8BvxfqilJCl6AMi6+6RL5HCh6wjm6cPil3cYenq1JEHLrZj3wL6sSx6DzQyuPXMAy4RUaUfts7vQwCMHJYu1zv6A5L/ZzMCd0XyulIUByu2Sz7vCPdAo6urxBl2iWN2DgwbIoagSsSZvqCrU+1TrjehGfMLCXV7p+kyk1I/DZApTim9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61QUgbKSikJteyhJQG6IV4XJF3plIflBHfLqvpbTvK8=;
 b=NACERAz4ulq0NMeW5psbnDSIvU0ZRmFsnIU04rvWJl47hBYnuqqynX7Tynct8FVgDZ0icTW/ylC8RLOqC8mzVm5jvKTzwngAL3+DBVsPhVug5ihFKB0U2DQFrHQniGIJ4CsmlWJL/wasaVgUxbYSB/fzpPg6/A0hkYrow8TRwk/01WflH5xLA0gXxy9PVpSFqrC/x07FqBU6Nseyeowrp2puW3WtR4d7noXsiK45apfKB5yqlWLn3vPQTaTsUBrsJdayCAOLEDevo1vKmicWjxJtnPPTrH4yHxkAvBk7ncimhFLSywzFPQhCctySLFuFF9WzUT4V7qUHC/N8qo220g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=61QUgbKSikJteyhJQG6IV4XJF3plIflBHfLqvpbTvK8=;
 b=ckPb/Gv+x9MwAtjRcAq+o3mQ0KOr3LfRryzEgTgAf9gUaVNnLHheS3rV+X3qHL3UOTAMLyEqlY4DyvwZsZwCwy1+mIDu4dnQrOby62eXcb85yz/1FBznF+/b3G7DvMtNKO5XKmC71jd2trQpjXYiz4Orr9lTLwqEJZTfBQdyVkkpIOZd65UkLCMoTu3NClk2yom9y6jirzAFI958xIo6sJugTMlwO0yGlBBSPOSG24JdeUBLsJg0d+UFJN24OCTYS80q97NHvkJH/rMfg4F4MslZ/pLra5TWk/hThdWIHsCZvJq0fGL0XeiGSY7EfV4DGCbO7XNeyFWdcNjQ6Jh5Wg==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by VI0PR04MB12188.eurprd04.prod.outlook.com (2603:10a6:800:332::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 23 Jun
 2026 03:05:51 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 03:05:51 +0000
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
Subject: [PATCH V2 5/8] arm64: dts: imx95-19x19-evk: Describe the PCIe M.2 Key E connector
Date: Tue, 23 Jun 2026 11:07:32 +0800
Message-ID: <20260623030736.1421537-6-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
References: <20260623030736.1421537-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0015.apcprd04.prod.outlook.com
 (2603:1096:4:197::21) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|VI0PR04MB12188:EE_
X-MS-Office365-Filtering-Correlation-Id: b6a4e7d0-897b-44b2-89ab-08ded0d454ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|7416014|366016|19092799006|23010399003|921020|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	AUDFEn/ggV72EznkRewwtNxHzP8jvQYZ+pH5sbS4KJXeh7UPlJn99VEORg2i6IOSo/35bP1nwQY8N0QribCsB7u+Jcnp77ImzYH/tA5ef+EpjXGdKvtgXBF652ch9JQQdsMdtA3jDxVYptpOcCQQcwhEKUVADYSP4MJhZcDUczVt1xNrjN/r5nBe6O8V53pAsG4bBxP61cRN+ul/a5I+AtohDPPZKu7SvaXs6oTi0RvSUXARTyBlOF8MIrzxTBc0XQaD+X8S3pqGU+Pg8fwXn1LxEORBHGtNpSdCNMDyI4J0I27suhtahjLimY4Ivx0k5PVuluRUNgG5LymTv6HxJR+9VbX52gAKpr4FKtlqhSTISXwkVGGbf+YPvmpW1SPkfgcNDH6eR3/VB1Q8HBfSn55xvNtkd4FLDH39PHIVfg5YTPCJxrvCXhf3tW/6qZ1yEZcz5I0Ul3h2ew2UYBM52k52iflzLmWBLpGk7RT7TSa486hfHSAsfH2uje+JynFeiqlg73JKI1vgIm5vCvW5haO4Ft/HnuY36vtgeGvwQQtWmzArE9N56HGik4bdlR37IEgnHyJHU7G7yk8EX8/HnU0uV41ExiofZK17f4SmfHyEw2vw9x/TCanyN4W++my/XAZX6yiVuU588DNCaq7ln4RsE7HQaah2rXvyTOIyXVSyoN4e8eUSG45053SrZ1z78ZZdCy8mbBtTl1ghlEtqyw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(19092799006)(23010399003)(921020)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?o23W9XoKRd3XbtFpPy+MhIGezNKLKv1lEXiA2qtwNR2gXBkUtO5kYv83KwBf?=
 =?us-ascii?Q?vhAHFioAF7lh0/0LQ4elIKSvKMi3WPgAnNwfXpX5muD64IrQfHGjMx31SScC?=
 =?us-ascii?Q?8N3CwnsjPgEbWxbtwT2foz5jkrdgSw8bxM6v+nFfqU4bRSDy8S8B6eOtb75S?=
 =?us-ascii?Q?Lhhc/idd8s8uUFkDPwB25swYwhartv7qlGVAvkS7wH2K5Z84/KHQicCr3F3U?=
 =?us-ascii?Q?a7ZDWCUuJALl1d7CuajdCnfOnbwqoYOd4LBNmaC9qc4QQK3hFaaKaTWQ4hB7?=
 =?us-ascii?Q?epKmq0f4o00QxPeQkxq6mu2yIp9sMPsRXJpw7OcKmZ521NsiQzp4j1HC3/Rr?=
 =?us-ascii?Q?78aF1Zpl9MZGExQ8KhrbqBlOS9cJp6koupXRs6zKNgjVZ3yW1dATvEYdtx1L?=
 =?us-ascii?Q?Z1OpvbbAfCwaLRTMzS9me+9QWiuw3gpa69cO+H1UhJj14MNflEjZyISM6+u5?=
 =?us-ascii?Q?Vko+HFhwxYt5HiZB9EjtL2EBc24Z/bx+UQUiJhIjWFS+/xWj1g1B4vFm4AeG?=
 =?us-ascii?Q?9WxxiosGQYsTBgDLBo8E0R0FB+7N02wtKtFvu9NmHAPWRNO7ajIvr/DiUgl1?=
 =?us-ascii?Q?JQu0oyZ7N/ear674442G/QnPBKL7CmMICTtNTI2JEEAtYDmHh9xxlsdEZHfk?=
 =?us-ascii?Q?kLM2QOZDnzucLFES7fHXYKfbtLU9EVn90OrhRptLBA+kHcdr0zzlY9M9hxjB?=
 =?us-ascii?Q?fT9EZjW90CE55nZsUkZimHst0H1f8xJDjFJyl81KEL6bgamECJwL46Ur0T02?=
 =?us-ascii?Q?TcAwhA7aDOR1E+h6wnum0aEKXy7jDjoaXAIlGvBFJjRDcwVyauDtQRTugIk/?=
 =?us-ascii?Q?aLz2Hh5mAzJ6KCDda3s6Sw/7cowtp9D72SMhnnrvEdmtk6qrR3ey2HBR8ebw?=
 =?us-ascii?Q?B6V1NtOAz2jdB2ew+W9xedYxNaoP5UNp/aQUybMTHmiPK/D2zsk+YsSYU/0u?=
 =?us-ascii?Q?TG1EAbfh73i3guor1AF4NRToashKCcVlHbBu+qrNYYA7jft5ORPUQBJT4cMH?=
 =?us-ascii?Q?erpbHlO941cftrR0o8+54Mo84t3kLgvYqxMfgsKHD70w6J/IvmGVVRR40XzS?=
 =?us-ascii?Q?sM1n5TuGoV4TdAdcKyAjpAuzLsyYe/EmHcZIP5EmKiFoZXBjtlHpWCP4Zj5q?=
 =?us-ascii?Q?tAvrTubBQxyuK66FN2kbThrKe41c2784wpeOJrDNcAphfp23uEkzKpyyp/yP?=
 =?us-ascii?Q?F9I4HGVSWADgXZnHkSE+rdU8V4h6MEkz7z63Lb+y20LaIX7XA4HcrER4a6pK?=
 =?us-ascii?Q?qDNn5ee/0MaWpFnSWyH5JAEot9TT6Ba+BwQyYownTDvzMpxfCnVkpRRz3Ay0?=
 =?us-ascii?Q?nLxnf2i65XIWnK5lyrVho03w95pfvqTEfJRSdKpWpHXmhyK1kMxpd4bwG2wa?=
 =?us-ascii?Q?EXzJPWN1rzOY0HGs5zZaVrRDFNUXiQ8ENZOZYET45O78h/Ylt/gC2AvDnGnY?=
 =?us-ascii?Q?f9hMq5czaUwk1TV95WYq+w8zizNikU1plUMm7CMFiAzEbmztv1hicdZYioH6?=
 =?us-ascii?Q?Jm5fqoaO9yo9fxFif45tW9Ib5yEAML6Crjs8Z4cVN3I3vg8A9UwRFekonyXA?=
 =?us-ascii?Q?3iJ548wl/s0v4V2rpjvy16e0XNOboolG6FrfLq5WRsXElndjEMXSJtKTnAcv?=
 =?us-ascii?Q?CmRoOrZdEvghoyyIjo+yJojb0hPjUZK9pWGnHrzTpfHjfX7OeQb7L9xC0uvc?=
 =?us-ascii?Q?C+Ry/AiiTFjbCz0YiRBEeY3ddRVZqHeX5UH8g283kfMqSVXBKzxqIPWANgy2?=
 =?us-ascii?Q?f1chAoD//9sOb9Pj2YKH+0tmzG4OxiYB3qD91qHPSjB1Ilk65Ei/?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6a4e7d0-897b-44b2-89ab-08ded0d454ed
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2026 03:05:51.1137
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IvPK7RQblMaFyc8qGFqLfhJjSWxQcTzx2oRweJB4wL4CBCTFhtydKpGd6Pp3lnN/Tx1CcMbSjLUPnsmdzQDyXDQsVqxvjkEG90Bga8Wg8/BFlNQaYhHxGDlrNqq4LR1W
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB12188
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314624-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,oss.nxp.com:mid,oss.nxp.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2873C6B3B67

From: Sherry Sun <sherry.sun@nxp.com>

The i.MX95-19x19-EVK has the PCIe M.2 Mechanical Key E connector to
connect wireless connectivity cards over PCIe and UART interfaces. Hence,
describe the connector node and link it with the PCIe 0 Root Port and
LPUART5 nodes through graph port/endpoint.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 .../boot/dts/freescale/imx95-19x19-evk.dts    | 55 ++++++++++++++-----
 1 file changed, 41 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
index c08731dfb1ee..d2c0345f0d61 100644
--- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
@@ -57,6 +57,37 @@ memory@80000000 {
 		reg = <0x0 0x80000000 0 0x80000000>;
 	};
 
+	m2-connector {
+		compatible = "pcie-m2-e-connector";
+		vpcie3v3-supply = <&reg_m2_pwr>;
+		w-disable1-gpios = <&i2c7_pcal6524 6 GPIO_ACTIVE_LOW>;
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
+					remote-endpoint = <&pcie0_port0_ep>;
+				};
+			};
+
+			port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+				m2_e_uart_ep: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&lpuart5_ep>;
+				};
+			};
+		};
+	};
+
 	fan0: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -145,16 +176,6 @@ reg_m2_pwr: regulator-m2-pwr {
 		startup-delay-us = <5000>;
 	};
 
-	reg_pcie0: regulator-pcie {
-		compatible = "regulator-fixed";
-		regulator-name = "PCIE_WLAN_EN";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&reg_m2_pwr>;
-		gpio = <&i2c7_pcal6524 6 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
 	reg_slot_pwr: regulator-slot-pwr {
 		compatible = "regulator-fixed";
 		regulator-name = "PCIe slot-power";
@@ -477,8 +498,10 @@ &lpuart5 {
 	pinctrl-0 = <&pinctrl_uart5>;
 	status = "okay";
 
-	bluetooth {
-		compatible = "nxp,88w8987-bt";
+	port {
+		lpuart5_ep: endpoint {
+			remote-endpoint = <&m2_e_uart_ep>;
+		};
 	};
 };
 
@@ -555,8 +578,12 @@ &pcie0_ep {
 
 &pcie0_port0 {
 	reset-gpios = <&i2c7_pcal6524 5 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_pcie0>;
-	vpcie3v3aux-supply = <&reg_pcie0>;
+
+	port {
+		pcie0_port0_ep: endpoint {
+			remote-endpoint = <&m2_e_pcie_ep>;
+		};
+	};
 };
 
 &pcie1 {
-- 
2.50.1


