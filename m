Return-Path: <devicetree+bounces-270998-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FlgB3gZqGmgnwAAu9opvQ
	(envelope-from <devicetree+bounces-270998-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:37:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB921FF180
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C17BA303AF0C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FFC351C18;
	Wed,  4 Mar 2026 11:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="BMPLsKde"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011036.outbound.protection.outlook.com [52.101.70.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF8536607C;
	Wed,  4 Mar 2026 11:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.36
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772624103; cv=fail; b=PXMU9TCzSazFsRn/ZUbLhB4k0V181oOpNLGuQPeJCDZwCzDdrtwrEFhddz4RT6ZroKd0AW8LGxqaivlbCSnr/X07Xe7ZcvVIUUxaWJXZoTmMR0ul+8bxofkZ87ryjfaLA/HP63+MgRnsDrq6Kli31Bv7ggFXgAuOefC2eHHTsAQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772624103; c=relaxed/simple;
	bh=kQmuZdXF4HIGtfSD28tvBH9GcCt+IMCjkH4l09t9/Dw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=pDTqz5hlZF227o8HtknU0CgNRQCGQbA5nz87MQXtB3HQrZBZG13R5K+fKTsdOvbwM62kWlfMc5LcgKxAHv+tBTbwAIbXTnVyK3+J/ErBJyYQzUA1ObsXBYBZzgWtNAhZI8wPWo5ZhVuFc8A5jJmDkQBoj1pKgCxhYiINHQRC9YE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=BMPLsKde; arc=fail smtp.client-ip=52.101.70.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YRvpPQOBHxf62XNAWxotFRRyZgQGs+MuKhgUdSxxWx1UVrYoSG0iP+CDcLLru8g8voWc+JTQrZiMylyCJsdMPnck4lEJos0tmQ0aTHgmvWCQFyA+Vut5dl3hcGRaY+4mzuSOR3r9Xcab5OfEGnQ1HM6ekJvyV7BkYzdu9obOAXXOO/4x9MfoU4MbOQFf5tyIRHf8wwYe9qrPUG1WeQ1eAAqo5baQPHOiwdDBAlMRrm73Hxnsm9iFNp55ruVMoyCB0Pi2zRr9GP9fxunbrCw7SXpZ2tseuFgB3ufFmkL5/hyVExG0T+hWdUFs8We3PwePeG8o16Ql2h9xD5n6N1lH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+SvoUIV1vrrnj54TCf/SH4TMhaZacQZY+lg/xaNaxyE=;
 b=SPsRrl3ouCsiXT++bZVBfvS/9YGHzOW2WW5w6dNUI3Xyly0SJ1+h5iFeh1TjkHePN7KusJUFFqKWqbzKTvFL3H1hGPXNGbWpLgH+ZFacLJ4yhspW7uxnb8fWxAiqaYpaRvFuyL36RqD333SpkrCW1ZWDMHX9yJrkd+fKZ6dADwPXseCkoWPDKO8B311XiqRZO3ZrP3uSgAeORcgmAAAicDgsdCoUTf3H/Wi87HNQeaYW23bRHdMTP5c6RhCYyUHnsD2l0GurgK/Fy2sambwIc6iU15/CWgCricV6cqOOcxGzKjXcqCH7a7h7V1njihTKdfaIfvZzrt5x371azh6jpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+SvoUIV1vrrnj54TCf/SH4TMhaZacQZY+lg/xaNaxyE=;
 b=BMPLsKdeKjuH+5wrNNFnR6q1M3vaW50ERQ9YerBFGr/mZ/BewcbMdWHC6lLkU8ckvzwqQLkPA4Gud4E2l2I6oupfGuuwrfASHMpJb5T0E3iRTIIrlGA8HsAi12JjpvD0sKXU6kLvI3szZXwIaa/wv1phmsnupemKkbRAFaEsmC4L8sLG5qqSZxwLNwjqnsVxPRYFyFSmi7J7nKi/2EDckwDKZNNlawqCpAK0WzXiFD1xd+hTqrB05n6sghcHzg7ezGuS/UzEi57Zao/A+w6NSKNrDbJ7TSjOLCirPhfc9Hcs/1rhB8XctbnfzHEplKKdwSd3xtipLaJgFEBkJuVonw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from GV1PR04MB9135.eurprd04.prod.outlook.com (2603:10a6:150:26::19)
 by GV1PR04MB10522.eurprd04.prod.outlook.com (2603:10a6:150:1ce::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Wed, 4 Mar
 2026 11:34:54 +0000
Received: from GV1PR04MB9135.eurprd04.prod.outlook.com
 ([fe80::3826:2706:1e81:c9e2]) by GV1PR04MB9135.eurprd04.prod.outlook.com
 ([fe80::3826:2706:1e81:c9e2%5]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 11:34:54 +0000
From: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
To: imx@lists.linux.dev,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	Ying Liu <victor.liu@nxp.com>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 4/9] dt-bindings: display: imx: Add i.MX94 DCIF
Date: Wed,  4 Mar 2026 11:34:13 +0000
Message-ID: <20260304-dcif-upstreaming-v8-4-bec5c047edd4@oss.nxp.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
References: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM8P191CA0020.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:21a::25) To GV1PR04MB9135.eurprd04.prod.outlook.com
 (2603:10a6:150:26::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV1PR04MB9135:EE_|GV1PR04MB10522:EE_
X-MS-Office365-Filtering-Correlation-Id: bd76fd06-dc9a-4d26-5106-08de79e20e65
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|7416014|19092799006|376014|366016|921020;
X-Microsoft-Antispam-Message-Info:
	I9RiuGOvlnXgOMymv/kG5ruQ8MKBq7zJBuq/7gxxTOhsJOR3zXJnBRpRpwpCmA9PpaxF39tml5tbTvOp2S21XMXl+/EhNNaJbZp1ncl5lxcMoC4sjUSGDeIKrsvEC6AKuVfg8lJoBb8w5ge0gBHsmuyzr4IACljr/l6HDgCMbFdQAEiYQjukLBHhePFKgbA0bXzV/XXnJJkd3YmJXFZJUGh1maX2LSTR6fNdZM8juwVM5UbVnFG5mMIJUsUlpHARCtmRuQJGvpdreokrS+ZmGeng2oLc4jsWaitIOmnTlSnzp1U81U/U4iVYS5a8wjEfk3LFPJNDfLK6S47e+CboI97a463OTPG//UXef7BBGCCxriAjyzBtVyybHabA+LvK1x/kzmChn9DqXpStEEbtHq8izRITZpTdl8lVf2E7YP08FTWBsePlWNG89xH6ShWRyon2VIQ9fgIPIIzzLz0Wx7FcxlyL8FLpVIZv6PFK+2nbhIYWWCoKVop66cy1NC4N+cApaeCANJma0D/DmVgLC/GLtlttphre/mBS6YyHYNwVsHoyUMg1kbTtoC4reP7EcW74pfth1ZDjfTBw3+qJRihbX54kU8nImKOz3ICWmga5adkCdDmEKDT4roGPUQBPyG5ilg8kR1eQC5SpzEXY/nhAbPEjpSmXpQmsS/n2CUtomvtC6zCBEJNMcIkgqxUUGOQ/yKW1NrWgH/uAEchoZ4sXy7NOTKwpNxfZlRNLsxDeLQkIDrXjre/MA5EmhBy1
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9135.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(19092799006)(376014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?N0pkdWRxUUE0cklscERmamNkR1FFY1FXZnpSTXp0QXhOYk8zOXdZTkYyRXlx?=
 =?utf-8?B?bnQvdjZWdUpjWmhqUHFsd0grVlh6aWQyckhCY0E0U25iQjJESTFoUHBuN242?=
 =?utf-8?B?US9aZWVuRUdSeUVyam1UNzc1SGxkS0JNNWJYNFhpWmNvSEZtaEN3bWdYVUNS?=
 =?utf-8?B?bWdlSXd1em91WitIcnk1dDVGNWprRmZJeDBrUG5ZRnZHdmtBenE2ZnZrVVRu?=
 =?utf-8?B?WERNNHR4QkpMRWQ4N1hibTh5bHBxOWhZRDBlMGZvZDRBeWoxbGdTYVMyQklI?=
 =?utf-8?B?TnI4c0lJWnBSelBCbWx4VjQzaURVRHEwdzRydks4cVlzYVhyZmlHUHRXNGNT?=
 =?utf-8?B?Z1g2bTkyZVlraU5JMmhZenBIbzJITVhqU3RaSEdidUNPYlFJdFZWKzA2RDdU?=
 =?utf-8?B?VDhvN1JjYzhpTTFiWURaVXdBaVZnUnJVdW9QMVRiOE1MTDhjTGg4TzFmWVlu?=
 =?utf-8?B?NXBUNzBhVjR6cTNFbnZQZzNnanpyc0d0Z2ZUaEVKdml4MWM5Qzd5NkNrWVhx?=
 =?utf-8?B?OHFwSnJlV2ZmZWJVVkZ4eFYyMVNsMWJVaVo1YTZtcVFsanpsQnh1V1NkbWtl?=
 =?utf-8?B?c0FlS25DZ0ROVlc3akF6SFdSTzRpWk91ZU1zRCtiYjBNc0hkcEhMRVVWNVBy?=
 =?utf-8?B?MHZuZ3JVT3pFRnBXMngxOUEvalBzdld1QVpveVR4NVR4WlZEL3l5S2hrVVpP?=
 =?utf-8?B?alZ4RjJuZlhOd245bXdRMHdtNGppMnkrZS9CK0RpR0NxV2lteXhUdWsxQTQw?=
 =?utf-8?B?akdueFFLMXJ0ckdKRHU4bWMvZU51NVdZRTd5eFlSdzYvdWFvNU1GV0dPWStQ?=
 =?utf-8?B?Mzdmdzg0dXlZVzFPZWZNMkM3STFGZXBtTkpwYmpGSFhZcndISUpkYUJPN0c4?=
 =?utf-8?B?YnBPUVVJenArRkxITWJyNng4R1czNVVENUlKby92elZqR2tWMmUwVk5pVm01?=
 =?utf-8?B?cXpnVTNhZWNFb0xzZzQxS0gvNTY2MUdpV0pFM0hzMHVGNHduWERsVFc2bEdW?=
 =?utf-8?B?WlFxcUI3RW10TjR4Q3liQkZaelJxUExhQjNRYXdNQjdNYk1qZlU0bzdQN29W?=
 =?utf-8?B?VVZWYnFRb0xENW9PWm9XbTM0SXk1bjU1bEJZVVNLU0o3M250VHBHcUtZZ05T?=
 =?utf-8?B?ZDdBT1YvdlpKV2l4WFExZy9ESzVMWnFrdFNDVWFYdGxLQ0VBL3hjSTlnSVNx?=
 =?utf-8?B?QUgwMU5ObW1iMG9pVXM0TmVuOFhzTWxHTGs1a0lMeUpSOVRkZlhWajRWSjky?=
 =?utf-8?B?OEJDMUVFb2FzaE94R0dhUjlZNzM4K2tDaitvN2Voa1pNWXZKdS9Md1Q3YVZO?=
 =?utf-8?B?RUZNZThPUDI5TTJkSExUOTVzUSsvWUFQQnZlZkZwNTBrQU5GVERKMm9abUlW?=
 =?utf-8?B?RFF0TmVOZDlLaTM0dnAvLzVCWnFPeEF2aDBFM3dHZ0xmaHJiSUxsSERVakQ5?=
 =?utf-8?B?L1FGMm03R1Q4MWpwK1d5TUxKa1N3dnR3NDVkL1hheFAvY1V3eVlRa05mbDdq?=
 =?utf-8?B?SjJua2Q0b2ZpZjVsb2NSNEc2alBkS0h6c0xKdGpUQTdvN1kwMjJwT0hRcEV4?=
 =?utf-8?B?YVdRS0dpMFlqVFc2bENXcU93OG1leks0Ym5iNXEvTDUrUDlVaDVZcWhPZmdq?=
 =?utf-8?B?eGpMZ01ydmM5VC9MajAraFVaaXhBTmVvOWZKeHIwTkdudEYxak5ra0dYT0Rh?=
 =?utf-8?B?Q0xzaXhzTXdQMXUwQWlQeHcvQXpGTnJXOVFwcDJQeEpYRmd4eEZQb3hXT2JW?=
 =?utf-8?B?cngvYUlmdkpEUmowMGJrMFc0cmZHU1lkMVZkS1pXM2JldXVGM0kxaXMxaUU4?=
 =?utf-8?B?OWNwR3FUR2NvWUlnOXgyeTB4My9pTjRBbXVoZ0JJVDVtcWJnTm51K3dObUdj?=
 =?utf-8?B?Z0JSU0E1KytIdkVOelVFRFdiTzEvZHJsSkdnK3BrZEdFRFpZaHRubmF3VDBX?=
 =?utf-8?B?TzhnVDhYVkpBL0k1UzBGS3A1YTdmeU1CSkZCTHgyNWZoMGxBcW8rTkNKdlpS?=
 =?utf-8?B?ME90UDFaWDhtSGd4L1dnSTFzc29lcXFWQlhlME5aL01BQnA1elY2UlpmN0Ew?=
 =?utf-8?B?SmNmbWRIUUtwdWZQUmVEckR1VXozQU8wcVZtOS9oN01lMkhUZ3kxR0FENHpT?=
 =?utf-8?B?aG1ZMTdMNXV0VHgwTDE5SjlRU0VtR09CQlJKVitEM3FUcTErTVNuSTBraEho?=
 =?utf-8?B?Tk51SENpL1h0K21WVFBiaUVvRWFmUk9QN1dzay9ML05RMDFWdVh6cUpLbno1?=
 =?utf-8?B?ekJvSTRMNHdIS0xaTkdPZGpIeDIxUlRjMldMV3Ywa20ySVVZRVN2ZGdDZjJr?=
 =?utf-8?B?NlVrT01pWktYdjJXNWFNNFRnbWY3RWI0ZFNQNUduM28vNzNRbzZYbkhEeE5s?=
 =?utf-8?Q?YuISVpkYyW4Nwakw=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd76fd06-dc9a-4d26-5106-08de79e20e65
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9135.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 11:34:54.5497
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B1AzXgdaki5dykuYNVpsBwG3SNGhCpHrXTwywOyuOp/aNWxY/CPDpjNPP/cFdmxDgPnV77XhPa1xH2wiqJGPjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10522
X-Rspamd-Queue-Id: 5CB921FF180
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270998-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[lists.linux.dev,pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nxp.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiu.palcu@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[4b120000:email,nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.nxp.com:mid,devicetree.org:url,linaro.org:email,NXP1.onmicrosoft.com:dkim]
X-Rspamd-Action: no action

DCIF is the i.MX94 Display Controller Interface which is used to
drive a TFT LCD panel or connects to a display interface depending
on the chip configuration.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
---
 .../bindings/display/imx/nxp,imx94-dcif.yaml       | 82 ++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/imx/nxp,imx94-dcif.yaml b/Documentation/devicetree/bindings/display/imx/nxp,imx94-dcif.yaml
new file mode 100644
index 0000000000000..fb25300e25529
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/nxp,imx94-dcif.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2025 NXP
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/imx/nxp,imx94-dcif.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX94 Display Control Interface (DCIF)
+
+maintainers:
+  - Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
+
+description:
+  The Display Control Interface(DCIF) is a system master that fetches graphics
+  stored in memory and displays them on a TFT LCD panel or connects to a
+  display interface depending on the chip configuration.
+
+properties:
+  compatible:
+    const: nxp,imx94-dcif
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: CPU domain 0 (controlled by common registers group).
+      - description: CPU domain 1 (controlled by background layer registers group).
+      - description: CPU domain 2 (controlled by foreground layer registers group).
+
+  interrupt-names:
+    items:
+      - const: common
+      - const: bg_layer
+      - const: fg_layer
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: apb
+      - const: axi
+      - const: pix
+
+  power-domains:
+    maxItems: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/$defs/port-base
+    unevaluatedProperties: false
+    description: Display Pixel Interface(DPI) output port
+
+    properties:
+      endpoint:
+        $ref: /schemas/media/video-interfaces.yaml#
+        unevaluatedProperties: false
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    display-controller@4b120000 {
+        compatible = "nxp,imx94-dcif";
+        reg = <0x4b120000 0x300000>;
+        interrupts = <GIC_SPI 377 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 378 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "common", "bg_layer", "fg_layer";
+        clocks = <&scmi_clk 69>, <&scmi_clk 70>, <&dispmix_csr 0>;
+        clock-names = "apb", "axi", "pix";
+        assigned-clocks = <&dispmix_csr 0>;
+        assigned-clock-parents = <&ldb_pll_pixel>;
+        power-domains = <&scmi_devpd 11>;
+        port {
+            dcif_out: endpoint {
+                remote-endpoint = <&ldb_in>;
+            };
+        };
+    };

-- 
2.51.0

