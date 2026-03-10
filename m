Return-Path: <devicetree+bounces-273364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NDGC/rcr2kzdAIAu9opvQ
	(envelope-from <devicetree+bounces-273364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:57:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F718247BC6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2AC3E30314D6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6804E43C063;
	Tue, 10 Mar 2026 08:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="UDFkalLf"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013010.outbound.protection.outlook.com [40.107.162.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9994326D55;
	Tue, 10 Mar 2026 08:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773132920; cv=fail; b=Xs/by4eTbsrkqif1KBIOGuuDFObxlasqb/ISI18bKIb0A7XlGVK6gkMpGK5sZuj/fuHw+fXCtpo/0ta+UsuGInvDlrS2EywIxELipFSVHgq2C4xx3cgh0WfZKW1lULpSqtfoH6RGEY9s3GVHBkOJO0Q2Bbce4H9V0XiiBFZ7wKU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773132920; c=relaxed/simple;
	bh=fdtcVLSTFVVAYqBV41NFFWvr3/mFLUpWdvtUM+Pyc1E=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=ARUEWG4sHRwlZKmm4nk8yVSFzvHzLVLCulnaJxdO2axz2yGiN/tHxM+0JdIgFQTchkw7b50ZAXLInybWnujVMEyrEJnhoqdbOagzoe2VknBc3DtTXYdbGV1d0sIApSsSQnST8iw2w+4rZpYgGXL0F5Y8RnJP4AiM10ryqeCRNFQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=UDFkalLf; arc=fail smtp.client-ip=40.107.162.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yENW8xrx1G11QAi0kr4ZL9FuKUWo4bYUtWjgjppvODeKR97PT7MbxwrxG/j25hGtW0tfhEN2oQvXhXswf8RF8L3Y6Z94HBUloxTnqmi/NO4No9rdoyiSltyaL0kinUnzqhlCzb4Vg2yorfIvK2EZM4V8TH7Ff3XC4qnDfGvU4SdSwW3r4L7idXNsR9BGOeP5bDQNjsyoNrovqT5+OkhiGRLE+dYFZph2qmOzHND8f38KBnGUKoVlQuIAG0+Vk5oSNgx1KcWFFkF8qMY7mPEd9Q+veOpo9vo5r9xblIuL2zVcynffGUp2wMle+t9l/8e/q2J0YH+8JGm0diUppbN4nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/gNRyfXxoo0f1xMj3qnuAFNtRojvhFl/KJ5JVG6VFSs=;
 b=mQhrCXpj3/L0zFsg8vzdC3ucx1P6GwR9n2rdkAolwKEEevfRXqDQJhtLixAzlKVUWEGr/ss1sk+jDU8iG0ByTcAsKRvm6fciiXWSCLUyl6B52pO3Rb0VIxoP3uAN8lzlR+m50xyM+ZR5MqaAM13PiBeA9FiR5J4cXD7wPiXD9ud+tVMWPjMVo+FZpZpn4Dvqh4wIgTaBEEVLfgrS44XJCxKCc8568LXaIZwX4zTPdmAXki0cwXf19B64H+93Sby4vH6UDdZ9WS7lNwwiKKWMX1oC8QQhwW6C5Ju+dv+DrYF0cqU36Hlu6fQouMkFGDUZXynq7nrr95u37vp7Xn5+yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/gNRyfXxoo0f1xMj3qnuAFNtRojvhFl/KJ5JVG6VFSs=;
 b=UDFkalLfW8m9OCZazOurfebm3JIEECYe9PSIkjWKLA7B6XmdCYeJYpdQpMSsccmcH0QhK7m3PuA06RRHzZba3tdcvyMpq8In853AHzDawpioe/QmObCnrQLnsf1VQOpfel/VWXA4HoZzYKSYmEN4IhhVYWOrJ1Wl4yyzWWWG+2Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
Received: from DU0PR02MB9324.eurprd02.prod.outlook.com (2603:10a6:10:417::8)
 by PAWPR02MB9053.eurprd02.prod.outlook.com (2603:10a6:102:336::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Tue, 10 Mar
 2026 08:55:13 +0000
Received: from DU0PR02MB9324.eurprd02.prod.outlook.com
 ([fe80::cc21:ae34:5a4d:f110]) by DU0PR02MB9324.eurprd02.prod.outlook.com
 ([fe80::cc21:ae34:5a4d:f110%7]) with mapi id 15.20.9678.023; Tue, 10 Mar 2026
 08:55:13 +0000
Message-ID: <976e1ee5-bc3a-47ef-808d-014ad6ade533@axis.com>
Date: Tue, 10 Mar 2026 09:55:11 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] regulator: dt-bindings: dlg,da9121: Add
 dlg,no-gpio-control
To: Mark Brown <broonie@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Svensson?=
 <andre.svensson@axis.com>
Cc: Support Opensource <support.opensource@diasemi.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Adam Ward <Adam.Ward.opensource@diasemi.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel@axis.com,
 Waqar Hameed <waqar.hameed@axis.com>
References: <20260309-no-gpio-control-v1-0-06d2365917c6@axis.com>
 <20260309-no-gpio-control-v1-1-06d2365917c6@axis.com>
 <f5ee1e87-f4ef-46e1-a705-cba532e1db2e@sirena.org.uk>
Content-Language: en-US
From: =?UTF-8?Q?Andr=C3=A9_Svensson?= <andresve@axis.com>
In-Reply-To: <f5ee1e87-f4ef-46e1-a705-cba532e1db2e@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CPCP307CA0010.DNKP307.PROD.OUTLOOK.COM (2603:10a6:380::9)
 To DU0PR02MB9324.eurprd02.prod.outlook.com (2603:10a6:10:417::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR02MB9324:EE_|PAWPR02MB9053:EE_
X-MS-Office365-Filtering-Correlation-Id: c80abe88-04ad-4a1c-19c4-08de7e82bde9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	clRT2C5J4nPXrLY1h/qZlB9ANeHgZnJx2b709haeXMItkLTxPvIulFpck4cek7WFbJuwMcWDkQkRZ8f3vsXSKz4mcXiA9wV4Hy92D+M5fupAJIg8rMSO5NCdRzm+jU7nYtjiBOqCV6qoIhGUqzD0wkopUPiKiW/bIrNT1IKfou++hUyu2ev3zyMjuW9jMrTv00fXYZCZ+EsHmGJdodE6za+OY+gwIBVistce7bDL36yv/xNIoGE9cxgX6Y6CQuTdpPChlKZEGWJzdyqTE/WrvQMEER9QW4/nv9uOHUHA/ER9VAgkFOXrRqwbLa+RpcK6CGKuZccfhiMirD5j7Mv1TrW89k1E1QmbQ/XvHRYtqpAEAELsb2rMKTySkGF7vXQCdOzpGq6duduMJkSwuKVthgt0wvBLASRbOCJ5E8f/wX0CTg/AU0M1NzAL6mZUHsyo9VbzNRX3FwR+TMGtwsjnk5brHU6k+oMBIGOpuYLJ5GJbJSTmDW+LgIO4zlKluUs+L25xB/NuPl46OtE0XRdC2NCS/EXRu5X9gORGGdMi82jGJGPJ4Jfo++boAhW/yEWO5wDoD7AK9uu1I9SidhK30xNWfNSvpKGEM4zEYcwvmf+QoDluYviHB3UzU5vTvU4/C8LS8baDCAPhwq9Zxc+BL+M+UKcJXqC6URjYDQMOyNoJDGfbWtjI8AqqL6jFJzUsfjXTnI22DIHlYcnjXy2J8KmhecQbpMTIbhxprZIlHLA=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR02MB9324.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Nk1lL2dkRWkyZktuSXNZRmRnNXcrM0tweDNBV3E1ZjFsQkEwZ2N0MHVISEQz?=
 =?utf-8?B?UVV5eVQ2b21pTURnRHFEK3ErOXNROEViNTF1TTByWCtHWCtRbGJiT2N4OXd5?=
 =?utf-8?B?akpXTzdUSDExcHdrb0tmUHdJQmpQWVhucmhQeUZEMWw5OFVxY1FncllFTTVH?=
 =?utf-8?B?Q0JTcE5UcCsrY3ZOV1ZkZHQ3VjJwUmZHeHMxZ0pIT3hPVVBjRGZkeWYzdlRK?=
 =?utf-8?B?UG15VndrUXlLcUd6cEhodDMrYXpxYW5qNHVuNktPWjVHdk9McTFXbHVtb0xy?=
 =?utf-8?B?SlYyQXIyNzI4aW5MZTRxM2theVIyaXQvd29PT3FBN04wbi9xaVVWRERaUzZt?=
 =?utf-8?B?VnpqNWdncXk5Q2p4RXdlbHJsN0dGY0N5WDUwRitFbXpFT2tZR09lR0IrdzNJ?=
 =?utf-8?B?NUhZRUY1TEc0VWlVeFhHSE5rV3VObGRoeE9TQjhZZGJObk1lNjRaazJwWW1R?=
 =?utf-8?B?M3owbWlkdzFmMHRDQTRnQStoR25HMXJ2YXFyNGpZWDh5RUQyWExpdEc0QU1F?=
 =?utf-8?B?SEVNVVJ6K3duQk9TWFk1U1NyZzk5ekhZb3dkVnZiaUEyMGZ1UG1DNEZac204?=
 =?utf-8?B?dVo3WTB6c3VFYkFtdkVHanh3YnFCN21YOGdna2FWWENBQ2dnNVErOGlnSVFj?=
 =?utf-8?B?Mk9IaXFLWUd0TVZhVytFT0R3SVJNTWJjTlJVSDdIV2I0Q29LbDZQck94YVlF?=
 =?utf-8?B?MHRvNjgrT1R3V3dvN3ErNHNIeGxnVjJiYWFhbE9TSnpjRmZOT0pHWHFLeVJW?=
 =?utf-8?B?TVlBVmhiSzFSZTB6UE5rdTlMWE9KZjlKb2FWck9iek5rb3NHTEFFM2RtRitR?=
 =?utf-8?B?dDFkcjB6ZHl6dTdvOXlXczRSUXpmMGE5dHIydTlxZnBpMjQ5a0FxTEFIdmxY?=
 =?utf-8?B?cCtVTGptaHZja2pYaVFzSnhYeTkzd3hEckh3a3dOSS82ZFM4ZWdiRTh2L2Mv?=
 =?utf-8?B?TWJZTWtxTjhnZDBjZmY1c3lPWkpMK0pWc1VUMEtHQWxWU3greTFpZUJ2Zzh0?=
 =?utf-8?B?cjROY3VTUmFySXhCSGs4ZUM5dGQ5Y0Z0c2VOWjh4N2tjR1lLdGdQdHRQdi9i?=
 =?utf-8?B?dE9nOVFaZnVjRnF2R1VGY05vdUdBakNLVTBDVFF2WXJoR21SQk9tbUk1RGZq?=
 =?utf-8?B?eEowc05OVmVqVjQvWFRDcWw1RVZ0S1c2bFhoSks1a0tGMzBXTjVWZVFzcEVC?=
 =?utf-8?B?UlBKWkJLcVBFTytIS2gwR3NscUh4a0EvQnFSTFpPWjc5bWZ0M2lFcllUeXVo?=
 =?utf-8?B?OW1yNi9xL0t1MWpnSUJlMkY4YmsrMmVIVytxNy84TnBwblhvQTNwSmptc0p1?=
 =?utf-8?B?T0hsdmZJYk9lRG1hNGVJTS8xU21EeVFRY25qb1c1K1FMYW5NR3VTOHZqa3BJ?=
 =?utf-8?B?Rm92SlVDV3gyRTFBZkRMRk1QNnFyOHBTVVpTQStjWU1SdG5QejU2UXY3K05G?=
 =?utf-8?B?dGxJK0VUcVVQZk1FMUc0WmZDMCsvbnJHUnB0Z2VadTU3UHh3UWROR3dJRUMr?=
 =?utf-8?B?VzRPK0U1bWU0bzdMSTB3U2FvWTh1YVA2OXFRTUdWTW0vMkVMaGFJYjRWSDB1?=
 =?utf-8?B?T3RSSDJCbk9pL0FHUTBFaHhIRGFvd0huNVo4dnVMTjZnN2l6Rk9WNjV5RFVz?=
 =?utf-8?B?bDRHeHhFTG9rU1RnQkRDeEdWOTBvaHY3bEVyVkViekpVYVdSY2NFem93OWtt?=
 =?utf-8?B?YldDWmcvRU45cENhNFlLMkdvOXluU05RZEc1dGR4WnNMMk5UQ2lvT3MybVlQ?=
 =?utf-8?B?ekFYT3NIdmZCWUdyQVBNTXJja3FUT1k1dnRhdDd2MDZPNnM1Ymo1K2NweUJN?=
 =?utf-8?B?LzBCaXZNUDc0U2NlNHV2L29HaXZmdERCM3Q0am1BMktqb1prdFEvMFRvUHFI?=
 =?utf-8?B?VVZRWTZQQjA5VE94YXJHYUlsZXRmaHRCaHEwSFlEeW5oelFMdFl2cHkrcThX?=
 =?utf-8?B?cFl3ekJ4c2dDM25pNEVNMmMydmhPUTJVYWRncm91UVBCcEM2cVBKUVVTVlM2?=
 =?utf-8?B?Q0poVFZTOEpTYXlmT0F3Qi9HRnpKQlMzNXBiNjg2M1lNb1JCWkFkTWhMSE1D?=
 =?utf-8?B?QmgralNiMC81cTR3NDNsSDRkSHFTdEp4NkRkbVFQQ01mL1MrZk83SEFHUW53?=
 =?utf-8?B?Rm91a0tseEdtellCcExMWXpqUEd6amZlVEhFRlZBQzIwYXNvaFoxUFg0cVVo?=
 =?utf-8?B?TzBQTTEvMUtUejNGNU5NdExHZGpxZmNrVVpROTZQM3pyZmlXMmc3ZUxVR24z?=
 =?utf-8?B?bjhYejJVaUhzNHJEbHEzbVNHTDUzVzdTUUw0cCtUS2tuYy9XZ3JWYVJFMmJz?=
 =?utf-8?Q?osWrg+RRp59YyuPtcd?=
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c80abe88-04ad-4a1c-19c4-08de7e82bde9
X-MS-Exchange-CrossTenant-AuthSource: DU0PR02MB9324.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 08:55:13.5196
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXcfOMNEXckdc/m5ShiS8da1024fXPUFikIhnhZpQtV1nU9hH+XDcHNAD84QrD3ePV466abQ8eZiNPyTfR+qIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR02MB9053
X-Rspamd-Queue-Id: 1F718247BC6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[axis.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[axis.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273364-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[diasemi.com,gmail.com,kernel.org,vger.kernel.org,axis.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andresve@axis.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[axis.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,axis.com:dkim,axis.com:mid]
X-Rspamd-Action: no action

On 3/9/26 5:30 PM, Mark Brown wrote:
> On Mon, Mar 09, 2026 at 04:52:35PM +0100, André Svensson wrote:
>> Add the optional boolean property dlg,no-gpio-control. When present, it
>> indicates that no DA91xx GPIO pins are configured/used with functions
>> RELOAD/DVC/EN, which can affect the output voltage control, regulator
>> mode control and enable signal control.
> 
>> It is mutually exclusive with enable-gpios, regardless of whether the
>> referenced GPIO is connected to a GPIO pin or the IC_EN pin, since
>> enable-gpios allows the regulator to be controlled via an external
>> hardware signal.
> 
> This should probably explain why we can't infer the absence of GPIOs
> from the lack of any relevant GPIO properties.

Thanks, I’ll clarify that in v2.

