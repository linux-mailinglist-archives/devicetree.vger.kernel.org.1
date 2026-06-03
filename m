Return-Path: <devicetree+bounces-306128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id htMnHgD5H2rXtQAAu9opvQ
	(envelope-from <devicetree+bounces-306128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 11:50:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A55C636500
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 11:50:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=MmX9AHdT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306128-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306128-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8C6AC300ACAE
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 09:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3631943E4BD;
	Wed,  3 Jun 2026 09:50:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013046.outbound.protection.outlook.com [40.107.162.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0881339708;
	Wed,  3 Jun 2026 09:50:53 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780480255; cv=fail; b=eh0pi/7c7IrDQk/6u0CT0u/SoRZFLRS9/i2iWwVwWS8QnFtuES3MZm34RTHYz+IgdxQcotkCFNUvDYHlOQIpIxmfS9Vm/0VxSRvAFgSM+jZcODjr11Dt887OPKlh+sPuXiMKaMnOqB9iSmDuwc8Hd3JPVHP+9dhjg6dF4n1lu9s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780480255; c=relaxed/simple;
	bh=MJcJw4SV66Lt1rSRDRZY/KTv91jykjUNHspp68/gZzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=o1OSyeZFCGw209fYyX8cpNwqx+/bqX/qci6vK18LzVlAxj4zXN3Vwi2DVOd9B+8V/QmyXxw282xOwwN3s8Z0+zKPH0xr/283iYWXiw7Y4srNxryoV3MTWOiCYaY7IETfRO43ktjL2cFAwrXkkZmdHDMpDYpgT+742a0aZeKuncM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=MmX9AHdT; arc=fail smtp.client-ip=40.107.162.46
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j9w8Sg3Q+lucofMyzh79tVfSoyzGHEWOMwgnZ0+jsn1CCJMvrEDsVnQdjrI700CKTJe2hz0T9iNRcabyU3yPR8GbQfryh6YMyoqTLGjM4ercccd4L551HGJP14P2lVKS7c5EZSj9FOjyvS+oD/uo7T3mtVaOM10eXuEXqvONBlRhGabtlRShMge+TcjuHPhq4E31+R4YP29pVISt7M4Mu2bwnBwFDwWKpADT0O7D74Z5bOEHzq+Exd4sd5vr/80tHF0mPycmXj03Pfeeq6csK2TGycdW3vRbfF+GywjAsbHdAl7wYhq6N5p3y/FBR9ezZssWvNr5UKSD5hggcU+FsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XobtCRncQv2ct8ywK1pXhkIpUAZcH+swk/vG7eZmWcs=;
 b=aAYtfb2IgnhTCYOJlFDDm4oBaLNNut3k6glufNrVzP9Ep8o7ecYiIxL2Wd9vGCpdecOcZQhfGT9Sea8X0NzHXpyLhu/0dRmRBwOyTnrPw9couBqNF8SHHZ+KYLRn8VUgcsUyFJsS6yU/KwJEcvJB03xEdX9dGeGi1GlGDBaYtwWfI6NNUH+CC3hk1nUIfRSbWd4CHblBFZ6eCCGR6Uxmm2ltpFXLjZbbAOLWg2J+sYlWDSx7B3qwUfoxIo4CaN/46KDivp/A4wcMB2FZGjcORRUWPza3/AElc8XDR4Ch8GCdwrM7keE6y6jJz9YFdQeXxXtDe3eqr45WdwxllZd51A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XobtCRncQv2ct8ywK1pXhkIpUAZcH+swk/vG7eZmWcs=;
 b=MmX9AHdTsHu883FmPHGSMrv2cBeBBWUpPYyuTsdFiVrl3YDbzVoew64Caz8etmiAahcVPt5bBuMv2uqoLpkI5cNklN1eUMh1areMFO0IepTsKh0CQRNeOHFH8QZyIXa7F1SfuvsN8OngMlLI84BRSyT53QPqU2f5/YIBTvGYPDjnPxVmZgmuO3w+Pj1SaBNqO8JGTufArcIWfNQhczA+QSsTdw4jobL0fDts/tV5/A5pZIFCMdqcqouDO4XfXOWpaswGylxjAjcjoPqu2g4OO96XHAvfoI/kMeJ4Wx1P9UX+FFF72fNPIIARPlOA0UPO/kWx4w1jMFtlde8o4H2bvQ==
Received: from GVXPR04MB10021.eurprd04.prod.outlook.com
 (2603:10a6:150:112::20) by AM9PR04MB8258.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e2::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 09:50:50 +0000
Received: from GVXPR04MB10021.eurprd04.prod.outlook.com
 ([fe80::d247:853:3e16:1994]) by GVXPR04MB10021.eurprd04.prod.outlook.com
 ([fe80::d247:853:3e16:1994%5]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 09:50:50 +0000
From: chancel.liu@oss.nxp.com
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	david.rhodes@cirrus.com,
	rf@opensource.cirrus.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	patches@opensource.cirrus.com
Subject: [PATCH v2 0/2] ASoC: cs42xx8: Add SPI bus support for CS42448/CS42888 codec
Date: Wed,  3 Jun 2026 18:50:39 +0900
Message-ID: <20260603095041.3906558-1-chancel.liu@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260601080224.1410292-1-chancel.liu@oss.nxp.com>
References: <20260601080224.1410292-1-chancel.liu@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SEWP216CA0150.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:2be::15) To GVXPR04MB10021.eurprd04.prod.outlook.com
 (2603:10a6:150:112::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB10021:EE_|AM9PR04MB8258:EE_
X-MS-Office365-Filtering-Correlation-Id: 964be8f8-3f02-4dab-a90c-08dec15597ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|19092799006|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info:
	0BsFPgilYTPwoxJ1vaUROSrLs0hmaQFp+jA70IWHJI3xCPlriqj/UVlDBirJTXP9cQJ6biqtMhfoqOM4pfQfrS3ZJaSBunZgmsT1Y05n1ae7XHJ2TrQ1fPKw6TRdaIWk2S59MQuG2QewPnRgXLk8dKV7Hq+0odNHccFfcG70DvNK3MQc9J/Hgfxl1SkSlP9lK4CY3vBmfTdyB6e1KHddw+ME2U+6nPy4Hl9TNC0ghUHgb8CTXrZEueEK79y6xzPhrrhBnUajaQjBWJB0vNZIViDhlNEglKbBqsVXCX3VPlks+T4ZHvKl2IX4XnsqmSkcHx7/7oXQq5uapBStk+BzHGo5efauG2z408PUd7bxZOBIJM3KVGPdESYw0WIhHDIAIEw2bFq8Ypwt1a9C+Arj4aUpxYw4ZAZeZB8/KF4tOLGg6wxu9l6So/xat349UT5ejUYVRQckcyiLxOIpgrXnvO5KUdmA9CC4/eEr8l/rbHjNXqEniVvttVvwxlN6xkt8I3TeykaoPQwR2grFKkvsMbspfMZmxcAlre7bwpIHG5OvAkla/WJk3XBWGDvXngq+nluxntfQefXV7dZOTQxUM1imRQzzgFs9xPMo8UnbDrlUHw9vwNIR2pOBMLY8NPB0+Jv3nUq+SHM6c4V4lYpTSMjG61mZrfb8MUGPanWIMl7gT0St7hMkhK4A89/w/UU5
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB10021.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(19092799006)(18002099003)(22082099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?CHfeR8eeTYImmTtLav6ow5LN8PiS9aeRcKkF4skMPyXWE4zjZTv/XrCMOv/k?=
 =?us-ascii?Q?QUrgaShCjcw5fmmA1MXE5TD9zNOHw2AaH1ArQDXxbwM7dTPr3g5ZX3QvLLQx?=
 =?us-ascii?Q?csMmftgk1dNvj0N2Qs+rufARlZf6pqmViYL1MV6qwpXNEp9RDlj4AJSIKIIT?=
 =?us-ascii?Q?guGdp5X/yEJZgBy2FJvOYXFng3bZIi+Dr/FHfh2ZXiyc8SkFzG4SAO6l9MFr?=
 =?us-ascii?Q?i2HPbermBFQlmO3iwj1BU85sB3kK5x1GWI3uYWeAQxJCprioEX0YIevm0Bd2?=
 =?us-ascii?Q?FUsUFil0JrqHNOMNZIxy76Uthf1gTlLD0dw9uOpdBLHIKYm+gy8y8aKQL6ug?=
 =?us-ascii?Q?PZpDYzM6+DuSt8WkG2zOKnCcveVccY+d2l/zlDlwdRWaYK4aoQSOK2m4Q19Y?=
 =?us-ascii?Q?FtAiWgJGPPIkdPllEpmA/nez/MkMFyeSsaKcMYVyteFYzQcdJTPCKKcdr41B?=
 =?us-ascii?Q?NEwIRn5V3nww8fgbxQumBvcOAyUGeZWGrkv1ZI1CHqmq0UaV2tqcPbUlP6U0?=
 =?us-ascii?Q?5+5dfvYKSXiWlowQf3reXtTch+dxhdCQBZukYmsMgJ81gPwaFgrFGMao1wuf?=
 =?us-ascii?Q?39BE0Y0So18Q48DzyZwroMN6P/jrshaIkXLG5IW38sSikbUTc/e+CBxdDEyP?=
 =?us-ascii?Q?GENXa7pvXobDWBNOVF/nLc0UOc7f8kl8snJDWb/BweyoMmIr0oYYJ8kehFuA?=
 =?us-ascii?Q?ftnnRqkjgiiRGbAJaBCp/1fJK3MnLYd6XU/CGS44Vwm2hLyLnF0EkV0LEFTY?=
 =?us-ascii?Q?C4IJEFgJa1MVNyECr6rXMPZPQRozfLLFJzT25apKSuOo7QkO/ZDwllpd36qG?=
 =?us-ascii?Q?dI60FCLVaGPmKJ3GvZGrYr5QAMWUTuZODcLfyI7i4XAGNyIwB7EZMqUWKW44?=
 =?us-ascii?Q?awrtEBs7A2SLj/L+bD9a33nQppkTEYijgstP9Y+4Vc4dGPD4ANA7PIfmGcqk?=
 =?us-ascii?Q?pHu3KKWJRbpVA+JOIkKZr9Up3HQkHpDfYlIhNlOfaT706Z4XF5bhkuFAmhtX?=
 =?us-ascii?Q?9Wdx0CHrWalRQu7X5jyJ4YwHQaisDgP/H0ckJeURuP0jBPeomVQh1wEamIcH?=
 =?us-ascii?Q?5lYUntvLSXG1eutTrShcBx5x6wFIYro7BAJqgZ9H5KK3e4N/hNYYO3bLIKqJ?=
 =?us-ascii?Q?c+d8FcQzLlSNIrgYJJshhFFg4iO3EszlJbuJWCptTVJsilmIVUwtxE6dHh1H?=
 =?us-ascii?Q?vVYx255c1cJyq/fI8wc+y7V/WyBlwHGRC/t08FGFcgkZ09dhAaHxB++y/+Z1?=
 =?us-ascii?Q?h+Q0dULEbbYp6Yb7ns/rsriYTUQoRzXoQ3H0z9++fHQWrhasdIiMgxcINGHs?=
 =?us-ascii?Q?a0H6xBMNiJCJ08fk90jNQ3b9uCB2OqsD2CrFS6suR/cwDSyL59qT7aI9imGV?=
 =?us-ascii?Q?DBs6H1VZfac9wVUqRTbdxYtmny3fW7TbQBBN/1p7czYuKYFgXYBmlbOLU2ah?=
 =?us-ascii?Q?E4eZQooqGwaQWRxxK9PweHuc5U2H+IK9VExvpFb+oBtvzdesz8tR6LDTrTn+?=
 =?us-ascii?Q?VQyqlfSNa4vJ5ECnJptTz51Q2kcDHMvfC0N4+8EEvwBmj70/Vh/KdIP9xMsO?=
 =?us-ascii?Q?4hZJPLqc0psGhnuC9ogW20akKwPNaMIoSfCf5l0qNe1BAYztISRskbHTOH+b?=
 =?us-ascii?Q?JkQ8Bs9boQFD2mhYE/bFWuF29d9Cck4knqGYM90GAuCzd2MoHt8xnWwzdBLa?=
 =?us-ascii?Q?6s/afVxST1VgmMgllBf55jdSLI/nGy1dCADLqvL99VUux3VwZuYEt7ZGQuWV?=
 =?us-ascii?Q?X0JSuVXH+61awLFGSvJnWvQQtKZCZk6tZmVxv1wSpo5xq5h7hmJH?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 964be8f8-3f02-4dab-a90c-08dec15597ef
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB10021.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 09:50:50.3115
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lu2MbEY+XWglT5nLMDaGndqs55xBWhQGNvedEJMcEjqFYob42wdbPrBXe01aQSYZGzOk2SjzV6jXJTgtJvWjD+r1andXb7plSdOSReKuM+/BV+ZThvJyQ6KzniqS6K0J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8258
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306128-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:broonie@kernel.org,m:perex@perex.cz,m:tiwai@suse.com,m:david.rhodes@cirrus.com,m:rf@opensource.cirrus.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-sound@vger.kernel.org,m:patches@opensource.cirrus.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,cirrus.com,opensource.cirrus.com];
	FORGED_SENDER(0.00)[chancel.liu@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chancel.liu@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.nxp.com:from_mime,oss.nxp.com:mid,NXP1.onmicrosoft.com:dkim,nxp.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A55C636500

From: Chancel Liu <chancel.liu@nxp.com>

The existing cs42xx8 driver only supported I2C control interface.
Add SPI bus support for the Cirrus Logic CS42448/CS42888 Audio CODEC.

Changes in v2:
- Add SPI bus support in codec binding
- Move format endian into common regmap config
- Enable use_single_read/write for common regmap config

Chancel Liu (2):
  ASoC: dt-bindings: cirrus,cs42xx8: Add SPI bus support
  ASoC: cs42xx8: Add SPI bus support for CS42448/CS42888 codec

 .../bindings/sound/cirrus,cs42xx8.yaml        |  23 ++++
 sound/soc/codecs/Kconfig                      |   7 ++
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/cs42xx8-spi.c                | 104 ++++++++++++++++++
 sound/soc/codecs/cs42xx8.c                    |   3 +
 5 files changed, 139 insertions(+)
 create mode 100644 sound/soc/codecs/cs42xx8-spi.c

--
2.50.1


