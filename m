Return-Path: <devicetree+bounces-272220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFNgITDyqmkJZAEAu9opvQ
	(envelope-from <devicetree+bounces-272220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:26:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B11223C54
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 338B2303AF0B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D431D3BA22C;
	Fri,  6 Mar 2026 15:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="IMDA5Fd6"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011071.outbound.protection.outlook.com [40.107.130.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6137B3B7B8B;
	Fri,  6 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.71
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772810699; cv=fail; b=jlUoGVk5cggLzFU0PpcxKYRBDuIKeSqEfN1SnXOpi/FOSxNfTgBnKFNecX3DgJ8fb1vHSjtFHxhlZi7WkiI3BkvAIU7I+cizuYZ+jfa5pJY7cHK95609mcO9a32VGK5x7DkFUeUM2ww85nYTA+me8uc1NV8TmccvADxWkK9wDeA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772810699; c=relaxed/simple;
	bh=mZ23DYhCNWeaHmWtTU99uEsWwsCVNGYKoXciGB1yXOQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZJk+R0rui4HtS2UeUSMdg56PnzwVlSh8r4yLHlUi70O+PJidxw3guwMwwYPRez1LL7UWvMuxDCGrgCvmYiWyLMLyAmpdrl2okh5gPF2PNyPFDMoMcanI0pED2rmf3o3xuccWVVrwF7xz9QI/fNu23VEh0rCpG10wA4rDn5E56tw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=IMDA5Fd6; arc=fail smtp.client-ip=40.107.130.71
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bb6QbAUUNS2OBkjSOmXZ5kzu2L5ikhm5j2SOrPMUQtFOu2FTMlnVhwgNo6qlNQQlF2KUIonMEkuX+rRJdv2QzugzcVxW45JUfPQ3mMjVqQTBen+IGWXvW181rRv4CglnMdU0FToYtkoCsNUCq3wJIqazEU0xTJH8lnoGAsbA6XOhl3vo5KIVLwnt8yLq/wGd745N1KmwixLiMMZKz8EvcgVYZIaVtzl54BFxBw+ydTeWRpKCsL5QBvr9oHfevJiH3Daqq4bx+i2fcMQ/wDgkSKIleUUqcCxPt9xv4vBmdldaifWW1x6l3OmYiXAQUeFtPrxIAHVqVWW50O++/XD4kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rvhvNxOzINcRBOKdRJborYwS50UWY/SJ1tAg4JyXXKA=;
 b=BukWVLR1RH6zhQIX9O8pDsB+uJSbLsbTVcBR16bpDzZu9/NVPQGk8pXhWJMHF8jFB3S4aOgzjqwQ9Uwb/G2EmHXHZycVprUdByW4jqxpN31TmNqBtqyAmISw5zF/ezt0aUI/UymCHbvN0Ta9uRDhYXekE2KimgzvPXfRn6WmzTjB/v+IB9OZnccJKqL3tezfe9Kl5Zz6d3/aY+95wedqTA1hI5HDRtlvifOWZ6VccuCw13HMEtb7fHu7fI6hACz+83/2dxigshiEyM1s5RgSrzSa0NTr4Y3AakByQ8z11mCbsvF0Ij0PDVL1Wdls2Ld2VgHo0K430Qf4DYI+OERDUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rvhvNxOzINcRBOKdRJborYwS50UWY/SJ1tAg4JyXXKA=;
 b=IMDA5Fd6n9+sz8k03wk4sGIYXwmRpo3NbLJDgk28czc/YdMuyQX3xEHHy6IHafhh0Q3dZNkn3R0kvRhcYvXUewkcgxmpW/t1/CjLsVRYwB7W8ikGX6e6/bMruSNYXF59ICH178kWgU/2CCgm4Lo2SSPG8mam6Hu3wrnaWTvVWWMMvgCum37hJ9QipItbtXM/K95rdIrMTRLyBWN+qOHS7FdM/OPCJTpng80uUq+M639L8qzHBFV9XwNcwg8t7nRdRCNfA+Ykl1TWYDK8pv75bBDHsUtkGZqfN1299j1zvHAxqGruEXtCh1RIlLC8lAue53E0YgaQJbQeT3MneQ0DWw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by VI2PR04MB11219.eurprd04.prod.outlook.com (2603:10a6:800:29a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Fri, 6 Mar
 2026 15:24:49 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Fri, 6 Mar 2026
 15:24:48 +0000
From: Frank Li <Frank.Li@nxp.com>
To: Francesco Dolcini <francesco.dolcini@toradex.com>,
	max.oss.09@gmail.com
Cc: Frank Li <Frank.Li@nxp.com>,
	Max Krummenacher <max.krummenacher@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Revert "ARM: dts: imx: move nand related property under nand@0"
Date: Fri,  6 Mar 2026 10:24:28 -0500
Message-ID: <177281063848.253518.12995342124719933118.b4-ty@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219151157.2549198-1-max.oss.09@gmail.com>
References: <20260219151157.2549198-1-max.oss.09@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SA0PR11CA0045.namprd11.prod.outlook.com
 (2603:10b6:806:d0::20) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|VI2PR04MB11219:EE_
X-MS-Office365-Filtering-Correlation-Id: 086244bc-6108-4026-3138-08de7b948123
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|376014|7416014|1800799024|19092799006|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
 WirtLYmN5y0Wz+O2ARLTgcpWTzlEatVwsRjlw0HxW6sUYDWmqwAW3naAhIYL1kXOkF4HvY4m0g5zZQCx/U5ZK4Bhhyv0xttl7sKsKbsg/OpfKxeM1bCDadkrYUyahbWpapacdz0yDR8n1sWv5fQFLCXN7DhPUVJB5ygc6B8W8X3Kkdz1iYPdpLg5ebwWnjIYdtwrf4fu+0/5AywaTxUlbMfrK1Sz+XJhMe13RsqL4RnwYfCXNTf5GN8/E3BCg+Ox1NK088rUh0N623Q+VzdJtywWwZeIoH2K/3B37lNHtsn0UUs9Nio8IDdJL5Ki1p0NYtiiYj/x2iIaY2jrBv+6dd4LZQogg9RW9Q8k52AdDUUJ9h4r9R4t/tYOUd/fsYTdhA8M/kTwSyVYgY4Vq/US1DeM/fg47Kv8cDxd73lIB99r0jg+TIEpy48lek0DLarrrmdd1Ms7MuutbsBn6Fwxdt1zU2SjqpDvkNyu2AqbXFEvrKDsyulOsQonV3RGOjAw+oRvNt/0Oz0BMuVwHRcug0VZp/nuSSr5r/jVh8T3poJZAHzrYuv4VaDApN/++U+ThYDqGRbZI7tcRLpckb2ZQghi2tbOrtZsUeCGZAIyjO28Z3brIurN3vddS3j4iUWxnul9tUAfkSOMBGjxFen+FbyWDsH3ZnJaPPnOxoReF1kuemWvMFwsqiItwdijexWFS+LFz5asYNT7RalnQlgenkKK5ui+PgOjUvIeo3KYIT22CAThx6x8ueh5ITUEgCdUzb98p3l2A3q/6pxCoy4YHINwM14H78dI4kSL3kTtjX8=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(19092799006)(52116014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?Q25xWVhRcEE5Y0s2VHVKbmJFeWlVYXI3OVU5UGh5dTRHdThUVjFueEpNeHhL?=
 =?utf-8?B?RHJ4VEJZUmpkdG1kaWF3eTM3dklpNmRLTlErTVdhcUZxbWsveVFtM3Y1Z2tX?=
 =?utf-8?B?Nk96d1ZvKy8yNVh5bk5lVlFXKzYyWVd2WXpJeE9ZQlRlUUxxWExCMXBUVFpB?=
 =?utf-8?B?OE9JL0JSdUgzcG1xNEN2ME5RUmdXbW1uZURqblVvajBqSWpPVUVjcEV5dktG?=
 =?utf-8?B?eGV4VlU1UzNWVnU1K3hQVlBDRFFTWnFpOVZ3VTVxK01TcFV3L1FBVVNKM25w?=
 =?utf-8?B?dlZ3TXpzZlpDU0kyVG9NOXZGOVZ3THVIZkt4NzkzV1ZPU2JxNFdaMC9tWTNR?=
 =?utf-8?B?OE5oNmlIeFB4Si90SnVKdi9NT1JvQzU5V2Eyd2YxQlB3Z3lJUWlFN1dHeVY0?=
 =?utf-8?B?c1lGb1M5RjBSTWdEQzdRUCtLV0kwOHpwSGpQa3VPMDR0UVp1eDRkNlh6Q3or?=
 =?utf-8?B?cXhWNXVGbkJMakxMdEgzWHQ3VWZxT0l6Q2ROeVBDL2dQUy8vQ1FQT2RhSVVH?=
 =?utf-8?B?RzdqSDVNckI1c2NNQUIyQ2dFVEV3OFBhS1F2ckxXMTZKVzNjdm1RVDBMd2Nt?=
 =?utf-8?B?QVhYWUJuZ2lPVnRYUk1BbzlFYW54c1JxS01xekZ6S2RTWGJkRnl2clpGRnd1?=
 =?utf-8?B?bVI1Z1hadUhqQjI4N1piTmtwZ0RJZzJ3WmwwSXBmbEVHZVlLdTJMc0JrVFBi?=
 =?utf-8?B?RDJyQXJ1bFI4M2lrb0hXUElBcDFsZ1lacDEza0pFS0htWDJBY0FadGtpNlJP?=
 =?utf-8?B?NlRVSVdURUxXUWNCWTRKaWJlMmMwWDVETkx2NGtRSStTTEtQVVJ0RVl4R0Fr?=
 =?utf-8?B?eTRuWUF2UFZVTmcvSzh1R1ZCOHNUdy9WMFg5S1pmQmorUW10UmtQcHdCM2lw?=
 =?utf-8?B?dFlyN0IzWGVaR1V2TzhCT1JaQW9jeDdKVHpiSzZRb2Z4UmZJSE11dWJISHlr?=
 =?utf-8?B?YkRka0JVMnV5UTFDeTZMYTlGVnhsSkhwYTFPVVZUUzh6UkJNemN1TXBGQUFM?=
 =?utf-8?B?OFRyWDdIaUVteTZseXRuYlJvYVZCZEcrSTRqWkdSOFFBSUMxZXBPSnN6N0tK?=
 =?utf-8?B?bTFYZ0JkNVRwYndneDljSjlldlJlNWhNNVJsYU4rSUVZZkFNU2FlbXVDRHZx?=
 =?utf-8?B?dlpnNkNQRCt6cVBkMzdIOEpjanFyRlhKSktsL0RFN3RENktTeUlRREpvdkFq?=
 =?utf-8?B?aVVqYS9PaXpKa2dvVFJyaURaTEJHOWkxT3o4T01PVTRWZUZia3d0Tm1IYVZT?=
 =?utf-8?B?VHJveDJ3MGRodlRoWmdRTitDTEFIWEpJWkxWaUdWR1JDV3dVSnlnTzQya0FQ?=
 =?utf-8?B?QUpIdnRTMS9aT0dUc2VIOXA4V2xpeVhzMXJKYkg4M1FRSEZzanZ6OXc3YXk4?=
 =?utf-8?B?cVZ1R2xzV0x1U0dDdFhJa0YwamQ5UG10WkV3UVEydXlIcXVGRUdEMUZUTW1Q?=
 =?utf-8?B?amRrbXhxTFdBdXRZdFdvQmNGaTU4cy9BTlVvd1ptZVZ3bHk1dFBUSXIwN0xW?=
 =?utf-8?B?T2ZmQzNFU3ArNnluNHd0c1p4NmJYTzdTV3Rmcm83aEFKNHAyS01sZWRsNG5M?=
 =?utf-8?B?MEIzUW9sTk8rQTFGbXd1Y0dUc0FqZGNsQTlDRDdkcDQyMkthUjJDMGg3NDhH?=
 =?utf-8?B?R1A1WjI1eWIyUlFCcjNFeHp6Wmw3NmtESXk1TkZUVFowZDVzZ0R6OUZHUGJC?=
 =?utf-8?B?T1RxQlpXL3BnSC9JQkxmT1BKclhqQldoejdVb2RVeEZEYVVJMEF5TTVncStP?=
 =?utf-8?B?WXVtdVlXd0llU2hyMTRwT096a3RqcHF5b0NaTVZNYVN3R0ZtbTF4MVgzREUv?=
 =?utf-8?B?RU1DYVh3T0ZTc2dQZ2NXcHQ5ZGJadHBrTmpzWGtOanExZXltREpvUW5TODNJ?=
 =?utf-8?B?WHJNWDNPOHArZFJXc1NVZ0g5dFBOUmJVSkovK1JHNHl0cDlSTXVQSmtncDJR?=
 =?utf-8?B?VjN5Y1hIdk5DejFWVkdQOEhKWEVVdVo5eE1XNGcrbWF6bm9mWFQ5bGhjTGJr?=
 =?utf-8?B?Mkx1d0Q1YzUyZ1RqblN3azU1SURmNWZpR2p2TUIwYit6Ukxua04vRVRrVGh6?=
 =?utf-8?B?ZHZMUzNJU0xuVGVYbG9rdFpzRi9rbEJwazV0Rk5aM2lZNEtuU3pLTy9FM3dF?=
 =?utf-8?B?UnpIUDA3cWtHdnhsMnR6REtRei9qREtXUkxsNG9xRjM4U0o0aXVWazFxSjEy?=
 =?utf-8?B?ZzdUd3B0LzBBTGppQ21OU25UTGNzeXNkeVNMSHQ5TlFZTmU3U2JMNzR3Q1dk?=
 =?utf-8?B?aGFici8vUGVER2xVNmtXR1hPZVdDQ1hyVE41aGtHSUZDSzY4WW9sWG42NFlU?=
 =?utf-8?Q?5rY8JorFKIUW/4DiIf?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 086244bc-6108-4026-3138-08de7b948123
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 15:24:48.8844
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t7OLx1+fvucTQm9SJO2VrWhaQ0P+HnwcapU8PgGlNBwE7mBkBrm0JedpbeUNVp3QiRMT4qL6lBX4pbfS2JioXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB11219
X-Rspamd-Queue-Id: 00B11223C54
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272220-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[toradex.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,toradex.com,kernel.org,gmail.com,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:dkim,nxp.com:email,nxp.com:mid,0.0.0.0:email]
X-Rspamd-Action: no action


On Thu, 19 Feb 2026 16:11:49 +0100, max.oss.09@gmail.com wrote:
> This reverts commit 8124b4a4a96b57d6cc3705a9df9623c52baa047b.
> 
> The change introduced a regression: at least Colibri iMX6ULL and
> Colibri iMX7 no longer boot with that commit applied, while they boot
> again after reverting it.
> 
> Although this has only been verified on these two modules, the issue
> is expected to affect all device trees using the gpmi-nand driver.
> 
> [...]

Applied, thanks!

[1/1] Revert "ARM: dts: imx: move nand related property under nand@0"
      commit: 33f0dbd4b895e49add0c2543e5dd2ff5b872121c

Best regards,
-- 
Frank Li <Frank.Li@nxp.com>

