Return-Path: <devicetree+bounces-106260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE78989A38
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 07:41:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23694280EB0
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 05:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 291FB13C9C4;
	Mon, 30 Sep 2024 05:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b="qSRg/TDx"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2056.outbound.protection.outlook.com [40.107.21.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2981013B59B
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 05:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727674869; cv=fail; b=F3Dk0xI1DxGln3BlLKXREobync3b5yDY/rANcIjFSrcyo/9rOEJPhNgk7UOHXWD1xXFHy9CA7q0JHVbKst1XeigPRX512SqhKGc/8b8FOqAOpDb+6C2dHWmMcUtflgcHxepX+i7+AOAv3qTZjc7Vj+z/hD47ThICgZFw2pxm4mE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727674869; c=relaxed/simple;
	bh=Nf2EbKtj8Qel4hYRhYajg+phyejPL6ueSWRGDo3PG+Y=;
	h=Message-ID:Date:From:Subject:To:Content-Type:MIME-Version; b=N9nZ9XyT2fVZDSe1GHOvP+B5DNbwHf2A5HgJjA0G1GUsHmZLc9ShxmvKACdaUxMLTeRwiRUExRl3tC1P0ss4mNpJmiJAAvvVe4bxdQE/oDgCl6VaWyBg+KVTBWliRFKLNCl3+Zj0lTQ471TyAoFE+XqOm37PcQN7dOevIBzVoVw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b=qSRg/TDx; arc=fail smtp.client-ip=40.107.21.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xP9tuJqOmb0d7UvgsnSGCDiQqqsOZQM3melMuAPBb74MzZy20rbC0MSfmUv188d0+ZM9L899rUdApChzQj4Cu/dK2ngakCgccEWrwv/oZlaBcw91Swxdm/GiJNic15d6MFYwHhE9ET2N0HgjD9ivHUHHlBlhf5NbrqNG33MtitoitU9HQ3brWKlez1FZu+Kfbl+DXCyQCZe32cyqi/nW8k+KnXPo4GlvwDvvp9B8QaV5ba1OffB6jA4IgZK/YIOWDMDOqSJx4r+Kd+XzHXzZYSoW7AJ688PXBogEkomkafB93Se3JJQPVbEmCme7EUi16RY/GYMJuWbETHldTkG3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrXjpalX9lRcX5s3jF6gV2QlUSMFkyJiF/P+Cv6xA3c=;
 b=lIprR0fkOxQ8CUQAgjC/0MYiv8hm5NaMJRpZjsT5nptWT+5pXpaPCTyd4eY8X7G5mcfp+fFfdu2iyUxvQB/1alJVAu7ic1TMG5dbr0/yc+ZrpoTHrr1Y91sTAmEjXf5wo3mWhadEwCo/NaHraMqhffvjpntJFwKIhcTeYQER06fObqkB3euVGfI+XGRrkW/vLWPYjGTGu3LueYfDUXroB/3HCQZK1hC4nF+en1bNQQ0RPrLRTxj38oLDnCQ7KL4P7+/2+oALfGaTQYvIaHM11pK3s/ZpOB9eobuGfFztoBM0K/KHzU247+8FkL7z14lw/urs6bhNVyOukR5obuUlHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrXjpalX9lRcX5s3jF6gV2QlUSMFkyJiF/P+Cv6xA3c=;
 b=qSRg/TDxwo5yd9/M8anVBfPu/fxcNWSZudt7CAPrU/D3R7NY+8Z2cd9akRyA3buBJwNyT8p780D/i5GaXdlBzy9Yvd3vb47aAtYTlLDiSezhu+u2/yLbfjy2Dh4gR0FIbkD+yevI9NFJzhWcur3gan7slq1uycybXIDwp2S/Vk4LrWuqB0tT17QPyxi2cr/Y8ueMcokQm7nEtKufxkOGXP6wErPFZ5XC7uYpDJp9AMwc2KgIcPiW/j5CeyN622Fcw8snzPlyv+z20UxlAhSYabBzQGyKl6SIftBd9iLfxWjSnutFMvp/2zgOSebfnS060UlbLEgLjosKPFHF4v4rkQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Received: from AS4PR10MB6181.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:588::19)
 by DB3PR10MB6787.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:437::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 05:41:02 +0000
