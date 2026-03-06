Return-Path: <devicetree+bounces-271816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOccLbtIqmlkOgEAu9opvQ
	(envelope-from <devicetree+bounces-271816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:23:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C042521B083
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4381D3005155
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40C1633DEF7;
	Fri,  6 Mar 2026 03:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="CG4P6ORR"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013022.outbound.protection.outlook.com [52.101.83.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03A636BCE6;
	Fri,  6 Mar 2026 03:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.22
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772767400; cv=fail; b=SjgEiP0GPzQ78sVTjl01ivKKZ7Zj1cYDhYmsC028weEH/fJNQE/xMP0z0YGWd8ERcxIUVK4NN4HM1VBxKx4GE+WiOVhNY1aZwrQAMFsPz12S5o9wJOwh4ioBkGVGhF7J6hcoWGHSfxQKY0GSSLEGX1iSWo7JLRN8JwrXGq1kv44=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772767400; c=relaxed/simple;
	bh=RQtg5hXvrFPn9DJQXSNbW36mshC1RScWQEh9JFwqbqw=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=qe5DAmaB5XZUmkC+LFWHSn04/HqElipwHlyEr8SmIXEbBrcExrj27PQ54NLiZvXF/hN1br+UvXZolN6lDhwwYaiOsA02vHalFEgyJlqyvuWlXKlgW912gUiKbksBiwE8jHIHzrHY7AGirnCvCrGmjWxucPQS9SlSctG17zW7g4I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=CG4P6ORR; arc=fail smtp.client-ip=52.101.83.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yiAi9OLhvwJ2rbDDYyyYuzhfLewQTs8ya4GqN9y0sQoX/UD6nPPRDkKrHd2rdh94Fne0R9LgqZdZRk8iFgSLrfI8dN5N3w+lufRgUlwMIyUnaWKwGoERv+dv0IFvY+mVCT+iuYhYQcyQTp3ppD9UN4QSVn7jgQeR/Ned8mHc7Z4fZvYUP81QcHIhogavlHkDZQpTa/r4QaXaj+JRTZxopy0CtI/pljOawiDYXklsxaz5vVv1opM51oAhZ5bZSIc+kL2eG0Lb1KbRsLOeqpJp0eHvQp5zzPHuBm1JGZOgmcXmb8a4OyLWgv3NBL3NC6f33N91YVEFG3+MayAIrpus/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0YD6KkHRP6AgBGM5JomduXXn6QHYfT5K3iyMM6uFkvQ=;
 b=W6KhvHdjYWH81/kpmvWLMe8s2WDh0I8HVV8/5zI2z9f7W4hed0UZVWA2X7mmJPDvQ0Jvre9Ntc3C+CKLU+k2Y6avZl0GLc5nPaDEMmRDnGrIyV+2TZBhr3N8eXVMT6FJYFJHkFOWB6eHygiblzjPQLyiYkNOMD3s4Nm3EyNgleQKO/gin3RxHpKImPEUFkFKB93t11GMnYRKY+Pzc13ovkJ+utXEjR9sJw26g2QtTr+VtLbVlR8na3SNIDPgHeguoctd20JwuYNQGGsgsh4BSXgo8tZu5I4bylL+b9JzPr3EhDgSh41gWJVRgE3aKp5cp3uDU45C1ng0jvo1Fcu8zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0YD6KkHRP6AgBGM5JomduXXn6QHYfT5K3iyMM6uFkvQ=;
 b=CG4P6ORRfdaknGDWnY+PQ4JADFYRc/TXDbmj2/PaxbpyMF3z6nuJlzrCmCM+mE8yhm+Zjc55OVvYFCqN2S5GlXW1tvK4A5Plj4dVEChtfjib69AGxDYrct+Q1q1UeqoJrBnA2AOevKAY8CXj0mv6Kz4Qv00Z2xU+RlXakGsKy9NWGjEou6nrC4PSBg47P66Z5qaLJp3TnUqXLA2PQRS01Ligefe7n8RuSkzbPj8CPQtOCv/BekX1ZAkJOOiltoJKj9vhsH9BzOScofSp5EpPiker4WAHWJGX4b2HY5ncHeK7VS4wOUyoLdSqhDVfB7GNh6XRsjCxjCcV4LVwNPTc8w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by GVUPR04MB12544.eurprd04.prod.outlook.com (2603:10a6:150:349::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Fri, 6 Mar
 2026 03:23:13 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64%4]) with mapi id 15.20.9678.017; Fri, 6 Mar 2026
 03:23:12 +0000
Message-ID: <9ea97548-1ff0-41ef-977c-fafd08b5eb74@nxp.com>
Date: Fri, 6 Mar 2026 11:24:20 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] ARM: dts: imx6sx: remove fallback compatible string
 fsl,imx28-lcdif
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20260305212312.4053922-1-Frank.Li@nxp.com>
From: Liu Ying <victor.liu@nxp.com>
Content-Language: en-US
In-Reply-To: <20260305212312.4053922-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR06CA0009.apcprd06.prod.outlook.com
 (2603:1096:4:186::17) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|GVUPR04MB12544:EE_
