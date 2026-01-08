Return-Path: <devicetree+bounces-252721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 13325D02925
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 13:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D35F830A94D9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 11:57:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB853D7241;
	Thu,  8 Jan 2026 10:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="llYZHLQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012042.outbound.protection.outlook.com [52.101.66.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE633D7240;
	Thu,  8 Jan 2026 10:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866969; cv=fail; b=hUozzUlbXrIKrUCBqQMgAddUrxy27YvmwMc+11/imd7v9zDk3McTnL6uaLcE30net1p2r2fIQJ0RYa253Q2XxxBwOB3yZOoq0l/fnEk/HHrE/LzrlBfqUYrytHTLlNi41JMschzU32/u9bCCPBB4in1udvJb6wpIf8LThdc2odU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866969; c=relaxed/simple;
	bh=VzFU4ih1S3G3pe5H4Y53ikZ47xOj7UjbjUsEy4Nn8b8=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=EkbG+CI5QUABG306Tr7AaOqmdQ8Gp25t3a+3Ao15A3CBXNJQZ0aIbXpjj/rIWYeiUTrcJjhXo0yMket7/GCk7vNVdrrTklyDWyi/hVanepVbnuhOzmUo/4ewSDWinrbvsPgToFO3DQll5tIZgzY/2Ey2VejqNOUVsNHXLfJ5GbQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=llYZHLQ2; arc=fail smtp.client-ip=52.101.66.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ixMX8TmopGmjjP5B2rwfDBd+L4wKqhFN/JDRj7SBDYxgb6USvp19iTyG/S3cIVyz2MW0/SA0vBJpV75TT2dy092K0TFyz8zNEruaV2nfmL4saIBulZ3B3tWyqmms+hZFqzMfFjM4joGXuWnW2UoFMaC+9PTlwWmt82DHmTtqv1sapizA55NhJO5KkGGUnXAHjVy/nFASmRBzcfDA8PiT4/QYxaaHKG71ij1/0Z3cDiBP5PS/3H5YHkDGk2SJnRK4aoFxwQU3a7Li1Q8FiWiQe2Vwhsyvn646/xt2xw8qVZ11k5JaVkmgpNO/fnvWA30Vfi9rD5rM95T+V/Rsxo/r8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6dBgrmGWUWx4qFlKmh7TnmhDDpdTuerF+f68dKTXZiE=;
 b=dSjbrDOa07AcDcmSnXQJKAinnxhBQsmALR6v5OMER2uHdicGk38R9CuPHKtQVCO7m6ELb1vHNAhZNTUd3FFKlmkURRCWYCxNw4XBgsp7Mocgxj/pJbTdVtL+/yjIs3vATEiYOa1gumkdp1XMiVrdYIwok7IiGIYgsOl3N6/D4lomr3dN39pcusFDclpmxQMPURyxNhWuS8p/BHMjvM20j27RtYYGZQMzQDuddxKbVEKXm6eanYZE4L0nqigjXhK/xyoBlw00sP6FSSCNHT5RFXZGJKX0MH2Bm+X6xM97DKC+UltWKVdEP1CmbyiNgLIj6fBu5HzdCJ1jQ95zRSfaAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6dBgrmGWUWx4qFlKmh7TnmhDDpdTuerF+f68dKTXZiE=;
 b=llYZHLQ2r3vMLof12x7itxz9rPnKIYnU0Y6MeFQ40rYeSei5We92y9SmJjP8CuBnhFUZpUIBVY34YyhO5tVsFs7s8Y7hI2IIU+uKkNSIj1KfqXsKv347l/8mdAP9LmfbnxqJ/izl9Wf8xKEQA5DV6WHJ0IscwHoiJ67pxO2nkTk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by GVXPR04MB10233.eurprd04.prod.outlook.com (2603:10a6:150:1c2::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.5; Thu, 8 Jan
 2026 10:09:17 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 10:09:17 +0000
Message-ID: <0d99140e-8f57-4a7a-a492-92efa30292d8@cherry.de>
Date: Thu, 8 Jan 2026 11:07:45 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, Chaoyi Chen <kernel@airkyi.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <afe968a0-f14b-423d-81a7-c1046d2b32bb@cherry.de>
 <1b08bc47-70be-48fb-a05e-1101e633a776@rock-chips.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <1b08bc47-70be-48fb-a05e-1101e633a776@rock-chips.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0002.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c8::18) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|GVXPR04MB10233:EE_
