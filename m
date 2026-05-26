Return-Path: <devicetree+bounces-302849-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CPMHgkyFWpRTgcAu9opvQ
	(envelope-from <devicetree+bounces-302849-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 07:39:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FBF5D0E5B
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 07:39:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89B813019810
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 05:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BA33B52EE;
	Tue, 26 May 2026 05:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="oS55LmWR"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010026.outbound.protection.outlook.com [52.101.69.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8A23905E0;
	Tue, 26 May 2026 05:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.26
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779773957; cv=fail; b=AuZJx8hPDLCreSHEyiM49Z/IcAYZEaIVPhUyMRy0blTZvIKtlJLp68w2IiHqM9JpaZIpqfytLuZx6YDiBa1d9jwqDpniXOV8plG0mStXyYfdWYkOUWnGACZjcXxJmu0rcYF5+ScMPUCoUI7Fqqft5L08zcTGZi7YnK6TemzXcjI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779773957; c=relaxed/simple;
	bh=p/YlNaPx3FmheYrCqeaVmnajnplAeN5VPMGIrUDKmXU=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=DkregIuMSye76y4IT33mqcmBIEI3T0XbiG+Kg2L+rntvQEspaFKUbN+JD4bxEADilymMI4NSZ637WhGzX40vwe2KhKRoUzGwp46R1eG7j41rAFHtpNqojNoc2/NJVXpERyCSO8+jjsXrFE/YbdgJhdBdlA84SgIYghukhFG+mtg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=oS55LmWR; arc=fail smtp.client-ip=52.101.69.26
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oCE0HhT1ewjrpe4VfdF2cRO6Y2xXJ2Jg9bh8ecY9Gce/h2zjU70XZjuYdDrBIZE2MB9nCxLKG2neogG/+GqviyqRDjSunqdLSUgRWTGDkkhPJBih/CvubLPP2aYdqcCiOFOcAlBtyaFoFqrbj31Tidr6/kKlblbPJNsSN4Rg7HfglVu48RJFygJP+rgrPEk5el2L1Ek9e8pkyvqQ0pFyiI2FI4b1Px9F1aSQag1NSTUFEfl0rUcaTxXxSO9dye7PYwEE6xjTNh7+6ZJKVjGxeufeJgoav12fRCtBFKyV5ObBZIXAkljprmgI00eAIeDhnJIgtJoE0q0mJY5oDq7TOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/zYA1Xd0j4AyU6e1L/SPSlmVaPfAVfoC5WW15FTYxEU=;
 b=L9URCeJ1D85bPiEU8zJNsmh7rOl/Oax1oSkCOHXkdCRkgETyoPEUzSu0jpLuNj1yrvsezag8GjdTMA48r8iFcSMgPYkamlA8OcbfLQD6k2Ueiqct2JAAwF3X2uQPf+UHEIL3QzMzfspN3gQ4w+se/Uz7JP08Adcbajo1tNI9t4yR8REbk2Benpe5stvZbzUuD56xK2q3yIirc0k/4QNSXqCHXTB1b2wwkAvTPFKN1FNciCU5hreaA4iqYEx0pkvzoqsu/OcSHQUqDhsXkvz1T+JoZ39eHynXTCmoUWhAMAMCCIr6fvUbBE8ZILn6Hsfl9Tt2cSdJ8poR2/42zO++wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/zYA1Xd0j4AyU6e1L/SPSlmVaPfAVfoC5WW15FTYxEU=;
 b=oS55LmWRRDEMdFHhhT1M2otmN5xezYZUpqqNPQCwksy6RCaddL4gjJVxLlrW++t5Xn1PErcVx5bOSuE3ocgMml+/j1UlxK9FaoqEXplieSSZWI4y6flNZfGd76kBciJvLyg8FSvH9GUWzHGi5RAEIwa4mZUAsdZIJ6PbSsZWxHcLCcEdineLm/GKY8nAuAIHYu2HqVddKYWCt+668064dNI+6ieddshs6QkkNR1EukyiOGQgzaB/TVaiNjCicz1erl8y9RZgAAkg2EI6U+xQpZhCj6Ob/UK6gmogxsOzcIVGPckc6LEojODzg+JOVRIrWlWcF0veeA79D5NolQl/rg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8353.eurprd04.prod.outlook.com (2603:10a6:20b:3ef::22)
 by PAXPR04MB9708.eurprd04.prod.outlook.com (2603:10a6:102:24e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Tue, 26 May
 2026 05:39:12 +0000
Received: from AM9PR04MB8353.eurprd04.prod.outlook.com
 ([fe80::46ae:f774:f04c:a1bc]) by AM9PR04MB8353.eurprd04.prod.outlook.com
 ([fe80::46ae:f774:f04c:a1bc%5]) with mapi id 15.20.9870.023; Tue, 26 May 2026
 05:39:12 +0000
From: Chancel Liu <chancel.liu@nxp.com>
To: broonie@kernel.org,
	lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: shengjiu.wang@gmail.com,
	Xiubo.Lee@gmail.com,
	festevam@gmail.com,
	nicoleotsuka@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] ASoC: imx-rpmsg: Add headphone jack detection and driver_name support
Date: Tue, 26 May 2026 14:38:12 +0900
Message-ID: <20260526053815.140008-1-chancel.liu@nxp.com>
X-Mailer: git-send-email 2.50.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0082.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:2::15) To AM9PR04MB8353.eurprd04.prod.outlook.com
 (2603:10a6:20b:3ef::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8353:EE_|PAXPR04MB9708:EE_
X-MS-Office365-Filtering-Correlation-Id: 07b6df5a-ef2e-44f6-0e5e-08debae91d8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|7416014|52116014|38350700014|18002099003|56012099003|6133799003|11063799006;
X-Microsoft-Antispam-Message-Info:
	z7myaxIMkSoOcoyhh+A6NiFNBzEKeoAX9y4P0mX2f2zND5PR8K4j3iDOW5xRGe6P7xqVE0oCETKY7AzR6BwhHbR6JdcxeE285MZ/VOykjXKmVU33Ns4CwP+CL+rANokIRIiC6pgEbH3IKaRWApMqA7r1f9lCgnRKyPIysO867ONnB3MWXjn72t+PEJvjrcQOA7Xw+qzkYOfSC+B0ujnVBE9zcbQ2i+VdlG0HbAYeYpdAcMYGye0nh+ffiXYUr71J7g1TgZjWRK07ia3/c24tVguHNM/ZPaB+tHsHfx30eTk5wv0w1OYG54E0HMRBt5fD7hOvgB6Pfhs4z0rFR2X0e7WOblJSDQBMNQZokPZuNu0Yg7JRvCmRTq9pMqu+ipz1BttABJEYqp9o3zxjxkcuvlF3SSrJx79JOcrzU8pN81P76C5zJroFk7Wgsy/0DlHrh/g0VUdOv5N8m6qyezVCvOz4zQ/aA7xzhHlXOPwSssG5x0rIRMRgaV5GfJJeEPidYPLeyWrBKgHyWua9hKY0tAGVuaesYRUaojCmg2Nr2BqkKIh/WXNjovSJc8/mLMParcQJrfYNDvrHFY6fHpTWDtrHD9y5evI8r+ESk2deL1yAtNFqfPhHENATruPXc9pQRVhd8xei5ui2dvkj82riHSTxfSgE0O2QsJoEWoAGqEPdLh+0nSIkxUnHMzmoGrVbuDY2hk3KtdtxPUxLJdMT9UmHE5Zry9U9GwNdiPK3PUAVFkq80XqO8yIQ4PHotCKj
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8353.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014)(18002099003)(56012099003)(6133799003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?W6ZtOQxN6KrFEhy7QaDTljho6u630MXDqXzhWyx78eN+Ul25/TrQHejzWFnN?=
 =?us-ascii?Q?pJfm29a5AWIdlyIdcJFp99vQYkwlK0Cyajv3otoTY/OlhPWgbyYevSCQb9Uj?=
 =?us-ascii?Q?TqROqIhFNjzZuiJNsAUAk/I6QGIBDHYgnmgjrT2jDk8l90DFFnBZfDtEnb0z?=
 =?us-ascii?Q?QZM/UVeyxOjMa/KsKFqRmIOwXdTiw3flCjd9Fhi+C5m1eQObUz3hHvhKW9vc?=
 =?us-ascii?Q?pkQ/BWOAswokv4mo7MEu/jibahjDuEToQi07X2swNASUiQ/9cY/G6OsjGkvB?=
 =?us-ascii?Q?eU6Z1SB/73HJzsYsjEcZIZJh2zP9UoTePN0szhMtA0NS8TV+7wxN3QfuH/az?=
 =?us-ascii?Q?77yZHEksJ9l8drxmUrJbuZZVHAGzPFgrml/L8HuNKpx0JGS28ysvuzIAaDln?=
 =?us-ascii?Q?9lsxNAG0rHys4SIytk6D7LaL0EPOsD8gvDecFdbYNIgP96vYNxzDBW5Wza0m?=
 =?us-ascii?Q?xVbrpfX25Nj00qzNqzfIqWFfxuDKzvLngkwPRlRgPp+9MB2nHFO1hqG1ne+q?=
 =?us-ascii?Q?wiYEUi55lzRnNPIMXrGU/hTSGzf8kUAv4EBy0FeIYfWa9BV1CHyBcIcPyleA?=
 =?us-ascii?Q?0M3At5tOM0ZxAwsd4eCsXV/qp2qDrkvjCt4DHcVhhUQXLx8TNUQJYtPIjBWp?=
 =?us-ascii?Q?A6b7iJ1uKxsCydsJ4J2z+6FmzVyHaBcPzivrdqJMvODYgiJtgD/3NbwfEqBl?=
 =?us-ascii?Q?EvUeNEhJR88yfMNwvWcsbTn+/jUjNgep3AJYXLXUaITVTf8H2fJ6Vyq5DjgM?=
 =?us-ascii?Q?iAS72zGVOpePpGcK4QULNBgMPjU0xS07DPlW/6jIVQvLsFtda9/qDW9r4O3H?=
 =?us-ascii?Q?ITcznIVx28uWNXUUOEhp0qc4oHOGFND4vvizKEkSkT31EFd5ldGUfC9l1Bzc?=
 =?us-ascii?Q?PBQ8l9Ztw4L2LC9JyuGpA1mkQkDARZlJ3lD/t1RH9HanQhX8cQ0eVBnAyCD1?=
 =?us-ascii?Q?9wXJis3hmDKSSC4+PY0WXQDnZkkp9SHOkecJflv6PrZViHADPXH4DT/5zvNz?=
 =?us-ascii?Q?n/J5yWwY4iQPwES8iRAGDePu5A3BpQpqHlfsxg6j6tnLtgdXntupRNzuSwiA?=
 =?us-ascii?Q?uUPJF1T5Qz8dcojoS3EW6Q2rJGl0jFe9pcbd/6MnyVMJyWaLO0NA5negWGwm?=
 =?us-ascii?Q?CnL3T9SE1oThtwgKF687fg3FpBpiS3UApTq8Oba3DRz5HCeJ+lY0+LNANGiy?=
 =?us-ascii?Q?igqybh08eEqnwDiXLA/sy+k9RRn1vmL7yDzzVCtObFUOLFAtmXooqGJ/ickW?=
 =?us-ascii?Q?7qTQqDqZY/0CUqQhk4UsVzQeEb1+BJJv4rcu2ohYkoXwK4Lj1L+46JP/imiB?=
 =?us-ascii?Q?U1+sVK8vTywfiGb/eryzAP/3PLHUHjVf33dEeCwFFL8+vleWSBczju77sgPJ?=
 =?us-ascii?Q?gjUHtw+f7z4WRb3z2F0Gyitn/Q//7iKksnzaisgJ0WkGP5W3SfExJfP8blVE?=
 =?us-ascii?Q?S8w6Rr7OjEUZo9X98EAGSm9eYqLkyr/2EJBoaDUZD1UgaWS2wfFyP106ItgU?=
 =?us-ascii?Q?thwIWAGxDE+JeCcTAOwAHPHxJqJEC62E3BOlazEHyJyU18FOaY9atMX6PQ/K?=
 =?us-ascii?Q?A5zzPNXoPX0DGVXCF1dczlnPqbEGM+u3+41Dafu7Ua6D82R7s1Ed5N5XdU0t?=
 =?us-ascii?Q?I9yUEvBXt0aGmx3n6PTBQ0FVJ88/MQePzPMGPMfGqDPZyC0zVmY7mcPTtvVY?=
 =?us-ascii?Q?l82R8bohDAEwtfhyw7SQLxmTktLwujk/QY9uesMRRPxgvoXupfi8paMcjOtO?=
 =?us-ascii?Q?25n8vi3GwQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07b6df5a-ef2e-44f6-0e5e-08debae91d8e
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8353.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2026 05:39:12.2661
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rZBxzI0vbC3UKheOVv/drN+z6M4kVdDaF96AlbCuh9UOTopnFSNtDGyCsHAybY9zYTxA+hyCSJXZ6kjN8DDRhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9708
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,perex.cz,suse.com,nxp.com,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-302849-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chancel.liu@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:mid,nxp.com:dkim,i.mx:url]
X-Rspamd-Queue-Id: D2FBF5D0E5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds two features to the i.MX RPMSG ASoC card:
1. Headphone jack detection via GPIO: Introduce the "hp-det-gpios"
   device tree property and use simple_util_init_jack() to
   register a headphone jack with GPIO-based insertion detection.

2. driver_name assignment: Set driver_name on the snd_soc_card to
   "imx-audio-rpmsg", enabling userspace tools such as UCM to reliably
   identify the card by driver name regardless of the board-specific
   card name.

Chancel Liu (3):
  ASoC: dt-bindings: fsl,rpmsg: Add hp-det-gpios property
  ASoC: imx-rpmsg: Support headphone jack detection
  ASoC: imx-rpmsg: Set driver_name for snd_soc_card

 Documentation/devicetree/bindings/sound/fsl,rpmsg.yaml | 4 ++++
 sound/soc/fsl/imx-rpmsg.c                              | 9 +++++++++
 2 files changed, 13 insertions(+)

--
2.50.1