X-MS-Office365-Filtering-Correlation-Id: f7e1a850-c11b-443e-6acf-08de7b2fb2a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|7416014|19092799006|1800799024|921020;
X-Microsoft-Antispam-Message-Info:
	SdZfCbERMbQZxj1V9+RYYlCogpFw9B9P66uFjVEUoJWUgxpBg/9vavDvbxuxEitYR6lPHS7UmuO53m5Fl88TExBL0uDKpS13bjs2PCQDJsnGVK0prJQsX5TKQVzPs4eTQjozTH73wZ7tqWCtd2kQHYD2nNDMaPYqKaAJvJDJ+IoH4xf2Xg4qPR9C9S8ZELd+fq5aoP8eps8avNf+nU8vAfgzam4exb8mgJo9tIuZPvualpv+wCQnNdOdnR8kha0oXXt7QkTBiXrgBswttMkf0RU50TK+qlb2VQCGQSxPTx3FV3yS2cV72ajWDae4GkezzUgNt7uaeocY6964tz5cLVghqrWlZmMyWcwxiLxZad1vvd/TMtavxrwolXx7JMQM9NxabMqMr6+kwUYSJ6jdeGX9HjLofk0qIKzn3XQ/BrHZuxRReDdBTz4Rd/5ginp9gZTZ4m9FBekcSUrKXK0dE4vT38Kl5cSSctVmZpMdTUiHq9MZe04AwWW4UUwo3BZdCaoxnmiqvse4ntVZtLYKmikeaYI45bBfS5i8+gsxqWYyGHm+muQf3GMaQ9VVsQT6nvr9xgvJnwlTR4YbBVkAz7XZsmMLRZe6MbVCrRmxFyY9Ldab7OpRuqugszXMyOJSEGP39MSwkpOGhioG5HCREq5nIcFAlF9Uzn5wqvMJqYwDiGrm0G2bAk7keJ59O7K/c3BTBFhH7ibhq2j6V01UxEeRRAKgRN/6Q/bP+BQdF6AhEHbmbPyfn+O3sfKgxg2nYxtLIN4w9fqjlDcoUGjCYMx+LOpWA9rJVA4poT4lO5g=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(7416014)(19092799006)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZmhVblFUZW95WlRNTG04ZU4vU2gwQXNyeXlvd1UvWTlEU00ySTR2OU9FQ2NW?=
 =?utf-8?B?RnNIMHV1UmxKbUsvMmc0c2poYW8wa25aSGNjM2hYYU80ZnQyVGtEU0Y1bGd6?=
 =?utf-8?B?VnVxM3RiY0NVVkIwaXVhY2laUlJsQWhSQzFlUDJTZUw2OW16MnpheGlZT2d2?=
 =?utf-8?B?YkRJMUhCZVJiRmd3WVNaUlhYZ3REQit1SWhybVU1VnJubnZQVHZBRVRMUVIx?=
 =?utf-8?B?aUszTkNoYnJ0Slo2VXBtVWJ0b3I2eW5wM0RjeFFKV1ZmNGUxNHhnbWJLN0E4?=
 =?utf-8?B?NGdMdVRXM0Nud0hjTEQ4OVlJZGg2MlNKU1JZZzFKYm54RHhqWlEzWStqSlhM?=
 =?utf-8?B?cXBCL0ZHYWlJbnpIaEcwb1hINlVwb1BpTDlpeXJJbjVpeDVkUHlzS3Y1OU5J?=
 =?utf-8?B?dmxVT1JZK3JOMUJBUHJaUTFvM1lTN291T0lNamxVRzNiUy8xVXpRM0Y3bDdK?=
 =?utf-8?B?eThtcGFZSVd3LzdPQ1RENFd3ZC9vYWhVdC9EMzNESkdUMEFhdEdOdk5VSitV?=
 =?utf-8?B?Qzc1cGczcmhENHZRZm9JRlYwU09kbEk0dGFMVnJ2NmVWRlZxYUtxZCsrR1Fp?=
 =?utf-8?B?SzkwcDVUOEI4b2VuSkEvWTFLbGs3aW1GcXMwOUk0UWdXaUFvZHp0Z3JTRThN?=
 =?utf-8?B?anNSZzRnRUZXUjQzTld3OU5aZ3lSYndZbDhLNVR3Qy94a2VpWTlmQWlkKzB0?=
 =?utf-8?B?OXUvV2Vld2dQeklOa0toWmdVZmRhdFNiZmw2dk9HeDVmeHVxU2E1cENpU3ht?=
 =?utf-8?B?MjZ1ajBkSGx6dHNQdEl1UXVVMU03OFpqTHdRUnlscXJ4OHhianVKUjk2SlZt?=
 =?utf-8?B?eEYrU014WGwzaTM0MHFwY3EvTDdQUzBMbHMvUHQ0WjFtVTBqQ1pLbmNlVDdm?=
 =?utf-8?B?Z1dmKzdQekVUeEtlc3V5VjlPVXkvdXcyQ0hkZ0NYTlJMRUJFT2xLNW9TZXEz?=
 =?utf-8?B?UVB2NVNmVXdwTm9pbWllK3RxN21uTy8vR3ZMU3ZPQzQxVHJ3T0IvVG9DdCtT?=
 =?utf-8?B?d0JHZHlKRUlralpIM2JBOUd4UlkrK2Q4REEvVnpCZEdsckloYTdhY2RRTmFR?=
 =?utf-8?B?T0NMWmRFYytzVEdWZ3VmdHhYWHM5dlBiRHVQNzUwaUhNYUNaVDN4OVB0N2la?=
 =?utf-8?B?cjJCeFRFbHhWVHdvLzY0N3BaTlFZMlg4WGgvWjYzSDRaK0lPY25xU3pFMmNt?=
 =?utf-8?B?dzI4bHczMjBiWWNyM1JPVmFNWE1nSUtUZmI2T1NHenlEZTBtekFQUUlyQmhC?=
 =?utf-8?B?WGp2OFM0SUZ0NUtyRUJaOFJoSXg3N3Z4OWxNQTdRWmR1NGJLVnVaZ2lUTzIv?=
 =?utf-8?B?cTVOcDRreVRDTm1iMDgvTzZQc1RacUsza1loeG53SVlqS3VicTF4UUg3RHFQ?=
 =?utf-8?B?dlhBVGJ5bkFSR0RmcnlDdGovOVNnLzMyWSsyZUxmVkRIbjBUYlQ1V1hxYitC?=
 =?utf-8?B?SXJTbFFaRlZSbVU1WXVsRVpxRnkycmY1NzFZSnBjK0RJdUMzaXBvaGNDUThJ?=
 =?utf-8?B?NUhnclo3MDkvbWpJWWpQQTg2ZFYrdXMxLzhQWTh4U1NJRzdCTkxOTkoyRThN?=
 =?utf-8?B?M3cyajBTY1l6dDViOWx0YjRNMEVIOHJUcS9nUWlNd3ZGb2FOdmc4L1pOWmRW?=
 =?utf-8?B?WlZ4c3VEbHdFZ1hGbUx6WTZaaEl5TDArV1ZIN0tlK0E3djBYd1RUZUVzQkNS?=
 =?utf-8?B?c2F0Unl3T0VjTWtzNVNwczZMZjV1OFFEQnYxZzZDUEFGeVAwNFpLcnVORmx4?=
 =?utf-8?B?d0tRWlZuQ3VVTFdMQk9CcEJkelpJRTFKdlhWMG16ZTJMczlueDU4SzRHcE9x?=
 =?utf-8?B?d3VXZVl3Y213MUdFOTV6Qnk4ZXlNL0hGQzF0V0ZXU0tPT0FiUTdEMXZJdzNz?=
 =?utf-8?B?aEhUc2tIR01VVXlLbFNVVHVrTE16SEN0VTJCMWRxVG80WnFYU1JHMVVmR2tx?=
 =?utf-8?B?dm9Ca3VURndnYWc0ZjdLeW9ncklCNC80MFJMc2JETnFQOGQybnhVaWFQalp6?=
 =?utf-8?B?ck1lc3FwM3lLS0dKQUJrSGJGbVl2TmVxNXYrU2Y4K28xVmRDSC9OTm1vZm1i?=
 =?utf-8?B?MS9MWkViNzFSdThCbFhmTnpNWmc5Tis1OXpRK3h4V2RnbzlMM1RzbE0zL2dB?=
 =?utf-8?B?ZXZROWtxMmxScktvY281R1pyd3Q2S1IxbUVkMXF6Q1NITDdkV3Y2N0NMVnk3?=
 =?utf-8?B?OHZOdXIxYmRkRndXcjNSLzRUaTFlbG94NmV6VitLVjBITXlnbWJzSXExcTd4?=
 =?utf-8?B?NDhzQzNQaFZYU2JEcnRqS0EwOG5qUFg4VExtY1JuR0prQ0EvY3RNbllNMTh1?=
 =?utf-8?B?M3V5NFpndjNXZlZYaUVGMmd3bHZJVm9maldaVWQ2UkJHV2dLZm9RUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7e1a850-c11b-443e-6acf-08de7b2fb2a6
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:23:12.7217
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pZTyblmXrTIw4HpU98f6t9nGldu8XMg2EjkRPa6GtwIFWTC8y5jnfhyN+v6zw09VWUP4ywB5yPe1LWW+XwQ9Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVUPR04MB12544
X-Rspamd-Queue-Id: C042521B083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-271816-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[victor.liu@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim,nxp.com:email,nxp.com:mid,0.33.239.128:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,0.33.223.224:email,i.mx:url]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 04:23:11PM -0500, Frank Li wrote:
> i.MX6SX uses the v6 LCDIF controller, while i.MX28 uses the older v4