X-MS-Office365-Filtering-Correlation-Id: b3af0a14-de75-458c-6d37-08de4e9dfb73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|7416014|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NE1HZGs5b3l3Q0RxMWRWK3dJUzRBYnR0N081TmNTdXRMVXRFRk1iQ1FWaE8y?=
 =?utf-8?B?K1hGeFUwdkk3aThFSmVwOWRoZ251dTlodEt5QmNPNTVrblpzUjRzS2hQMkpS?=
 =?utf-8?B?U1dXdnV6TlJsY1l4OW1NSldaOWJFeUQ1UjMwWkhBZlZtU0JtSUIxLzhJS2Vp?=
 =?utf-8?B?U1BWM0RqZG0xZTcwaTdHV0dhWVRWVlExUE5iZGNNRmJVYmFMM2NoSktPRnkz?=
 =?utf-8?B?ZHhid2VVUmlvbENUL2tOazZldE16dW95TkptRUtmaGVRMXgzdWZYVlcwQlNF?=
 =?utf-8?B?bmI3QUk1ZnMyL3U2ajhKNXpXaTl0V25nNUVWM1prTFhtODF2cUxDWktWMVlN?=
 =?utf-8?B?NTdEdXI4OGNtMVJsM3hVOGJqMSsrWE50dlRLV3M2c1d4Q3ZWOEsrT21SeWds?=
 =?utf-8?B?cFpnV2R6UXpheFI0NytPenZDZm14MlpXbnVFckcrdzhUMUpVS2sxbWswQ1lI?=
 =?utf-8?B?QTk4SjY3RVNtQmhPa0NqRW5zcGdCT05aaExwTlgwSzVvUzg5MnZOeHF6aGxr?=
 =?utf-8?B?Nzc4dEw1MHIyVDgvWUUveTN1d2l0SWE0V2k3RFh3ZHlBVVhVL0psdzJRZzJx?=
 =?utf-8?B?TU0za3N4a1pxY0VoNW1VMFJ2dnY4em91dnIrQUJabTRHSjVSbVNTNDJXd216?=
 =?utf-8?B?Q053bnRuT3pFTGEyVkZoVEwwNmowRklQV3N4SkI2VGd5ZzFLSkljdXU1Si9Q?=
 =?utf-8?B?WFhkYWgvVGFFT0JVY3BJcXk1UmVzUnZUVy91MzBCZHBpQlVLSm5LaUhnSVhz?=
 =?utf-8?B?UkhycHhocHJiekY1V0FWTHBXQnFqbjg3RXhpRFNNMXZ5dkx2SE94UFZ0WHhm?=
 =?utf-8?B?Z2JIdDZQMlZmcnFQOU14WGFpOUdFaFgwRGpWdkRMRnlBOWI1RE9HZmVRQSth?=
 =?utf-8?B?eGtsZVhjYnhkY2JmeXl3eTc2VVZQbnFDQjdYQ1pkYkRFcG1rblhEVWhodVdT?=
 =?utf-8?B?RzVLUWVOYk00KzNMN095amt3elJkTjl5OUpqeGRCUUhxd01tbjVLeXQ0b0ts?=
 =?utf-8?B?MDhuZzFGclhzV3ovdzc2M0E4c2Urb2tQb3B0RFIwZGxVeTNhU2p3UmFtZktP?=
 =?utf-8?B?OVYwcS83TXM0elBPMExiTlRzeHdMVGN3aXNMemhoR1J6LzVxZ2R4eXEwT0or?=
 =?utf-8?B?VU9LWjh1UVN5Znl6dWl5bEVGc0p6WEdWSStpd0lMRXp3VTE3RzVXdVBIOU4z?=
 =?utf-8?B?Y2JxaVFCa0RHMkp4aVNMNGhzNzRybU9ORjc3VFY4VkFQSHJ3enc0YW1iMldR?=
 =?utf-8?B?NEgwYktxQnlPUXkxdmRSTWlmdjd5UmQ0WFNVS3MwUjRZWmtRaCtVZGZYTWpI?=
 =?utf-8?B?Wlp2bWozNyt2NTdOMmh0WG5uVWRlU3ZpWXNUNzNsYnhVN0c4VGNyTjZmUzQ0?=
 =?utf-8?B?d3cyUVFhL2dPUVdwNkpDdlZjcS9oZis2ZFFhbm5hSjE3MUk2RmVSa0oxVDUy?=
 =?utf-8?B?aHM2TWt5Zkw4Q01tckY0NXNxeWpXNnBua3h2YS91R3VkYjBYWUNtWmVILy9w?=
 =?utf-8?B?TTRTajJ5TnpNdXBWdlA5NWVpbXNWTU9GUXJ3WUo5WGE3dTNGNUZhNktrWHQx?=
 =?utf-8?B?WmljdmFxaVhVUkxtY3Jjb2VoK2ZBOCtlYjlQdHlMTEpPUDBsN2Uxalk0TUxR?=
 =?utf-8?B?dG8zcHZYS2JCVmh2RXNjM3JUZWc4b2Q3YlVSZXVZRjViREs1Y0tOY2cyR0hC?=
 =?utf-8?B?UXVkeSswQjhzN3U5YnZSWDFML3VLd2MwUmo1OWVSaTBvdFlpS2VxYkZxM0dt?=
 =?utf-8?B?VjJUUE1KeHBLeGVSVytxeU1ZNDJLYUlsaW1Td0w4ZjhGa1lTSEJOUHI2dWIr?=
 =?utf-8?B?dUZEcXNrY004WHZ4Sk5XREtVOEtmT2gyM3pUelJRMjFvV0llZ1ROcW1ITmEv?=
 =?utf-8?B?Z212b3phSkhqRXVMdytkeWdQc3BWSGR1U3RvdVpCL1YxSm5QWnVWemZwSVZa?=
 =?utf-8?B?alpkY2pXc1Y0SnBMYTJrWkhUMG9ZZ2pjMEdqUllDNkxFM1JxcUlydmRJWFN1?=
 =?utf-8?Q?w9LXweQ7KBj/4vk4V+zJDR8lVTRQrs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Mk9hM1lXOTg1UFZKMXlpakovOUM1ZjdTQlJBbHFrUUZLNEY5MVlWTUd0NVpT?=
 =?utf-8?B?dUoyNW8wb05xdk9zTGg3aGdPbGVwNDhaMjZLU0dpS2Q3bDU3RnUzRFd5WUFq?=
 =?utf-8?B?TCtSTi8ySWU1STI5S2xPeitSS2tua3RCYTJFN0pFZ20zQjUzM1ZXSmQraVha?=
 =?utf-8?B?YUxEbGtFb1ZuclhMazRTZW1xSDNPVFI4U0Z2Z3FRNHowNDh6WlRXaUZDRHlk?=
 =?utf-8?B?Zm1SUkNlcHBuNHBUSzZkenRrcVFKc2YxQTRSMWF4WmJCdm5qQXpva0UzRk9O?=
 =?utf-8?B?dWVaQXdFYit4Q0ZlNlduaCs3T1hDa0xJTmZYQU5LOFVWTTdxSVc3UThFT2Qv?=
 =?utf-8?B?dkhxWFMrQllIQ2Z3a0FHTHd1RFFiOTN6ZDFqNmpSUVYyS2QwaThkVHZ5cmll?=
 =?utf-8?B?YytoUkx5ZENvSktHSXFETVFIY1RLTjd6ZSt3MHJ6T0pXd3RKbTlEd1JsaW5P?=
 =?utf-8?B?Y2lWb0tkSldGa205RGhnaE8ycXNxWUxiK211ZHdwYkc3eGNXUWlKeEU3N29j?=
 =?utf-8?B?R29oTGt4WVJxZ0QwdkhjVWUzWi9YNE93UCtYY1FnVHVHKzErN3FzVmdjQlBU?=
 =?utf-8?B?dUhOZk5PVjNpdTZlRmMvR3pLUXpSUWI0VUdRZTFjYVRwR0lSKzd1VnI5ckMv?=
 =?utf-8?B?blJ5Y3NtbkU2aHRJaVc5c1dqdyt0bmtCNW5rVjUyTlkwTXkya0s3U2dCak1J?=
 =?utf-8?B?N1pQZWRuOWFqREJXN3NsRCtUWlZkQWc3OWVsQ2QxaTJFZnpxcHhrY2tqREFw?=
 =?utf-8?B?dXVvQVhUWE9jckNCcnpqcXA3ZUdpNzZRTnB5Zkh1NWxzZFJ5S05FcXJ5M0RG?=
 =?utf-8?B?aFFtVTRGdXN2eEJ5ekVma29IMTNHc3dFMWowMURLdUZOaGViRjkvR3RUNk5K?=
 =?utf-8?B?N0pDWGppQ0IrZCs1TW1URzdqbHM1czcxd3BEUWRaOHZVbFJDSkV4UWFjU2FD?=
 =?utf-8?B?Yjg5dCtJMnRzS04rdjN2ekhNQUtGTUpZZXBpc3lEUWlVdE9JTmlUdXJQeXUr?=
 =?utf-8?B?bDdtUGVVSnJaTlZPQnU5WGVNYWtBY1EzL0V5Ny8xSG1vNzBaYUdtVTFLWTdr?=
 =?utf-8?B?OS9OQi9aNGNJOWtjOHpRVTJQOWdBamRpeGV5OFpCTnRVMzhNVUo2aWJHb3U1?=
 =?utf-8?B?Ni8xd1g0ZFJNcnZicnIycE1uV3pYN04vWUNQV3ZaZ0hrcFVnTGkveENiKzJs?=
 =?utf-8?B?UjRNNCsyUHkxaGVFUEhOazFNNEw1TTArVlVISU1qbzRjejJ1QmUvMitvQTQ0?=
 =?utf-8?B?ZlI4MlluUkp0VEwzeHNWbmRmWUcxQ2N2bk56RlFqTGxna09PZkFxdVA5Y3R1?=
 =?utf-8?B?bEk0cUdOb3lZSnc4THMrY2R0Um0zNThjVXIzVmtTT2l6YWFjbzd4N09MRUF2?=
 =?utf-8?B?ZUFJMWZLSEtSWHhNTkNDYWp0MDc0bHVZL0pDcmVXd051RXNhNVloQUJ5YnZt?=
 =?utf-8?B?UmxQWTN2RlZMUE4yZit4TUluRSs1UUIxYVBaZE9RTXJTUDV4TGV1ZTVIRDNI?=
 =?utf-8?B?M2FFcGo1eUt1TGpkOWVxTEEyTkV3TzQ2TG14RnEvZS9rU2tSSkVYR2IzRGVN?=
 =?utf-8?B?ZSt3SUFKMGNhS0tydjBPYWFmZUkyNHhOL0dtZnBzWlVRTDI3a0ZUQ29HQkh3?=
 =?utf-8?B?UGJVVGtwbi9yaFVZU1BCV2dLV1FJR2Q0dUVSaEFPQzl5RXJTTG9YL3NlMWZm?=
 =?utf-8?B?Y2IxeXE3eEdocWJOSUUyYnRpRUVSNXZKeTU2QjUxNjV3RU5uS1VFNTE5OHQw?=
 =?utf-8?B?R0ZuMzBGRGpJR0g2NzBRNzhhS0R1SVdIWm9nK3V5VjhUMzE4MDJoQzRGNmow?=
 =?utf-8?B?QWp2d2xhekN3THJNZndGcHFqK2xBYzIrWG0zL3U0TmJ5TjU4Qm5QVXpJeUM5?=
 =?utf-8?B?UWdCUGtMU1NXZFFCdmJEY0VBblJDQlFGdHczeFdRYmprWWFPbnB3alU0MFZa?=
 =?utf-8?B?M3kvZGJUa291b1VZYVRBMzB0Q3pXMnYzYU1FbWJTRjh1Rk9yeFhXdGttSXdN?=
 =?utf-8?B?bnZPSTFhRzhxSlN6V1hiVlhvek02cU1VUVJiVW9ITlFsamQ1RDBMM0M2TWd1?=
 =?utf-8?B?VUhHUWVXWnRlY0QxaVdrWjlTODNTTTJZRTRoL1VIRERUUDJRSTZQTTU2VTZI?=
 =?utf-8?B?TUlpcWdGOFlZdEZkNVVtM3RaTG85UjJ5N0hTQXgvSUdVRUkyMW5pd1pXa3Z1?=
 =?utf-8?B?YWdnWCtJemhkemc2Q01OZkRKcmkvZXYzTXNicm8zN0tobDFmMWxLbGQ4WlRP?=
 =?utf-8?B?TTV6azlkM3UrUldSZkw0WHdmZnVCdVpQMXZIdUtXUE9MNjFDQTQ2KzRNNHkz?=
 =?utf-8?B?VU9HTXA2KzBTMHpNRjhzQXVDZmZpSTJyOExISW1VdTlwZjZ3MU9ZQT09?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b3af0a14-de75-458c-6d37-08de4e9dfb73
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 10:09:17.0013
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kjWnMNcfWba/fZC6zoogsjq1U7lurYFfUT3JPWGX4opDC2G253xRzJl76ahZLtYfmNh8GUVtVlInPVUbYjXvn8szye55o2gWDSDLC/qvrC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10233

