Return-Path: <devicetree+bounces-84624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3268092CF16
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 12:30:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55CD71C208E0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 10:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73AE5193060;
	Wed, 10 Jul 2024 10:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b="t0lCyQcI"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2090.outbound.protection.outlook.com [40.107.21.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C58B192B72
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.90
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720606829; cv=fail; b=OGJfXeb8A26s6a7m82vFFpr6wdCrEbUNWx4z5sf/u5Bt7j5O0EawV/IIgi7IqCHn/oUxK1pSPQ+LatNNuRdydrxNrtGynC0HFQ7oRnL7vlotbBJUZYWY+BbYLFNmeFOV+SYsz28MJKbeVMqmzcHUkq4Bn2p7F6ncua3clYHrBxc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720606829; c=relaxed/simple;
	bh=0/+eO3gVCweOiBLyZ/Opvv27koyNO0l86WX+3znnlGg=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=FDP5cx5ENsrN5HODcw68XaFpwNo3JimWkC7y4xfpdCP+xGeUa9Ccdy8x4lZZ25gRJqmkF+IrKe5psojLTA4qlLCN2fd/Ss1Z+BSb5Uezpbow9NFKZlSrNDmnZYK7/x6h2psQF4+hrGsrJAzlDmF8y0jC4JAl3EN7RTDrpshdIIw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com; spf=pass smtp.mailfrom=pironex.com; dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b=t0lCyQcI; arc=fail smtp.client-ip=40.107.21.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pironex.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fSnDhlAFfl3XY/4SS15iPR3HHyD5qRuPcZswRWfXKPYbJnmSHZvwLsrYPbeqgM3rhS4nbASchx6weiBR9c9bvGB5GS1D2ncyrT7pvUDo0bSZZ6DawoZvOLO3tj+jT873V66xSUVHRUFkkMyK4E3e/I5lOtUfjAgCYdj54kMMuKbEG9kQGdV6LSPbgYcZ5tcNjpNdTx8n8tL3MCGvSOBAij4nfhnUXpLIs2TFdMViuPNE3tML60MTszfwURGeE0y053ThgbESNfOZRGU6B2WzOWWc8UhhHv7J2538PgQpCzk5q71otMDUGNjd3nt6r1uTaiu+k0C7EHMkZNDfJ3GG2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=652eZkNHkKkJhXaWEjLUuxeki/dleP26FbO+xVJ8mmM=;
 b=UHRZlDIybGg3/RPBT0iGvcKBtSkoW+sxSfEmStrU0zdwW1zsraOUbpDWqOCCJ0bs/LmWYoMIy4qYLXyU1PwnMxFH7j1c+GeRApRHnEuKE6FYUKhsWlR5OSgCp4+f8Quu7g5hcNptait4KmhvtXvhK+LGgA8Ovz93TFpPVRkyG3z1ywqZPrtO6oZpJ7c8BWFo7qtIiNzul/8FWvpVnhtDJaztDjgIAH6cEv8b3UipFpZ6hBeJAXxXSVQjNcKCzblY/PZnHQTJSp3LtFmZ7vbvh1chpExvQSKcR1URnbTu0kCgzL6Cld90CC5I2cyMN3ZJzurqmc9CAT58th92n9NfrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=652eZkNHkKkJhXaWEjLUuxeki/dleP26FbO+xVJ8mmM=;
 b=t0lCyQcIJbDmaKeTrHWYh4l1is2W9MW+EGM5o0I9oEQ+oXYQOzEq6leUc/ssAmXK1x6eKEq9TAqFcy/BiTc+NYpoIdo6xH09LBAoXtI62QCgah0vEafFTkFDdaQ9Ivs7MQRGk1Rk2HZFfZgGraJd85+oRHZfpyXOdQ2M50Pwtfo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by PAVPR10MB7258.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:31a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Wed, 10 Jul
 2024 10:20:22 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%3]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 10:20:22 +0000
