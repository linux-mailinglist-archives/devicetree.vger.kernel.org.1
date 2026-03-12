Return-Path: <devicetree+bounces-274464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPi/LtVmsmk3MQAAu9opvQ
	(envelope-from <devicetree+bounces-274464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:10:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C8A26E29F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D496301F789
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 07:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91CD3AC0E2;
	Thu, 12 Mar 2026 07:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="M2yePtf5"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11010051.outbound.protection.outlook.com [52.101.84.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442E03A8739;
	Thu, 12 Mar 2026 07:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773299404; cv=fail; b=Yz5q5/8R9yqs+nRD7E4qN4nTnGAL9DM44FuytHZtU5ecSN3s9qANFJjoGOQUFbzsxTeF0MCwHEXHqZvy+Qgj6LBa/Twe3aGOPH1tEg5cXZJSpiEf8w03SA+inukBBUqrr7CXZ+iuXyfDuyaQDaAl0z976eOeFAJ7QtU5Alhaj9Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773299404; c=relaxed/simple;
	bh=3ikP5ZYk2RMlmVLKy3nOnmEsLSpRloanF5c5vVZg2rg=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=apaT7owQUt+Tcy48QH/B3fl35tkGI9m7iaoGBxFXB/tbapXkXdMUt5Aa7glJWJnrTIPj3HLKaaj9Sq1y4SEzAQxBIJwOCncMCOB8twFQNDXb1kNm0MafsH9KobzzgKLjYslNuVBKi0XW8rEdvnzf49S72Uom/ADeqx6sQegCwjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=M2yePtf5; arc=fail smtp.client-ip=52.101.84.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JZwnJ6FiCZXCmc6UszLMNDwd6tBxAZ0dcanCJdj9kIRAUAk99A16bHn54BC9qu+j1UW7+YHVELqKVDS/tpHETKxN38xdyi3WCHgnCxrbrBKlf61vIGUoVcwwWCZqQJMxDOppg+dViG2GXkUi/gf8+pZUFIiofcea8WpgA5CGkcHAOtWjqBHZhQTNICdHR95HQx6RwLXMqncIdbcesbF7+TmXz3uXCR8yiSFmDEV4VQ+WElRm7CymhKG+KZH0z8K1kZLH1LenkjiBz62L6SYyIILsUtwnzDzAgxTeMMUg205+eAqeIOWXIwdmh3b8+wNWUn52agKi+5ryQvfTN6PI2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bb+N6Psn2zKHLPImana9kdA4EXlhbyf0BDxj08xCTT8=;
 b=aFCQDpG5tA6lLcgus84Ww5f6kWoxj9JlZM+8FE84DPCUAAkmvXF+S1dWPr+yRq1bz0XH1VCpn1XWzBi+7P9alZpfn/4lH3b4TvOojc9Aquc28V7A+jsCJiSQpOFTJ42r8yf1ZyeQzgT57+hBMI4EpRhX2XAkEQTm5opqYq/g8tpUxI8ONptJahYKw5ckD9twGplGcPoK0sYwx52zlGb+IG4+5hgJDndKQq9DPfex1mNF3tufoi2Fo0YDOM8dKn1GtbwkUh4s/KcitQuzxnLs47SzkbFPmU7o+GMDl/isoUbFmnn+Y8oEgnBXgdTdDi0BFVzy04VcNlgpoM28oPzvHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bb+N6Psn2zKHLPImana9kdA4EXlhbyf0BDxj08xCTT8=;
 b=M2yePtf5SYObx0m4r5gemlPxsS2PV8wPK0olZ0UPMpf6S2sq4xWjxibNu+4J/N49qkM12yoJm5RymmWPmwXohPRbiOx7ouJ8C9OGeZ2pZ+anG4ElUi575+TfQVFhJmN373IdCoLZ40I8/pzDPac2BFFVUUjwdqlF3pIAgtGMILxEP29mRiep8WsbiroqVQpdWrucorBj4+AIbVJKAP2yJZnsX1EfARi9sNVvxfU7HsBBmA++op/DxYjL7Uu0e/2SJEXxAufoqWEh7D1qzzHRhAyAUE6CBvgKKTdjX+EYnVgdyjCFC15DKf57LVIZj4UJVUNbfEJlr50BwyvBTGlNbQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from AS8PR04MB8247.eurprd04.prod.outlook.com (2603:10a6:20b:3f2::13)
 by MRWPR04MB12119.eurprd04.prod.outlook.com (2603:10a6:501:97::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Thu, 12 Mar
 2026 07:09:59 +0000
Received: from AS8PR04MB8247.eurprd04.prod.outlook.com
 ([fe80::e99:f504:ce75:9bed]) by AS8PR04MB8247.eurprd04.prod.outlook.com
 ([fe80::e99:f504:ce75:9bed%3]) with mapi id 15.20.9700.010; Thu, 12 Mar 2026
 07:09:58 +0000
Message-ID: <8b4f6c08-9d4a-4af6-80a3-9e3a351ce451@oss.nxp.com>
Date: Thu, 12 Mar 2026 09:13:01 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: imx952: Add audio device nodes
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260312034912.4007057-1-shengjiu.wang@nxp.com>
 <20260312034912.4007057-2-shengjiu.wang@nxp.com>
 <af948fb4-4f63-4276-9368-9d41e80c3e7c@oss.nxp.com>
 <CAA+D8AO2-C8kRiF3ymYd7fvAL_Op5ohwk=m8ZbfjHUWXCSn_3g@mail.gmail.com>
Content-Language: en-US
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
In-Reply-To: <CAA+D8AO2-C8kRiF3ymYd7fvAL_Op5ohwk=m8ZbfjHUWXCSn_3g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS4P195CA0053.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:65a::9) To AS8PR04MB8247.eurprd04.prod.outlook.com
 (2603:10a6:20b:3f2::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8247:EE_|MRWPR04MB12119:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c2f362e-737d-4e12-0a07-08de80065ed2
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|19092799006|1800799024|366016|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	Te5ZrY2/cxWd0pG86CaTf1znl2bPoPPHkjU9hmPUiWl/FbxhnooI6jOOnoQEyoh0zHnAiIVh+9j5mlEGxgXeuCxXjwHTaqchAf1IMmQ3h/A/DsIvZ+LPXatLJTBHw6BEMUi9bl3AHTFuzYtWwj+d2C9vJ8JadBvsNQfC8rx/1PBtj38BB3TnRk04RPsKL6D5zm/0KXPYHkWWSCIgQH0ve/fLSHXbur5O++I36UqZNoBGKbUk+nWOoSQADCmDQY7gQc/QokMCOdhvJ+SEgV4lu2EfsN2qpEpLBAPk8LPZiMByjPQ+YBuQbrYkpanGSj7QEl67Pmo+a79PoIle5J0VxyFt8O13XO/2HU6VwYSBMFl1qDa9Jl1WqQx0yytt6fMVb/RY4bHJJMt/4rrpWxHPtgMxqELXb2oUExaeL2kzDuGoo9iVli0q6hXMb4vbVK3rldgM8ruICosp3qaxHz9HPH1MmNrTpWieRpvli/qCxtR7Otm8+LaJikevwrOpLaXs41FLdpBn3hAzQJ59MlFNvQmF9IU6ie2C7AfQiJuEKa1FHDr91a74hPVAzNWCUB3/kwtcx/e42BrZb23rcybCXRFBj0HUwXSZ+yXtMXgHZVe5Q1AOFR2TstUPk+rf5SCTbFfgVLDjjEWg7Qj0Yw7TztN9F5szpK9VWMu53IZCQgzFyMfFvY9P83qz2PyADgXAgwWOL4K2ohZ+lcSr/g349TgnmPvCD2vw2H2qUtJNpCU=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8247.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(19092799006)(1800799024)(366016)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?K1BwSklWeDVSNEJUdEI4aTR0dUlRaW8yVzFsZFhBdGVRSTFIVld2di9LdHha?=
 =?utf-8?B?Rmw2OFlqcnViRGNEeE9jSlljakJqK3EwR1JkREhpWkwxQTNZRkRtZ0pxNTk2?=
 =?utf-8?B?S2tCdXJkOHZFZEk5NDgyaHRWcWx5SlhMcUtTWC82NDI0VENrMjhvK0ZFZEls?=
 =?utf-8?B?aDI5SUdJY1psZlhPazlYa2tOcGFOQ0dZZm03ZFRJOC9QeGdBNGlMeC9ZQ3gx?=
 =?utf-8?B?VTlmR3l1N2ZTUHlxeXNBTnhiK1MwYllXUmZGVTFseW1wM2piQ0hNOXhQWlhM?=
 =?utf-8?B?akwzQXNpNTQxL2tuV2p3OG42WnhlclhKZW9hSnZUempyOG9kLzhEdTl3M2Vy?=
 =?utf-8?B?aDAreFpoVnZiUllQUnRCRVZZb1BuT3VVSVNLMzREMnZrQkk0ZS9lU3dQUjlX?=
 =?utf-8?B?QzhzR0U2eVcyMmtxUHZteXVvRWMzakJ5V01kZFNLdlZXRWwydTh1N3FIdy9k?=
 =?utf-8?B?UTl4WFd1dGNZRGlpQXZVTkZXSElnY1h0M0FWdEw0REdJdDZkcEdER3VUNkow?=
 =?utf-8?B?bDEya3dpNnI1bE0xYnVxTjFBMVZPeEJUOHhhT0lFS3lHNkhYOThzc0ZsSE1t?=
 =?utf-8?B?RUJ6Q2JjRGdVU1htcFVlMVdXUjlUQ1pDSWFhaEpDdXdJbzFHL1FtNys3MDJT?=
 =?utf-8?B?aFdTSHNuYmJZWEdRYTJDYkExNkROOFNVY1FmUVIxU1VBbjlWM3J1d0VjT1VI?=
 =?utf-8?B?d0tOS3krSlpUc0E4bzlPTk9nSW1wTnJxZVYvSzhWazhiZmVkNDM5eHFIbWRF?=
 =?utf-8?B?NmZBa1pFaGV4cVlMOExhK3BoYmJITGltZ256NFBTMW5ENkdKUm1PN1hIaVZJ?=
 =?utf-8?B?bEFLSzlibmt4NHhEQ21WZmJPMWdFY3M0d29DZFIxLzArRDlNaDR6QktCOVJV?=
 =?utf-8?B?cEJFbGJuN0QvOEhUeHVGcTBlN1RhNzQ2T095cHlDWHM3MXVhS0ZmL0NQb0xQ?=
 =?utf-8?B?RVkvMEtNNFhBMFFZaGZuSGoveUpaeHBkSjJTeDlKRHlDVGNySEdqUFVXNGZZ?=
 =?utf-8?B?bzhVbG5RVkRBZmh5dHgzUDdGbmxTRnFqdlQrM0Q5MHNEVEtDL2pEMnFXTjIy?=
 =?utf-8?B?dlVuVlNITTROOUZheFhsaTFLc29FN2hncWtPQkJnMHZzaDROYi8vZUNPQThY?=
 =?utf-8?B?OEZjZXcxVnR2cXl3MHUyOXFUZUNGU2dKSHFrVENpN0pUTlJDZThwL3lhaTll?=
 =?utf-8?B?a2hObTRjUHVZcmhsRkR4Y2FNRDUxN0l2Nmg2Tkg0TEM2TTdOUFMrUW9BelBp?=
 =?utf-8?B?ZGcrZHk0aEpCTzdOM1FscGJReTdpUWdLdFdLSENxMGlRekg5ejJMaGF4ak5I?=
 =?utf-8?B?YmVmNlA1WWx3VzRORk9HQ0NGeFVoYklPQTViSnN4MmFNSUNRNXpEMEZ3cU1x?=
 =?utf-8?B?cjM1elhrTzZWNitKYjRQMy9xOVM3Nk9kYW5VTjE3SjNoSXJCRFpjb01ER0Vr?=
 =?utf-8?B?M05SdENWMzdTaWUybi8zZjAwbXJHVm11blJPRU5sdG1YQkFyR2FONkxMV3Bk?=
 =?utf-8?B?aExGVFViMXV5aDhFSDVVb0ZzVDkrUFN4OFhHSDVqaEloNlB6N3MrYWkxNG5q?=
 =?utf-8?B?VUcvM0hTdlJsdGNNTnlSNFlWUDFhQ2FQS1lxVjJ6VWEzMEo0bVBPdzhhaWt1?=
 =?utf-8?B?STJ1TnFjclc0cGZxYlk1U1pHN01YYWFiRHFneEcvMThFWFhWSjZuUnJ3R0ta?=
 =?utf-8?B?ZHNTZUVoL2RkTHI5cGg0YTBBcDVianBmY2dVVWdCUDRCNEdIWE5qR3E5RU1y?=
 =?utf-8?B?bGVMc2ZKWkxveVl3bzZsZDRYandkZWNqQ1doT2NIKy9PNnI1UXFZR3FwV1dY?=
 =?utf-8?B?SjBzdGRZWEl2T2ppdFVuZ3lrZ09ZZHZEZ2Z6SWpHL3BNZUhCcWFIWHNqaFVX?=
 =?utf-8?B?VVRiRlE2WkVmVEVqbHZVNy9Cd3dsZTEvWisvWlhPWnBDeHBWTTVIUVB4Z0dW?=
 =?utf-8?B?bkVyUEpobjJnZFJQczhsaHNSOGVIaVpsRUNJUGRjdkxjQXVGMFI0QzEyaFVw?=
 =?utf-8?B?aWdmalFlbFNkYUkwajEzWEI5aDlLNlQ5YndOY2lTVGFZTHIxa2NwQlRXTjFR?=
 =?utf-8?B?T3VpNDBtRklRTkpKZlVVRzdRY2dsQm9sYzU2Q3dMUkhsS0N1TXNGTU5KempD?=
 =?utf-8?B?NDdUSU56S3c2U2NzYldRNEVGN0syT0VaZkZJSWRGKzFKY04vK2xTTlRmd2tq?=
 =?utf-8?B?Y0s2eC9CNkRJS0djMG85WGVmaVhqNDRCU2tZbTdLWDhQZWNORWhqUVNLTDdp?=
 =?utf-8?B?ZFgyZWNRQXozNHVEQmIvQkRHU3p6WXN6ME8zeE5tOCtqQzhqc2YyTEhqVVlU?=
 =?utf-8?B?aDVkaVBUdXNLOFNDS1dlSStneGlrSkptV21ZTWF0VzdybzFlR0tBZz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c2f362e-737d-4e12-0a07-08de80065ed2
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8247.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 07:09:58.3277
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QAbOTF02Qm2+u1MdNayoDdmzoN3NCJ1zgghC7BPapgfAUg3MDghH+bY2FrL3ZRJnwlsrbRO1rf8g53dNTfY4SA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRWPR04MB12119
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274464-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.baluta@oss.nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,2.144.32.192:email,42c40000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.nxp.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 73C8A26E29F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 08:54, Shengjiu Wang wrote:
>> On 3/12/26 05:49, Shengjiu Wang wrote:
>>> Add audio device nodes, include SAI, MICFIL, ASRC, Audio Mixer.
>>>
>>> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
>>> ---
>>>  arch/arm64/boot/dts/freescale/imx952.dtsi | 199 ++++++++++++++++++++++
>>>  1 file changed, 199 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/freescale/imx952.dtsi b/arch/arm64/boot/dts/freescale/imx952.dtsi
>>> index 0f86b5626cdd..5787c12e788f 100644
>>> --- a/arch/arm64/boot/dts/freescale/imx952.dtsi
>>> +++ b/arch/arm64/boot/dts/freescale/imx952.dtsi
>>> @@ -823,6 +823,156 @@ usdhc3: mmc@42c40000 {
>>>                       };
>>>               };
>>>
>>> +             aips5: bus@43000000 {
>>> +                     compatible = "fsl,aips-bus", "simple-bus";
>>> +                     reg = <0 0x43000000 0 0x800000>;
>>> +                     #address-cells = <1>;
>>> +                     #size-cells = <1>;
>>> +                     ranges = <0x43000000 0x0 0x43000000 0x800000>;
>>> +
>>> +                     asrc1: asrc@43000000 {
>>> +                             compatible = "fsl,imx952-asrc";
>>> +                             reg = <0x43000000 0x10000>;
>>> +                             interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>;
>>> +                             clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>,
>>> +                                      <&scmi_clk IMX952_CLK_BUSWAKEUP>,
>>> +                                      <&scmi_clk IMX952_CLK_ASRC1>,
>>> +                                      <&scmi_clk IMX952_CLK_ASRC2>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>,
>>> +                                      <&clk_dummy>;
>>> +                             clock-names = "mem", "ipg",
>>> +                                           "asrck_0", "asrck_1", "asrck_2", "asrck_3",
>>> +                                           "asrck_4", "asrck_5", "asrck_6", "asrck_7",
>>> +                                           "asrck_8", "asrck_9", "asrck_a", "asrck_b",
>>> +                                           "asrck_c", "asrck_d", "asrck_e", "asrck_f",
>>> +                                           "spba";
>>> +                             dmas = <&edma2 97 0 0>, <&edma2 98 0 0>, <&edma2 99 0 0>,
>>> +                                    <&edma2 100 0 1>, <&edma2 101 0 1>, <&edma2 102 0 1>;
>> For consistency we should use symbolic macros for directions like you did below.
>> Use FSL_EDMA_RX for rx direction and also introduce FSL_EDMA_TX for tx direction.
> Yes, should use FSL_EDMA_RX.
>
> But introduce FSL_EDMA_TX, it should be zero,  FSL_EDMA_TX = 0.
> is it necessary to add it in include/dt-bindings/dma/fsl-edma.h?

I would say yes. For consistency with FSL_EDMA_RX and also for

code readability.

A user doesn't know that 0 means TX. 

We could go on and merge this patch as is right now, no problems. And come back later

with a set of cleanup patches that do this for all dtses.



