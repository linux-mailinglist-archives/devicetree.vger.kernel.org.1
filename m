Return-Path: <devicetree+bounces-325168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /mAJOzlOVGqEkQMAu9opvQ
	(envelope-from <devicetree+bounces-325168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:32:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 853407469A1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 04:32:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=Qjsz8IhC;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325168-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325168-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC31F300A4DB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 02:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F57B30E85B;
	Mon, 13 Jul 2026 02:32:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010061.outbound.protection.outlook.com [52.101.69.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543032D3ED1;
	Mon, 13 Jul 2026 02:32:20 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783909942; cv=fail; b=UyMqI22m3Y7/wYsoUOysa7YBQ0Eszq+xtgqgI5+yBwaRRzDhPQOZ+LmLLxT+IT8ej6Q5uFZ1r9XuBQFKN3SNY3MsEVv5Fsth4y84zV8IRiFHx1/PG4tkQMrY6zM4Q7YwRAUCKKIxTYdh6EtxVcxXEmN/Ybd234Nk83E7ZCCLypk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783909942; c=relaxed/simple;
	bh=CS1iB37UB/JrPkzbi++v97asRnuCRDk0Fpyfp/pvgfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=WgjpdlmcklEyb9/uqIp8czPIT+/Nh5HQLfQBcmanoYAGgbhxWAUvA6YD1CZXTzNtJ5EbKxTlmXqyBJDjuX12qIvgrTqnH0djxrr8r9RuWxAzIzP3lDATLs5ALgr/uwURsGxCJ1gtMsinWZezrbOXHDe1AUCWW3aocvNwelAJ71Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=Qjsz8IhC; arc=fail smtp.client-ip=52.101.69.61
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mfm5s3Hk18tymw3f3QznW6YMLAjCF36Zz5AzjbNNNLDc/YeHZ94WTZXzFkBX2AwKnlUjjLiCwyio0DkBbYpX4E0KFXvXfKKVVUNk1Tkk7DNbbAQDDpo5PRsVQVOTOmweG83zxuD2xybGl1ejhBGrSxQERjsziOu/JdoUsXiSONzigDIQ4hHMSoBy6apmBp4MM+WSBQrrHrPCPFcid4vy/NBH5DoH2emv8mYho+S53W16q9CmuLC5F4h1s6G4ejBb6jEy7S+Lv/kVegUbL9tjptJy3dBFMj/1PsgresmATQ6p+mmqRXSNfd9m8HkhIhH7MzvZ3RNn/sG9UgZTzE8UCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7BzagAjsEF4KP8iHoexNzNMNILJNF9N4rwnI+PLUHw=;
 b=UWS3z+rWJfFlJ17ZFTr5clyvcMuF4SyP/88bzSbmDxXnwBdrs0PznMDqNwuSbQrVdgx8nE0R3syit7ebfEife12k7RIbu1tnmwUzLyQioXWpcMtZzUo2ZRkqvEEvbLPkTErSJ1M1t6BybhLg2bNj0YV8SRXzYWTg2v5lABJaIJJedVt7yPAfibHyGRCi0+GwGvXZWbRSdO5V8M2haQfUvvSnDNqY5CivCeW7qxGJN100OjJUCMA+BbvEIrvR5RoChz0LAxhCjyLhFFKnTvCqPtSflEXok1w4+SqGF7zbAB0V6JsHlknBYiQHRxTBRiJVI5ifCdO22IsNXgNwt6O6ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I7BzagAjsEF4KP8iHoexNzNMNILJNF9N4rwnI+PLUHw=;
 b=Qjsz8IhCbwvhZOEbjdmZ30+opkAjHkI9wR7JBTpKC2jZgF65ern7e3UcYlR6fysJWfRY5hc7uhaIRRJyUZt5nvAY3LVuKGG1NUvsQwTKjmz2Vjd0FL8wCJZ7n4Pv6HQC4iNDmcccNEoG8HlQdbDr1w60feuNI5KuPDsQnrR//wipTUrJzgZ/VbPOuBYZ1i2YCMI4oPxgcimh/pbjh2rR7dN43SY8DDjqR+57/uH/TuOtIsQeGG/ycJ2PTH9nxOKMbA83KZCDiwiaNbBFd3DfzO/5+doTW4HcuV6VO0cAqchFSPRZXDbBmLqI5+A2JZY6H2+4gW4dxUWUQQ/Q97EXrw==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by AM9PR04MB8810.eurprd04.prod.outlook.com (2603:10a6:20b:409::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 02:32:17 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 02:32:17 +0000
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
Subject: [PATCH V6 1/4] PCI: imx6: Move pci_pwrctrl_create_devices() to imx_pcie_probe()
Date: Mon, 13 Jul 2026 10:34:32 +0800
Message-ID: <20260713023435.235765-2-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260713023435.235765-1-sherry.sun@oss.nxp.com>
References: <20260713023435.235765-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2P153CA0005.APCP153.PROD.OUTLOOK.COM (2603:1096::15) To
 VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|AM9PR04MB8810:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c74b4c5-3a2d-40b8-779f-08dee086f4d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|19092799006|23010399003|7416014|376014|6133799003|18002099003|22082099003|56012099006|5023799004|11063799006|921020;
X-Microsoft-Antispam-Message-Info:
	HATTUeoOAwociBtDKlAjeSJGHRuUSAhY/kparKUzXPs3KCtG4t/MWPvoWbTOUrVZGjg94i2tGlFR4+/0ORj6F4t2SY9QsDazeKwXoSIHciGEZaLI3vweoRR2RL79rxRDYXCd4xWTK5K4krY0nS7u+Ezq5cZy2hK48McNnYTflkXsjohmV96ZRliMt9SPHTLQCVnyIkQTU/vDm/nWjAYOmYnGle7HKiG4ej4Jv5nOSYpCyr4rzz23ZK/tKSuD5irl9VZBLcn0x9nLt5qkS9rxDIyfpy2VZrPbV9qeBRUJayRLZ8JguXCkhAC9uj3ueWuBBDO59J/87AyS1ROXT+qCeBfdg6+nuf853S30jd8M+jLF4UrllnSX5sMHvPhdJkGlYlvVMJc6lEwMwPmIpmhu0s0/Nk2/oqOgsXkJfXW+Efnx2UKQmN7H6rpTnPpzbniLes6UIh4q1/lo+vNCEevml+hAc45sBqb5Jl4bbNwWjoc/CxRSzp0LnkytO/V5FtjRp3ZXuPDP8onVOKxKIOUQ5KuTPED1b3kM2KI4pkYsWJG4R/vGigSaoGxlI1f3/7QWbHvP1yq8jfHu4nMoKp/wYiMcfXRCmW/+7GM1CTW0/tAX6DfwpakQ5ezQvFcrn1KwLaNS4IxB/7CB/Mz8WydtpMw3cZPbYj3bvAO7OEGpWoXHzCVx4LUkafdNQDwXkaCwPyXmHGne6V8BbaU6Todq6A==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(19092799006)(23010399003)(7416014)(376014)(6133799003)(18002099003)(22082099003)(56012099006)(5023799004)(11063799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?FLXbFYUO8EXyZ7/9q9yxiUgLu7St/GF7zETBQyQ8YWBVcC1ieBB1fjkroJEH?=
 =?us-ascii?Q?PqZou0AW/5TMm6hnXkSwidJMkweUAYBh9l24Tl0bz92w5BkprejXnAwUzQgN?=
 =?us-ascii?Q?fMNcCNdxYTO0rznHcSPqFNslXWX0BgIakqGyS7GS1t+Bvumdj8GE2gOARmQk?=
 =?us-ascii?Q?PqejjA1gOp7XltRbWB+p4wtwhdomWGBdYT4ybawxGO+ATm7cdf7xuFLx8a+I?=
 =?us-ascii?Q?Xq+ejWjJmwJZ8wfWdXxwj4JvXcFu1GddtCWTl4fNMAX/0ZhOnbmv48b1WNdu?=
 =?us-ascii?Q?nL2qYqqznKZG5DtUO1GxcorrhbOYHt0Wh7H4/4Mvd+rMkquoAofsP3+Fh+FF?=
 =?us-ascii?Q?5AgGSrvgsNijHLptqpTfESkjSk9bJDz6k61SEtVjD4fhaOEKyvqr+UymzI3h?=
 =?us-ascii?Q?ChlKQJ8dy4DjpuL01rHFl8ncsqDFqMD+j3XSnY/qW3u1AuptIcJOMA0jrh4Y?=
 =?us-ascii?Q?c72yHlRCuJvaQp6Rw6juhOZnbYZooA1Js+Mfq5XMlMBgjAYhgAXk2j6u6I9Z?=
 =?us-ascii?Q?NDC9x6UZ187pm9u4v4z89po5y5zfrRr59+pLB3ynwS42uHMU3EMHJCCE/8nR?=
 =?us-ascii?Q?Jv7aAY+6Ep6RqToEnS/gK6TPETTJVdoQme4CHNg+j3cIndcsHrNMw7bMQ+Mf?=
 =?us-ascii?Q?sS8zRJ/OYbhf5j8/Qn6z/CUYdNgIf4VGJNx3AmVhaEL/SveuPeNKJfPLgO2a?=
 =?us-ascii?Q?6ZayRs1pwtSL35x1UmaYdRuM0lknEMqR2rt+Mn8QIPMeUtSWewQDAnZeXMp1?=
 =?us-ascii?Q?vyljgzG6ozOj9SVyAY1MczMsFQqHb+Tq3xkzPQofDG+45yAGArHRn4E72vEn?=
 =?us-ascii?Q?1qlsK3FOqgLgTuapOHdpmbV9TvLRayQSSMF8lEPqGIMWZnlR1RXtZNEYJh8f?=
 =?us-ascii?Q?gqMulpL5Goq+bEcdmWFOPjuOtzcVO8cwZSxG+45Xb9RnQvNVZkikWAUHusph?=
 =?us-ascii?Q?sGzNUF+2uYrMDtJ6FtmCR4U6Aan/1iLSZ8dOi01GPUpIUO7Vsp9G0QSKXavL?=
 =?us-ascii?Q?tg5kMXs38+QlRkzrYjNlekBc/4AQRdAZhh6oBsVoRu6vN7lvFx7ePQb7Hs9u?=
 =?us-ascii?Q?oC/qka81dxnuGQQPHtmTxU1x6+ZtH9JYN68+dpuDlPTS4Jua25+h/GBTL5So?=
 =?us-ascii?Q?ZK+JziW/6KR6Y2Ree0dqNboxNGXNN8mkfp2iGJpY+R3uaPSmlH+QCmsyk9Wa?=
 =?us-ascii?Q?x+BXM6In0nZAiEN/9uqzIk105/KiGU94Tm0fwaZElPE4XcwdkdsFkBEwZlDd?=
 =?us-ascii?Q?OVDHmHZ6yjm/dVprxPMzjps221VLfV9ODZvKjYKyfy3UIKCOkvaqor+UUz7C?=
 =?us-ascii?Q?JITTuuar7+OXyahTI8aFQNHtfQ+bzK5Yqcf0hfkKsKA3nc468QfNtqrfGQmN?=
 =?us-ascii?Q?eT7s3WH9UZOreKG/F/HaNjzCA23RO6v0Qx8XjkNfxTls8NHlRiUemK6zdQy9?=
 =?us-ascii?Q?B8+xyjJ1pjmqhV+Dcy0SIeJIdh/6i2pCzUPPlr5hM9xZmd7gxYmtojx5XaNc?=
 =?us-ascii?Q?3MiLtxbmmZ+6uy7jrGRYkyOx1WG0Oaj1ZhYjNJ62YCHz76sNo1u6ZXV8X96a?=
 =?us-ascii?Q?oEZ6P88CmTvxetDFXMPsgShqbys66XxswCIUurJYyhKCZ1mleTDP7irh7nnh?=
 =?us-ascii?Q?VuA1H3lNlHe9jtD3AKrnv5EDz7iOi03oL54zaBiZ0ipkiNftL/ZjtrS9eNhV?=
 =?us-ascii?Q?qZiPsmb7KHR66AWPR3YxQTlWFnWnT47sC5L8DxSWjw8Lnex3QgxhEx6s6siW?=
 =?us-ascii?Q?vy392ebuIwJ/p+SDaQ2mEeWCI9P9s8PnjD6IW5BkJeNWHGMO3/LT?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c74b4c5-3a2d-40b8-779f-08dee086f4d8
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 02:32:17.2489
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mD3XqLy7Kni7tt1xYY2bzdW9usS0chVxyapvQojTVXtpwGpaIFDEizCA2BMYqOFd7nbry2XKtta7mEJ0blc1AiX4Mw3tfoUK3sLTZO9UvYsoAu3XrIIEzfUPMF/p5CjG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8810
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
	TAGGED_FROM(0.00)[bounces-325168-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.nxp.com:mid,oss.nxp.com:from_mime,nxp.com:email,NXP1.onmicrosoft.com:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 853407469A1

From: Sherry Sun <sherry.sun@nxp.com>

Previously, pci_pwrctrl_create_devices() was placed in
imx_pcie_host_init(), which is the .init callback of dw_pcie_host_ops.
This callback is invoked not only during probe, but also during resume.

This caused pci_pwrctrl_create_devices() to be called multiple
times across suspend/resume cycles, which is unnecessary since the
pwrctrl devices only need to be created once.

Move pci_pwrctrl_create_devices() to imx_pcie_probe() so that it is only
called once during probe, similar to other regulator_get calls.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 drivers/pci/controller/dwc/pci-imx6.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index f55a68f60eea..92f8e4a299e8 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1382,16 +1382,10 @@ static int imx_pcie_host_init(struct dw_pcie_rp *pp)
 		}
 	}
 
-	ret = pci_pwrctrl_create_devices(dev);
-	if (ret) {
-		dev_err(dev, "failed to create pwrctrl devices\n");
-		goto err_reg_disable;
-	}
-
 	ret = pci_pwrctrl_power_on_devices(dev);
 	if (ret) {
 		dev_err(dev, "failed to power on pwrctrl devices\n");
-		goto err_pwrctrl_destroy;
+		goto err_reg_disable;
 	}
 
 	ret = imx_pcie_clk_enable(imx_pcie);
@@ -1461,9 +1455,6 @@ static int imx_pcie_host_init(struct dw_pcie_rp *pp)
 	imx_pcie_clk_disable(imx_pcie);
 err_pwrctrl_power_off:
 	pci_pwrctrl_power_off_devices(dev);
-err_pwrctrl_destroy:
-	if (ret != -EPROBE_DEFER)
-		pci_pwrctrl_destroy_devices(dev);
 err_reg_disable:
 	if (imx_pcie->vpcie)
 		regulator_disable(imx_pcie->vpcie);
@@ -1954,11 +1945,15 @@ static int imx_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = pci_pwrctrl_create_devices(dev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to create pwrctrl devices\n");
+
 	pci->use_parent_dt_ranges = true;
 	if (imx_pcie->drvdata->mode == DW_PCIE_EP_TYPE) {
 		ret = imx_add_pcie_ep(imx_pcie, pdev);
 		if (ret < 0)
-			return ret;
+			goto err_pwrctrl_destroy;
 
 		/*
 		 * FIXME: Only single Device (EPF) is supported due to the
@@ -1973,7 +1968,7 @@ static int imx_pcie_probe(struct platform_device *pdev)
 		pci->pp.use_atu_msg = true;
 		ret = dw_pcie_host_init(&pci->pp);
 		if (ret < 0)
-			return ret;
+			goto err_pwrctrl_destroy;
 
 		if (pci_msi_enabled()) {
 			u8 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_MSI);
@@ -1985,6 +1980,11 @@ static int imx_pcie_probe(struct platform_device *pdev)
 	}
 
 	return 0;
+
+err_pwrctrl_destroy:
+	if (ret != -EPROBE_DEFER)
+		pci_pwrctrl_destroy_devices(dev);
+	return ret;
 }
 
 static void imx_pcie_shutdown(struct platform_device *pdev)
-- 
2.50.1