Received: from AS4PR10MB6181.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8fe1:7e71:cf4a:7408]) by AS4PR10MB6181.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::8fe1:7e71:cf4a:7408%3]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 05:41:02 +0000
Message-ID: <034401d8-cc96-455f-9d2d-780fb917d5d5@siemens.com>
Date: Mon, 30 Sep 2024 07:41:00 +0200
User-Agent: Mozilla Thunderbird
From: Jan Kiszka <jan.kiszka@siemens.com>
Subject: [PATCH devicetree-rebasing] Add support for overlays
Content-Language: en-US
To: devicetree <devicetree@vger.kernel.org>, Ian Campbell <ijc@hellion.org.uk>
Autocrypt: addr=jan.kiszka@siemens.com; keydata=
 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
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0063.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::13) To AS4PR10MB6181.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:588::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4PR10MB6181:EE_|DB3PR10MB6787:EE_
X-MS-Office365-Filtering-Correlation-Id: 57fe6924-7861-4e12-26ac-08dce112785f
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UklYVC9TNStXNloycVhQVWVaQlA1NmpRbEQ3MXRIMVRnbXBnaGFINkRNRDl0?=
 =?utf-8?B?ZmdHVlZXYVVxU2txU3NtbHg3c0x0WmdXVVMvQWdtYXkxa1doZU8yRTJvNUo0?=
 =?utf-8?B?bm9FNlRweGZQNDNWV0JpbVY4a1ZxZUNOQU1XRVZveTFNWHd6dUcxOUUvYStj?=
 =?utf-8?B?L0IrblJMaDhBdDRVS21YaTB2T0ovWjNPMXFLZENPdGNKcVZHSFZpR0F2bnl3?=
 =?utf-8?B?N09Td3dlZmJpSk5EMys2TjV0SzAzckNQYUNoVzVKWGxiMENld1dZWTBZbEVa?=
 =?utf-8?B?cGduMmJtZlFhKzRNZjRGQU84NUFDT2xZL09KejdlZy85NjA1U3Y0TlcrTThM?=
 =?utf-8?B?NzR6MnI4M1BZa3FveUViVXdJc0tsY0ZPczJ0ME1xZ1ExNklXVUREQ2dPTzRY?=
 =?utf-8?B?VnhZd0ZhUkdGL1lYMUppMjE2UDdUbjdqSnIyamtpQ2JWaVUvZWsyQjQvNnl4?=
 =?utf-8?B?TzJiVEZMelJvc1FGMXdSeWx0c3dvU010clczRy9td2hvWkRIR2MvTDZHYXIv?=
 =?utf-8?B?Y1RhbjdWbWxFZCtqcFM4UTdzM2NGUkw5OWpWTzlHTVVUVS9MRVJkc3pFL0VC?=
 =?utf-8?B?OFd5NjA0MUhWclo4K1ZObWhjTHkxVlNkbXVPbkMvU3RGbjNoWE9qMnNkSUw4?=
 =?utf-8?B?OWUzaU4vRXpkN09kaXJGK1Q2czJnb21Lc0RFenhPenVES0MxMnZadUV0VTRV?=
 =?utf-8?B?S2ZnUWpXTlFwOWRENzVhY3hmbStYMlJBb0VsUDc0QitQMjZ3aU02TWhYQkdh?=
 =?utf-8?B?eGcrRE5ybzUrcVMyMldXNllsbW9TZXlrdHlJL0lFVGF2a2NUcUE0d0c3OTFp?=
 =?utf-8?B?eHQwRk9PQmdPQy9wZVJrYkNzeDhweTVDK0NMSGljRlhjWlFFcVRwTzRtYjlM?=
 =?utf-8?B?OGFTbjhiQk15Zm1BQjIzL1drTHpETjdyQzhIQUhwZVJDaGtvUWUzM0ZqV1NE?=
 =?utf-8?B?NWtJNTBxRWQ4bStaSEp1VHhacHo2ckJPcVIyWXZSY083Y2tUaTdxSUhVUGJJ?=
 =?utf-8?B?NGgyNjFsVlVSVXlDSzI3VmdMRS9ncWVkQjBrUEM2cWdHUnY1QnhOa1JKbTZ0?=
 =?utf-8?B?d0VMQ0RuVUdUdmRWNytSN29JRlhyMXZINkNVNnhSRTRGa0E1OFdIWEJ1ZXZu?=
 =?utf-8?B?NHZBWG91S0ZnNG5pUHlkbzdiZVpCbDU4TTg1WUlxQ25McFFTOUVHQTV1amVP?=
 =?utf-8?B?U294Rk13SlhSYkkwQnlyR2NLa21ReTFaNmxORzNwYUxvdmloSnMrSDVUM0hD?=
 =?utf-8?B?MHpPaUc5cTRtOXRuTTJEaG10eVczSGR0eFdYNllXdmxHdUJaT1AySFh2ZVR6?=
 =?utf-8?B?aUxCdk4yTjRZdUxEdmFiLzltTTRvdVR0YTBYNWplS0VKazBtb1Y5dTBFb2Jl?=
 =?utf-8?B?ZFFWS0ZiajdFNnBnemJaUXhpRDNwMEthcjRhYlhRVlVwNXVxWHYwYmRzL0dB?=
 =?utf-8?B?QkdjSTNRUXZFeFFGTzgvbVIwdHd0OUMyTHg3N2JNSmJncEJVcjg4ZkpXTDBj?=
 =?utf-8?B?cWtadldrVWdaQmttQW1MT2MxMFo4elV2bHhXdFlHZ1AzUUpNcXhCc1Nzbkli?=
 =?utf-8?B?QWhpQVlnUitrQWlHSk1MTDdjZjREQTRSTXZSUmFnelNwMlpBdWtNblY4ZFln?=
 =?utf-8?B?QjV5ZmRRYnY1Z0gzeVhoYWZRZnhNVVFscElCOTJNb0NST1gwK3hNQzQwMW51?=
 =?utf-8?B?MW1vZlRQN2ZlYS85ZGdGY1ZZc2JpTURWNVBGU0ljdUNLRmRZQms3M2l3PT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR10MB6181.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?eFF6T0lZSVlKLzhlWUYybkV3SVpMSTZBcWdxOEVjSWpsN2piQVdRemc0bHFX?=
 =?utf-8?B?N0lWWm5kMnhsY1M0b3hLVGRpOFFQVEo2Y1hlOGlhSUFJaGhSMDZNaXB3RzhU?=
 =?utf-8?B?aWFMalNZQVRCS0R0RnhHRGdRLzgwdkVKSjNRYUlsTi96elBuNi9nazQvNHRH?=
 =?utf-8?B?ZXNHcTA1S0orS0lGU1VEYk5lK0t0bGk5eVlIVHZwQUFYYWpESlhLMm9oTkwz?=
 =?utf-8?B?MHZsTTJFQ2dvUi8rZmJIeng1b1EwS0ZLTUg2b0xua3R5ZzBBcXlaNGRQZEdQ?=
 =?utf-8?B?c01HdFFuVDlXT2lIaTE0M1lQU3RFem5UNU5PQW1yOXBjUy9IV1VQZ0NhWXoz?=
 =?utf-8?B?aEVHK29BTHBqWnJ3K0dnTEc4SEZVaCtqWlo2ZDdHNTBXWUl6WTVibVV2dEUx?=
 =?utf-8?B?UUdYMExiRHprcnBEYWwvM1lhZEZJbTBaalZXL3d2RUtZVUFZbUQzbnkrbG8x?=
 =?utf-8?B?QlhUei9yZW92MjFUS2RGaHBKS1lBY25md01zTUpjenRwYTBGRWNYWnJmblFV?=
 =?utf-8?B?MXpydkRDNDdvWXFHeTg0c3B6SEZPR2xIMHh5ZTE5ekJCY2p3MXRlVXN1MThn?=
 =?utf-8?B?NGs3eXM2YVVQNlNLWm9kRE5JTkZhS3Z1WFZyUTQwREZQTzVkWFRqNzFhb05S?=
 =?utf-8?B?azBZNi95b2VZNmZYYVlkT3NNRE13b1ZyZVBkdVZsb3d0Rk80eGlIc21yMnlo?=
 =?utf-8?B?YjNXQjMvVEpDdzFFZU45dmVjdUNERmRlOFNOUjlURGRIcEpoWEVqWFI4SW5o?=
 =?utf-8?B?N0N0MTc3ZUZtZ2ZTZ2tGTFJQZDAzQ2JwbGZYRUdhNVZvYlJQeDVleDNrRFVu?=
 =?utf-8?B?YzloaDY5c2xaOTJZRTZUR1lWUE5wUmd0U212QmROcnQ5WnIxeFhPejNRRzVI?=
 =?utf-8?B?Mi93T3A2cW5mUFRsc2x2bEJ2RWRZam94Skh6V3ArcDJnYTBwYXJvTTJLM0k1?=
 =?utf-8?B?YUdTQlhEVVVGbGVKSTV5WW83a3NZSXN1cXlEMHRGMitLMzFIbks1bFlJL0d4?=
 =?utf-8?B?SzlmS1pZTFBlOUg0WHVEUVNOOXRLTUNoVk5id0ZkQVBtcTdUNjZOdHRGcVlh?=
 =?utf-8?B?a2xWeFE3MC9XZlRVR3hsK2pMY0J2UnBPTFcwOXlZQ2R6SjQ3NHpIOFNmMG9x?=
 =?utf-8?B?UndEOW9IVU5qWjlqeHJmZVlhTnYxQ1k0bmp0N0wrU3NzSW95UllXemNFREw0?=
 =?utf-8?B?YWJ6eXErcXhadmRIZThUUjIwNkFYSUJJZkFqcnZMenUwOGNvOHk5b2RBT3B2?=
 =?utf-8?B?amtGNlF4U0VMV2l1aDdYUlZiZCtMYWJTL09MYld6bUVCT2V0YXBZSGt5Uksy?=
 =?utf-8?B?d1RPNGlnelVMQWsrdkI4azhtRGJhMy94WEQ4dkpCUGF2Nmw2TThWZ0pUeDZ5?=
 =?utf-8?B?TDlIbDEzUS9CMEtyWVRTTE9veHV6VUwxNFdaSFNXaW9yQ0t6cHVsS1d1blkr?=
 =?utf-8?B?SUx5bnJsZW9WRlBUTkY4amFrdC9LNzU1bHE5SEZrcFM0a2lnazhHeEF1ZTNT?=
 =?utf-8?B?YklyZ0tYUmI0b29MREc4MkxLbDFSbFZUck1LUnUzbi8xSXR1MHlrem9qb2JJ?=
 =?utf-8?B?WVRlbU1iUGI0MHEzRnp4eGNQRW5hay9yWlArQVp4WnRiLzJLZEpUODZ2TGxr?=
 =?utf-8?B?ZHVOK1hqbWtUZUlIam9BaHdwLyswbGlQSzFaSElRRmtKMUhOREZQZWdzeDdF?=
 =?utf-8?B?TlZDTXZsRHI4WEhhMTdrcFFWTXN2WnAvQXR1QXFyanU3dWFQZVpqazg1c2NP?=
 =?utf-8?B?SHNUbVZudm5SS0xSK0twNDFVM0FZRk1UYWV1OGI4RVZTbElicnBPMUhNSDRi?=
 =?utf-8?B?NGJ6YUg3N3IvZzJLbmdQcjl2R3BkVC9rMmlkdVJ5RWJFUVZhUkF2V3BZQ3Zz?=
 =?utf-8?B?b0hJT2xDaDZKRVE3VVFWK2tqTk5hRlFtZ25GMTZjcGtkcktpNkpRbXhxZGtI?=
 =?utf-8?B?NjJ1cElKMUsvZUtXZ0pkVDBqTGRIZlRmaVozekNiNHJlL3hqOFM2eE9MUUVG?=
 =?utf-8?B?VmR1UDRqLy92YkZmY2pXZDdUa2hCNzhRWjc2dlV3MDdMalNNcjQwSWcrU1Fa?=
 =?utf-8?B?NXBGVjJ6ajdDRVQxeE9xRkpaaitQZnNYaXVMOXFlUlROcm9YMlplUnluejd4?=
 =?utf-8?Q?BHk/hDEs8wHcMrbrzVhmqsmhB?=
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57fe6924-7861-4e12-26ac-08dce112785f
X-MS-Exchange-CrossTenant-AuthSource: AS4PR10MB6181.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 05:41:02.6080
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c9saGjy/uLcEinQLI09FxBRBYqyzMFwvv8GPZS/MGtaq0xVgB1uaPgLZc9CCeps7UG65frxJNEzka2Td60wrGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR10MB6787