Hi Chaoyi,

On 1/8/26 7:27 AM, Chaoyi Chen wrote:
> Hi Quentin,
> 
> Thank you for your patient review.
> 
> On 1/7/2026 11:46 PM, Quentin Schulz wrote:
>> Hi Chaoyi,
>>
>> On 1/7/26 8:03 AM, Chaoyi Chen wrote:

[...]

>>> +        stdout-path = "serial0:1500000n8";
>>> +    };
>>> +
>>> +    adc_keys: adc-keys {
>>
>> Are we expecting to extend this node from another DT? Why the label?
>>
>> Won't comment on all other labeled-but-no-phandle-use instances, please check.
>>
> 
> I think one exception is the regulator labels. Even though their
> phandles are unused, they match the names on the schematic, so it
> seems meaningful to keep them.
> 

Can't you use the regulator-name property for that? Or a comment if you 
realllly want it to be somewhere in the DTS? If I remember correctly, 
labels make it to the DTB when building it with symbols (-@, enabled 
whenever there's a DTSO for the board; see __symbols__ node when 
decompiling), this will unnecessarily bloat the final DTB.

>>> +    vcc3v3_rtc_s5: regulator-vcc3v3-rtc-s5 {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vcc3v3_rtc_s5";
>>> +        regulator-boot-on;
>>> +        regulator-always-on;
>>> +        regulator-min-microvolt = <3300000>;
>>> +        regulator-max-microvolt = <3300000>;
>>> +        vin-supply = <&vcc_sys>;
>>
>> If this is for the rtc, shouldn't we declare this dependency in the RTC device node and not have it always-on?
>>
> 
> I checked other boards that use the hym8563 device and couldn't find
> a similar approach. Could you give an example?
> 

If this is truly always on by hardware design, then I guess it's "fine". 
That other boards aren't doing isn't much of an argument, as they may 
not need it. Typically, you could need to update the driver (and its 
binding) to accept and control power supplies so that you can link the 
two together in the device tree. I'm assuming for an RTC it doesn't make 
much sense to have its power supply controllable as it likely needs to 
be powered even when the device is turned off (otherwise the RTC stops 
counting :) ).

>>> +    };
>>> +
>>> +    vcc3v3_sata_pwren: vcc3v3-sata-pwren {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vcc3v3_sata_pwren";
>>> +        enable-active-high;
>>> +        regulator-boot-on;
>>> +        regulator-always-on;
>>
>> Why do we have this always-on? Seems like we're missing a dependency on this regulator in the SATA controller?
>>
> 
> In v1 we set the pinctrl inside the SATA node. To keep the pins from
> being reused by mistake we added this regulator in v2.
> 

This is a controllable regulator, which seems to be dedicated to SATA 
(from the name of it). Why isn't it something that the SATA controller 
controls?

You have ahci-supply, target-supply and phy-supply in ahci-common.yaml 
DT binding that may be appropriate for this regulator.

The issue is if this regulator is probed *after* your SATA device, SATA 
probably won't work. Imagine REGULATOR_FIXED_VOLTAGE=m (or even =n, but 
then you likely have other issues) and your SATA controller driver is 
built-in, this will be broken.

