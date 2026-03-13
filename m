Return-Path: <devicetree+bounces-275522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIT3DVJftGmKmgAAu9opvQ
	(envelope-from <devicetree+bounces-275522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:02:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6222890B3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 96AF730241AE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C5D1391519;
	Fri, 13 Mar 2026 19:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="UR37YCAs"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013028.outbound.protection.outlook.com [52.101.83.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E3336880;
	Fri, 13 Mar 2026 19:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.28
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773428558; cv=fail; b=Mu/8ZJvm92snbOw/ww3lS4/zQA7mAkuM3KuKPBMRFRqQ14SwwzAXNpBiYbcZckpF4GGPjPN8p0xGDAlag+nh4Mo3Cx+E/6OnXkwSTGsgeXVLYetRntstHtdyjp4IrGrCTu0qEFps9WjbTHh2RY+aPbmkYVI+taOTwsphhE0gpg4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773428558; c=relaxed/simple;
	bh=EmYRDbV4yK9MqCn7Kt+G2jLX5rRPB+bq+DxtoI8Z+Aw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=MFecx9gO9ljqpMeZUVSvxiMP3zEsk8hzFtvTHZbM8bBM0d/A/oH2AyTkngTga/Gcb6WJP/qUIEeFwb0oAPimNZljDeHGHg/PzfOsGtNu396skT19ua/T41XzX5vVrqPRO5+T/d8V3jF0BaBiEIEGuPdWGSpCCf+p4bWPuFgmoaU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=UR37YCAs; arc=fail smtp.client-ip=52.101.83.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rdi5cLK6Ulqnax68z86DYZv6tk1rLJRuREsf+C6fFfr4fxCN77OH8kivGVcRzOMufc/pqu898iekRw07ns3xdUAmHVXOEWncgnkc1MzHPPO2dHd01TWr5DVUlBz0UARjkeb0Aw42k8WymmYS9F89DkERtFHlLykCMVmPEMX7bvHqPjz3vKKtPK8EAmLceQxR6OV8oLs99qI56AVoeElXttKbhMWDUP0U1U+0p4bWZkrReKn25pMScDk2i2DIdt2bYq7ss6IOU6HIkXidnw+Sh7KOS+/WsksjU6ovlmCf0zC84ECf6OEDQhaiN9KFzttGbpkNraKYCS+WI7V09icanw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmYRDbV4yK9MqCn7Kt+G2jLX5rRPB+bq+DxtoI8Z+Aw=;
 b=p7MWda4nNOMjIL92XS29GgDswQ7NNPiDUycVw+0vwsfD0NSlXyMaLn6GWIJqRptEKx9Mm92qtLZH4YPtdrYdkcsHVKLgVOxW/K45hmwC99Cirph56XH+EDurKH2ZhzO/JXH2aZUyeA8XD+lpm0wIyV0VVO97pE3fGxuHvaw36tXSnZ3pCv/dyPSR0QuUGlI8bKhQASO62eUrhylTMfhne5Wd4n+sVZd2iyB27tzuVm7pLotm5B8OvJzDjQVzg7QKTviqloJ4qH3d+vu61qkvw2pxp+mDW1j35+/qGmEwBTQXdgAJmXeoDkPuMjCfPSTV02P9AusyhNhruPvPtWzZPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EmYRDbV4yK9MqCn7Kt+G2jLX5rRPB+bq+DxtoI8Z+Aw=;
 b=UR37YCAsTxdVUFPoLhOFCrOgeBUbM+LmeWFBk0SlF/42P35KJiQWq2hckSbfOT3T2u+O0fagaHnI8Xj+nrtb0Ahcu3QjkAOR4RRfbTtBP5mCPBCOVpyTqUbAp5Pwz2guXl3TS7QCjeotmcQt771lDNN7fz1VglEhOghnI17RydPs4RHpSvSRJ1A6ZgbXDkSGqwbgqMJK6PVO0KjDwnc4BTF0fHKQ80TcUvCSvkXCwbrgnjs+st1MxcapBwKmlC5kAEkTRaIh93GCFz7NhoXMcdxpmbKCBqbcPo3l9lBJdyfks7TXT0wHO4wJwgWNpwVHZhkoTPs/cw0BYPA9JSiqNQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by GVXPR04MB9778.eurprd04.prod.outlook.com (2603:10a6:150:110::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Fri, 13 Mar
 2026 19:02:25 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 19:02:24 +0000
Date: Fri, 13 Mar 2026 15:02:20 -0400
From: Frank Li <Frank.li@nxp.com>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v3 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT with variants
Message-ID: <abRfPK0pUxFcb8sQ@lizhi-Precision-Tower-5810>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
 <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com>
 <abQ_d9fGarNobYdo@Lord-Beerus.station>
 <CAOMZO5BnuGc8sddmfhKJhFgWa+K2gExeRN5097794j48+Dw-AQ@mail.gmail.com>
 <abRDxRK_GFYwmAGE@Lord-Beerus.station>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <abRDxRK_GFYwmAGE@Lord-Beerus.station>
X-ClientProxiedBy: SN7PR04CA0104.namprd04.prod.outlook.com
 (2603:10b6:806:122::19) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|GVXPR04MB9778:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e25d125-bb62-40b1-b69c-08de81330fb5
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|19092799006|366016|38350700014|7053199007|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
 6FYOV7L/qTrnVud6HauS/Z0deQYokrvJ8+QFS6w98+DifbS23LI10E3kGl1ajmsjv05aASdhujln9kPwZDW7g/iXlTySECnFw33dY0ekgQ0XEU8giGLEF1641UcaS09BFF7XBjmAMK7TNfTKTsyK4k/xlOdV1o2eYYbeLEiMKYWUTjptg1lWd+NdfBwupgq0fDH3KFVh+gOONdBq6IdmL9aiQpu8xKfNehfjgNj5LJnR4hKr+EC0UIxhGLL9gLXfQPTKodGzSSEcL8BmvUtSVQ2NxUfMsGI4DmKfI5toztQv2/byh/2nkmrMuPRI9/PkdggqTd3D2E6pZsSYn1uqiMqK6KLpaQzh6KDY6XQs6bInGnbG91X8HX9BQDw88Sk8xXFUDWr8emHM3Ej/CGWnF+15l/TG/FPzxndZSYWK3nkzaOlArYHDBS4JoTKn+gtPm3f0ipf6pRJfr60hyhNZG6I0NT2FC4jRcmbaX6gDUFH6GdHlk1JYuLSMAAA1EfZJ2yU0pINN5cRdPnV/u2RUdvtYAoCnX61aAgUJkF1pKYakTt6v0WPhNbWYfi32tnfFxciYf43x6kr0BEwFn/cnHY2lwTYjr1jW5F/Y2Zwf7a0p6mKkU0jCMGwiNmVGYUDYE+CCI966BFDyjLxOK5rahXNEWkt7d7HkiMS76+zkesyfyEzVugYF/AI2Mca9I7FDYkxi0ut010tiBRl0NsrflRdciQ31Hdf5n33eTe2dbIjcigrrQ1xl95ClkrQkz5EBZ30fkxXIYVOB3CQhlqGLOhO6k6UEeAhNyFZ6TOhyix0=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(19092799006)(366016)(38350700014)(7053199007)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?UHNEaUxUQTRZTkhnWitCeGxsSFQ4TDllVkxjRnBvblhOWHRCZEpDbnN2d0Rh?=
 =?utf-8?B?Z0hXZWNoeG5hbllldDFBdy9ReDVrcWJZQmw2eFhlanUvNFJMVVJseE9yY3ZM?=
 =?utf-8?B?MzkwV1dSdlYyR0d1Q0RYT2tiVXRwS09lVVlQai9pb2grNEg5akdxOWRFa1FD?=
 =?utf-8?B?akdrWE5xTzd0NzYwc2tSRi9rUENXZ2U5aUJaZ2xhVk9GQVdMVFc3Tlk1YTZ3?=
 =?utf-8?B?UmlUZGc0VDgwYjVOTUpWM1pjOG5ZZzdFNFNvbklOMFNzQjhJVjY2T1dSQUhj?=
 =?utf-8?B?R1BjcVVxZ1N4dDA3bUtlVGVQT3NxdS83Y0ptb0V0S3V3ckhoWTMwbVJ4YTJI?=
 =?utf-8?B?R3liWFpjcWFYWHVRZUFZSklTSVdmOWdHZk93bExBbjlFNWhKUjJ5UDk3M3M3?=
 =?utf-8?B?NDFVVDN1UUxNM3hKMjF5ZnpQaEJYTHVNb3hBaUEvL0ZZdW4zUVdOTEM0K3ls?=
 =?utf-8?B?NkZBVkwvQlp2MUs0S2pGcFFzVExOUXpsMnlKRDh1OWJOU3c4eUpucjVybUlj?=
 =?utf-8?B?Ujlmd1ptSGJHOVdSQTlQUmNFMVptSWlhWkg0N3pWQklrc3BKaWx2amJRdTJH?=
 =?utf-8?B?VU5LZ3RCSGd0S3JHZzkveXVuMFNnUUpmR0lGeUFwTit6T1NIREN3NFF6b2RD?=
 =?utf-8?B?R0NFOG1DZFFRaUtDQmdrQ2Y3RFhkcGVoZGY4VlNzOHhYWUwzU2g1eTN0Y2pP?=
 =?utf-8?B?V3c3NjFVZEUzbGYyTGRlTjd3K0xwT1pjcDFpWUxJQUhrTEdKMzVlNVRhamIr?=
 =?utf-8?B?VXUvSnhBYmdkZkFEa2hsdTBzZHZ0ZEdZN1VudE0xbWNzUDh4a2RjMmUvbWpH?=
 =?utf-8?B?K0huUDB0QytkOG5wMG8rS2tMTmJyb1NZekN2SW4wTUNFSi9Cb3lXdkJDNy9W?=
 =?utf-8?B?TXlxaGI2MjE0M2pESStpOHZHNUl2QUY4RW5MdWFFdDF6UDhyQTY5M2duRjNF?=
 =?utf-8?B?bkRuNE5kT2crZktsRE4vbWtZZFVFaEEzMjdtVUo1SXNtSC9TWnYyaFdtb2xF?=
 =?utf-8?B?VkpCckJlTFZPZ0R5dzNMMXByRVVUV1RwblNWMGNjdTVJSFRXejhBMWFlUzZx?=
 =?utf-8?B?cDlvd0dqTVAvcHBOZHNUNjdzTlRxcFpBS1piR2t6TGxPWCt4M1RPajZaSm5t?=
 =?utf-8?B?V1Zmci9TeDB0UWR0YzJUWFk4Z0h4ME4yT1U3d0JSZC9KdmR6MGQ1REdPVWtC?=
 =?utf-8?B?YlAzR2d4c1N1NEtmUHJjaDg4VENnWEZoR2tKNXg0cE9WT3ZWb1huSE1KWWxi?=
 =?utf-8?B?bVZJa3hUY1lZSk0yWDFERFhiejJTeDhTMGlBNk5CbVgwYkgxdnQvWHE5K3py?=
 =?utf-8?B?UVVaRjFkdjN6S2lGU1dQblZWWFNNdmc2R2VHMnNJVVBQbEUyeDdjSW5LOE5F?=
 =?utf-8?B?cDhlQlBkRzBkVEpFQU96MFJQNVc5UzZGaHYrNEJVVlU3TGEwV2x5L1JWTzBR?=
 =?utf-8?B?ZDRnVXBwWHVTOHJJdEdPYitLV2hxdkowcGh2TVZ4OXdMWjg1cnhScGZpalVl?=
 =?utf-8?B?bUNkNVVQbTZoN2x4MnUvODN6KzNFWUpLT2U5NUNuSlc5OStNTHFFNE5md0M4?=
 =?utf-8?B?UzlNVHZwSWZWbVJLaVZwMlpISngxU01acDVleGliU1F5aDM5TzY2OFlCQmow?=
 =?utf-8?B?Yk9UeUJ2Wk5MUi9vL3RxYmgxUXlHYjNmU2dja3kvNXltY2VyYnJidkdwYnV2?=
 =?utf-8?B?NHBiVk50RjNHR05iNWxTTWYzWUd6NElFejNPaHF3eFBmcDRMVjJaU2EvMDZk?=
 =?utf-8?B?WFJNeDMwMVJpVE1XY1JtelFBdk5PUFVEUUoxVHd1cXhMblByRlhYMk9jeFFC?=
 =?utf-8?B?Q1A0c3BCOW1sZ2RmM21CTGhPOHFqekI5em1LT21uSDhlbVFNOVQ3YXMxNmVm?=
 =?utf-8?B?SGN1U1pIVVRhSWxtUFRjOTAxb1l2dEpwYUg4SWhhWFBKL3BuNXNIYjZ0QXVw?=
 =?utf-8?B?Rk5KLy9zTWVNMERVdW1tTjZkWHIreEFYcFk0b0V4U1pIaDZ1Skt6cTd3RGxG?=
 =?utf-8?B?OU1lMmxjRzVXWE1hZm5uRU5xSVB3YWl0SVFReFdQOHhXcWRKMUxSVS9FVkhK?=
 =?utf-8?B?ZjFJWDZqekhxakxORUw1WHdlbXZ5ZCtEY2FhUnVjOUVzMS9tVHhWMTF3MUlD?=
 =?utf-8?B?VENZb25UL2p0WWE4VHZKcllhaWVBTm9mdXRKbXN6S2w0Zi84MmNQTG9yWnJT?=
 =?utf-8?B?aGxUZ252TTJ4cktsaGpIWmw4bzIvd3hiZWFCaFQ2Mnpvc3drblNEZElQd3N5?=
 =?utf-8?B?T0l3ZFJlSGowWTQ1WU5EUUJZNDdWd0owbkdIOTY1cEg3RkhodzNJSDJ2ZDFM?=
 =?utf-8?B?YUtNb2ZmN250RVFzcm1xcTJhWlRqbXFTNm1nZW5OMkNuTW5ZUFpjZz09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e25d125-bb62-40b1-b69c-08de81330fb5
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 19:02:24.1694
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6051hlGPXJ8/FJfqiTkYd80H50MBcfhMUBTFhS0f0a52Im/hpJRrLGXKij1ki9K7RCmEV8/aXI7APA1bbVQpXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9778
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275522-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:dkim]
X-Rspamd-Queue-Id: AA6222890B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 06:05:09PM +0100, Stefano Radaelli wrote:
> Hi Fabio,
>
> On Fri, Mar 13, 2026 at 01:52:31PM -0300, Fabio Estevam wrote:
> > On Fri, Mar 13, 2026 at 1:46 PM Stefano Radaelli
> > <stefano.radaelli21@gmail.com> wrote:
> >
> > > Correct. It is not included anywhere at the moment.
> > > The Symphony evaluation board uses the IW61x configuration.
> > > The imx8mm-var-som-wifi-brcm-legacy.dtsi file is kept as a separate include
> > > so that carrier boards using the legacy Broadcom-based SOM revision can
> > > include it if needed.
> >
> > Then imx8mm-var-som-wifi-brcm-legacy.dtsi is dead code. Nothing includes it.
> >
> > I don't think we want a dead dts in the tree.
> >
> > IW612 has not been upstreamed, right?
> >
> > People using the Broadcom Wi-Fi on the old board may still want to
> > continue using it.
> >
> > Please don't break it.
>
>
> Thanks for the feedback!
>
> I might have misunderstood the best approach here. The reason I split the
> WiFi/BT configuration into separate dtsi files was to follow the direction
> discussed in the previous revision, where we decided to keep support for the
> legacy Broadcom-based SOM while moving the configuration out of the
> device tree, giving the support for both modules revisions.
>
> However, I see your point that if it is not referenced anywhere it becomes
> dead code:
> Would it make sense to add a legacy Symphony DTS that includes the Broadcom
> configuration, in addition to the current Symphony DTS that uses the IW61x?

Yes.

Frank

> This way the existing boards would keep working while the default board
> description reflects the currently produced hardware.
>
> Or if you have any other suggestion, I'd be happy to follow it!
>
> Best regards,
> Stefano