From: Jan Kiszka <jan.kiszka@siemens.com>

Make sure that upstream overlays can also be built and, thus, checked.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 Makefile | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index fb51acef7c..210830c688 100644
--- a/Makefile
+++ b/Makefile
@@ -100,25 +100,29 @@ clean_%:
 ifeq ($(ARCH),)
 
 ALL_DTS		:= $(shell find src/* -name \*.dts)
+ALL_DTSO	:= $(shell find src/* -name \*.dtso)
 
 ALL_DTB		:= $(patsubst %.dts,%.dtb,$(ALL_DTS))
+ALL_DTBO	:= $(patsubst %.dtso,%.dtbo,$(ALL_DTSO))
 
-$(ALL_DTB): ARCH=$(word 2,$(subst /, ,$@))
-$(ALL_DTB): FORCE
+$(ALL_DTB) $(ALL_DTBO): ARCH=$(word 2,$(subst /, ,$@))
+$(ALL_DTB) $(ALL_DTBO): FORCE
 	$(Q)$(MAKE) ARCH=$(ARCH) $@
 
 else
 
 ARCH_DTS	:= $(shell find src/$(ARCH) -name \*.dts)
+ARCH_DTSO	:= $(shell find src/$(ARCH) -name \*.dtso)
 
 ARCH_DTB	:= $(patsubst %.dts,%.dtb,$(ARCH_DTS))
+ARCH_DTBO	:= $(patsubst %.dtso,%.dtbo,$(ARCH_DTSO))
 
 src	:= src/$(ARCH)
 obj	:= src/$(ARCH)
 
 include scripts/Kbuild.include
 
-cmd_files := $(wildcard $(foreach f,$(ARCH_DTB),$(dir $(f)).$(notdir $(f)).cmd))
+cmd_files := $(wildcard $(foreach f,$(ARCH_DTB) $(ARCH_DTBO),$(dir $(f)).$(notdir $(f)).cmd))
 
 ifneq ($(cmd_files),)
   include $(cmd_files)
@@ -143,15 +147,25 @@ cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
 $(obj)/%.dtb: $(src)/%.dts FORCE
 	$(call if_changed_dep,dtc)
 
+quiet_cmd_dtco = DTCO    $@
+cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+        $(DTC) -@ -O dtb -o $@ -b 0 \
+                -i $(src) $(DTC_FLAGS) \
+                -d $(depfile).dtc.tmp $(dtc-tmp) ; \
+        cat $(depfile).pre.tmp $(depfile).dtc.tmp > $(depfile)
+
+$(obj)/%.dtbo: $(src)/%.dtso FORCE
+	$(call if_changed_dep,dtco)
+
 PHONY += all_arch
-all_arch: $(ARCH_DTB)
+all_arch: $(ARCH_DTB) $(ARCH_DTBO)
 	@:
 
 RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS \
                    -o -name .pc -o -name .hg -o -name .git \) -prune -o
 
 PHONY += clean_arch
-clean_arch: __clean-files = $(ARCH_DTB)
+clean_arch: __clean-files = $(ARCH_DTB) $(ARCH_DTBO)
 clean_arch: FORCE
 	$(call cmd,clean)
 	@find . $(RCS_FIND_IGNORE) \
-- 
2.43.0

