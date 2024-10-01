Return-Path: <devicetree+bounces-106752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEA698B8B8
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:56:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 180DA1F21657
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 09:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC68819F41E;
	Tue,  1 Oct 2024 09:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="gup9P1b5"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11011046.outbound.protection.outlook.com [52.101.65.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE7A19D8B3
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 09:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727776557; cv=fail; b=PcxU38MgU0xXZHQBatlGibknnkrOHcwjOgFcxlm1q9AAMZr8yRN6yVExj184SQ/tIT/mQZTdwLffsBkm6Axx/Vf1ovmTxAlTGdK41tYEsgWm4POpwNlO1uh1LNK00Hq6r5zTQCGnQ4Ixak62uq+KRYQnqhGmi5Jg3JVNs1GWy2c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727776557; c=relaxed/simple;
	bh=A4OdmrI92aHdGGicbxCjQXcrz3fgEqP/FAylkALYXNo=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=dbbRJjkxxxnteKNAJM/ezXJKVzLIrNrwrtdAHQGMgn0Mov9lBylO4REiDv0TMUWsd6Yu4m71Yni5ymNk/Z7QAtYsQ+EjrFfAYXHBubUU3hpZc7klW2lW9EFWyh5OFSvuYC0URC4/QKromueg1Cil2loryI/GbOhUvI+9GB+Smrg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=gup9P1b5; arc=fail smtp.client-ip=52.101.65.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mAryq6SMoMhQ1G43A1GEiDtSuJdQ3jSTKgc8ohSmnJUce/BwreF9EZz6P/fpiVskBj15dL/u6xjtOvfOHSkxG08d3BdlDfaATQ9ebytmfeU2HmjLwaRikrvFzOVoOSVN776rMwmSp8wpysPTynrslC17ZlSInzbnHKvf98c6c5E72T874MALMHUBQmVxOEzjXIKIxKUxVtalatjTBzQdSMlLdCu4rlQO4EtE4R137KWKyaBlXp1fxexErB+/DJjXIl3QEoPMSSl5RQf3/JDD2nm6JXbfYkN6KyiQw0Nn2afkWY+R/2DfYruqh82dL7U0ItDNS1THQrlNZIG/FwNAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7uqUdcH37OV2VyqhaUTKOf6oPhsSABG2NTmU6xWNSiY=;
 b=B7ALaLY1DatkZfQ28V9/ishaFL2Mg5+eWC8SE1NXiljwoe10NSCZmVXP9A7UgSt0g6HIOcFakT8sXJsKaRCIuaJFZIMTu145PQRxKb5Ctku8pR8yLsOMcC7DkZX6mxxiy7j5YOocziYbMaHh519mNVhzh2UwsLTCU0XbNwFr/RX+5keYwYyZYPdRqf5Jl1WMjlKkbgGGO7AsXw/LffohcSbuaWZYu314Hue3JLIRA4ODKrvv+xR9zL9o/YjJB8wg5r8EZr0VOlcIpDTst2xtNIAwxRWU/zQqfU+W2DXsQ4AAe88abxyXepnLYuI9cW+2Do0UcyEKG3bi0nBSJE8eXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7uqUdcH37OV2VyqhaUTKOf6oPhsSABG2NTmU6xWNSiY=;
 b=gup9P1b5m+B6K51DgdjMUaxokQjOR0ugCDiXCwh/FOSZ4swO897fU3Vm8ovnQ5FJuyPcB2YXmsXQmVWvX6Jx0lsLGne1lJ8qLxAMvO0JRWy76vrYt1vTBKHPMScChp7nzVpOp61lYJu8TfzQe6oehnX/0Wz0zmqR2/MDM5fi6vQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by AM8PR04MB7778.eurprd04.prod.outlook.com (2603:10a6:20b:24a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 1 Oct
 2024 09:55:48 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Tue, 1 Oct 2024
 09:55:45 +0000
Message-ID: <4ca5cf41-4eaa-4050-b831-f4ee97f0a7bc@cherry.de>
Date: Tue, 1 Oct 2024 11:55:41 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Remove #cooling-cells from fan
 on Theobroma boards
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-9-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240930210112.1993625-9-heiko@sntech.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR4P281CA0163.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::8) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|AM8PR04MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: f62eb696-9d05-4f06-e403-08dce1ff37b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZHhPK2cxT3ZtT1JJNmc4bVRVWXpXUy9hOGxmd0ZsQysrZ0JMY285SmRVY0xN?=
 =?utf-8?B?azJPcmkvRTY0ZU1mcWkxWXZQTVoyWVBSMHE2UWhTSnpRMUtYVy9kNGUrNmVz?=
 =?utf-8?B?dUJFdEU3Y1Z1NmRFNU9maXlBSDRlRlNFUmNXdy9CaHkybUJCTlliTDBvUkpo?=
 =?utf-8?B?c2FIcXVibFdmUFdPYkw2aTVIMFpZZFgwa1JMRkVJeVRock9jN2xKMlBraXlw?=
 =?utf-8?B?QVd6UXdsVG9mS1ZkNFVWYko4UEQ4L0RyakRPSUNSRW5oRXhyZXRUaHJFZmNE?=
 =?utf-8?B?dXBDczhGbWxXd3h2eW9QcFZWN2wvWmM0YmhtN0s4Y290OXhoK3lJbEZYSmRK?=
 =?utf-8?B?OGdlai9RYjlneEx5M0JGNWRkb0dyWFZNWktYU0pSSVR0Z1NGNXRSQUh2cjF0?=
 =?utf-8?B?Mmpjak5BUWR4VkdyRzlFaTNseUdTd2ZlbHFkY0ZDa3ZIV1g5a3VMSXFkd3E3?=
 =?utf-8?B?NGlhZ3JPMjliWUV3bFRzV2tnQjBZWlROdUt5M2NFN0doVGJQVHU3bWhWQUs3?=
 =?utf-8?B?MVMwR3FnSUR2RVJ5R2ljdXV5SGpBNWd1T1lBSTBZREI1MmZRd09jWVlYZWpq?=
 =?utf-8?B?SmkrZ3lNbGdaeUExeElKVUphODFjZ3UreWtDeDdhUmhZYVFvVC93ZXZZRjBI?=
 =?utf-8?B?eGtDay9NUEZBWW81Yy8wVjVHK0FuVEhZVXNYSmQwMklwWTVRMUkxQlhHNmwx?=
 =?utf-8?B?amNhUVc3YXFpZUt4L2NCaUZTbU4wR2svM0pLNmVDK3dRamwvQWk2TnBQaTZ5?=
 =?utf-8?B?dmUvYjFYaG9mcDdvSStmdStuV0RMSG1kLzJrUHorRHE1VFRzUmVTN3BpbWly?=
 =?utf-8?B?bUZwOE1XMjBGK05Mb1hzTGVObXUrVW03SHMwdE1SYmRxRjlBdEFkblZITCsw?=
 =?utf-8?B?cEtKRVhzaTFmdUk0UmcwbGUzcmxaRmphQlR3MER5VlVZZlZKOWZESkdwME5H?=
 =?utf-8?B?VkNMcVgrL0lZUXp4RHlUSzBzQTdpNHQ3UkhQV3J1ODRFVnFQeWJxd0krV2lH?=
 =?utf-8?B?NVBsMlg3UWlQVkE3Njg3QnM5emRUOWtCR0pla0F5amJEdTJ3a3NoaC9PS1NH?=
 =?utf-8?B?SFV5OW05NmJEeGxQSFRzSlZFK2x0aW9HeEJxV1pBTWVuQU5mN1FKQ3UrSGRM?=
 =?utf-8?B?Tmh4WlhDbkVkR1pqbkJ5OVpNYUdHeGtWNW1lZndJdUtwZnFjTW4vR21SMENs?=
 =?utf-8?B?S0tlTVdXVDRneGkxazB4MnRZV1NPaDNxaEZjZGg5bFc0YVhuYmExak02dDRP?=
 =?utf-8?B?bmQvTE5pWEpkWENqODg5NzNqZmRBNGwyZFc1STJwc1pmbWtpVU9xNTVIeVpu?=
 =?utf-8?B?YTR0U0hocXZlWUpoRlNDTVJBbmVXZW04Q3VZOExJRU5oVXJDcEEwZFJPNy9Q?=
 =?utf-8?B?RWJTREM0RjBQQlRIbStwY2ZydTh4eEVVcnRVd3phWFB5NVU3WkZ5aWpVdFZv?=
 =?utf-8?B?MTkvc29pVGY5QUVQVHhVSUZPaTJ4bkhUVXBUQUo1dmx4YTNrMmRQd2dXMW9w?=
 =?utf-8?B?d3ZBWmJaaExRamdPVWhOSy95Z3ZHMkcxcUo2N3lxak41SngyTGY3NG5SWXo2?=
 =?utf-8?B?eUxyMFZ6U20yY000b2FDU09UYVhWUkYxV0RNaUpNZi92R1FESlhUdVlPTCsy?=
 =?utf-8?B?RWt3N1JJU3hKODhKd0xsY1UyczNXa3NGR3FDRVFTZzFma0oyWmVrTmlPUXdU?=
 =?utf-8?B?aUJKbFdueENqMlIvM1FjbzgrL0NpOUVQTGJjUklZSEpFYURrZm4vMks2bUE0?=
 =?utf-8?B?UmkvTjV0cVFPN2RndU5EcktaOGhXdkNzdlVTc0lvMkJ6a05na0tNemw5ajBw?=
 =?utf-8?B?OHFDYWFiSk9XMUdJbXo1dz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QksrV0I4aXZTdFBQd2NtUnpJOUltd1F3cVJpc1o5bVdab2IxT09wVE5BZzJE?=
 =?utf-8?B?R0JSR3lSc0h0OUFuTWxEc1E4WnFIR3Z5eVlrclhMeTZWL2dXRUZySFMxT1hK?=
 =?utf-8?B?Uk5Fa3Fkc0xxMi9mQkxuRGkreWJsUVpuckt4ejREVlM2Qk1WL0V0ci9XbFhT?=
 =?utf-8?B?c2g1RnozbGVyVUNGeUUyc01iaFFmdzMxdUl5cmp6QlFOYXF0WnMzWktqWXJS?=
 =?utf-8?B?cmhZOTVGcDc2YmNqUU5PYmpjRUh0N0FFSGRYV2E1T0dqYitLOU1HYkM0NVVO?=
 =?utf-8?B?WUQzU2pUWGU0MjBMTGY4L3kwRDYvcmE5NXBWZEQzV0lHOW1qMzRqSDMrb05W?=
 =?utf-8?B?RFNwRjcrSlZSVE5qRHJBSWhOV3RyWk1kUngxUkVLeDlIWWZESzdsZnJVQmt3?=
 =?utf-8?B?U0NHZjNiY0YxMU0zS2E4NnBGZWNhWElSK3UvalpoWVkwVnRlZXNZYXBmQTZp?=
 =?utf-8?B?ZS8rUHp5Q1pmd2c0U0p5THpIQ1pQU1VxZnl2TU8wandRYkZqS1VkZG00MkMx?=
 =?utf-8?B?VzJ2VzBYLzcxcmVJaGNRbUs2Wld4a3RpWnJZTDRGSlNMQ2Zab2tWZ3ZBOUJa?=
 =?utf-8?B?Ky9QYlhmcU1WZUZPUzlwclRvdjQzZysvN0xUeWwrajlTckxCc1RFQjMzZzdC?=
 =?utf-8?B?b3drd0ppUGlPdC8yNjRZUHFJSklNaStUUjB3aUxudmFnR2ZQei9ocG82VVJs?=
 =?utf-8?B?NkZwRGJFMXQ5VG8xY1pvUjdHWkE3Vk5GZm9SUWtES1VBbjFHQTJ1K0cwZGZW?=
 =?utf-8?B?WHFTMjdKT2dZZjJ3ZjZrUUxvd3BYSGthbHpsdDU4L3VWV0ZUa3pQc0U1RVBL?=
 =?utf-8?B?cmNTOCtUWEZ6TlZaajVoeUJoR3N0UDhwNGs2bkpqbVovR3p2SE9STmVmZ2Fh?=
 =?utf-8?B?ano3em1qdDZnWklpNThvdUJnd1ZoQjE4UUFzcFRyaVpjcnJ6WlZNc0VWNkpQ?=
 =?utf-8?B?WWljaERTOUtOZVJSQ2lkZU1kZ3B4V2ZDNmtjWVRKb0JqMDduazdOZEZFSVpL?=
 =?utf-8?B?MUUrTFRPb20xOXlJTWFtbXcxbVA4ckkxcGJwNzBaTC93ME1JU2VadC9Vbmps?=
 =?utf-8?B?NXE4VVdHZjNZenAvY0tCbzdmWVNzVXJQNGR3L3poMVBjZWVkYU5RZVZKZjln?=
 =?utf-8?B?QjR5OWxrMndGMEMzMy9nTHpId3dEYncyYXpyOUNsMFhLMWdId00zSEx5YWcw?=
 =?utf-8?B?Y1hYVWJRSm5LYXlneDcvM2YrT2dPZ1I3M3I4ZGxjQkdjZi9YdHRsVEtvSzJL?=
 =?utf-8?B?eHhCY1l0QkhleHpsblowbWxtRjV1YzFRRTdQRTcxbzM0RTBkVDhodWJTdDVX?=
 =?utf-8?B?ZzVYaG5xK0oxcnVyZWsreUZVbGhlNjJoU1V1V2d1OVJCTnpzTVlITHdGZjYw?=
 =?utf-8?B?ek0zVHlUWXg0NkFZZVlIZVlucGxLcXR0TWFmdlZOeTJzSmhpNDJGU2hQTmJF?=
 =?utf-8?B?VElaZ2dQaU9kSEdmYy9CUkZFKzhLZkpRbjNUY3NUNFhHcW12RlkwZGFmOVdG?=
 =?utf-8?B?ZmpBVVJWZXF5UVA1eUhiclcwdDc0Njd0eDRrK0tPR1dvcVl5aG1mM3hjTDh1?=
 =?utf-8?B?d0FvSHlQVU9UbnozK3RTelF1L1QxVjl5OHB0bWE3b1hSY3dLK0lFUlNnK050?=
 =?utf-8?B?MGRHUGs4NnArUmJyeVQyUVZTbnVCWFlsM1VUTExjTjlmNURvTitMaE1GcGFC?=
 =?utf-8?B?YmY4S3JNUm1vWnFiZTlDOEhxZEphYldMNWhRUGxrNGp5QkYvb2xtQ0RKeWJW?=
 =?utf-8?B?SDUrZTdsaitUS3ZnQU9BRDk5RHkvOUtIMWtUZk44YmlYaXFCSGtIc1Jza3o1?=
 =?utf-8?B?RUg3NW9INFpqanBuYncyWHJLNWE3empBOG5BUG5wenRJY0k0UENxMi9tdVBR?=
 =?utf-8?B?ZlBIdUdhV0YwN1NFTmd3a3dYZU9ybGR0YVZLNFdZYXBjVTUwWkhYQitzVGRO?=
 =?utf-8?B?S0Rkek1Fa0pQQ0RNcUJja0lEYm5vK3V4R3BPeFdUbHlER2NsRVBsN1QxTlJ1?=
 =?utf-8?B?aWovR0FkR0l6Ykt6dXVrR2ZFRkdtUEdoYTQrYkVxSm1MbzdaQzdESjBXU04z?=
 =?utf-8?B?NGFyZjQxNFBvbnpJWjFTNEY1VHdzREowM3hTTmdRbklTUVVsam5zMy96UnFN?=
 =?utf-8?B?dDgrSWhQRld0YmtpSXNrMmgzSXBpYW43SWNXUW9JaXRFdHpTZkdMNldVNjRW?=
 =?utf-8?B?K2c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f62eb696-9d05-4f06-e403-08dce1ff37b9
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2024 09:55:44.9551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ev0xc6bha/wuaRMRFtO6AnATa4WCzGQFP52vIw3I8gqiiMcjkO95GIbYHss8Tt0P9m6h+jchn6huyoJka2zjtoME4l4gVre8lrBWHeaELyM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7778

Hi Heiko,

On 9/30/24 11:01 PM, Heiko Stuebner wrote:
> All Theobroma boards use a ti,amc6821 as fan controller.
> It normally runs in an automatically controlled way and while it may be
> possible to use it as part of a dt-based thermal management, this is
> not yet specified in the binding, nor implemented in any kernel.
> 
> Newer boards already don't contain that #cooling-cells property, but
> older ones do. So remove them for now, they can be re-added if thermal
> integration gets implemented in the future.
> 
> Fixes: c484cf93f61b ("arm64: dts: rockchip: add PX30-µQ7 (Ringneck) SoM with Haikou baseboard")
> Fixes: d99a02bcfa81 ("arm64: dts: rockchip: add RK3368-uQ7 (Lion) SoM")
> Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Cc: Klaus Goger <klaus.goger@theobroma-systems.com>

This has been tripping the dt-binding check for a while and since we've 
somehow not linked the fan controller to cpufreq for thermal throttling 
just yet, this was essentially not used.

As far as I know, no DT we wrote for customers had that linked either, 
so I think this is the most straightforward way to handle this rather 
than documenting this properly in the dt-binding and making sure the 
kernel driver actually supports it. As said, we can always revisit this 
later on if need be.

Therefore,

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