V6 is a Linux thing as mxsfb_drv.c says:
/*
 * Starting at i.MX6 the hardware version register is gone, use the
 * i.MX family number as the version.
 */
MXSFB_V6,

I think it would be good to make the commit mesg independent from Linux.
You may say something like "i.MX6SX LCDIF is not compatible with
i.MX28 LCDIF from HW IP point of view like missing a/b/c registers".

> version. The driver has supported the "fsl,imx6sx-lcdif" compatible string
> since the initial commit:
> 
>    commit 45d59d704080 ("drm: Add new driver for MXSFB controller")
> 
> Therefore the fallback compatible string "fsl,imx28-lcdif" is not required
> and can be removed.
> 
> Fix the following CHECK_DTB warning:
> /arch/arm/boot/dts/nxp/imx/imx6sx-nitrogen6sx.dtb: lcdif@2220000 (fsl,imx6sx-lcdif): compatible: 'oneOf' conditional failed, one must be fixed:
>         ['fsl,imx6sx-lcdif', 'fsl,imx28-lcdif'] is too long
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Since this is a fix, worth a Fixes tag?

> ---
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Previous Fabio Estevam work try to allow fallback at
> https://lore.kernel.org/imx/42eb2d42-47b0-46b6-92e9-c59473113c2d@nxp.com/
> ---
>  arch/arm/boot/dts/nxp/imx/imx6sx.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
> index 1426f357d4744..aefae5a3a6beb 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/nxp/imx/imx6sx.dtsi
> @@ -1304,7 +1304,7 @@ csi2: csi@221c000 {
>  				};
>  
>  				lcdif1: lcdif@2220000 {
> -					compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
> +					compatible = "fsl,imx6sx-lcdif";
>  					reg = <0x02220000 0x4000>;
>  					interrupts = <GIC_SPI 5 IRQ_TYPE_EDGE_RISING>;
>  					clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
> @@ -1325,7 +1325,7 @@ lcdif1_to_ldb: endpoint {
>  				};
>  
>  				lcdif2: lcdif@2224000 {
> -					compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
> +					compatible = "fsl,imx6sx-lcdif";
>  					reg = <0x02224000 0x4000>;
>  					interrupts = <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>;
>  					clocks = <&clks IMX6SX_CLK_LCDIF2_PIX>,

-- 
Regards,
Liu Ying