Message-ID: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
Date: Wed, 10 Jul 2024 12:20:20 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
To: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <5414331.Y6POrrGVKo@bagend>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0048.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::20) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|PAVPR10MB7258:EE_
X-MS-Office365-Filtering-Correlation-Id: b1e03157-6166-421b-4942-08dca0c9e7d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QTdwSG9lNlNhS011TjlPSlQ1b2NTOXBMeW16TndNQkZDTnBObnFLZ0FNWXYy?=
 =?utf-8?B?bzJpMno1UnA4U1Zudk5taWdWT0JVMFZTNzNlQ0VNaEY3T0JqaHZQbHlsYWNq?=
 =?utf-8?B?UG1KcFgzU2NPc3AzczlVb1M5NktwN29aWCs0a0F1UW00WVh5dnAwcnlTK1cw?=
 =?utf-8?B?M3RhdG8vaWJRSDd0UzFiSVZVRE95OERiOWdnV0ZEVm1GWTlOSi94cXpjUWR4?=
 =?utf-8?B?SzhKQ0tIVXN6WExhWDF1ZkZiRmZEVnZ6ajJzNzVWbFAvOWpDRnBUdVFUNmlO?=
 =?utf-8?B?UXJJWW1nRmUvemx2ZmpZa1d3ZDhiMDBkbXQ5ajVHeDRjYXdWcE56T2pIRVdD?=
 =?utf-8?B?MmkvbXJwS2swSmx2TldvejFTZGJ0RnBxYUZPN2IzelByUXczdWRuU2dEMWEr?=
 =?utf-8?B?NThoY2pCYjVwQWJRM2Q2bkRzeUFWUDRmSmlsT0orQm9YaUJIYzFvMTZBb3g4?=
 =?utf-8?B?VDl1SEJkbndmU29nT1J4ZDYrcVlJdmJTSHpsNE1aeEIyb0t5cFVNS0taMlhZ?=
 =?utf-8?B?cUVTS1cvK2JkcC9Vb2daVCsybU94SHBQVzVJNFBIQ3ByVFoyOFRyeG9YdkpY?=
 =?utf-8?B?akVMOXlYNnMrNGxXbm9qdFZ4Q0l5QUNkM1BYa0N1eFlvQW5XQnRyNXJ5aUsw?=
 =?utf-8?B?aWh3eWFvcHlQTzM3VjRYdzNKN2FuVTdBMXZyaTQ5Zk9qRFNMM3A4dnJrVktQ?=
 =?utf-8?B?MHYvSU9XZVRHUWgvN2owd0RRSTQ2Z1V1MmFZWHZvY0NiNjhzOFVMM1l5NC9B?=
 =?utf-8?B?dGI5YTd2Y2x0R3FYbHZzSXVJRXlTSGo1d1pVcUlMUUU0YTN5T21icFdXT0hB?=
 =?utf-8?B?S0xrOWMzTFY1K0FPbmJCK2R1a2JUcDM3Ui9IUWRGVURhOXgxVThRQi9GNTFQ?=
 =?utf-8?B?MVNXQ3JialMxWWtvQi9CZ1puNG0vR0ZhS0YwNmpmUXluTitUU0xBWmV5SFJx?=
 =?utf-8?B?eWNNdUw1ejJRbG02VEpZREthTnFFNTh5UE91bHp1TkNScE5yVGF2YVVIbnFI?=
 =?utf-8?B?b0lxWUN6NTNHbmRTNTJRL1lSZ3I0MzRodGlXSzRIbEpzWC9IU3cyb2pEMmdU?=
 =?utf-8?B?MFpBb2ovQjV5N0JTY3lZM0ROT0NobHl3dWlkUUJqTzNjdll5akJBZWdmSUc1?=
 =?utf-8?B?RE1VaUFIZWoyZXlLcFNsTSttQnNvalhDZnRHSldpUWk2UmlTOWorb05Xa0Vs?=
 =?utf-8?B?QWs4TlIwWk5rWW0zd05kWE5LdTd6WW5PSk5zNzQvR0VDbjFicXE5RlF0Vk53?=
 =?utf-8?B?cGNhUk9pSFRzUnNnOWhlT1FhbWhVNVpwTXFQTnVoYVNpQzVRcGorQUxUZzRI?=
 =?utf-8?B?ZlFRVDNKWVlrRGtuN09wa2VYYlJMbTFYbWZ2Y3J1RUd1ZGwydy9VNVU1TVMr?=
 =?utf-8?B?Y3psQklpRDVJZEdaSVZjWjkxWUxibXNLZlFDRlhDdmUrUmt6dFVuOGRoZFNn?=
 =?utf-8?B?YVVxZE13a1UzWm5rRHRIM09GZGRoUnByS0hFbHo0WTZDajd2bjhjTGFWQXM5?=
 =?utf-8?B?azdOTVdKdzVYdUcwbHI2V1M2WlJ4YzE4cHpyUDRrUkZNWE1QOWNlV0toN3Jq?=
 =?utf-8?B?MktIdlUxd1pNbGJwRExOc1JiVCtRNDZ5Q3h6RUZLaEtSVnd5UlprUXZkeGZj?=
 =?utf-8?B?d000bmQ3TTFEWmhSZm5XUkFyb1lwcDdXdEZuRFZxNTR6TUpRKzJBblJ1TEdT?=
 =?utf-8?B?ZmIvSkpUdG1LSGxYT3hiS3NzbjB3dkNLUGw5NElQSkdRdG9MeExTd25tUmlq?=
 =?utf-8?Q?NaAXmztTVUPAYEZmeQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?V2xWZmdyWjFzQXU3MVZvZGwzNkplcUcwNVVwb0grWlRTbEJKcEppZlBtemNK?=
 =?utf-8?B?VDFoeXlLa0toU1R1U1pYVnp3WHdXMkt2dW53YWgzSWRsS0pPSWdGWUVMR1BO?=
 =?utf-8?B?djVraWlkcFNvRlJ2ZzhRTUlRNGhMRTh0SEJWNEJ5dGdzbVE5K2JGYlUrOXhM?=
 =?utf-8?B?SGNxVHRIT1d3dytNYU0wMkQzbnZKUzl6VGZZam1sMkk0UXA2WkIzeGNqK3pj?=
 =?utf-8?B?Z3NFR1ZEckUvQUkya2dKNldOTUdQeTVObEdaRCtTMDlOWVcxZWhzbHlvL2dX?=
 =?utf-8?B?S01ibjZrVlJOL1dxVG5ZWU1ud1VZRFpZV0d5NWJHNW15LzFIdWhXN2pPN1Vl?=
 =?utf-8?B?TXZBQU1QRE9qN3NldktQelI1Q3lMeUV5SjFEejJVYTZkaU1xNlpsYVNXU2NW?=
 =?utf-8?B?WnVJU2xFak55RW9jWk52bGk1YzBaRmo4YS9pRjZ0RzVSSUdrTnhWdnZOVTU4?=
 =?utf-8?B?WXpBdkRsTU9tYkpONk9KK2RXYzY5RXQrWGZlLzFBUWhaQlhpR1FyRjNMdEFa?=
 =?utf-8?B?RU9GSmw2bG1aWGFxOHNSVHliNEl1Mm9RVkVFVmlKMVk5MFh0bUcvbWVlMzcr?=
 =?utf-8?B?ODM1dThPNDIvdjVqZVIvaGxWazZtUDA2TEU3dVFWTmJFNFdRandieVU1Mm1R?=
 =?utf-8?B?MnJ4MVVqZVdobG5vbnBDSlh1SHBKeUxldDRKMzNGZlVaT1E2OE5yUkR0ZERk?=
 =?utf-8?B?ajVjYUpUQTNUcmIxQjdoeXpTa0hJTkoxY1BxWmc1aEJDaEFlQXBEK2FiTnVK?=
 =?utf-8?B?VW9SOHdvbVE4VjJsMDBiYnB4MUluTjc0L2xDNGhpUjdWZW5MeXRpL1ZWc1pY?=
 =?utf-8?B?NnVXRitwVzJiMG5IN0Vja05vWEVLbHgvamxwbWVVcXIybWtxYjhvd1R4Zy9P?=
 =?utf-8?B?YTdRYUxSR05NQ1hnbitodEhnZnEzd3JTMTNWclB0S1dvZndPcnhGbWp3UEpm?=
 =?utf-8?B?WVBnbWp5UjU0ZFROcDlSUVJMUkRCV1RHZDRRdmUwUXFFU2ZJMldLUG5rYmU4?=
 =?utf-8?B?MUI2MHJrMnJLdk14dmI2M0pxNHkrYUNSVXNCM1hUeFRIU01TRVRBQXJ3Wmtq?=
 =?utf-8?B?UlFkRzJsRmNyS3BxVm40OEZHRkJGSmRkSWdra2lOZS9abnFpandvZzV1WnIx?=
 =?utf-8?B?VXdORDcxcWZMbW5KdmllQ0NrTmxYUGlIR0tWTFc1WGVWLzFJU0tkcndvSXl0?=
 =?utf-8?B?dUlYQUh0VW9RRmZTUzk5MCtVWGdNc0NaejFKZXprYUNITHpvcENsd1dwWS9P?=
 =?utf-8?B?dG5mYnMrUS92S0YxVk1WY3VueThHK3NCczZ3ZHFXeCtKVldNNldTdjBvR3Ja?=
 =?utf-8?B?QnRmeTQ5eGFMbG54WHZGSkxmbnI5N2t6Y1NzVHJaMU9oY29BbGs2R2l5Y0Ju?=
 =?utf-8?B?RFJPckdxUjVISk55V0V2cnA1OWxBaEhXaVdFWlJucXR6WVlUcWZBRmFhbXlv?=
 =?utf-8?B?ZGpwYkZZVDRWTmpWYUZuT1p1RHlPZzMwbDJzQ1dWUGc2YlBMUkQrTVZYK3lB?=
 =?utf-8?B?L1BHdjV6Zm5sd2lVQnduN1hXQ3lkcFJQWmQ1SU9mSGtoMWhUZ3lFUDhyQm5j?=
 =?utf-8?B?TTkvUzcrb3dSSi9CcU9sQXdVWlkvaTdLMEQ5UGI4bnR0c0xvUHR6azkrcWNL?=
 =?utf-8?B?VXpwVFduVjlTdGVzR1Vpa3hDWWdjRjJ0dk52bHQ1aGlVa2pyelJSS2RWNnlr?=
 =?utf-8?B?WXFJSVltT1IzenRqN2gydjc2SkN5eHJicUJpU1IvMGlkM0czY2NwUFZSeTRY?=
 =?utf-8?B?ejBiV0lGcGhkWWYyTllKdTRrc1BsUE9FZWpMWmxWd0lVMmIxUTlnWnkvOWF0?=
 =?utf-8?B?c0J5SURQZGR3bzI5S1RWejhWZktKcUhGKytYNmFsMkF2WG1ZN2V6dlJ6ejVC?=
 =?utf-8?B?eGpldFNON2lwWDNYMHV2VXRFUTZhOWJvVXdrODBDU1hoK1dxNFZoWGpwR3hp?=
 =?utf-8?B?eS9ML0ZuZUZybnpUQXo1eFdTdno3U0N2OWowTm1iN0phdTVnbDZvaStkdXFG?=
 =?utf-8?B?Z0hyZldxNlJDbDZGQm5FZTdFVnd3WFJjVk9WTkhRQXRhQXNrdHl6MktnM1Q3?=
 =?utf-8?B?RTYyQS9yN3QwdnhoRS8wUmpWdHF2c0JyWWxraVhSMXh0bTlJdHlKU0xYT2Zz?=
 =?utf-8?B?MS81Q1FnRUZLVUVIL1RLUHdacGNJWmpLb3ZFbWpDSUZPMTRST2JmTngza2hh?=
 =?utf-8?Q?EHwXJV/HA8J07bAppkl/SNIRhMno28zR8KvPHmREv30I?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1e03157-6166-421b-4942-08dca0c9e7d2
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2024 10:20:22.0274
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c8DKbwFr2+2HJC9rShagUBvfk1eqrsOtUHYVzvFOZPm59I2SrKgamSIqYcMrmfbK/Su3gJGgWAaXViSoTWQKbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR10MB7258

