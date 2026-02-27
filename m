Return-Path: <devicetree+bounces-269081-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFV1B9w5oWlrrQQAu9opvQ
	(envelope-from <devicetree+bounces-269081-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:29:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A801B3405
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9200C304C05F
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 06:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B523E95AB;
	Fri, 27 Feb 2026 06:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="Z8N2VAQg"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11010055.outbound.protection.outlook.com [52.101.84.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAA136B072;
	Fri, 27 Feb 2026 06:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.55
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772173766; cv=fail; b=CNwfxs8Ll4V7+WDJuW6ZQqHTMj1k4kuvMaWafI2ZlSmxq1wizB7xZJVQ9Q+4hUyU0LHjvo8rjkKn7e1eHtyXF8+ZRHkRx0nVxubblV9H31whBffeygp8G+xMxfv8L+H+6oBvH4dYtG9LbRoOHX3O2c6nbfobM+VOpvqdy55bjY4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772173766; c=relaxed/simple;
	bh=XA3I7gqMVRP1SBPJiw/osEyrUpl/T13QhfYTqYkL0vQ=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=GDxeGeFGXF3XpScnvFLcL9zXaMrvp0noFgeZ/pTyj0J9kOnpoKgi4Q+aZlZTDJSSIuszUrjHjNGxUYBhlnEUM5BIa9rzvUBTnYgpLrlLGVqoZdAr0XeD2249NuZbEppkiJ005vZVIBRFploYX4sFlshg0Qpax24NlrVnOuH+c58=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=Z8N2VAQg; arc=fail smtp.client-ip=52.101.84.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rkyQ7Ggr0jdEjMD7fSpQZOvH6/kv0ICiFyF3qTWEbND3cTUQo1VLX63jEtmVpNM1ANlQ0Xp7/BeoHbG3XSV2lONZHwvHw1HS3AqwOjGkXd07sSBDfshlay2vngaDLtgXJb6ifPy8l2qM3JhVElw3vHBqc2vf6vmRWOYFtpn0AzTi/S/Ls20WNSqIEw+SZW5WmgWvGIMliwuX9fy7V0dHJziN7a3ZlYG4iUUagDdYu+29aOQknO1fPpt72nwOEjb5hu2jGGZikNFKMlEPXm77ZGmfLYMroboWbwF351w8yzoxMKE9Ug7EScIDL2CCG7sZaiCQCgV4/Gfr1zJ+QTrP2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wm0pLGZ2K/937thrzkLbtw+URd1JoMxkvjDk+4EdHcY=;
 b=SWdpgqPWifKqHZ4cTse/r4zOhVDmT9k2ppE+No1gFEAUes0uEyvKuyx8pA/bx6K+966cHdbeIWrkT1sMkVq5JnOe5qy+DRWEs6ub5XCdmO5CRzJfZiSR0JfiX0Ig4kdCXyA7GUqUkcs7r0OHYco8dbKg6itTyKTFd2/ssBiwCUkhxEYea+pQ5BHwMK5v0xkQzDxR88p7h0dk+wqlbZRI1/cPxoCQSWJBkJcoTzdv9ISA8TuGZEfgFPjXYdXkuxjBV/if4OboQUFX5XqogjfvR2OUdi9E6SVoDzW27/0iUsHlOBXvu5qlGoJJRNyOTkz8nr9+YAnENuP8bl71f2UgHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wm0pLGZ2K/937thrzkLbtw+URd1JoMxkvjDk+4EdHcY=;
 b=Z8N2VAQgHlfHvcNJtp4LtF0uxWn/jUsdEjdpzT+DtHJ7nL4kJbPetK7V+1UWHC+EaEhA0Ij1UAln7cjUsLHKmGduoYjoduaf/nvNo3hHekLyg7+z0vSVbihk1krvbGXCEWk+SxeeuYtNsRIRHu7KMQfJTHu1SJo3j/03eiqOCkC3ITpNRoCdyjxKrOl8KVjuH4knlgeFMp8Pf2D9buceqOWc3OzQzWSCmllE6Z9iCwnAnLNXWFGsGcedFTNlA9Stv+/MhOHa+dDthmkChz/ggGqsRG2Gxtzi/p9WpeYPVaJB5BffXudk4ZhqrL1TG6zndzQZ/UdZxgt2kZggDsszQQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7817.eurprd04.prod.outlook.com (2603:10a6:10:1ef::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 06:29:22 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%7]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 06:29:22 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Fri, 27 Feb 2026 14:30:43 +0800
Subject: [PATCH v2 1/2] dt-bindings: fsl: imx7ulp-smc1: Add #clock-cells
 property
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-imx7ulp-v2-1-1c7fa8862ebc@nxp.com>
References: <20260227-imx7ulp-v2-0-1c7fa8862ebc@nxp.com>
In-Reply-To: <20260227-imx7ulp-v2-0-1c7fa8862ebc@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, "A.s. Dong" <aisheng.dong@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SG2PR02CA0071.apcprd02.prod.outlook.com
 (2603:1096:4:54::35) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DBBPR04MB7817:EE_
X-MS-Office365-Filtering-Correlation-Id: f6cf4bf7-db7a-46d2-54bc-08de75c98b38
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|19092799006|376014|7416014|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	XiALGvOWBmMjz74M3J5h02P0utvqPqDdyqYtKzYZut0+kP8eFmU0iNNlRqX530w9HRjhH+o/mUmVwUj5WSPWSXC/HxcmaguEi87ij1R6lGOaY750xpMTkhPSho20ESzDH4UhKa1AGwjr+dcdzk8tWAllWIhoeYKc0OpzXJPXTziHx5FlV0js4zy5kO7r0ICqXtvMzEaREMLamK9gDbIHWz+SWvfWvNfvdm+TdRJUF+te7w5AIMfOJmZNlsN2kXJ2RngWIFI1nKTFrZWi4fQ8yp+mf+0mGrUfBAPCpSziadXZrAEVqBP/PO61JW+upql/aqozg/lnSzu0iIkp07iB/NTDzpYtxBXEDbt0vc4cz/Wpfk1Qqux6GkMaGG5/trDkW0H0OGCjkbjki7e+A1LDFSJRJoz79wLArQiQh+5VGIRmXefEAS2ftPfBHoFMS72jrE8ohT+M6eYmXiSgByAEbRsThIc37dDPQd0TcSu3bEVKW1O82++nFkSzYOS57nu+W5tXVEXib4uhjWY8zyYJ8B6e0dWz8B4TeNg9RhJJeEM4IEjEa8AVRLhXPlZ7oe3BVTPtiSXHuicsDyZdCiPkoqGfO4aCwKr5XN7gmfn/iASSl2tT/YyplmN0RM6EsmDII4rmYYZ0v0b7QtnBLwGHPPB9e8slWSLYVCM0pKrvWSP2ZYeeXcLj5WJHM+x22bVh+S2cRo7JhazRuNfKzlBys8N2NdoGlKr9bROxq5lMvYkTnjtWO6+OvN3D0eTcNzpOSGn14P15mC+1AxkziDWDMhxwOKCPprohgNFk4yXuADA=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(376014)(7416014)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Vm5ISlAvSXFrSEp2bm9QRHRURGh6NVgwYTlieUh6akRyMTZ1UW1mUzNPdGFU?=
 =?utf-8?B?ekZJeE9UOG9OdUIwdTRZQk1rcjJGZlRseEJzdm1BcGR5eTVOS2p5eVVzSmd0?=
 =?utf-8?B?a0NRNjRTYStPWXpIa25vaFhHbTdOSWQ4b0lYd20xbEpsY0Z1UzlkelpEWlZu?=
 =?utf-8?B?cEVTK1R2aXVsUkZxbWNuZDlncWgvWXNYVk82WEtLM0dZR1hjZnc2SFhTQW5a?=
 =?utf-8?B?OVNteFFIUE56WHZ3QmJmVWJieGViSFRyd3Bxb3RWMTRPd201em1rV0kwQ0k5?=
 =?utf-8?B?QkwxUjN2QjFtY2hyVm9aUWQ1R0pFampkOThvbWdTVjVoSEVvTUlJZCt2Rk5O?=
 =?utf-8?B?U1FFQmVNanJaUXQvTmZ0dDhKNC80SWxLZG1QOGVsQWErYktRM2ZJdzlBbUFh?=
 =?utf-8?B?MGtBOUVvZkEvcGx4SGZ2MU1wQWJpNDZuV2tLajQyampZQkN4YVdjRDM5b1c5?=
 =?utf-8?B?bG4wNXdyV3Iya3ZhdXBFQTQ4aGlQSGlEa0xEMS8valVyZkVYRFUyVlpJaDI3?=
 =?utf-8?B?SW9HaFh4NW8vcjNocTN4K3ZmZUZ5MTR6TjFsbUhjYWZMdU0rc25ZamdNOGtX?=
 =?utf-8?B?UURQK2ZQdDQwSkNpbGlQREszQzg1RmJBSlpOVWN5RkNuMU9PRmkvRWVnL1d5?=
 =?utf-8?B?emtFbGpPZTQxOHBNZHFELzhRbm9yWVVQOGl5VUlBcnJycS9tZ1UvU3BvRmZ2?=
 =?utf-8?B?WmlvbFFqeWphNzQ2ZzdQOE94U3ppMGNMZWhtWENkdlU0R1ZCYm1hRWdsSFhU?=
 =?utf-8?B?Mm5sUHlIYld1cWVZV3YvMTY3UkZINEtJZVUyd2t0K2h6L1FrSWtTOGJUeWdD?=
 =?utf-8?B?RFpzcmEvOFFqK1dOK2w0TlNpeDZBemwzNHhsc00wdUZ6UFFoYmprYVVJUzZR?=
 =?utf-8?B?ZU5kSFJXbjAybWpUK25ZWXhldWtQakhaMkJDTXR1WjFMcVV0NEJJQjNvYjYv?=
 =?utf-8?B?SzVCMnJFc2d2SWF3OEs4TXhUZ1pnbWV6WVVyalluUW5BbVk2bHJYM0JpcUJw?=
 =?utf-8?B?dmV3UVJPSDl5S3JIRGxJbXdPL3o3UmxUNjMzTFFPcjRlcE9tUFlXUjAzTnk1?=
 =?utf-8?B?b2JkREc1TE1TZDdlN3AyYVJWTnp3UFVOWk4wOHZZZFZiOWNBZ2JBWitwMnlN?=
 =?utf-8?B?WFp1UFZ6N1lEc3J1Yk9Zd2xyeUFUN0ZSWVUrQ1ZoREt3OE9QK3BkWDJKVFNT?=
 =?utf-8?B?TW5Id05sMjNaeUVLSXZCRkVyZzB4NDkvc3FET2dtaStDU0VxdmRXUHRjN3ZE?=
 =?utf-8?B?OGxDWisyUHhqUHFYUVozbWE1OEVYL3F6UXlycVU3MTd6aUduelR2YkFMcTAw?=
 =?utf-8?B?QzVHRmVUVmFyQ1BSdVpESUt1MHpOOVVOWDRxbFN1eXNBZkFFSnhBTDAyaSsr?=
 =?utf-8?B?SHJMZnJGQnJpWHY2QzFVSnA0L29TS3o1bGxERTFFclZLMlpQdk5qU2VPSm5o?=
 =?utf-8?B?VnBGbUlIS0g5bmhaMXZxMlNTVUFnZkJ6YnVCQnhTbFdLUEFYdGwxY0tabzhJ?=
 =?utf-8?B?ekE1dW9KMXFoQ3N2eTN3WlFyY0hFNkhwNzQzNXpockdOeXloS2VRNUhmZ1dw?=
 =?utf-8?B?d2RwY0pXZVliSXFpLzdwRnNRU3o0d1R6VCticGZFZ2FFRGZteElVUUpCVjA2?=
 =?utf-8?B?SG9KYm91NlFXQWFnd0k5dDBnTnVWeVZjSjdvNHRNSFYxZE5iTDdpcnV0L2hV?=
 =?utf-8?B?WDVGL09NMVU5MEo4ZjlndVdmcFU4cXk5ZVJBbWNiWDRESHpZd3pqSlN4SkZH?=
 =?utf-8?B?VFV2SC9zTWR2cGdiUXNnWTNNM3U4bE1abDFQYVdMOU1oV0txdGdmZXFYY2ZN?=
 =?utf-8?B?MnZaMGRXSmYzQWovYWRKUFN4WmNRVXI3RzZ3dkhPRTNCYXBXZkpMSFF2UUVn?=
 =?utf-8?B?anpKMitIaVdZNG9yT0pqWFBIUmtSdnF5ZElLM0d4TWlYUDV0MGZuZ1BkdXlr?=
 =?utf-8?B?aFFNY1JqYlAyRFh0amlSc1d0Rm1iTzFrRnpOMUJWOWhzVU12cEhRampYSnVV?=
 =?utf-8?B?Q2J1cHdzSGZ2cXFUajdsRXFTMk9rRUZ6RTQwRkxwRWxvS21DQ0pKQnhzN0pa?=
 =?utf-8?B?cXdKWElhcHBzUGNVNnZrdVRad2lQVUt2eTN6dms0ZGFLb2o2dGdkWHIwTWZh?=
 =?utf-8?B?VWNZemZickRnaElzckZxOUE0L2hPek94MSszUnRGb2cxRjVWeThERXFNYVhm?=
 =?utf-8?B?ODIvVXBEVGtHREo5cmNFSFR4VnFKNmZpcEpJUkNwVE0yeGl0RFMvREJjOTNy?=
 =?utf-8?B?NU1DU0dLMlA4M1hDZGlORUwzRlNWTkREalltTWxabzBIUXJMeGF3MnVQUzRK?=
 =?utf-8?B?TktGcFlXMTJhMHU4ZnFTTmFZWWJtSjZBNWRkaEJuSGhaZ3NhcE13UT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6cf4bf7-db7a-46d2-54bc-08de75c98b38
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 06:29:21.9519
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O918bEZqGPwh6J6N9gK5muerOfSdzubA7jznaQ77VXug64nqiOZFPukBnaqTIWXKvMxrQO1xMUn2Ts6mBRrA8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7817
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
	TAGGED_FROM(0.00)[bounces-269081-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peng.fan@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:mid,nxp.com:email,NXP1.onmicrosoft.com:dkim,2.104.155.144:email]
X-Rspamd-Queue-Id: 66A801B3405
X-Rspamd-Action: no action

From: Peng Fan <peng.fan@nxp.com>

The SMC1 block on i.MX7ULP is already used as a clock provider in
imx7ulp.dtsi, but the corresponding dt-binding schema does not define
the required '#clock-cells' property. This results in CHECK_DTBS schema
validation errors.

Functionally, SMC1 controls the CPU run mode configuration:
  - 00b: Normal Run (RUN)
  - 10b: Very-Low-Power Run (VLPR)
  - 11b: High-Speed Run (HSRUN)

These run modes determine the effective CPU operating point, and their
programming is tied to the OPP table.

Add the missing `#clock-cells` definition so the dt-binding schema is
consistent with the DTS and validates correctly.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/arm/freescale/fsl,imx7ulp-pm.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,imx7ulp-pm.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,imx7ulp-pm.yaml
index 9d377e193c123c7de0ec4db4d4a649ed966b2d9a..7ad470260c0d08bd1e7146ef49e5f60dd6c6d4d7 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,imx7ulp-pm.yaml
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,imx7ulp-pm.yaml
@@ -28,6 +28,9 @@ properties:
   reg:
     maxItems: 1
 
+  '#clock-cells':
+    const: 1
+
   clocks:
     maxItems: 2
 
@@ -39,6 +42,7 @@ properties:
 required:
   - compatible
   - reg
+  - '#clock-cells'
 
 additionalProperties: false
 
@@ -47,4 +51,5 @@ examples:
     smc1@40410000 {
         compatible = "fsl,imx7ulp-smc1";
         reg = <0x40410000 0x1000>;
+        #clock-cells = <1>;
     };

-- 
2.37.1