Remove the always-on and set the proper link in the SATA controller 
device node so that this is handled properly.

>>> +        gpio = <&gpio4 RK_PC7 GPIO_ACTIVE_HIGH>;
>>> +        pinctrl-names = "default";
>>> +        pinctrl-0 = <&satapm_pwren>;
>>> +    };
>>> +
>>> +    vcc5v0_device: regulator-vcc5v0-device {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vcc5v0_device";
>>> +        regulator-always-on;
>>> +        regulator-boot-on;
>>> +        regulator-min-microvolt = <5000000>;
>>> +        regulator-max-microvolt = <5000000>;
>>> +        vin-supply = <&vcc12v_dcin>;
>>> +    };
>>> +
>>> +    vcc5v0_host: regulator-vcc5v0-host {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vcc5v0_host";
>>> +        regulator-boot-on;
>>> +        regulator-always-on;
>>> +        regulator-min-microvolt = <5000000>;
>>> +        regulator-max-microvolt = <5000000>;
>>> +        enable-active-high;
>>> +        gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
>>> +        vin-supply = <&vcc5v0_device>;
>>> +        pinctrl-names = "default";
>>> +        pinctrl-0 = <&usb_host_pwren>;
>>> +    };
>>> +
>>
>> I assume both of the above are related to USB operating in host or device mode? Maybe there's a way to have something more useful to the user in regulator-name (and possibly the regulator node name) so that they have an idea what this pertains to?
> 
> It's a good idea. Actually, we have two regulators here, one for USB0
> and another for USB1. I'll try to rename them in v2.
> 

Are you sure? vcc5v0_device is a supply for vcc5v0_host, so it'd be odd 
that in order for USB1 to work, you need USB0 powered?

[...]

Cheers,
Quentin