Hi Diederik,

Am 10.07.24 um 12:02 schrieb Diederik de Haas:
> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>> DMA names are required by of_dma_request_slave_channel function that is
>> called during uart probe. So to enable DMA for uarts add the names as in
>> the RK3568 TRM.
> 
> Setting it on channels without flow control apparently causes issues. See
> 
> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/

Ah is see. The only problem that i have is to enable/disable dmas by having or not having
dma-names properties, where the latter case is followed by kernel error messages. That
is very counterintuitive. Maybe a explicit boolean like dma-broken would be better. That
could be set on dtsi level as default and deleted on board dts if wanted. With such
a boolean we could also prevent the misleading "dma-names property of" error message
and replace it with a hint that dma is disabled on purpose.

Regards,
Philipp Puschmann
> 
>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index d8543b5557ee..4ae40661ca6a
>> 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>  		clock-names = "baudclk", "apb_pclk";
>>  		dmas = <&dmac0 0>, <&dmac0 1>;
>> +		dma-names = "tx", "rx";
>>  		pinctrl-0 = <&uart0_xfer>;
>>  		pinctrl-names = "default";
>>  		reg-io-width = <4>;
>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>  		clock-names = "baudclk", "apb_pclk";
>>  		dmas = <&dmac0 2>, <&dmac0 3>;
>> +		dma-names = "tx", "rx";
>>  		pinctrl-0 = <&uart1m0_xfer>;
>>  		pinctrl-names = "default";
>>  		reg-io-width = <4>;
>> ...

