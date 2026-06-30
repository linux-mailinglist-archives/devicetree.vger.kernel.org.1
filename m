Return-Path: <devicetree+bounces-317636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6w4kKoKdQ2rFdQoAu9opvQ
	(envelope-from <devicetree+bounces-317636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:42:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2406E30C9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:42:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=k8TlCcvV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317636-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317636-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBE86307A796
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82980331EA5;
	Tue, 30 Jun 2026 10:31:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010029.outbound.protection.outlook.com [52.101.69.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059443F5BEC;
	Tue, 30 Jun 2026 10:31:09 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815471; cv=fail; b=QLmp2awTpbq/pQqX/lm/pwqVDIPIIcDPURvb5CuBmoahb/Jc7E/EQSyr2eYiR+v7GwclTW5x2p8Skbzw1FmPQQof+RjfE0G9tNoqGiG/UWH6tp9Xh6tsyl7XIJ5P/rN/0Mohtd7Blu+Ln8cIYqdT2IjcQJfHkVG5nLfMDCgW0ZI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815471; c=relaxed/simple;
	bh=8iwz6ZSZoXjEtSmwGXrlarLWYvqG9XVeCxH6b+7TyvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tyUVWJfbPw4yaf97kk9j2JPJdPVE044WekAMRV0OJ4MVdsTXIe3/aGtmLz+yLssh8n4Qk1EW2QpbQCWw/jr0tZIt/UZ9DSSOQ2+PJz2qn4LRYR5Iyic4eo84s8ur1OtaVUoX3cVummvsNuDbyCua72n4jatHlhEEEfecbi6kLX4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=k8TlCcvV; arc=fail smtp.client-ip=52.101.69.29
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ExC2LBXdAfIr2rbY1a2ckMiau8m66l1z0AIbzKGW5TjvqMLJczg5AWQis98IGyQ7gJdAcUaoU33PUnAXKz0C5OmUYjcUYMIoQTLv7yz2wP/beZ4yuQf4Owk05uo7EySzbClIWI50AUYSRFKLkQhat16v+iK8cUsnMslUEqOsC01bZSDb7Fci/Wt6hjoTN4aJH6kIrFV1uRBLL6Ml1fhrnZ6GR+38CfdnGCgUyDtQivxwjJa9tjoShyMiwEDIaJCbsEehNl8cfNqlEQ8gzIRXmr3RkmsLQXHeJ1KYZ8h7nloqlWUZ1fEzTkOM5yPGSQoqZ4a0KxZB2jS87oaZtskcVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g7v3wWdjC1YDRVVYSYb6ZgUjld9qPyCcZPBWous+pIA=;
 b=PpEnRCbn0a6wK9hleB99fuBe0NVbluieJEqPJKehZ4kb7euuRxMZtiKIr5JTpiuXq6Jl+BwVFis/UHUBD45kR1coy60nKuDS3qlxqQDEdiZ7ZJTLe2ew2NAxuygZY7Em/a47jGScy/M0mohyo+REPAEnmlJU2y/qVOpm3S9cwmuhPTve9VTIZ9TeNaGarkawELLVz51PVGUvq9i3vp9fqzwpfNlhNEeAl1Q+CK9P6C8gvUT94Ix8jGs7Lu5fBwJUtNBG3Gq7FabY7HHiLAu+9Rk0Qruwy04gKcq+mjjJBFUjO9RnVGZDTdwVMV9ZcuU7qzDRWySdqYa1YJWuAmNFoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g7v3wWdjC1YDRVVYSYb6ZgUjld9qPyCcZPBWous+pIA=;
 b=k8TlCcvVaXurB8zOJ2y4fgpBsFTMzWx2B5j2NnnDVbR3aN8jlDDwSnYAn7+T+z1VXcOywxywug30OrsfrszVPQUINpKTSYHk/XoWiab4KuTJms7aGjheLPHRDs4KwiQhSOzXml5xmubweJAnz7HCeJdj6f3iWdfLi++4OArylKGXNT2kh3iP4qFTvkUDdzrLhtYz32Q3RjfaUglrQKGjuW5zBtLEdSion/g3ziDBiJ5VddKdOM/M7oGhokAAoxhw3hF2oarjaQk8vfNxLn8Zm9mSTFjkkFqXnfw6mBzirljDlZo5Ca7AelEkRwVuyQO6BQlEBEzyBH5odVi8mLKYTQ==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by VI2PR04MB10220.eurprd04.prod.outlook.com (2603:10a6:800:229::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 10:31:05 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 10:31:05 +0000
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
Subject: [PATCH V4 7/8] arm64: dts: imx8qm-mek: Describe the PCIe M.2 Key E connector
Date: Tue, 30 Jun 2026 18:31:38 +0800
Message-ID: <20260630103139.3823329-8-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260630103139.3823329-1-sherry.sun@oss.nxp.com>
References: <20260630103139.3823329-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR06CA0011.apcprd06.prod.outlook.com
 (2603:1096:4:186::16) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|VI2PR04MB10220:EE_
X-MS-Office365-Filtering-Correlation-Id: 1547b8f5-5792-4f90-9d38-08ded692b0cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|19092799006|376014|366016|7416014|23010399003|22082099003|11063799006|18002099003|56012099006|921020;
X-Microsoft-Antispam-Message-Info:
	yD0VFxOtOV/y7Ji3o4Hdcvqdk7K2HpA0FV5TOBpK5cz0QbLBDk99MsiRt26ajyc4WEWvQymRsRJbfkFG+49rF4eqYcDjhkb15r3q/8dhIy087M+vGWC1HMDg1E6hjtslr4a2gtBG4pEjNq0+GTw8X0iCmBt0JfQkodMYfOhzcalBVIds3RIPejX6o7ChcKn2Xm8jXPZWZW/zzUesDCIyQ6gNLGJMi5/G4OQGMi3aafduZeoZwTTOEr1RI15KUZ+fuN2QvLOClLW0nQ+Y23KJv3qrZeOqlXcK2AxSgmIyIQmxbBpvBb32H2Tualux2wvQhEJ/lWuZ8r6IaQ3Ss4xEe0IrSk5GdHnHGfJmVs4/OepBLUc6bC/9qjvEg/4JBth04mgpEBviUqJANP2BdGM2fXyRzeG+rmF83HiVQggPOTJtBWXk5+b11NKXDilDgWqTzSmovZ0zqW5THq1VUHTYHmVDvkkW68LQKDol+ljsomAxspWKrndINagwPTTRlvZrkJtcaYyunW9bQPrt/1bipDolAnGKupazjwYjz31yYMM0R2svcjdH8CP1yiCx8+VNlHtEu+TQzh0JIud2vGjDytfUP1Gp4JcSCVSL/b4JR1zkVcA7coDCDc3fTXwVZbWtmckE+tcLAzlkoKzPaX10dG4inEVuwYlzufHFR1VihIoq/Nd46b4IR4okE+1+L9BV+b7tL6PehKV5quDKESQOTA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(376014)(366016)(7416014)(23010399003)(22082099003)(11063799006)(18002099003)(56012099006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?22fUgrKAdBT84iir82XjhftgHNjK4g8mAzY64nEQIZUjythFK4eo3bgMQ/4B?=
 =?us-ascii?Q?SNB+M3G1Y7TZgxV88mXAJNNlfZJfx3W3kwG0ykhF7mQwo6huvVXOC48VYEii?=
 =?us-ascii?Q?di0HBPcLWMPngDPW4tWxYIVAkAD3dkJhPJyXWq5zQcjy7U5IGID6rHUb0M3P?=
 =?us-ascii?Q?yZYkPIFMgoGJyZ0J+0BKKsKMj76qlnUvjfilXgLNuIeDPWh9QqZFLKY4Ckhd?=
 =?us-ascii?Q?GhCPIBmfkUZjMbjsmfREZOGcIcmsn1VTjawL+2Mqz+nShoWh9+QTOcMwQiuM?=
 =?us-ascii?Q?lzRtkXcwu2vFRGe4Ckl7Lcu9O7vmyxznU8hd2by8KTvcHpYrgsZ7AjLysZ6M?=
 =?us-ascii?Q?6cE7ikc1+JnmcHvgHMwIz87e6dQc3mW9ZoauEmfoXXqtv8RrxDLaEN1dkS3D?=
 =?us-ascii?Q?RDOKNS1zLo72ggf2iefvqejB58RtanTulQw6qewaXI8o5JbKaylfK+m357+d?=
 =?us-ascii?Q?4S76DTJXJm+wnx94EO4DNERVwENGQRAZQJbZSI/fE4efMG9f9vCXue5idOw3?=
 =?us-ascii?Q?OC0Gxg3U43VWTNQ2lH/fL0yXgwT/5N+qjJtk0cj5qxXDMxJ+lqTzJFzQ56uK?=
 =?us-ascii?Q?er89QyVkuNWqDSy+6BGWsk4cUL04pBRj2jc8VDpWUwkGsluxGYMivQyQLgMj?=
 =?us-ascii?Q?wTRyi/fjb4v0oWv9Xg92TlRs/VQwr4hzfOjqh6K3evkzq+6lUL2LE2TvMJ7g?=
 =?us-ascii?Q?yzZBw3aLnVawnShTn5VwLmLIVHGamHL95DZPGf6166oHK65tglHmlEH49HbV?=
 =?us-ascii?Q?2reJ4OLrc4F9zm/s5bhdEYKn99zlhcSBZL2IO835WHjr+UknEl5XmJVBy8Va?=
 =?us-ascii?Q?YUJPILHE7yVybBRtBJLtuCbCYtwvMgKs7p6KSWYOeP12mw7lur/mH7v2nS3m?=
 =?us-ascii?Q?TLaZUXqIfFPlt5//5xIuh7nnMIsZkp+sun3qKTErem9vjG5iFwuRRR9GSOcI?=
 =?us-ascii?Q?zPb820lA9I945Jvq1BADErwu44B15g5+2QWxCw7cXA4kzb4LM01KhtG2JESR?=
 =?us-ascii?Q?GQpIwRr/Cg16XNpHKZMrMU4nnjPIm2dH+M3gE43LaQ8U3ykDlOb6wUCIGQxE?=
 =?us-ascii?Q?yQPssl8eGgYC6NK12THfGfwtBYOWFvGa8Pt7yh6UwKSTGtsdr/jTk0mVOsp2?=
 =?us-ascii?Q?wUUfINvap2o+kxAfwnbRN3rL1lLmjW0YaCens1VIngG7SXQkq94vDCkMLqup?=
 =?us-ascii?Q?MfDYkYK4um8tBaWINFpTfScnGZ16Ez+RBOgx0CVjeNCz/j5+NrzWI4Jv7Dnp?=
 =?us-ascii?Q?5qYBhQLkAGo25b1MH9nzgJedXXTqIo3L/cKczqH11h2+YCsm278A0hwxyFEh?=
 =?us-ascii?Q?6oijCPudIlFkimNI7M+Xhoqbe+vlVQgbcd4vaP5iAYPRjiVcbJgAzPeZsG3d?=
 =?us-ascii?Q?dbfS8C6JmOhAgBgn9Cy7eyl+rUCiB3XptOqOimvgaqlnlE73RKV9cv8oU5GT?=
 =?us-ascii?Q?avXbBNXmMGFKLhbeG52hVSniQcp4ofFI1DKhlab9TpmDie58bfvGEV7Ey4Jn?=
 =?us-ascii?Q?Ji4RglXcmemEiT31wLdbVRCIOFNpC/dSGtMcWvAN1BWFbhH9v/f/osRXlOfz?=
 =?us-ascii?Q?JB0YILEcmY0k6Tg5pAhu+CQdlSUnE57JzeGZGRl/Nkr2TNUiifpnaN65GtgO?=
 =?us-ascii?Q?jX52lxO/lHDrx5agyC1tAidgc4fZaJBf3e0oLCzp8kc5Ox+lOSOOfTc6wRdB?=
 =?us-ascii?Q?9awbiFBcX6H8XbfFTviRNTL7DQl+fexKjEx5SFAGpsHRsje+8bF45JAAfCL2?=
 =?us-ascii?Q?dihKkmk8uumFkSy35qPdhVxhNTxQ9urtIoDO5eJKlTIICAemTYjQ?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1547b8f5-5792-4f90-9d38-08ded692b0cb
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 10:31:05.6749
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UK/oLoxhmrIU9Y0h2bpfSCsqdqbGpaUjr3CktUYgCa8dhecnsWn/9ieQrqDHs9gYwfzmgE/ctTBxmuuCT5gtiAiguTTNDEJLrWH8NHOcshhcG8pXNilJ3rt/RYG8DlqP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10220
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
	TAGGED_FROM(0.00)[bounces-317636-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,vger.kernel.org:from_smtp,oss.nxp.com:mid,oss.nxp.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D2406E30C9

From: Sherry Sun <sherry.sun@nxp.com>

The i.MX8QM-MEK has the PCIe M.2 Mechanical Key E connector to connect
wireless connectivity cards over PCIe and UART interfaces. Hence,
describe the connector node and link it with the PCIe a Root Port and
LPUART1 nodes through graph port/endpoint.

The M.2 Key E connector is powered by a 3.3V fixed regulator
(reg_3v3) on board.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8qm-mek.dts | 58 +++++++++++++++-----
 1 file changed, 43 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
index d23313bd547c..4c02592cfe14 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qm-mek.dts
@@ -32,6 +32,39 @@ memory@80000000 {
 		reg = <0x00000000 0x80000000 0 0x40000000>;
 	};
 
+	m2-connector {
+		compatible = "pcie-m2-e-connector";
+		pinctrl-0 = <&pinctrl_pciea_reg>;
+		pinctrl-names = "default";
+		vpcie3v3-supply = <&reg_3v3>;
+		w-disable1-gpios = <&lsio_gpio1 13 GPIO_ACTIVE_LOW>;
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
+					remote-endpoint = <&pciea_port0_ep>;
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
 	xtal24m: clock-xtal24m {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -320,17 +353,6 @@ reg_can2_stby: regulator-can2-stby {
 		vin-supply = <&reg_can2_en>;
 	};
 
-	reg_pciea: regulator-pcie {
-		compatible = "regulator-fixed";
-		pinctrl-0 = <&pinctrl_pciea_reg>;
-		pinctrl-names = "default";
-		regulator-max-microvolt = <3300000>;
-		regulator-min-microvolt = <3300000>;
-		regulator-name = "mpcie_3v3";
-		gpio = <&lsio_gpio1 13 GPIO_ACTIVE_HIGH>;
-		enable-active-high;
-	};
-
 	reg_usb_otg1_vbus: regulator-usbotg1-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb_otg1_vbus";
@@ -718,8 +740,10 @@ &lpuart1 {
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
 
@@ -818,8 +842,12 @@ &pciea {
 
 &pciea_port0 {
 	reset-gpios = <&lsio_gpio4 29 GPIO_ACTIVE_LOW>;
-	vpcie3v3-supply = <&reg_pciea>;
-	vpcie3v3aux-supply = <&reg_pciea>;
+
+	port {
+		pciea_port0_ep: endpoint {
+			remote-endpoint = <&m2_e_pcie_ep>;
+		};
+	};
 };
 
 &pcieb {
-- 
2.50.1


